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

func CoreImageShapeDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readSingularCoreImageShape,
		Schema: map[string]*schema.Schema{
			"image_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"shape_name": {
				Type:     schema.TypeString,
				Required: true,
			},
			// Computed
			"memory_constraints": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required

						// Optional

						// Computed
						"max_in_gbs": {
							Type:     schema.TypeInt,
							Computed: true,
						},
						"min_in_gbs": {
							Type:     schema.TypeInt,
							Computed: true,
						},
					},
				},
			},
			"ocpu_constraints": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required

						// Optional

						// Computed
						"max": {
							Type:     schema.TypeInt,
							Computed: true,
						},
						"min": {
							Type:     schema.TypeInt,
							Computed: true,
						},
					},
				},
			},
			"shape": {
				Type:     schema.TypeString,
				Computed: true,
			},
		},
	}
}

func readSingularCoreImageShape(d *schema.ResourceData, m interface{}) error {
	sync := &CoreImageShapeDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).ComputeClient()

	return tfresource.ReadResource(sync)
}

type CoreImageShapeDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_core.ComputeClient
	Res    *oci_core.GetImageShapeCompatibilityEntryResponse
}

func (s *CoreImageShapeDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *CoreImageShapeDataSourceCrud) Get() error {
	request := oci_core.GetImageShapeCompatibilityEntryRequest{}

	if imageId, ok := s.D.GetOkExists("image_id"); ok {
		tmp := imageId.(string)
		request.ImageId = &tmp
	}

	if shapeName, ok := s.D.GetOkExists("shape_name"); ok {
		tmp := shapeName.(string)
		request.ShapeName = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "core")

	response, err := s.Client.GetImageShapeCompatibilityEntry(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	return nil
}

func (s *CoreImageShapeDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("CoreImageShapeDataSource-", CoreImageShapeDataSource(), s.D))

	if s.Res.MemoryConstraints != nil {
		s.D.Set("memory_constraints", []interface{}{ImageMemoryConstraintsToMap(s.Res.MemoryConstraints)})
	} else {
		s.D.Set("memory_constraints", nil)
	}

	if s.Res.OcpuConstraints != nil {
		s.D.Set("ocpu_constraints", []interface{}{ImageOcpuConstraintsToMap(s.Res.OcpuConstraints)})
	} else {
		s.D.Set("ocpu_constraints", nil)
	}

	if s.Res.Shape != nil {
		s.D.Set("shape", *s.Res.Shape)
	}

	return nil
}
