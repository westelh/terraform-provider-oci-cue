// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package core

import (
	"bytes"
	"context"
	"fmt"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
	"github.com/westelh/terraform-provider-oci-cue/internal/utils"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"

	oci_core "github.com/oracle/oci-go-sdk/v65/core"
)

func CoreClusterNetworkResource() *schema.Resource {
	return &schema.Resource{
		Importer: &schema.ResourceImporter{
			State: schema.ImportStatePassthrough,
		},
		Timeouts: tfresource.DefaultTimeout,
		Create:   createCoreClusterNetwork,
		Read:     readCoreClusterNetwork,
		Update:   updateCoreClusterNetwork,
		Delete:   deleteCoreClusterNetwork,
		Schema: map[string]*schema.Schema{
			// Required
			"compartment_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"instance_pools": {
				Type:     schema.TypeList,
				Required: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required
						"instance_configuration_id": {
							Type:     schema.TypeString,
							Required: true,
						},
						"size": {
							Type:     schema.TypeInt,
							Required: true,
						},

						// Optional
						"defined_tags": {
							Type:             schema.TypeMap,
							Optional:         true,
							Computed:         true,
							DiffSuppressFunc: tfresource.DefinedTagsDiffSuppressFunction,
							Elem:             schema.TypeString,
						},
						"display_name": {
							Type:     schema.TypeString,
							Optional: true,
							Computed: true,
						},
						"freeform_tags": {
							Type:     schema.TypeMap,
							Optional: true,
							Computed: true,
							Elem:     schema.TypeString,
						},
						// Computed
						"id": {
							Type:     schema.TypeString,
							Computed: true,
						},
						"instance_display_name_formatter": {
							Type:     schema.TypeString,
							Computed: true,
						},
						"instance_hostname_formatter": {
							Type:     schema.TypeString,
							Computed: true,
						},
						"compartment_id": {
							Type:     schema.TypeString,
							Computed: true,
						},
						"load_balancers": {
							Type:     schema.TypeList,
							Computed: true,
							Elem: &schema.Resource{
								Schema: map[string]*schema.Schema{
									// Required

									// Optional

									// Computed
									"backend_set_name": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"instance_pool_id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"load_balancer_id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"port": {
										Type:     schema.TypeInt,
										Computed: true,
									},
									"state": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"vnic_selection": {
										Type:     schema.TypeString,
										Computed: true,
									},
								},
							},
						},
						"placement_configurations": {
							Type:     schema.TypeList,
							Computed: true,
							Elem: &schema.Resource{
								Schema: map[string]*schema.Schema{
									// Required

									// Optional

									// Computed
									"availability_domain": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"fault_domains": {
										Type:     schema.TypeList,
										Computed: true,
										Elem: &schema.Schema{
											Type: schema.TypeString,
										},
									},
									"primary_subnet_id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"primary_vnic_subnets": {
										Type:     schema.TypeList,
										Computed: true,
										Elem: &schema.Resource{
											Schema: map[string]*schema.Schema{
												// Required

												// Optional

												// Computed
												"ipv6address_ipv6subnet_cidr_pair_details": {
													Type:     schema.TypeList,
													Computed: true,
													Elem: &schema.Resource{
														Schema: map[string]*schema.Schema{
															// Required

															// Optional

															// Computed
															"ipv6subnet_cidr": {
																Type:     schema.TypeString,
																Computed: true,
															},
														},
													},
												},
												"is_assign_ipv6ip": {
													Type:     schema.TypeBool,
													Computed: true,
												},
												"subnet_id": {
													Type:     schema.TypeString,
													Computed: true,
												},
											},
										},
									},
									"secondary_vnic_subnets": {
										Type:     schema.TypeSet,
										Computed: true,
										Elem: &schema.Resource{
											Schema: map[string]*schema.Schema{
												// Required

												// Optional

												// Computed
												"display_name": {
													Type:     schema.TypeString,
													Computed: true,
												},
												"ipv6address_ipv6subnet_cidr_pair_details": {
													Type:     schema.TypeList,
													Computed: true,
													Elem: &schema.Resource{
														Schema: map[string]*schema.Schema{
															// Required

															// Optional

															// Computed
															"ipv6subnet_cidr": {
																Type:     schema.TypeString,
																Computed: true,
															},
														},
													},
												},
												"is_assign_ipv6ip": {
													Type:     schema.TypeBool,
													Computed: true,
												},
												"subnet_id": {
													Type:     schema.TypeString,
													Computed: true,
												},
											},
										},
									},
								},
							},
						},
						"state": {
							Type:     schema.TypeString,
							Computed: true,
						},
						"time_created": {
							Type:     schema.TypeString,
							Computed: true,
						},
					},
				},
			},
			"placement_configuration": {
				Type:     schema.TypeList,
				Required: true,
				ForceNew: true,
				MaxItems: 1,
				MinItems: 1,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required
						"availability_domain": {
							Type:             schema.TypeString,
							Required:         true,
							ForceNew:         true,
							DiffSuppressFunc: tfresource.EqualIgnoreCaseSuppressDiff,
						},
						// Optional
						"primary_subnet_id": {
							Type:     schema.TypeString,
							Optional: true,
							Computed: true,
							ForceNew: true,
						},
						// Optional
						"placement_constraint": {
							Type:     schema.TypeString,
							Optional: true,
							Computed: true,
							ForceNew: true,
						},
						"primary_vnic_subnets": {
							Type:     schema.TypeList,
							Optional: true,
							Computed: true,
							ForceNew: true,
							MaxItems: 1,
							MinItems: 1,
							Elem: &schema.Resource{
								Schema: map[string]*schema.Schema{
									// Required
									"subnet_id": {
										Type:     schema.TypeString,
										Required: true,
										ForceNew: true,
									},

									// Optional
									"ipv6address_ipv6subnet_cidr_pair_details": {
										Type:     schema.TypeList,
										Optional: true,
										Computed: true,
										ForceNew: true,
										Elem: &schema.Resource{
											Schema: map[string]*schema.Schema{
												// Required

												// Optional
												"ipv6subnet_cidr": {
													Type:     schema.TypeString,
													Optional: true,
													Computed: true,
													ForceNew: true,
												},

												// Computed
											},
										},
									},
									"is_assign_ipv6ip": {
										Type:     schema.TypeBool,
										Optional: true,
										Computed: true,
										ForceNew: true,
									},

									// Computed
								},
							},
						},
						"secondary_vnic_subnets": {
							Type:     schema.TypeSet,
							Optional: true,
							Computed: true,
							ForceNew: true,
							Set:      secondaryVnicSubnetsHashCodeForSets,
							Elem: &schema.Resource{
								Schema: map[string]*schema.Schema{
									// Required
									"subnet_id": {
										Type:     schema.TypeString,
										Required: true,
										ForceNew: true,
									},

									// Optional
									"display_name": {
										Type:     schema.TypeString,
										Optional: true,
										Computed: true,
										ForceNew: true,
									},
									"ipv6address_ipv6subnet_cidr_pair_details": {
										Type:     schema.TypeList,
										Optional: true,
										Computed: true,
										ForceNew: true,
										Elem: &schema.Resource{
											Schema: map[string]*schema.Schema{
												// Required

												// Optional
												"ipv6subnet_cidr": {
													Type:     schema.TypeString,
													Optional: true,
													Computed: true,
													ForceNew: true,
												},

												// Computed
											},
										},
									},
									"is_assign_ipv6ip": {
										Type:     schema.TypeBool,
										Optional: true,
										Computed: true,
										ForceNew: true,
									},

									// Computed
								},
							},
						},

						// Computed
					},
				},
			},

			// Optional
			"cluster_configuration": {
				Type:     schema.TypeList,
				Optional: true,
				Computed: true,
				ForceNew: true,
				MaxItems: 1,
				MinItems: 1,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						// Required
						"hpc_island_id": {
							Type:     schema.TypeString,
							Required: true,
							ForceNew: true,
						},

						// Optional
						"network_block_ids": {
							Type:     schema.TypeList,
							Optional: true,
							Computed: true,
							ForceNew: true,
							Elem: &schema.Schema{
								Type: schema.TypeString,
							},
						},

						// Computed
					},
				},
			},
			"defined_tags": {
				Type:             schema.TypeMap,
				Optional:         true,
				Computed:         true,
				DiffSuppressFunc: tfresource.DefinedTagsDiffSuppressFunction,
				Elem:             schema.TypeString,
			},
			"display_name": {
				Type:     schema.TypeString,
				Optional: true,
				Computed: true,
			},
			"freeform_tags": {
				Type:     schema.TypeMap,
				Optional: true,
				Computed: true,
				Elem:     schema.TypeString,
			},

			// Computed
			"hpc_island_id": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"network_block_ids": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Schema{
					Type: schema.TypeString,
				},
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

func createCoreClusterNetwork(d *schema.ResourceData, m interface{}) error {
	sync := &CoreClusterNetworkResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).ComputeManagementClient()

	return tfresource.CreateResource(d, sync)
}

func readCoreClusterNetwork(d *schema.ResourceData, m interface{}) error {
	sync := &CoreClusterNetworkResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).ComputeManagementClient()

	return tfresource.ReadResource(sync)
}

func updateCoreClusterNetwork(d *schema.ResourceData, m interface{}) error {
	sync := &CoreClusterNetworkResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).ComputeManagementClient()

	return tfresource.UpdateResource(d, sync)
}

func deleteCoreClusterNetwork(d *schema.ResourceData, m interface{}) error {
	sync := &CoreClusterNetworkResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).ComputeManagementClient()
	sync.DisableNotFoundRetries = true

	return tfresource.DeleteResource(d, sync)
}

type CoreClusterNetworkResourceCrud struct {
	tfresource.BaseCrud
	Client                 *oci_core.ComputeManagementClient
	Res                    *oci_core.ClusterNetwork
	DisableNotFoundRetries bool
}

func (s *CoreClusterNetworkResourceCrud) ID() string {
	return *s.Res.Id
}

func (s *CoreClusterNetworkResourceCrud) CreatedPending() []string {
	return []string{
		string(oci_core.ClusterNetworkLifecycleStateProvisioning),
		string(oci_core.ClusterNetworkLifecycleStateScaling),
		string(oci_core.ClusterNetworkLifecycleStateStarting),
	}
}

func (s *CoreClusterNetworkResourceCrud) CreatedTarget() []string {
	return []string{
		string(oci_core.ClusterNetworkLifecycleStateRunning),
	}
}

func (s *CoreClusterNetworkResourceCrud) DeletedPending() []string {
	return []string{
		string(oci_core.ClusterNetworkLifecycleStateTerminating),
	}
}

func (s *CoreClusterNetworkResourceCrud) DeletedTarget() []string {
	return []string{
		string(oci_core.ClusterNetworkLifecycleStateTerminated),
	}
}

func (s *CoreClusterNetworkResourceCrud) Create() error {
	request := oci_core.CreateClusterNetworkRequest{}

	if clusterConfiguration, ok := s.D.GetOkExists("cluster_configuration"); ok {
		if tmpList := clusterConfiguration.([]interface{}); len(tmpList) > 0 {
			fieldKeyFormat := fmt.Sprintf("%s.%d.%%s", "cluster_configuration", 0)
			tmp, err := s.mapToClusterConfigurationDetails(fieldKeyFormat)
			if err != nil {
				return err
			}
			request.ClusterConfiguration = &tmp
		}
	}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if definedTags, ok := s.D.GetOkExists("defined_tags"); ok {
		convertedDefinedTags, err := tfresource.MapToDefinedTags(definedTags.(map[string]interface{}))
		if err != nil {
			return err
		}
		request.DefinedTags = convertedDefinedTags
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if freeformTags, ok := s.D.GetOkExists("freeform_tags"); ok {
		request.FreeformTags = tfresource.ObjectMapToStringMap(freeformTags.(map[string]interface{}))
	}

	if instancePools, ok := s.D.GetOkExists("instance_pools"); ok {
		interfaces := instancePools.([]interface{})
		tmp := make([]oci_core.CreateClusterNetworkInstancePoolDetails, len(interfaces))
		for i := range interfaces {
			stateDataIndex := i
			fieldKeyFormat := fmt.Sprintf("%s.%d.%%s", "instance_pools", stateDataIndex)
			converted, err := s.mapToCreateClusterNetworkInstancePoolDetails(fieldKeyFormat)
			if err != nil {
				return err
			}
			tmp[i] = converted
		}
		if len(tmp) != 0 || s.D.HasChange("instance_pools") {
			request.InstancePools = tmp
		}
	}

	if placementConfiguration, ok := s.D.GetOkExists("placement_configuration"); ok {
		if tmpList := placementConfiguration.([]interface{}); len(tmpList) > 0 {
			fieldKeyFormat := fmt.Sprintf("%s.%d.%%s", "placement_configuration", 0)
			tmp, err := s.mapToClusterNetworkPlacementConfigurationDetails(fieldKeyFormat)
			if err != nil {
				return err
			}
			request.PlacementConfiguration = &tmp
		}
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	response, err := s.Client.CreateClusterNetwork(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response.ClusterNetwork
	return nil
}

func (s *CoreClusterNetworkResourceCrud) Get() error {
	request := oci_core.GetClusterNetworkRequest{}

	tmp := s.D.Id()
	request.ClusterNetworkId = &tmp

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	response, err := s.Client.GetClusterNetwork(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response.ClusterNetwork
	return nil
}

func (s *CoreClusterNetworkResourceCrud) Update() error {
	if compartment, ok := s.D.GetOkExists("compartment_id"); ok && s.D.HasChange("compartment_id") {
		oldRaw, newRaw := s.D.GetChange("compartment_id")
		if newRaw != "" && oldRaw != "" {
			err := s.updateCompartment(compartment)
			if err != nil {
				return err
			}
		}
	}
	request := oci_core.UpdateClusterNetworkRequest{}

	tmp := s.D.Id()
	request.ClusterNetworkId = &tmp

	if definedTags, ok := s.D.GetOkExists("defined_tags"); ok {
		convertedDefinedTags, err := tfresource.MapToDefinedTags(definedTags.(map[string]interface{}))
		if err != nil {
			return err
		}
		request.DefinedTags = convertedDefinedTags
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if freeformTags, ok := s.D.GetOkExists("freeform_tags"); ok {
		request.FreeformTags = tfresource.ObjectMapToStringMap(freeformTags.(map[string]interface{}))
	}

	if instancePools, ok := s.D.GetOkExists("instance_pools"); ok {
		interfaces := instancePools.([]interface{})
		tmp := make([]oci_core.UpdateClusterNetworkInstancePoolDetails, len(interfaces))
		for i := range interfaces {
			stateDataIndex := i
			fieldKeyFormat := fmt.Sprintf("%s.%d.%%s", "instance_pools", stateDataIndex)
			converted, err := s.mapToUpdateClusterNetworkInstancePoolDetails(fieldKeyFormat)
			if err != nil {
				return err
			}
			tmp[i] = converted
		}
		if len(tmp) != 0 || s.D.HasChange("instance_pools") {
			request.InstancePools = tmp
		}
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	response, err := s.Client.UpdateClusterNetwork(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response.ClusterNetwork
	return nil
}

func (s *CoreClusterNetworkResourceCrud) Delete() error {
	request := oci_core.TerminateClusterNetworkRequest{}

	tmp := s.D.Id()
	request.ClusterNetworkId = &tmp

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	_, err := s.Client.TerminateClusterNetwork(context.Background(), request)
	return err
}

func (s *CoreClusterNetworkResourceCrud) SetData() error {
	if s.Res.CompartmentId != nil {
		s.D.Set("compartment_id", *s.Res.CompartmentId)
	}

	if s.Res.DefinedTags != nil {
		s.D.Set("defined_tags", tfresource.DefinedTagsToMap(s.Res.DefinedTags))
	}

	if s.Res.DisplayName != nil {
		s.D.Set("display_name", *s.Res.DisplayName)
	}

	s.D.Set("freeform_tags", s.Res.FreeformTags)

	if s.Res.HpcIslandId != nil {
		s.D.Set("hpc_island_id", *s.Res.HpcIslandId)
	}

	instancePools := []interface{}{}
	for _, item := range s.Res.InstancePools {
		instancePools = append(instancePools, InstancePoolToMap(item))
	}
	s.D.Set("instance_pools", instancePools)

	s.D.Set("network_block_ids", s.Res.NetworkBlockIds)
	s.D.Set("network_block_ids", s.Res.NetworkBlockIds)

	if s.Res.PlacementConfiguration != nil {
		s.D.Set("placement_configuration", []interface{}{ClusterNetworkPlacementConfigurationDetailsToMap(s.Res.PlacementConfiguration, false)})
	} else {
		s.D.Set("placement_configuration", nil)
	}

	s.D.Set("state", s.Res.LifecycleState)

	if s.Res.TimeCreated != nil {
		s.D.Set("time_created", s.Res.TimeCreated.String())
	}

	if s.Res.TimeUpdated != nil {
		s.D.Set("time_updated", s.Res.TimeUpdated.String())
	}

	return nil
}

func (s *CoreClusterNetworkResourceCrud) mapToClusterConfigurationDetails(fieldKeyFormat string) (oci_core.ClusterConfigurationDetails, error) {
	result := oci_core.ClusterConfigurationDetails{}

	if hpcIslandId, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "hpc_island_id")); ok {
		tmp := hpcIslandId.(string)
		result.HpcIslandId = &tmp
	}

	if networkBlockIds, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "network_block_ids")); ok {
		interfaces := networkBlockIds.([]interface{})
		tmp := make([]string, len(interfaces))
		for i := range interfaces {
			if interfaces[i] != nil {
				tmp[i] = interfaces[i].(string)
			}
		}
		if len(tmp) != 0 || s.D.HasChange(fmt.Sprintf(fieldKeyFormat, "network_block_ids")) {
			result.NetworkBlockIds = tmp
		}
	}

	return result, nil
}

func ClusterConfigurationDetailsToMap(obj *oci_core.ClusterConfigurationDetails) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.HpcIslandId != nil {
		result["hpc_island_id"] = string(*obj.HpcIslandId)
	}

	result["network_block_ids"] = obj.NetworkBlockIds

	return result
}

func (s *CoreClusterNetworkResourceCrud) mapToClusterNetworkPlacementConfigurationDetails(fieldKeyFormat string) (oci_core.ClusterNetworkPlacementConfigurationDetails, error) {
	result := oci_core.ClusterNetworkPlacementConfigurationDetails{}

	if availabilityDomain, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "availability_domain")); ok {
		tmp := availabilityDomain.(string)
		result.AvailabilityDomain = &tmp
	}

	if primarySubnetId, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "primary_subnet_id")); ok {
		tmp := primarySubnetId.(string)
		result.PrimarySubnetId = &tmp
	}
	if placementConstraint, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "placement_constraint")); ok {
		result.PlacementConstraint = oci_core.ClusterNetworkPlacementConfigurationDetailsPlacementConstraintEnum(placementConstraint.(string))
	}

	if primaryVnicSubnets, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "primary_vnic_subnets")); ok {
		if tmpList := primaryVnicSubnets.([]interface{}); len(tmpList) > 0 {
			fieldKeyFormatNextLevel := fmt.Sprintf("%s.%d.%%s", fmt.Sprintf(fieldKeyFormat, "primary_vnic_subnets"), 0)
			tmp, err := s.mapToInstancePoolPlacementPrimarySubnet(fieldKeyFormatNextLevel)
			if err != nil {
				return result, fmt.Errorf("unable to convert primary_vnic_subnets, encountered error: %v", err)
			}
			result.PrimaryVnicSubnets = &tmp
		}
	}

	if secondaryVnicSubnets, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "secondary_vnic_subnets")); ok {
		set := secondaryVnicSubnets.(*schema.Set)
		interfaces := set.List()
		tmp := make([]oci_core.InstancePoolPlacementSecondaryVnicSubnet, len(interfaces))
		for i := range interfaces {
			stateDataIndex := secondaryVnicSubnetsHashCodeForSets(interfaces[i])
			fieldKeyFormatNextLevel := fmt.Sprintf("%s.%d.%%s", fmt.Sprintf(fieldKeyFormat, "secondary_vnic_subnets"), stateDataIndex)
			converted, err := s.mapToInstancePoolPlacementSecondaryVnicSubnet(fieldKeyFormatNextLevel)
			if err != nil {
				return result, err
			}
			tmp[i] = converted
		}
		if len(tmp) != 0 || s.D.HasChange(fmt.Sprintf(fieldKeyFormat, "secondary_vnic_subnets")) {
			result.SecondaryVnicSubnets = tmp
		}
	}

	return result, nil
}

func ClusterNetworkPlacementConfigurationDetailsToMap(obj *oci_core.ClusterNetworkPlacementConfigurationDetails, datasource bool) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.AvailabilityDomain != nil {
		result["availability_domain"] = string(*obj.AvailabilityDomain)
	}

	if obj.PrimarySubnetId != nil {
		result["primary_subnet_id"] = string(*obj.PrimarySubnetId)
	}
	result["placement_constraint"] = string(obj.PlacementConstraint)

	if obj.PrimaryVnicSubnets != nil {
		result["primary_vnic_subnets"] = []interface{}{InstancePoolPlacementPrimarySubnetToMap(obj.PrimaryVnicSubnets)}
	}

	secondaryVnicSubnets := []interface{}{}
	for _, item := range obj.SecondaryVnicSubnets {
		secondaryVnicSubnets = append(secondaryVnicSubnets, InstancePoolPlacementSecondaryVnicSubnetToMap(item))
	}
	if datasource {
		result["secondary_vnic_subnets"] = secondaryVnicSubnets
	} else {
		result["secondary_vnic_subnets"] = schema.NewSet(secondaryVnicSubnetsHashCodeForSets, secondaryVnicSubnets)
	}

	return result
}

func (s *CoreClusterNetworkResourceCrud) mapToCreateClusterNetworkInstancePoolDetails(fieldKeyFormat string) (oci_core.CreateClusterNetworkInstancePoolDetails, error) {
	result := oci_core.CreateClusterNetworkInstancePoolDetails{}

	if definedTags, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "defined_tags")); ok {
		tmp, err := tfresource.MapToDefinedTags(definedTags.(map[string]interface{}))
		if err != nil {
			return result, fmt.Errorf("unable to convert defined_tags, encountered error: %v", err)
		}
		result.DefinedTags = tmp
	}

	if displayName, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "display_name")); ok {
		tmp := displayName.(string)
		result.DisplayName = &tmp
	}

	if freeformTags, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "freeform_tags")); ok {
		result.FreeformTags = tfresource.ObjectMapToStringMap(freeformTags.(map[string]interface{}))
	}

	if instanceConfigurationId, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "instance_configuration_id")); ok {
		tmp := instanceConfigurationId.(string)
		result.InstanceConfigurationId = &tmp
	}

	if size, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "size")); ok {
		tmp := size.(int)
		result.Size = &tmp
	}

	return result, nil
}

func (s *CoreClusterNetworkResourceCrud) mapToUpdateClusterNetworkInstancePoolDetails(fieldKeyFormat string) (
	oci_core.UpdateClusterNetworkInstancePoolDetails, error) {
	result := oci_core.UpdateClusterNetworkInstancePoolDetails{}

	if definedTags, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "defined_tags")); ok {
		tmp, err := tfresource.MapToDefinedTags(definedTags.(map[string]interface{}))
		if err != nil {
			return result, fmt.Errorf("unable to convert defined_tags, encountered error: %v", err)
		}
		result.DefinedTags = tmp
	}

	if displayName, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "display_name")); ok {
		tmp := displayName.(string)
		result.DisplayName = &tmp
	}

	if freeformTags, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "freeform_tags")); ok {
		result.FreeformTags = tfresource.ObjectMapToStringMap(freeformTags.(map[string]interface{}))
	}

	if id, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "id")); ok {
		tmp := id.(string)
		result.Id = &tmp
	}

	if instanceConfigurationId, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "instance_configuration_id")); ok {
		tmp := instanceConfigurationId.(string)
		result.InstanceConfigurationId = &tmp
	}

	if size, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "size")); ok {
		tmp := size.(int)
		result.Size = &tmp
	}

	return result, nil
}

func InstancePoolToMap(obj oci_core.InstancePool) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.CompartmentId != nil {
		result["compartment_id"] = string(*obj.CompartmentId)
	}

	if obj.DefinedTags != nil {
		result["defined_tags"] = tfresource.DefinedTagsToMap(obj.DefinedTags)
	}

	if obj.DisplayName != nil {
		result["display_name"] = string(*obj.DisplayName)
	}

	result["freeform_tags"] = obj.FreeformTags

	if obj.Id != nil {
		result["id"] = string(*obj.Id)
	}

	if obj.InstanceConfigurationId != nil {
		result["instance_configuration_id"] = string(*obj.InstanceConfigurationId)
	}

	if obj.InstanceDisplayNameFormatter != nil {
		result["instance_display_name_formatter"] = string(*obj.InstanceDisplayNameFormatter)
	}

	if obj.InstanceHostnameFormatter != nil {
		result["instance_hostname_formatter"] = string(*obj.InstanceHostnameFormatter)
	}

	loadBalancers := []interface{}{}
	for _, item := range obj.LoadBalancers {
		loadBalancers = append(loadBalancers, InstancePoolLoadBalancerAttachmentToMap(item))
	}
	result["load_balancers"] = loadBalancers

	placementConfigurations := []interface{}{}
	for _, item := range obj.PlacementConfigurations {
		placementConfigurations = append(placementConfigurations, InstancePoolPlacementConfigurationToMap(item))
	}
	result["placement_configurations"] = placementConfigurations

	if obj.Size != nil {
		result["size"] = int(*obj.Size)
	}

	result["state"] = string(obj.LifecycleState)

	if obj.TimeCreated != nil {
		result["time_created"] = obj.TimeCreated.String()
	}

	return result
}

func (s *CoreClusterNetworkResourceCrud) mapToInstancePoolPlacementIpv6AddressIpv6SubnetCidrDetails(fieldKeyFormat string) (oci_core.InstancePoolPlacementIpv6AddressIpv6SubnetCidrDetails, error) {
	result := oci_core.InstancePoolPlacementIpv6AddressIpv6SubnetCidrDetails{}

	if ipv6SubnetCidr, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "ipv6subnet_cidr")); ok {
		tmp := ipv6SubnetCidr.(string)
		result.Ipv6SubnetCidr = &tmp
	}

	return result, nil
}

func (s *CoreClusterNetworkResourceCrud) mapToInstancePoolPlacementPrimarySubnet(fieldKeyFormat string) (oci_core.InstancePoolPlacementPrimarySubnet, error) {
	result := oci_core.InstancePoolPlacementPrimarySubnet{}

	if ipv6AddressIpv6SubnetCidrPairDetails, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "ipv6address_ipv6subnet_cidr_pair_details")); ok {
		interfaces := ipv6AddressIpv6SubnetCidrPairDetails.([]interface{})
		tmp := make([]oci_core.InstancePoolPlacementIpv6AddressIpv6SubnetCidrDetails, len(interfaces))
		for i := range interfaces {
			stateDataIndex := i
			fieldKeyFormatNextLevel := fmt.Sprintf("%s.%d.%%s", fmt.Sprintf(fieldKeyFormat, "ipv6address_ipv6subnet_cidr_pair_details"), stateDataIndex)
			converted, err := s.mapToInstancePoolPlacementIpv6AddressIpv6SubnetCidrDetails(fieldKeyFormatNextLevel)
			if err != nil {
				return result, err
			}
			tmp[i] = converted
		}
		if len(tmp) != 0 || s.D.HasChange(fmt.Sprintf(fieldKeyFormat, "ipv6address_ipv6subnet_cidr_pair_details")) {
			result.Ipv6AddressIpv6SubnetCidrPairDetails = tmp
		}
	}

	if isAssignIpv6Ip, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "is_assign_ipv6ip")); ok {
		tmp := isAssignIpv6Ip.(bool)
		result.IsAssignIpv6Ip = &tmp
	}

	if subnetId, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "subnet_id")); ok {
		tmp := subnetId.(string)
		result.SubnetId = &tmp
	}

	return result, nil
}

func (s *CoreClusterNetworkResourceCrud) mapToInstancePoolPlacementSecondaryVnicSubnet(fieldKeyFormat string) (oci_core.InstancePoolPlacementSecondaryVnicSubnet, error) {
	result := oci_core.InstancePoolPlacementSecondaryVnicSubnet{}

	if displayName, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "display_name")); ok {
		tmp := displayName.(string)
		result.DisplayName = &tmp
	}

	if ipv6AddressIpv6SubnetCidrPairDetails, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "ipv6address_ipv6subnet_cidr_pair_details")); ok {
		interfaces := ipv6AddressIpv6SubnetCidrPairDetails.([]interface{})
		tmp := make([]oci_core.InstancePoolPlacementIpv6AddressIpv6SubnetCidrDetails, len(interfaces))
		for i := range interfaces {
			stateDataIndex := i
			fieldKeyFormatNextLevel := fmt.Sprintf("%s.%d.%%s", fmt.Sprintf(fieldKeyFormat, "ipv6address_ipv6subnet_cidr_pair_details"), stateDataIndex)
			converted, err := s.mapToInstancePoolPlacementIpv6AddressIpv6SubnetCidrDetails(fieldKeyFormatNextLevel)
			if err != nil {
				return result, err
			}
			tmp[i] = converted
		}
		if len(tmp) != 0 || s.D.HasChange(fmt.Sprintf(fieldKeyFormat, "ipv6address_ipv6subnet_cidr_pair_details")) {
			result.Ipv6AddressIpv6SubnetCidrPairDetails = tmp
		}
	}

	if isAssignIpv6Ip, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "is_assign_ipv6ip")); ok {
		tmp := isAssignIpv6Ip.(bool)
		result.IsAssignIpv6Ip = &tmp
	}

	if subnetId, ok := s.D.GetOkExists(fmt.Sprintf(fieldKeyFormat, "subnet_id")); ok {
		tmp := subnetId.(string)
		result.SubnetId = &tmp
	}

	return result, nil
}

func secondaryVnicSubnetsHashCodeForSets(v interface{}) int {
	var buf bytes.Buffer
	m := v.(map[string]interface{})
	if displayName, ok := m["display_name"]; ok && displayName != "" {
		buf.WriteString(fmt.Sprintf("%v-", displayName))
	}
	if ipv6AddressIpv6SubnetCidrPairDetails, ok := m["ipv6address_ipv6subnet_cidr_pair_details"]; ok {
		if tmpList := ipv6AddressIpv6SubnetCidrPairDetails.([]interface{}); len(tmpList) > 0 {
			buf.WriteString("ipv6address_ipv6subnet_cidr_pair_details-")
			actionRaw := tmpList[0].(map[string]interface{})
			if ipv6Details, ok := actionRaw["ipv6subnet_cidr"]; ok && ipv6Details != "" {
				buf.WriteString(fmt.Sprintf("%v-", ipv6Details))
			}
		}
	}
	if isAssignIpv6Ip, ok := m["is_assign_ipv6ip"]; ok {
		buf.WriteString(fmt.Sprintf("%v-", isAssignIpv6Ip))
	}
	if subnetId, ok := m["subnet_id"]; ok && subnetId != "" {
		buf.WriteString(fmt.Sprintf("%v-", subnetId))
	}
	return utils.GetStringHashcode(buf.String())
}

func (s *CoreClusterNetworkResourceCrud) updateCompartment(compartment interface{}) error {
	changeCompartmentRequest := oci_core.ChangeClusterNetworkCompartmentRequest{}

	idTmp := s.D.Id()
	changeCompartmentRequest.ClusterNetworkId = &idTmp

	compartmentTmp := compartment.(string)
	changeCompartmentRequest.CompartmentId = &compartmentTmp

	changeCompartmentRequest.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	_, err := s.Client.ChangeClusterNetworkCompartment(context.Background(), changeCompartmentRequest)
	if err != nil {
		return err
	}

	if waitErr := tfresource.WaitForUpdatedState(s.D, s); waitErr != nil {
		return waitErr
	}

	return nil
}
