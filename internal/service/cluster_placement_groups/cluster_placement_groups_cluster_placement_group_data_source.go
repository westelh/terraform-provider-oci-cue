// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package cluster_placement_groups

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_cluster_placement_groups "github.com/oracle/oci-go-sdk/v65/clusterplacementgroups"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func ClusterPlacementGroupsClusterPlacementGroupDataSource() *schema.Resource {
	fieldMap := make(map[string]*schema.Schema)
	fieldMap["cluster_placement_group_id"] = &schema.Schema{
		Type:     schema.TypeString,
		Required: true,
	}
	return tfresource.GetSingularDataSourceItemSchema(ClusterPlacementGroupsClusterPlacementGroupResource(), fieldMap, readSingularClusterPlacementGroupsClusterPlacementGroup)
}

func readSingularClusterPlacementGroupsClusterPlacementGroup(d *schema.ResourceData, m interface{}) error {
	sync := &ClusterPlacementGroupsClusterPlacementGroupDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).ClusterPlacementGroupsCPClient()

	return tfresource.ReadResource(sync)
}

type ClusterPlacementGroupsClusterPlacementGroupDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_cluster_placement_groups.ClusterPlacementGroupsCPClient
	Res    *oci_cluster_placement_groups.GetClusterPlacementGroupResponse
}

func (s *ClusterPlacementGroupsClusterPlacementGroupDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *ClusterPlacementGroupsClusterPlacementGroupDataSourceCrud) Get() error {
	request := oci_cluster_placement_groups.GetClusterPlacementGroupRequest{}

	if clusterPlacementGroupId, ok := s.D.GetOkExists("cluster_placement_group_id"); ok {
		tmp := clusterPlacementGroupId.(string)
		request.ClusterPlacementGroupId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "cluster_placement_groups")

	response, err := s.Client.GetClusterPlacementGroup(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	return nil
}

func (s *ClusterPlacementGroupsClusterPlacementGroupDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(*s.Res.Id)

	if s.Res.AvailabilityDomain != nil {
		s.D.Set("availability_domain", *s.Res.AvailabilityDomain)
	}

	if s.Res.Capabilities != nil {
		s.D.Set("capabilities", []interface{}{CapabilitiesCollectionToMap(s.Res.Capabilities)})
	} else {
		s.D.Set("capabilities", nil)
	}

	s.D.Set("cluster_placement_group_type", s.Res.ClusterPlacementGroupType)

	if s.Res.CompartmentId != nil {
		s.D.Set("compartment_id", *s.Res.CompartmentId)
	}

	if s.Res.DefinedTags != nil {
		s.D.Set("defined_tags", tfresource.DefinedTagsToMap(s.Res.DefinedTags))
	}

	if s.Res.Description != nil {
		s.D.Set("description", *s.Res.Description)
	}

	s.D.Set("freeform_tags", s.Res.FreeformTags)

	if s.Res.LifecycleDetails != nil {
		s.D.Set("lifecycle_details", *s.Res.LifecycleDetails)
	}

	if s.Res.Name != nil {
		s.D.Set("name", *s.Res.Name)
	}

	if s.Res.PlacementInstruction != nil {
		s.D.Set("placement_instruction", []interface{}{PlacementInstructionDetailsToMap(s.Res.PlacementInstruction)})
	} else {
		s.D.Set("placement_instruction", nil)
	}

	s.D.Set("state", s.Res.LifecycleState)

	if s.Res.SystemTags != nil {
		s.D.Set("system_tags", tfresource.SystemTagsToMap(s.Res.SystemTags))
	}

	if s.Res.TimeCreated != nil {
		s.D.Set("time_created", s.Res.TimeCreated.String())
	}

	if s.Res.TimeUpdated != nil {
		s.D.Set("time_updated", s.Res.TimeUpdated.String())
	}

	return nil
}
