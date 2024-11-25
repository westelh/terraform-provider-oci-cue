// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package cloud_bridge

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_cloud_bridge "github.com/oracle/oci-go-sdk/v65/cloudbridge"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func CloudBridgeAgentDependenciesDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readCloudBridgeAgentDependencies,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"agent_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"compartment_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"display_name": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"environment_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"state": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"agent_dependency_collection": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{

						"items": {
							Type:     schema.TypeList,
							Computed: true,
							Elem:     tfresource.GetDataSourceItemSchema(CloudBridgeAgentDependencyResource()),
						},
					},
				},
			},
		},
	}
}

func readCloudBridgeAgentDependencies(d *schema.ResourceData, m interface{}) error {
	sync := &CloudBridgeAgentDependenciesDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).OcbAgentSvcClient()

	return tfresource.ReadResource(sync)
}

type CloudBridgeAgentDependenciesDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_cloud_bridge.OcbAgentSvcClient
	Res    *oci_cloud_bridge.ListAgentDependenciesResponse
}

func (s *CloudBridgeAgentDependenciesDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *CloudBridgeAgentDependenciesDataSourceCrud) Get() error {
	request := oci_cloud_bridge.ListAgentDependenciesRequest{}

	if agentId, ok := s.D.GetOkExists("agent_id"); ok {
		tmp := agentId.(string)
		request.AgentId = &tmp
	}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if environmentId, ok := s.D.GetOkExists("environment_id"); ok {
		tmp := environmentId.(string)
		request.EnvironmentId = &tmp
	}

	if state, ok := s.D.GetOkExists("state"); ok {
		request.LifecycleState = oci_cloud_bridge.AgentDependencyLifecycleStateEnum(state.(string))
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "cloud_bridge")

	response, err := s.Client.ListAgentDependencies(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListAgentDependencies(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *CloudBridgeAgentDependenciesDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("CloudBridgeAgentDependenciesDataSource-", CloudBridgeAgentDependenciesDataSource(), s.D))
	resources := []map[string]interface{}{}
	agentDependency := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, AgentDependencySummaryToMap(item))
	}
	agentDependency["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, CloudBridgeAgentDependenciesDataSource().Schema["agent_dependency_collection"].Elem.(*schema.Resource).Schema)
		agentDependency["items"] = items
	}

	resources = append(resources, agentDependency)
	if err := s.D.Set("agent_dependency_collection", resources); err != nil {
		return err
	}

	return nil
}
