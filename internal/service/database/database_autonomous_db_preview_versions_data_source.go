// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package database

import (
	"context"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_database "github.com/oracle/oci-go-sdk/v65/database"
)

func DatabaseAutonomousDbPreviewVersionsDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readDatabaseAutonomousDbPreviewVersions,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"compartment_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"autonomous_db_preview_versions": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required

						// Optional

						// Computed
						"db_workload": {
							Type:     schema.TypeString,
							Computed: true,
						},
						"details": {
							Type:     schema.TypeString,
							Computed: true,
						},
						"time_preview_begin": {
							Type:     schema.TypeString,
							Computed: true,
						},
						"time_preview_end": {
							Type:     schema.TypeString,
							Computed: true,
						},
						"version": {
							Type:     schema.TypeString,
							Computed: true,
						},
					},
				},
			},
		},
	}
}

func readDatabaseAutonomousDbPreviewVersions(d *schema.ResourceData, m interface{}) error {
	sync := &DatabaseAutonomousDbPreviewVersionsDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).DatabaseClient()

	return tfresource.ReadResource(sync)
}

type DatabaseAutonomousDbPreviewVersionsDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_database.DatabaseClient
	Res    *oci_database.ListAutonomousDbPreviewVersionsResponse
}

func (s *DatabaseAutonomousDbPreviewVersionsDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DatabaseAutonomousDbPreviewVersionsDataSourceCrud) Get() error {
	request := oci_database.ListAutonomousDbPreviewVersionsRequest{}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "database")

	response, err := s.Client.ListAutonomousDbPreviewVersions(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListAutonomousDbPreviewVersions(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *DatabaseAutonomousDbPreviewVersionsDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("DatabaseAutonomousDbPreviewVersionsDataSource-", DatabaseAutonomousDbPreviewVersionsDataSource(), s.D))
	resources := []map[string]interface{}{}

	for _, r := range s.Res.Items {
		autonomousDbPreviewVersion := map[string]interface{}{}

		autonomousDbPreviewVersion["db_workload"] = r.DbWorkload

		if r.Details != nil {
			autonomousDbPreviewVersion["details"] = *r.Details
		}

		if r.TimePreviewBegin != nil {
			autonomousDbPreviewVersion["time_preview_begin"] = r.TimePreviewBegin.String()
		}

		if r.TimePreviewEnd != nil {
			autonomousDbPreviewVersion["time_preview_end"] = r.TimePreviewEnd.String()
		}

		if r.Version != nil {
			autonomousDbPreviewVersion["version"] = *r.Version
		}

		resources = append(resources, autonomousDbPreviewVersion)
	}

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		resources = tfresource.ApplyFilters(f.(*schema.Set), resources, DatabaseAutonomousDbPreviewVersionsDataSource().Schema["autonomous_db_preview_versions"].Elem.(*schema.Resource).Schema)
	}

	if err := s.D.Set("autonomous_db_preview_versions", resources); err != nil {
		return err
	}

	return nil
}
