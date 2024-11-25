// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package core

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_core "github.com/oracle/oci-go-sdk/v65/core"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func CoreCpeDeviceShapesDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readCoreCpeDeviceShapes,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"cpe_device_shapes": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required

						// Optional

						// Computed
						"cpe_device_info": {
							Type:     schema.TypeList,
							Computed: true,
							Elem: &schema.Resource{
								Schema: map[string]*schema.Schema{
									// Required

									// Optional

									// Computed
									"platform_software_version": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"vendor": {
										Type:     schema.TypeString,
										Computed: true,
									},
								},
							},
						},
						"cpe_device_shape_id": {
							Type:     schema.TypeString,
							Computed: true,
						},
						"template": {
							Type:     schema.TypeString,
							Computed: true,
						},
					},
				},
			},
		},
	}
}

func readCoreCpeDeviceShapes(d *schema.ResourceData, m interface{}) error {
	sync := &CoreCpeDeviceShapesDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).VirtualNetworkClient()

	return tfresource.ReadResource(sync)
}

type CoreCpeDeviceShapesDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_core.VirtualNetworkClient
	Res    *oci_core.ListCpeDeviceShapesResponse
}

func (s *CoreCpeDeviceShapesDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *CoreCpeDeviceShapesDataSourceCrud) Get() error {
	request := oci_core.ListCpeDeviceShapesRequest{}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "core")

	response, err := s.Client.ListCpeDeviceShapes(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListCpeDeviceShapes(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *CoreCpeDeviceShapesDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("CoreCpeDeviceShapesDataSource-", CoreCpeDeviceShapesDataSource(), s.D))
	resources := []map[string]interface{}{}

	for _, r := range s.Res.Items {
		cpeDeviceShape := map[string]interface{}{}

		if r.CpeDeviceInfo != nil {
			cpeDeviceShape["cpe_device_info"] = []interface{}{CpeDeviceInfoToMap(r.CpeDeviceInfo)}
		} else {
			cpeDeviceShape["cpe_device_info"] = nil
		}

		if r.Id != nil {
			cpeDeviceShape["cpe_device_shape_id"] = *r.Id
		}

		resources = append(resources, cpeDeviceShape)
	}

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		resources = tfresource.ApplyFilters(f.(*schema.Set), resources, CoreCpeDeviceShapesDataSource().Schema["cpe_device_shapes"].Elem.(*schema.Resource).Schema)
	}

	if err := s.D.Set("cpe_device_shapes", resources); err != nil {
		return err
	}

	return nil
}

func CpeDeviceConfigQuestionToMap(obj oci_core.CpeDeviceConfigQuestion) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.DisplayName != nil {
		result["display_name"] = string(*obj.DisplayName)
	}

	if obj.Explanation != nil {
		result["explanation"] = string(*obj.Explanation)
	}

	if obj.Key != nil {
		result["key"] = string(*obj.Key)
	}

	return result
}

func CpeDeviceInfoToMap(obj *oci_core.CpeDeviceInfo) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.PlatformSoftwareVersion != nil {
		result["platform_software_version"] = string(*obj.PlatformSoftwareVersion)
	}

	if obj.Vendor != nil {
		result["vendor"] = string(*obj.Vendor)
	}

	return result
}
