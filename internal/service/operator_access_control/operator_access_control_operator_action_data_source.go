// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package operator_access_control

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_operator_access_control "github.com/oracle/oci-go-sdk/v65/operatoraccesscontrol"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func OperatorAccessControlOperatorActionDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readSingularOperatorAccessControlOperatorAction,
		Schema: map[string]*schema.Schema{
			"operator_action_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			// Computed
			"component": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"customer_display_name": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"description": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"name": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"properties": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required

						// Optional

						// Computed
						"name": {
							Type:     schema.TypeString,
							Computed: true,
						},
						"value": {
							Type:     schema.TypeString,
							Computed: true,
						},
					},
				},
			},
			"resource_type": {
				Type:     schema.TypeString,
				Computed: true,
			},
		},
	}
}

func readSingularOperatorAccessControlOperatorAction(d *schema.ResourceData, m interface{}) error {
	sync := &OperatorAccessControlOperatorActionDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).OperatorActionsClient()

	return tfresource.ReadResource(sync)
}

type OperatorAccessControlOperatorActionDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_operator_access_control.OperatorActionsClient
	Res    *oci_operator_access_control.GetOperatorActionResponse
}

func (s *OperatorAccessControlOperatorActionDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *OperatorAccessControlOperatorActionDataSourceCrud) Get() error {
	request := oci_operator_access_control.GetOperatorActionRequest{}

	if operatorActionId, ok := s.D.GetOkExists("operator_action_id"); ok {
		tmp := operatorActionId.(string)
		request.OperatorActionId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "operator_access_control")

	response, err := s.Client.GetOperatorAction(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	return nil
}

func (s *OperatorAccessControlOperatorActionDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(*s.Res.Id)

	if s.Res.Component != nil {
		s.D.Set("component", *s.Res.Component)
	}

	if s.Res.CustomerDisplayName != nil {
		s.D.Set("customer_display_name", *s.Res.CustomerDisplayName)
	}

	if s.Res.Description != nil {
		s.D.Set("description", *s.Res.Description)
	}

	if s.Res.Name != nil {
		s.D.Set("name", *s.Res.Name)
	}

	properties := []interface{}{}
	for _, item := range s.Res.Properties {
		properties = append(properties, OperatorActionPropertiesToMap(item))
	}
	s.D.Set("properties", properties)

	s.D.Set("resource_type", s.Res.ResourceType)

	return nil
}
