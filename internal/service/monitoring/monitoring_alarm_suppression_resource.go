// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package monitoring

import (
	"context"
	"fmt"
	"log"
	"strings"
	"time"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/validation"

	oci_common "github.com/oracle/oci-go-sdk/v65/common"
	oci_monitoring "github.com/oracle/oci-go-sdk/v65/monitoring"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func MonitoringAlarmSuppressionResource() *schema.Resource {
	return &schema.Resource{
		Importer: &schema.ResourceImporter{
			State: schema.ImportStatePassthrough,
		},
		Timeouts: tfresource.DefaultTimeout,
		Create:   createMonitoringAlarmSuppression,
		Read:     readMonitoringAlarmSuppression,
		Delete:   deleteMonitoringAlarmSuppression,
		Schema: map[string]*schema.Schema{
			// Required
			"alarm_suppression_target": {
				Type:     schema.TypeList,
				Required: true,
				ForceNew: true,
				MaxItems: 1,
				MinItems: 1,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required
						"target_type": {
							Type:             schema.TypeString,
							Required:         true,
							ForceNew:         true,
							DiffSuppressFunc: tfresource.EqualIgnoreCaseSuppressDiff,
							ValidateFunc: validation.StringInSlice([]string{
								"ALARM",
								"COMPARTMENT",
							}, true),
						},

						// Optional
						"alarm_id": {
							Type:     schema.TypeString,
							Optional: true,
							Computed: true,
							ForceNew: true,
						},
						"compartment_id": {
							Type:     schema.TypeString,
							Optional: true,
							Computed: true,
							ForceNew: true,
						},
						"compartment_id_in_subtree": {
							Type:     schema.TypeBool,
							Optional: true,
							Computed: true,
							ForceNew: true,
						},

						// Computed
					},
				},
			},
			"display_name": {
				Type:     schema.TypeString,
				Required: true,
				ForceNew: true,
			},
			"time_suppress_from": {
				Type:             schema.TypeString,
				Required:         true,
				ForceNew:         true,
				DiffSuppressFunc: tfresource.TimeDiffSuppressFunction,
			},
			"time_suppress_until": {
				Type:             schema.TypeString,
				Required:         true,
				ForceNew:         true,
				DiffSuppressFunc: tfresource.TimeDiffSuppressFunction,
			},

			// Optional
			"defined_tags": {
				Type:             schema.TypeMap,
				Optional:         true,
				Computed:         true,
				ForceNew:         true,
				DiffSuppressFunc: tfresource.DefinedTagsDiffSuppressFunction,
				Elem:             schema.TypeString,
			},
			"description": {
				Type:     schema.TypeString,
				Optional: true,
				Computed: true,
				ForceNew: true,
			},
			"dimensions": {
				Type:     schema.TypeMap,
				Optional: true,
				Computed: true,
				ForceNew: true,
				Elem:     schema.TypeString,
			},
			"freeform_tags": {
				Type:     schema.TypeMap,
				Optional: true,
				Computed: true,
				ForceNew: true,
				Elem:     schema.TypeString,
			},
			"level": {
				Type:     schema.TypeString,
				Optional: true,
				Computed: true,
				ForceNew: true,
			},
			"suppression_conditions": {
				Type:     schema.TypeList,
				Optional: true,
				Computed: true,
				ForceNew: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required
						"condition_type": {
							Type:             schema.TypeString,
							Required:         true,
							ForceNew:         true,
							DiffSuppressFunc: tfresource.EqualIgnoreCaseSuppressDiff,
							ValidateFunc: validation.StringInSlice([]string{
								"RECURRENCE",
							}, true),
						},
						"suppression_duration": {
							Type:     schema.TypeString,
							Required: true,
							ForceNew: true,
						},
						"suppression_recurrence": {
							Type:     schema.TypeString,
							Required: true,
							ForceNew: true,
						},

						// Optional

						// Computed
					},
				},
			},

			// Computed
			"compartment_id": {
				Type:     schema.TypeString,
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
			"time_updated": {
				Type:     schema.TypeString,
				Computed: true,
			},
		},
	}
}

func createMonitoringAlarmSuppression(d *schema.ResourceData, m interface{}) error {
	sync := &MonitoringAlarmSuppressionResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).MonitoringClient()

	return tfresource.CreateResource(d, sync)
}

func readMonitoringAlarmSuppression(d *schema.ResourceData, m interface{}) error {
	sync := &MonitoringAlarmSuppressionResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).MonitoringClient()

	return tfresource.ReadResource(sync)
}

func deleteMonitoringAlarmSuppression(d *schema.ResourceData, m interface{}) error {
	sync := &MonitoringAlarmSuppressionResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).MonitoringClient()
	sync.DisableNotFoundRetries = true

	return tfresource.DeleteResource(d, sync)
}

type MonitoringAlarmSuppressionResourceCrud struct {
	tfresource.BaseCrud
	Client                 *oci_monitoring.MonitoringClient
	Res                    *oci_monitoring.AlarmSuppression
	DisableNotFoundRetries bool
}

func (s *MonitoringAlarmSuppressionResourceCrud) ID() string {
	return *s.Res.Id
}

func (s *MonitoringAlarmSuppressionResourceCrud) CreatedPending() []string {
	return []string{}
}

func (s *MonitoringAlarmSuppressionResourceCrud) CreatedTarget() []string {
	return []string{
		string(oci_monitoring.AlarmSuppressionLifecycleStateActive),
	}
}

func (s *MonitoringAlarmSuppressionResourceCrud) DeletedPending() []string {
	return []string{}
}

func (s *MonitoringAlarmSuppressionResourceCrud) DeletedTarget() []string {
	return []string{
		string(oci_monitoring.AlarmSuppressionLifecycleStateDeleted),
	}
}

func (s *MonitoringAlarmSuppressionResourceCrud) Create() error {
	request := oci_monitoring.CreateAlarmSuppressionRequest{}

	if alarmSuppressionTarget, ok := s.D.GetOkExists("alarm_suppression_target"); ok {
		if tmpList := alarmSuppressionTarget.([]interface{}); len(tmpList) > 0 {
			fieldKeyFormat := fmt.Sprintf("%s.%d.%%s", "alarm_suppression_target", 0)
			tmp, err := s.mapToAlarmSuppressionTarget(fieldKeyFormat)
			if err != nil {
				return err
			}
			request.AlarmSuppressionTarget = tmp
		}
	}

	if definedTags, ok := s.D.GetOkExists("defined_tags"); ok {
		convertedDefinedTags, err := tfresource.MapToDefinedTags(definedTags.(map[string]interface{}))
		if err != nil {
			return err
		}
		request.DefinedTags = convertedDefinedTags
	}

	if description, ok := s.D.GetOkExists("description"); ok {
		tmp := description.(string)
		request.Description = &tmp
	}

	if dimensions, ok := s.D.GetOkExists("dimensions"); ok {
		request.Dimensions = tfresource.ObjectMapToStringMap(dimensions.(map[string]interface{}))
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if freeformTags, ok := s.D.GetOkExists("freeform_tags"); ok {
		request.FreeformTags = tfresource.ObjectMapToStringMap(freeformTags.(map[string]interface{}))
	}

	if level, ok := s.D.GetOkExists("level"); ok {
		request.Level = oci_monitoring.AlarmSuppressionLevelEnum(level.(string))
	}

	if suppressionConditions, ok := s.D.GetOkExists("suppression_conditions"); ok {
		interfaces := suppressionConditions.([]interface{})
		tmp := make([]oci_monitoring.SuppressionCondition, len(interfaces))
		for i := range interfaces {
			stateDataIndex := i
			fieldKeyFormat := fmt.Sprintf("%s.%d.%%s", "suppression_conditions", stateDataIndex)
			converted, err := s.mapToSuppressionCondition(fieldKeyFormat)
			if err != nil {
				return err
			}
			tmp[i] = converted
		}
		if len(tmp) != 0 || s.D.HasChange("suppression_conditions") {
			request.SuppressionConditions = tmp
		}
	}

	if timeSuppressFrom, ok := s.D.GetOkExists("time_suppress_from"); ok {
		tmp, err := time.Parse(time.RFC3339, timeSuppressFrom.(string))
		if err != nil {
			return err
		}
		request.TimeSuppressFrom = &oci_common.SDKTime{Time: tmp}
	}

	if timeSuppressUntil, ok := s.D.GetOkExists("time_suppress_until"); ok {
		tmp, err := time.Parse(time.RFC3339, timeSuppressUntil.(string))
		if err != nil {
			return err
		}
		request.TimeSuppressUntil = &oci_common.SDKTime{Time: tmp}
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "monitoring")

	response, err := s.Client.CreateAlarmSuppression(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response.AlarmSuppression
	return nil
}

func (s *MonitoringAlarmSuppressionResourceCrud) Get() error {
	request := oci_monitoring.GetAlarmSuppressionRequest{}

	tmp := s.D.Id()
	request.AlarmSuppressionId = &tmp

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "monitoring")

	response, err := s.Client.GetAlarmSuppression(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response.AlarmSuppression
	return nil
}

func (s *MonitoringAlarmSuppressionResourceCrud) Delete() error {
	request := oci_monitoring.DeleteAlarmSuppressionRequest{}

	tmp := s.D.Id()
	request.AlarmSuppressionId = &tmp

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "monitoring")

	_, err := s.Client.DeleteAlarmSuppression(context.Background(), request)
	return err
}

func (s *MonitoringAlarmSuppressionResourceCrud) SetData() error {
	if s.Res.AlarmSuppressionTarget != nil {
		alarmSuppressionTargetArray := []interface{}{}
		if alarmSuppressionTargetMap := AlarmSuppressionTargetToMap(&s.Res.AlarmSuppressionTarget); alarmSuppressionTargetMap != nil {
			alarmSuppressionTargetArray = append(alarmSuppressionTargetArray, alarmSuppressionTargetMap)
		}
		s.D.Set("alarm_suppression_target", alarmSuppressionTargetArray)
	} else {
		s.D.Set("alarm_suppression_target", nil)
	}

	if s.Res.CompartmentId != nil {
		s.D.Set("compartment_id", *s.Res.CompartmentId)
	}

	if s.Res.DefinedTags != nil {
		s.D.Set("defined_tags", tfresource.DefinedTagsToMap(s.Res.DefinedTags))
	}

	if s.Res.Description != nil {
		s.D.Set("description", *s.Res.Description)
	}

	s.D.Set("dimensions", s.Res.Dimensions)

	if s.Res.DisplayName != nil {
		s.D.Set("display_name", *s.Res.DisplayName)
	}

	s.D.Set("freeform_tags", s.Res.FreeformTags)

	s.D.Set("level", s.Res.Level)

	s.D.Set("state", s.Res.LifecycleState)

	suppressionConditions := []interface{}{}
	for _, item := range s.Res.SuppressionConditions {
		suppressionConditions = append(suppressionConditions, SuppressionConditionToMap(item))
	}
	s.D.Set("suppression_conditions", suppressionConditions)

	if s.Res.TimeCreated != nil {
		s.D.Set("time_created", s.Res.TimeCreated.String())
	}

	if s.Res.TimeSuppressFrom != nil {
		s.D.Set("time_suppress_from", s.Res.TimeSuppressFrom.Format(time.RFC3339Nano))
	}

	if s.Res.TimeSuppressUntil != nil {
		s.D.Set("time_suppress_until", s.Res.TimeSuppressUntil.Format(time.RFC3339Nano))
	}

	if s.Res.TimeUpdated != nil {
		s.D.Set("time_updated", s.Res.TimeUpdated.String())
	}

	return nil
}

func AlarmSuppressionSummaryToMap(obj oci_monitoring.AlarmSuppressionSummary) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.AlarmSuppressionTarget != nil {
		alarmSuppressionTargetArray := []interface{}{}
		if alarmSuppressionTargetMap := AlarmSuppressionTargetToMap(&obj.AlarmSuppressionTarget); alarmSuppressionTargetMap != nil {
			alarmSuppressionTargetArray = append(alarmSuppressionTargetArray, alarmSuppressionTargetMap)
		}
		result["alarm_suppression_target"] = alarmSuppressionTargetArray
	}

	if obj.CompartmentId != nil {
		result["compartment_id"] = string(*obj.CompartmentId)
	}

	if obj.DefinedTags != nil {
		result["defined_tags"] = tfresource.DefinedTagsToMap(obj.DefinedTags)
	}

	if obj.Description != nil {
		result["description"] = string(*obj.Description)
	}

	result["dimensions"] = obj.Dimensions

	if obj.DisplayName != nil {
		result["display_name"] = string(*obj.DisplayName)
	}

	result["freeform_tags"] = obj.FreeformTags

	if obj.Id != nil {
		result["id"] = string(*obj.Id)
	}

	result["level"] = string(obj.Level)

	result["state"] = string(obj.LifecycleState)

	suppressionConditions := []interface{}{}
	for _, item := range obj.SuppressionConditions {
		suppressionConditions = append(suppressionConditions, SuppressionConditionToMap(item))
	}
	result["suppression_conditions"] = suppressionConditions

	if obj.TimeCreated != nil {
		result["time_created"] = obj.TimeCreated.String()
	}

	if obj.TimeSuppressFrom != nil {
		result["time_suppress_from"] = obj.TimeSuppressFrom.String()
	}

	if obj.TimeSuppressUntil != nil {
		result["time_suppress_until"] = obj.TimeSuppressUntil.String()
	}

	if obj.TimeUpdated != nil {
		result["time_updated"] = obj.TimeUpdated.String()
	}

	return result
}

func (s *MonitoringAlarmSuppressionResourceCrud) mapToAlarmSuppressionTarget(fieldKeyFormat string) (oci_monitoring.AlarmSuppressionTarget, error) {
	var baseObject oci_monitoring.AlarmSuppressionTarget
	//discriminator
	targetTypeRaw, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "target_type"))
	var targetType string
	if ok {
		targetType = targetTypeRaw.(string)
	} else {
		targetType = "" // default value
	}
	switch strings.ToLower(targetType) {
	case strings.ToLower("ALARM"):
		details := oci_monitoring.AlarmSuppressionAlarmTarget{}
		if alarmId, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "alarm_id")); ok {
			tmp := alarmId.(string)
			details.AlarmId = &tmp
		}
		baseObject = details
	case strings.ToLower("COMPARTMENT"):
		details := oci_monitoring.AlarmSuppressionCompartmentTarget{}
		if compartmentId, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "compartment_id")); ok {
			tmp := compartmentId.(string)
			details.CompartmentId = &tmp
		}
		if compartmentIdInSubtree, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "compartment_id_in_subtree")); ok {
			tmp := compartmentIdInSubtree.(bool)
			details.CompartmentIdInSubtree = &tmp
		}
		baseObject = details
	default:
		return nil, fmt.Errorf("unknown target_type '%v' was specified", targetType)
	}
	return baseObject, nil
}

func AlarmSuppressionTargetToMap(obj *oci_monitoring.AlarmSuppressionTarget) map[string]interface{} {
	result := map[string]interface{}{}
	switch v := (*obj).(type) {
	case oci_monitoring.AlarmSuppressionAlarmTarget:
		result["target_type"] = "ALARM"

		if v.AlarmId != nil {
			result["alarm_id"] = string(*v.AlarmId)
		}
	case oci_monitoring.AlarmSuppressionCompartmentTarget:
		result["target_type"] = "COMPARTMENT"

		if v.CompartmentId != nil {
			result["compartment_id"] = string(*v.CompartmentId)
		}

		if v.CompartmentIdInSubtree != nil {
			result["compartment_id_in_subtree"] = bool(*v.CompartmentIdInSubtree)
		}
	default:
		log.Printf("[WARN] Received 'target_type' of unknown type %v", *obj)
		return nil
	}

	return result
}

func (s *MonitoringAlarmSuppressionResourceCrud) mapToSuppressionCondition(fieldKeyFormat string) (oci_monitoring.SuppressionCondition, error) {
	var baseObject oci_monitoring.SuppressionCondition
	//discriminator
	conditionTypeRaw, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "condition_type"))
	var conditionType string
	if ok {
		conditionType = conditionTypeRaw.(string)
	} else {
		conditionType = "" // default value
	}
	switch strings.ToLower(conditionType) {
	case strings.ToLower("RECURRENCE"):
		details := oci_monitoring.Recurrence{}
		if suppressionDuration, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "suppression_duration")); ok {
			tmp := suppressionDuration.(string)
			details.SuppressionDuration = &tmp
		}
		if suppressionRecurrence, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "suppression_recurrence")); ok {
			tmp := suppressionRecurrence.(string)
			details.SuppressionRecurrence = &tmp
		}
		baseObject = details
	default:
		return nil, fmt.Errorf("unknown condition_type '%v' was specified", conditionType)
	}
	return baseObject, nil
}

func SuppressionConditionToMap(obj oci_monitoring.SuppressionCondition) map[string]interface{} {
	result := map[string]interface{}{}
	switch v := (obj).(type) {
	case oci_monitoring.Recurrence:
		result["condition_type"] = "RECURRENCE"

		if v.SuppressionDuration != nil {
			result["suppression_duration"] = string(*v.SuppressionDuration)
		}

		if v.SuppressionRecurrence != nil {
			result["suppression_recurrence"] = string(*v.SuppressionRecurrence)
		}
	default:
		log.Printf("[WARN] Received 'condition_type' of unknown type %v", obj)
		return nil
	}

	return result
}
