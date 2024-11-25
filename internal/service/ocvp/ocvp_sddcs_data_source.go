// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package ocvp

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_ocvp "github.com/oracle/oci-go-sdk/v65/ocvp"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func OcvpSddcsDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readOcvpSddcs,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"compartment_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"display_name": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"state": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"compute_availability_domain": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"sddc_collection": {
				Type:     schema.TypeList,
				Computed: true,
				Elem:     tfresource.GetDataSourceItemSchema(OcvpSddcResource()),
			},
		},
	}
}

func readOcvpSddcs(d *schema.ResourceData, m interface{}) error {
	sync := &OcvpSddcsDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).SddcClient()
	sync.ClusterClient = m.(*client.OracleClients).ClusterClient()

	return tfresource.ReadResource(sync)
}

type OcvpSddcsDataSourceCrud struct {
	D             *schema.ResourceData
	Client        *oci_ocvp.SddcClient
	ClusterClient *oci_ocvp.ClusterClient
	Res           *oci_ocvp.ListSddcsResponse
}

func (s *OcvpSddcsDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *OcvpSddcsDataSourceCrud) Get() error {
	request := oci_ocvp.ListSddcsRequest{}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if computeAvailabilityDomain, ok := s.D.GetOkExists("compute_availability_domain"); ok {
		tmp := computeAvailabilityDomain.(string)
		request.ComputeAvailabilityDomain = &tmp
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if state, ok := s.D.GetOkExists("state"); ok {
		request.LifecycleState = oci_ocvp.ListSddcsLifecycleStateEnum(state.(string))
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "ocvp")

	response, err := s.Client.ListSddcs(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	return nil
}

func (s *OcvpSddcsDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("OcvpSddcsDataSource-", OcvpSddcsDataSource(), s.D))

	resources := []map[string]interface{}{}
	for _, item := range s.Res.Items {
		sddcSummary, err := SddcSummaryToMap(item, s.Client, s.ClusterClient)
		if err != nil {
			return err
		}
		resources = append(resources, sddcSummary)
	}

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		resources = tfresource.ApplyFilters(f.(*schema.Set), resources, OcvpSddcsDataSource().Schema["sddc_collection"].Elem.(*schema.Resource).Schema)
	}

	if err := s.D.Set("sddc_collection", resources); err != nil {
		return err
	}

	return nil
}
