// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package database_management

import (
	"context"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_database_management "github.com/oracle/oci-go-sdk/v65/databasemanagement"
)

func DatabaseManagementJobExecutionsStatusDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readSingularDatabaseManagementJobExecutionsStatus,
		Schema: map[string]*schema.Schema{
			"compartment_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"end_time": {
				Type:     schema.TypeString,
				Required: true,
			},
			"id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"managed_database_group_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"managed_database_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"name": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"start_time": {
				Type:     schema.TypeString,
				Required: true,
			},
			// Computed
			"items": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required

						// Optional

						// Computed
						"count": {
							Type:     schema.TypeInt,
							Computed: true,
						},
						"status": {
							Type:     schema.TypeString,
							Computed: true,
						},
					},
				},
			},
		},
		DeprecationMessage: tfresource.DatasourceDeprecatedForAnother("oci_database_management_job_executions_status", "oci_database_management_job_executions_statuses"),
	}
}

func readSingularDatabaseManagementJobExecutionsStatus(d *schema.ResourceData, m interface{}) error {
	sync := &DatabaseManagementJobExecutionsStatusDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).DbManagementClient()

	return tfresource.ReadResource(sync)
}

type DatabaseManagementJobExecutionsStatusDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_database_management.DbManagementClient
	Res    *oci_database_management.SummarizeJobExecutionsStatusesResponse
}

func (s *DatabaseManagementJobExecutionsStatusDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DatabaseManagementJobExecutionsStatusDataSourceCrud) Get() error {
	request := oci_database_management.SummarizeJobExecutionsStatusesRequest{}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if endTime, ok := s.D.GetOkExists("end_time"); ok {
		tmp := endTime.(string)
		request.EndTime = &tmp
	}

	if id, ok := s.D.GetOkExists("id"); ok {
		tmp := id.(string)
		request.Id = &tmp
	}

	if managedDatabaseGroupId, ok := s.D.GetOkExists("managed_database_group_id"); ok {
		tmp := managedDatabaseGroupId.(string)
		request.ManagedDatabaseGroupId = &tmp
	}

	if managedDatabaseId, ok := s.D.GetOkExists("managed_database_id"); ok {
		tmp := managedDatabaseId.(string)
		request.ManagedDatabaseId = &tmp
	}

	if name, ok := s.D.GetOkExists("name"); ok {
		tmp := name.(string)
		request.Name = &tmp
	}

	if startTime, ok := s.D.GetOkExists("start_time"); ok {
		tmp := startTime.(string)
		request.StartTime = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "database_management")

	response, err := s.Client.SummarizeJobExecutionsStatuses(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	return nil
}

func (s *DatabaseManagementJobExecutionsStatusDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("DatabaseManagementJobExecutionsStatusDataSource-", DatabaseManagementJobExecutionsStatusDataSource(), s.D))

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, JobExecutionsStatusSummaryToMap(item))
	}
	s.D.Set("items", items)

	return nil
}
