// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package datascience

import (
	"context"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_datascience "github.com/oracle/oci-go-sdk/v65/datascience"
)

func DatascienceNotebookSessionsDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readDatascienceNotebookSessions,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"compartment_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"created_by": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"display_name": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"project_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"state": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"notebook_sessions": {
				Type:     schema.TypeList,
				Computed: true,
				Elem:     tfresource.GetDataSourceItemSchema(DatascienceNotebookSessionResource()),
			},
		},
	}
}

func readDatascienceNotebookSessions(d *schema.ResourceData, m interface{}) error {
	sync := &DatascienceNotebookSessionsDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).DataScienceClient()

	return tfresource.ReadResource(sync)
}

type DatascienceNotebookSessionsDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_datascience.DataScienceClient
	Res    *oci_datascience.ListNotebookSessionsResponse
}

func (s *DatascienceNotebookSessionsDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DatascienceNotebookSessionsDataSourceCrud) Get() error {
	request := oci_datascience.ListNotebookSessionsRequest{}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if createdBy, ok := s.D.GetOkExists("created_by"); ok {
		tmp := createdBy.(string)
		request.CreatedBy = &tmp
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if id, ok := s.D.GetOkExists("id"); ok {
		tmp := id.(string)
		request.Id = &tmp
	}

	if projectId, ok := s.D.GetOkExists("project_id"); ok {
		tmp := projectId.(string)
		request.ProjectId = &tmp
	}

	if state, ok := s.D.GetOkExists("state"); ok {
		request.LifecycleState = oci_datascience.ListNotebookSessionsLifecycleStateEnum(state.(string))
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "datascience")

	response, err := s.Client.ListNotebookSessions(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListNotebookSessions(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *DatascienceNotebookSessionsDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("DatascienceNotebookSessionsDataSource-", DatascienceNotebookSessionsDataSource(), s.D))
	resources := []map[string]interface{}{}

	for _, r := range s.Res.Items {
		notebookSession := map[string]interface{}{
			"compartment_id": *r.CompartmentId,
		}

		if r.CreatedBy != nil {
			notebookSession["created_by"] = *r.CreatedBy
		}

		if r.DefinedTags != nil {
			notebookSession["defined_tags"] = tfresource.DefinedTagsToMap(r.DefinedTags)
		}

		if r.DisplayName != nil {
			notebookSession["display_name"] = *r.DisplayName
		}

		notebookSession["freeform_tags"] = r.FreeformTags

		if r.Id != nil {
			notebookSession["id"] = *r.Id
		}

		if r.NotebookSessionConfigDetails != nil {
			notebookSession["notebook_session_config_details"] = []interface{}{NotebookSessionConfigDetailsToMap(r.NotebookSessionConfigDetails)}
		} else {
			notebookSession["notebook_session_config_details"] = nil
		}

		if r.NotebookSessionConfigurationDetails != nil {
			notebookSession["notebook_session_configuration_details"] = []interface{}{NotebookSessionConfigurationDetailsToMap(r.NotebookSessionConfigurationDetails)}
		} else {
			notebookSession["notebook_session_configuration_details"] = nil
		}

		if r.NotebookSessionUrl != nil {
			notebookSession["notebook_session_url"] = *r.NotebookSessionUrl
		}

		if r.ProjectId != nil {
			notebookSession["project_id"] = *r.ProjectId
		}

		notebookSession["state"] = r.LifecycleState

		if r.TimeCreated != nil {
			notebookSession["time_created"] = r.TimeCreated.String()
		}

		resources = append(resources, notebookSession)
	}

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		resources = tfresource.ApplyFilters(f.(*schema.Set), resources, DatascienceNotebookSessionsDataSource().Schema["notebook_sessions"].Elem.(*schema.Resource).Schema)
	}

	if err := s.D.Set("notebook_sessions", resources); err != nil {
		return err
	}

	return nil
}
