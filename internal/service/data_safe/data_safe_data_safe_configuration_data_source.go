// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package data_safe

import (
	"context"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_data_safe "github.com/oracle/oci-go-sdk/v65/datasafe"
)

func DataSafeDataSafeConfigurationDataSource() *schema.Resource {
	fieldMap := make(map[string]*schema.Schema)
	fieldMap["compartment_id"] = &schema.Schema{
		Type:     schema.TypeString,
		Required: true,
	}
	return tfresource.GetSingularDataSourceItemSchema(DataSafeDataSafeConfigurationResource(), fieldMap, readSingularDataSafeDataSafeConfiguration)
}

func readSingularDataSafeDataSafeConfiguration(d *schema.ResourceData, m interface{}) error {
	sync := &DataSafeDataSafeConfigurationDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).DataSafeClient()

	return tfresource.ReadResource(sync)
}

type DataSafeDataSafeConfigurationDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_data_safe.DataSafeClient
	Res    *oci_data_safe.GetDataSafeConfigurationResponse
}

func (s *DataSafeDataSafeConfigurationDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DataSafeDataSafeConfigurationDataSourceCrud) Get() error {
	request := oci_data_safe.GetDataSafeConfigurationRequest{}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "data_safe")

	response, err := s.Client.GetDataSafeConfiguration(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	return nil
}

func (s *DataSafeDataSafeConfigurationDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("DataSafeDataSafeConfigurationDataSource-", DataSafeDataSafeConfigurationDataSource(), s.D))

	if s.Res.CompartmentId != nil {
		s.D.Set("compartment_id", *s.Res.CompartmentId)
	}

	if s.Res.DataSafeNatGatewayIpAddress != nil {
		s.D.Set("data_safe_nat_gateway_ip_address", *s.Res.DataSafeNatGatewayIpAddress)
	}

	if s.Res.DefinedTags != nil {
		s.D.Set("defined_tags", tfresource.DefinedTagsToMap(s.Res.DefinedTags))
	}

	s.D.Set("freeform_tags", s.Res.FreeformTags)

	if s.Res.GlobalSettings != nil {
		s.D.Set("global_settings", []interface{}{GlobalSettingsToMap(s.Res.GlobalSettings)})
	} else {
		s.D.Set("global_settings", nil)
	}
	if s.Res.IsEnabled != nil {
		s.D.Set("is_enabled", *s.Res.IsEnabled)
	}

	s.D.Set("state", s.Res.LifecycleState)

	if s.Res.TimeEnabled != nil {
		s.D.Set("time_enabled", s.Res.TimeEnabled.String())
	}

	if s.Res.Url != nil {
		s.D.Set("url", *s.Res.Url)
	}

	return nil
}
