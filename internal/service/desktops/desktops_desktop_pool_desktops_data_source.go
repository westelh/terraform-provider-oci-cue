// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package desktops

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_desktops "github.com/oracle/oci-go-sdk/v65/desktops"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func DesktopsDesktopPoolDesktopsDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readDesktopsDesktopPoolDesktops,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"availability_domain": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"compartment_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"desktop_pool_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"display_name": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"state": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"desktop_pool_desktop_collection": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required

						// Optional

						// Computed
						"items": {
							Type:     schema.TypeList,
							Computed: true,
							Elem: &schema.Resource{
								Schema: map[string]*schema.Schema{
									// Required

									// Optional

									// Computed
									"defined_tags": {
										Type:     schema.TypeMap,
										Computed: true,
										Elem:     schema.TypeString,
									},
									"desktop_id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"freeform_tags": {
										Type:     schema.TypeMap,
										Computed: true,
										Elem:     schema.TypeString,
									},
									"instance_id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"is_assigned": {
										Type:     schema.TypeBool,
										Computed: true,
									},
									"state": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_created": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"user_name": {
										Type:     schema.TypeString,
										Computed: true,
									},
								},
							},
						},
					},
				},
			},
		},
	}
}

func readDesktopsDesktopPoolDesktops(d *schema.ResourceData, m interface{}) error {
	sync := &DesktopsDesktopPoolDesktopsDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).DesktopServiceClient()

	return tfresource.ReadResource(sync)
}

type DesktopsDesktopPoolDesktopsDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_desktops.DesktopServiceClient
	Res    *oci_desktops.ListDesktopPoolDesktopsResponse
}

func (s *DesktopsDesktopPoolDesktopsDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DesktopsDesktopPoolDesktopsDataSourceCrud) Get() error {
	request := oci_desktops.ListDesktopPoolDesktopsRequest{}

	if availabilityDomain, ok := s.D.GetOkExists("availability_domain"); ok {
		tmp := availabilityDomain.(string)
		request.AvailabilityDomain = &tmp
	}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if desktopPoolId, ok := s.D.GetOkExists("desktop_pool_id"); ok {
		tmp := desktopPoolId.(string)
		request.DesktopPoolId = &tmp
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if id, ok := s.D.GetOkExists("id"); ok {
		tmp := id.(string)
		request.Id = &tmp
	}

	if state, ok := s.D.GetOkExists("state"); ok {
		tmp := state.(string)
		request.LifecycleState = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "desktops")

	response, err := s.Client.ListDesktopPoolDesktops(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListDesktopPoolDesktops(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *DesktopsDesktopPoolDesktopsDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("DesktopsDesktopPoolDesktopsDataSource-", DesktopsDesktopPoolDesktopsDataSource(), s.D))
	resources := []map[string]interface{}{}
	desktopPoolDesktop := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, DesktopPoolDesktopSummaryToMap(item))
	}
	desktopPoolDesktop["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, DesktopsDesktopPoolDesktopsDataSource().Schema["desktop_pool_desktop_collection"].Elem.(*schema.Resource).Schema)
		desktopPoolDesktop["items"] = items
	}

	resources = append(resources, desktopPoolDesktop)
	if err := s.D.Set("desktop_pool_desktop_collection", resources); err != nil {
		return err
	}

	return nil
}

func DesktopPoolDesktopSummaryToMap(obj oci_desktops.DesktopPoolDesktopSummary) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.DefinedTags != nil {
		result["defined_tags"] = tfresource.DefinedTagsToMap(obj.DefinedTags)
	}

	if obj.DesktopId != nil {
		result["desktop_id"] = string(*obj.DesktopId)
	}

	result["freeform_tags"] = obj.FreeformTags

	if obj.InstanceId != nil {
		result["instance_id"] = string(*obj.InstanceId)
	}

	if obj.IsAssigned != nil {
		result["is_assigned"] = bool(*obj.IsAssigned)
	}

	result["state"] = string(obj.LifecycleState)

	if obj.TimeCreated != nil {
		result["time_created"] = obj.TimeCreated.String()
	}

	if obj.UserName != nil {
		result["user_name"] = string(*obj.UserName)
	}

	return result
}
