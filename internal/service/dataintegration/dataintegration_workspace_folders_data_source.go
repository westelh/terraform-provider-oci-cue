// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package dataintegration

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_dataintegration "github.com/oracle/oci-go-sdk/v65/dataintegration"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func DataintegrationWorkspaceFoldersDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readDataintegrationWorkspaceFolders,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"aggregator_key": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"fields": {
				Type:     schema.TypeList,
				Optional: true,
				Elem: &schema.Schema{
					Type: schema.TypeString,
				},
			},
			"identifier": {
				Type:     schema.TypeList,
				Optional: true,
				Elem: &schema.Schema{
					Type: schema.TypeString,
				},
			},
			"name": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"name_contains": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"workspace_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"folder_summary_collection": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{

						"items": {
							Type:     schema.TypeList,
							Computed: true,
							Elem:     DataintegrationWorkspaceFolderResource(),
						},
					},
				},
			},
		},
	}
}

func readDataintegrationWorkspaceFolders(d *schema.ResourceData, m interface{}) error {
	sync := &DataintegrationWorkspaceFoldersDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).DataIntegrationClient()

	return tfresource.ReadResource(sync)
}

type DataintegrationWorkspaceFoldersDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_dataintegration.DataIntegrationClient
	Res    *oci_dataintegration.ListFoldersResponse
}

func (s *DataintegrationWorkspaceFoldersDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DataintegrationWorkspaceFoldersDataSourceCrud) Get() error {
	request := oci_dataintegration.ListFoldersRequest{}

	if aggregatorKey, ok := s.D.GetOkExists("aggregator_key"); ok {
		tmp := aggregatorKey.(string)
		request.AggregatorKey = &tmp
	}

	if fields, ok := s.D.GetOkExists("fields"); ok {
		interfaces := fields.([]interface{})
		tmp := make([]string, len(interfaces))
		for i := range interfaces {
			if interfaces[i] != nil {
				tmp[i] = interfaces[i].(string)
			}
		}
		if len(tmp) != 0 || s.D.HasChange("fields") {
			request.Fields = tmp
		}
	}

	if identifier, ok := s.D.GetOkExists("identifier"); ok {
		interfaces := identifier.([]interface{})
		tmp := make([]string, len(interfaces))
		for i := range interfaces {
			if interfaces[i] != nil {
				tmp[i] = interfaces[i].(string)
			}
		}
		if len(tmp) != 0 || s.D.HasChange("identifier") {
			request.Identifier = tmp
		}
	}

	if name, ok := s.D.GetOkExists("name"); ok {
		tmp := name.(string)
		request.Name = &tmp
	}

	if nameContains, ok := s.D.GetOkExists("name_contains"); ok {
		tmp := nameContains.(string)
		request.NameContains = &tmp
	}

	if workspaceId, ok := s.D.GetOkExists("workspace_id"); ok {
		tmp := workspaceId.(string)
		request.WorkspaceId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "dataintegration")

	response, err := s.Client.ListFolders(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListFolders(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *DataintegrationWorkspaceFoldersDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("DataintegrationWorkspaceFoldersDataSource-", DataintegrationWorkspaceFoldersDataSource(), s.D))
	resources := []map[string]interface{}{}
	workspaceFolder := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, FolderSummaryToMap(item))
	}
	workspaceFolder["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, DataintegrationWorkspaceFoldersDataSource().Schema["folder_summary_collection"].Elem.(*schema.Resource).Schema)
		workspaceFolder["items"] = items
	}

	resources = append(resources, workspaceFolder)
	if err := s.D.Set("folder_summary_collection", resources); err != nil {
		return err
	}

	return nil
}
