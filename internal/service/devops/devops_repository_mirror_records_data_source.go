// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package devops

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_devops "github.com/oracle/oci-go-sdk/v65/devops"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func DevopsRepositoryMirrorRecordsDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readDevopsRepositoryMirrorRecords,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"repository_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"repository_mirror_record_collection": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						"items": {
							Type:     schema.TypeList,
							Computed: true,
							Elem: &schema.Resource{
								Schema: map[string]*schema.Schema{
									// Required

									// Optional

									// Computed
									"mirror_status": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_completed": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_enqueued": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_started": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"work_request_id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"freeform_tags": {
										Type:     schema.TypeMap,
										Computed: true,
										Elem:     schema.TypeString,
									},
								},
							},
						},
					},
				},
			},
		},
	}
}

func readDevopsRepositoryMirrorRecords(d *schema.ResourceData, m interface{}) error {
	sync := &DevopsRepositoryMirrorRecordsDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).DevopsClient()

	return tfresource.ReadResource(sync)
}

type DevopsRepositoryMirrorRecordsDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_devops.DevopsClient
	Res    *oci_devops.ListMirrorRecordsResponse
}

func (s *DevopsRepositoryMirrorRecordsDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DevopsRepositoryMirrorRecordsDataSourceCrud) Get() error {
	request := oci_devops.ListMirrorRecordsRequest{}

	if repositoryId, ok := s.D.GetOkExists("repository_id"); ok {
		tmp := repositoryId.(string)
		request.RepositoryId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "devops")

	response, err := s.Client.ListMirrorRecords(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListMirrorRecords(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *DevopsRepositoryMirrorRecordsDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("DevopsRepositoryMirrorRecordsDataSource-", DevopsRepositoryMirrorRecordsDataSource(), s.D))
	resources := []map[string]interface{}{}
	repositoryMirrorRecord := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, RepositoryMirrorRecordSummaryToMap(item))
	}
	repositoryMirrorRecord["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, DevopsRepositoryMirrorRecordsDataSource().Schema["repository_mirror_record_collection"].Elem.(*schema.Resource).Schema)
		repositoryMirrorRecord["items"] = items
	}

	resources = append(resources, repositoryMirrorRecord)
	if err := s.D.Set("repository_mirror_record_collection", resources); err != nil {
		return err
	}

	return nil
}
