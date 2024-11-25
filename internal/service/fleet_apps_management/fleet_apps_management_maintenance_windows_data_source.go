// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package fleet_apps_management

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_fleet_apps_management "github.com/oracle/oci-go-sdk/v65/fleetappsmanagement"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func FleetAppsManagementMaintenanceWindowsDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readFleetAppsManagementMaintenanceWindows,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"compartment_id": {
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
			"state": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"maintenance_window_collection": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{

						"items": {
							Type:     schema.TypeList,
							Computed: true,
							Elem:     tfresource.GetDataSourceItemSchema(FleetAppsManagementMaintenanceWindowResource()),
						},
					},
				},
			},
		},
	}
}

func readFleetAppsManagementMaintenanceWindows(d *schema.ResourceData, m interface{}) error {
	sync := &FleetAppsManagementMaintenanceWindowsDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).FleetAppsManagementMaintenanceWindowClient()

	return tfresource.ReadResource(sync)
}

type FleetAppsManagementMaintenanceWindowsDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_fleet_apps_management.FleetAppsManagementMaintenanceWindowClient
	Res    *oci_fleet_apps_management.ListMaintenanceWindowsResponse
}

func (s *FleetAppsManagementMaintenanceWindowsDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *FleetAppsManagementMaintenanceWindowsDataSourceCrud) Get() error {
	request := oci_fleet_apps_management.ListMaintenanceWindowsRequest{}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if id, ok := s.D.GetOkExists("id"); ok {
		tmp := id.(string)
		request.Id = &tmp
	}

	if state, ok := s.D.GetOkExists("state"); ok {
		request.LifecycleState = oci_fleet_apps_management.MaintenanceWindowLifecycleStateEnum(state.(string))
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "fleet_apps_management")

	response, err := s.Client.ListMaintenanceWindows(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListMaintenanceWindows(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *FleetAppsManagementMaintenanceWindowsDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("FleetAppsManagementMaintenanceWindowsDataSource-", FleetAppsManagementMaintenanceWindowsDataSource(), s.D))
	resources := []map[string]interface{}{}
	maintenanceWindow := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, MaintenanceWindowSummaryToMap(item))
	}
	maintenanceWindow["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, FleetAppsManagementMaintenanceWindowsDataSource().Schema["maintenance_window_collection"].Elem.(*schema.Resource).Schema)
		maintenanceWindow["items"] = items
	}

	resources = append(resources, maintenanceWindow)
	if err := s.D.Set("maintenance_window_collection", resources); err != nil {
		return err
	}

	return nil
}
