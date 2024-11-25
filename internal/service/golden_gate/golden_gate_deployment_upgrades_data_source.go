// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package golden_gate

import (
	"context"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_golden_gate "github.com/oracle/oci-go-sdk/v65/goldengate"
)

func GoldenGateDeploymentUpgradesDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readGoldenGateDeploymentUpgrades,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"compartment_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"deployment_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"display_name": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"state": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"deployment_upgrade_collection": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						"items": {
							Type:     schema.TypeList,
							Computed: true,
							Elem: &schema.Resource{
								Schema: map[string]*schema.Schema{
									// Required

									// Optional

									// Computed
									"compartment_id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"defined_tags": {
										Type:     schema.TypeMap,
										Computed: true,
										Elem:     schema.TypeString,
									},
									"deployment_id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"deployment_upgrade_type": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"description": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"display_name": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"freeform_tags": {
										Type:     schema.TypeMap,
										Computed: true,
										Elem:     schema.TypeString,
									},
									"id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"is_cancel_allowed": {
										Type:     schema.TypeBool,
										Computed: true,
									},
									"is_reschedule_allowed": {
										Type:     schema.TypeBool,
										Computed: true,
									},
									"is_rollback_allowed": {
										Type:     schema.TypeBool,
										Computed: true,
									},
									"is_security_fix": {
										Type:     schema.TypeBool,
										Computed: true,
									},
									"is_snoozed": {
										Type:     schema.TypeBool,
										Computed: true,
									},
									"lifecycle_details": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"lifecycle_sub_state": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"ogg_version": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"previous_ogg_version": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"release_type": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"state": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"system_tags": {
										Type:     schema.TypeMap,
										Computed: true,
										Elem:     schema.TypeString,
									},
									"time_created": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_finished": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_ogg_version_supported_until": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_released": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_schedule": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_schedule_max": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_snoozed_until": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_started": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_updated": {
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

func readGoldenGateDeploymentUpgrades(d *schema.ResourceData, m interface{}) error {
	sync := &GoldenGateDeploymentUpgradesDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).GoldenGateClient()

	return tfresource.ReadResource(sync)
}

type GoldenGateDeploymentUpgradesDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_golden_gate.GoldenGateClient
	Res    *oci_golden_gate.ListDeploymentUpgradesResponse
}

func (s *GoldenGateDeploymentUpgradesDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *GoldenGateDeploymentUpgradesDataSourceCrud) Get() error {
	request := oci_golden_gate.ListDeploymentUpgradesRequest{}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if deploymentId, ok := s.D.GetOkExists("deployment_id"); ok {
		tmp := deploymentId.(string)
		request.DeploymentId = &tmp
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if state, ok := s.D.GetOkExists("state"); ok {
		request.LifecycleState = oci_golden_gate.ListDeploymentUpgradesLifecycleStateEnum(state.(string))
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "golden_gate")

	response, err := s.Client.ListDeploymentUpgrades(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListDeploymentUpgrades(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *GoldenGateDeploymentUpgradesDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("GoldenGateDeploymentUpgradesDataSource-", GoldenGateDeploymentUpgradesDataSource(), s.D))
	resources := []map[string]interface{}{}
	deploymentUpgrade := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, DeploymentUpgradeSummaryToMap(item))
	}
	deploymentUpgrade["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, GoldenGateDeploymentUpgradesDataSource().Schema["deployment_upgrade_collection"].Elem.(*schema.Resource).Schema)
		deploymentUpgrade["items"] = items
	}

	resources = append(resources, deploymentUpgrade)
	if err := s.D.Set("deployment_upgrade_collection", resources); err != nil {
		return err
	}

	return nil
}

func DeploymentUpgradeSummaryToMap(obj oci_golden_gate.DeploymentUpgradeSummary) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.CompartmentId != nil {
		result["compartment_id"] = string(*obj.CompartmentId)
	}

	if obj.DefinedTags != nil {
		result["defined_tags"] = tfresource.DefinedTagsToMap(obj.DefinedTags)
	}

	if obj.DeploymentId != nil {
		result["deployment_id"] = string(*obj.DeploymentId)
	}

	result["deployment_upgrade_type"] = string(obj.DeploymentUpgradeType)

	if obj.Description != nil {
		result["description"] = string(*obj.Description)
	}

	if obj.DisplayName != nil {
		result["display_name"] = string(*obj.DisplayName)
	}

	result["freeform_tags"] = obj.FreeformTags

	if obj.Id != nil {
		result["id"] = string(*obj.Id)
	}

	if obj.IsCancelAllowed != nil {
		result["is_cancel_allowed"] = bool(*obj.IsCancelAllowed)
	}

	if obj.IsRescheduleAllowed != nil {
		result["is_reschedule_allowed"] = bool(*obj.IsRescheduleAllowed)
	}

	if obj.IsRollbackAllowed != nil {
		result["is_rollback_allowed"] = bool(*obj.IsRollbackAllowed)
	}

	if obj.IsSecurityFix != nil {
		result["is_security_fix"] = bool(*obj.IsSecurityFix)
	}

	if obj.IsSnoozed != nil {
		result["is_snoozed"] = bool(*obj.IsSnoozed)
	}

	if obj.LifecycleDetails != nil {
		result["lifecycle_details"] = string(*obj.LifecycleDetails)
	}

	result["lifecycle_sub_state"] = string(obj.LifecycleSubState)

	if obj.OggVersion != nil {
		result["ogg_version"] = string(*obj.OggVersion)
	}

	if obj.PreviousOggVersion != nil {
		result["previous_ogg_version"] = string(*obj.PreviousOggVersion)
	}

	result["release_type"] = string(obj.ReleaseType)

	result["state"] = string(obj.LifecycleState)

	if obj.SystemTags != nil {
		result["system_tags"] = tfresource.SystemTagsToMap(obj.SystemTags)
	}

	if obj.TimeCreated != nil {
		result["time_created"] = obj.TimeCreated.String()
	}

	if obj.TimeFinished != nil {
		result["time_finished"] = obj.TimeFinished.String()
	}

	if obj.TimeOggVersionSupportedUntil != nil {
		result["time_ogg_version_supported_until"] = obj.TimeOggVersionSupportedUntil.String()
	}

	if obj.TimeReleased != nil {
		result["time_released"] = obj.TimeReleased.String()
	}

	if obj.TimeSchedule != nil {
		result["time_schedule"] = obj.TimeSchedule.String()
	}

	if obj.TimeScheduleMax != nil {
		result["time_schedule_max"] = obj.TimeScheduleMax.String()
	}

	if obj.TimeSnoozedUntil != nil {
		result["time_snoozed_until"] = obj.TimeSnoozedUntil.String()
	}

	if obj.TimeStarted != nil {
		result["time_started"] = obj.TimeStarted.String()
	}

	if obj.TimeUpdated != nil {
		result["time_updated"] = obj.TimeUpdated.String()
	}

	return result
}
