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

func ServiceMeshIngressGatewayRouteTablesDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readServiceMeshIngressGatewayRouteTables,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"compartment_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"ingress_gateway_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"name": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"state": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"ingress_gateway_route_table_collection": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{

						"items": {
							Type:     schema.TypeList,
							Computed: true,
							Elem:     tfresource.GetDataSourceItemSchema(ServiceMeshIngressGatewayRouteTableResource()),
						},
					},
				},
			},
		},
	}
}

func readServiceMeshIngressGatewayRouteTables(d *schema.ResourceData, m interface{}) error {
	sync := &ServiceMeshIngressGatewayRouteTablesDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).ServiceMeshClient()

	return tfresource.ReadResource(sync)
}

type ServiceMeshIngressGatewayRouteTablesDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_service_mesh.ServiceMeshClient
	Res    *oci_service_mesh.ListIngressGatewayRouteTablesResponse
}

func (s *ServiceMeshIngressGatewayRouteTablesDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *ServiceMeshIngressGatewayRouteTablesDataSourceCrud) Get() error {
	request := oci_service_mesh.ListIngressGatewayRouteTablesRequest{}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if id, ok := s.D.GetOkExists("id"); ok {
		tmp := id.(string)
		request.Id = &tmp
	}

	if ingressGatewayId, ok := s.D.GetOkExists("ingress_gateway_id"); ok {
		tmp := ingressGatewayId.(string)
		request.IngressGatewayId = &tmp
	}

	if name, ok := s.D.GetOkExists("name"); ok {
		tmp := name.(string)
		request.Name = &tmp
	}

	if state, ok := s.D.GetOkExists("state"); ok {
		request.LifecycleState = oci_service_mesh.IngressGatewayRouteTableLifecycleStateEnum(state.(string))
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "service_mesh")

	response, err := s.Client.ListIngressGatewayRouteTables(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListIngressGatewayRouteTables(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *ServiceMeshIngressGatewayRouteTablesDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("ServiceMeshIngressGatewayRouteTablesDataSource-", ServiceMeshIngressGatewayRouteTablesDataSource(), s.D))
	resources := []map[string]interface{}{}
	ingressGatewayRouteTable := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, IngressGatewayRouteTableSummaryToMap(item))
	}
	ingressGatewayRouteTable["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, ServiceMeshIngressGatewayRouteTablesDataSource().Schema["ingress_gateway_route_table_collection"].Elem.(*schema.Resource).Schema)
		ingressGatewayRouteTable["items"] = items
	}

	resources = append(resources, ingressGatewayRouteTable)
	if err := s.D.Set("ingress_gateway_route_table_collection", resources); err != nil {
		return err
	}

	return nil
}
