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

func DatabaseManagementDbManagementPrivateEndpointDataSource() *schema.Resource {
	fieldMap := make(map[string]*schema.Schema)
	fieldMap["db_management_private_endpoint_id"] = &schema.Schema{
		Type:     schema.TypeString,
		Required: true,
	}
	return tfresource.GetSingularDataSourceItemSchema(DatabaseManagementDbManagementPrivateEndpointResource(), fieldMap, readSingularDatabaseManagementDbManagementPrivateEndpoint)
}

func readSingularDatabaseManagementDbManagementPrivateEndpoint(d *schema.ResourceData, m interface{}) error {
	sync := &DatabaseManagementDbManagementPrivateEndpointDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).DbManagementClient()

	return tfresource.ReadResource(sync)
}

type DatabaseManagementDbManagementPrivateEndpointDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_database_management.DbManagementClient
	Res    *oci_database_management.GetDbManagementPrivateEndpointResponse
}

func (s *DatabaseManagementDbManagementPrivateEndpointDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DatabaseManagementDbManagementPrivateEndpointDataSourceCrud) Get() error {
	request := oci_database_management.GetDbManagementPrivateEndpointRequest{}

	if dbManagementPrivateEndpointId, ok := s.D.GetOkExists("db_management_private_endpoint_id"); ok {
		tmp := dbManagementPrivateEndpointId.(string)
		request.DbManagementPrivateEndpointId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "database_management")

	response, err := s.Client.GetDbManagementPrivateEndpoint(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	return nil
}

func (s *DatabaseManagementDbManagementPrivateEndpointDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(*s.Res.Id)

	if s.Res.CompartmentId != nil {
		s.D.Set("compartment_id", *s.Res.CompartmentId)
	}

	if s.Res.DefinedTags != nil {
		s.D.Set("defined_tags", tfresource.DefinedTagsToMap(s.Res.DefinedTags))
	}

	if s.Res.Description != nil {
		s.D.Set("description", *s.Res.Description)
	}

	s.D.Set("freeform_tags", s.Res.FreeformTags)

	if s.Res.IsCluster != nil {
		s.D.Set("is_cluster", *s.Res.IsCluster)
	}

	if s.Res.IsDnsResolutionEnabled != nil {
		s.D.Set("is_dns_resolution_enabled", *s.Res.IsDnsResolutionEnabled)
	}

	if s.Res.Name != nil {
		s.D.Set("name", *s.Res.Name)
	}

	s.D.Set("nsg_ids", s.Res.NsgIds)

	if s.Res.PrivateIp != nil {
		s.D.Set("private_ip", *s.Res.PrivateIp)
	}

	s.D.Set("state", s.Res.LifecycleState)

	if s.Res.SubnetId != nil {
		s.D.Set("subnet_id", *s.Res.SubnetId)
	}

	if s.Res.SystemTags != nil {
		s.D.Set("system_tags", tfresource.SystemTagsToMap(s.Res.SystemTags))
	}

	if s.Res.TimeCreated != nil {
		s.D.Set("time_created", s.Res.TimeCreated.String())
	}

	if s.Res.VcnId != nil {
		s.D.Set("vcn_id", *s.Res.VcnId)
	}

	return nil
}
