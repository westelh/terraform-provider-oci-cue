// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package compute_cloud_at_customer

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_compute_cloud_at_customer "github.com/oracle/oci-go-sdk/v65/computecloudatcustomer"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func ComputeCloudAtCustomerCccInfrastructuresDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readComputeCloudAtCustomerCccInfrastructures,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"access_level": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"ccc_infrastructure_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"compartment_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"compartment_id_in_subtree": {
				Type:     schema.TypeBool,
				Optional: true,
			},
			"display_name": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"display_name_contains": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"state": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"ccc_infrastructure_collection": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{

						"items": {
							Type:     schema.TypeList,
							Computed: true,
							Elem:     tfresource.GetDataSourceItemSchema(ComputeCloudAtCustomerCccInfrastructureResource()),
						},
					},
				},
			},
		},
	}
}

func readComputeCloudAtCustomerCccInfrastructures(d *schema.ResourceData, m interface{}) error {
	sync := &ComputeCloudAtCustomerCccInfrastructuresDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).ComputeCloudAtCustomerClient()

	return tfresource.ReadResource(sync)
}

type ComputeCloudAtCustomerCccInfrastructuresDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_compute_cloud_at_customer.ComputeCloudAtCustomerClient
	Res    *oci_compute_cloud_at_customer.ListCccInfrastructuresResponse
}

func (s *ComputeCloudAtCustomerCccInfrastructuresDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *ComputeCloudAtCustomerCccInfrastructuresDataSourceCrud) Get() error {
	request := oci_compute_cloud_at_customer.ListCccInfrastructuresRequest{}

	if accessLevel, ok := s.D.GetOkExists("access_level"); ok {
		request.AccessLevel = oci_compute_cloud_at_customer.ListCccInfrastructuresAccessLevelEnum(accessLevel.(string))
	}

	if cccInfrastructureId, ok := s.D.GetOkExists("id"); ok {
		tmp := cccInfrastructureId.(string)
		request.CccInfrastructureId = &tmp
	}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if compartmentIdInSubtree, ok := s.D.GetOkExists("compartment_id_in_subtree"); ok {
		tmp := compartmentIdInSubtree.(bool)
		request.CompartmentIdInSubtree = &tmp
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if displayNameContains, ok := s.D.GetOkExists("display_name_contains"); ok {
		tmp := displayNameContains.(string)
		request.DisplayNameContains = &tmp
	}

	if state, ok := s.D.GetOkExists("state"); ok {
		request.LifecycleState = oci_compute_cloud_at_customer.CccInfrastructureLifecycleStateEnum(state.(string))
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "compute_cloud_at_customer")

	response, err := s.Client.ListCccInfrastructures(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListCccInfrastructures(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *ComputeCloudAtCustomerCccInfrastructuresDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("ComputeCloudAtCustomerCccInfrastructuresDataSource-", ComputeCloudAtCustomerCccInfrastructuresDataSource(), s.D))
	resources := []map[string]interface{}{}
	cccInfrastructure := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, CccInfrastructureSummaryToMap(item))
	}
	cccInfrastructure["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, ComputeCloudAtCustomerCccInfrastructuresDataSource().Schema["ccc_infrastructure_collection"].Elem.(*schema.Resource).Schema)
		cccInfrastructure["items"] = items
	}

	resources = append(resources, cccInfrastructure)
	if err := s.D.Set("ccc_infrastructure_collection", resources); err != nil {
		return err
	}

	return nil
}
