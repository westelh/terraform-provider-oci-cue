// Copyright (c) 2017, 2023, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package capacity_management

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_capacity_management "github.com/oracle/oci-go-sdk/v65/capacitymanagement"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func CapacityManagementOccCustomerGroupDataSource() *schema.Resource {
	fieldMap := make(map[string]*schema.Schema)
	fieldMap["occ_customer_group_id"] = &schema.Schema{
		Type:     schema.TypeString,
		Required: true,
	}
	return tfresource.GetSingularDataSourceItemSchema(CapacityManagementOccCustomerGroupResource(), fieldMap, readSingularCapacityManagementOccCustomerGroup)
}

func readSingularCapacityManagementOccCustomerGroup(d *schema.ResourceData, m interface{}) error {
	sync := &CapacityManagementOccCustomerGroupDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).CapacityManagementClient()

	return tfresource.ReadResource(sync)
}

type CapacityManagementOccCustomerGroupDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_capacity_management.CapacityManagementClient
	Res    *oci_capacity_management.GetOccCustomerGroupResponse
}

func (s *CapacityManagementOccCustomerGroupDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *CapacityManagementOccCustomerGroupDataSourceCrud) Get() error {
	request := oci_capacity_management.GetOccCustomerGroupRequest{}

	if occCustomerGroupId, ok := s.D.GetOkExists("occ_customer_group_id"); ok {
		tmp := occCustomerGroupId.(string)
		request.OccCustomerGroupId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "capacity_management")

	response, err := s.Client.GetOccCustomerGroup(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	return nil
}

func (s *CapacityManagementOccCustomerGroupDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(*s.Res.Id)

	if s.Res.CompartmentId != nil {
		s.D.Set("compartment_id", *s.Res.CompartmentId)
	}

	customersList := []interface{}{}
	for _, item := range s.Res.CustomersList {
		customersList = append(customersList, OccCustomerToMap(item))
	}
	s.D.Set("customers_list", customersList)

	if s.Res.DefinedTags != nil {
		s.D.Set("defined_tags", tfresource.DefinedTagsToMap(s.Res.DefinedTags))
	}

	if s.Res.Description != nil {
		s.D.Set("description", *s.Res.Description)
	}

	if s.Res.DisplayName != nil {
		s.D.Set("display_name", *s.Res.DisplayName)
	}

	s.D.Set("freeform_tags", s.Res.FreeformTags)

	if s.Res.LifecycleDetails != nil {
		s.D.Set("lifecycle_details", *s.Res.LifecycleDetails)
	}

	s.D.Set("state", s.Res.LifecycleState)

	s.D.Set("status", s.Res.Status)

	if s.Res.SystemTags != nil {
		s.D.Set("system_tags", tfresource.SystemTagsToMap(s.Res.SystemTags))
	}

	if s.Res.TimeCreated != nil {
		s.D.Set("time_created", s.Res.TimeCreated.String())
	}

	if s.Res.TimeUpdated != nil {
		s.D.Set("time_updated", s.Res.TimeUpdated.String())
	}

	return nil
}
