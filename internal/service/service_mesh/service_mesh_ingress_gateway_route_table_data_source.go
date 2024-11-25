// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package service_mesh

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_service_mesh "github.com/oracle/oci-go-sdk/v65/servicemesh"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func ServiceMeshIngressGatewayRouteTableDataSource() *schema.Resource {
	fieldMap := make(map[string]*schema.Schema)
	fieldMap["ingress_gateway_route_table_id"] = &schema.Schema{
		Type:     schema.TypeString,
		Required: true,
	}
	return tfresource.GetSingularDataSourceItemSchema(ServiceMeshIngressGatewayRouteTableResource(), fieldMap, readSingularServiceMeshIngressGatewayRouteTable)
}

func readSingularServiceMeshIngressGatewayRouteTable(d *schema.ResourceData, m interface{}) error {
	sync := &ServiceMeshIngressGatewayRouteTableDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).ServiceMeshClient()

	return tfresource.ReadResource(sync)
}

type ServiceMeshIngressGatewayRouteTableDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_service_mesh.ServiceMeshClient
	Res    *oci_service_mesh.GetIngressGatewayRouteTableResponse
}

func (s *ServiceMeshIngressGatewayRouteTableDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *ServiceMeshIngressGatewayRouteTableDataSourceCrud) Get() error {
	request := oci_service_mesh.GetIngressGatewayRouteTableRequest{}

	if ingressGatewayRouteTableId, ok := s.D.GetOkExists("ingress_gateway_route_table_id"); ok {
		tmp := ingressGatewayRouteTableId.(string)
		request.IngressGatewayRouteTableId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "service_mesh")

	response, err := s.Client.GetIngressGatewayRouteTable(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	return nil
}

func (s *ServiceMeshIngressGatewayRouteTableDataSourceCrud) SetData() error {
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

	if s.Res.IngressGatewayId != nil {
		s.D.Set("ingress_gateway_id", *s.Res.IngressGatewayId)
	}

	if s.Res.LifecycleDetails != nil {
		s.D.Set("lifecycle_details", *s.Res.LifecycleDetails)
	}

	if s.Res.Name != nil {
		s.D.Set("name", *s.Res.Name)
	}

	if s.Res.Priority != nil {
		s.D.Set("priority", *s.Res.Priority)
	}

	routeRules := []interface{}{}
	for _, item := range s.Res.RouteRules {
		routeRules = append(routeRules, IngressGatewayTrafficRouteRuleToMap(item))
	}
	s.D.Set("route_rules", routeRules)

	s.D.Set("state", s.Res.LifecycleState)

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
