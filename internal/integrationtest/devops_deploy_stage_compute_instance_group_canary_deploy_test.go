// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package integrationtest

import (
	"fmt"
	"strconv"
	"testing"

	"github.com/westelh/terraform-provider-oci-cue/internal/acctest"
	"github.com/westelh/terraform-provider-oci-cue/internal/resourcediscovery"
	"github.com/westelh/terraform-provider-oci-cue/internal/utils"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"
	"github.com/hashicorp/terraform-plugin-sdk/v2/terraform"

	"github.com/westelh/terraform-provider-oci-cue/httpreplay"
)

var (
	ComputeInstanceGroupCanaryStageRequiredOnlyResource = ComputeInstanceGroupCanaryStageResourceDependencies +
		acctest.GenerateResourceFromRepresentationMap("oci_devops_deploy_stage", "test_deploy_stage", acctest.Required, acctest.Create, computeInstanceGroupCanaryStageRepresentation)

	ComputeInstanceGroupCanaryStageResourceConfig = ComputeInstanceGroupCanaryStageResourceDependencies +
		acctest.GenerateResourceFromRepresentationMap("oci_devops_deploy_stage", "test_deploy_stage", acctest.Optional, acctest.Update, computeInstanceGroupCanaryStageRepresentation)

	computeInstanceGroupCanaryStageSingularDataSourceRepresentation = map[string]interface{}{
		"deploy_stage_id": acctest.Representation{RepType: acctest.Required, Create: `${oci_devops_deploy_stage.test_deploy_stage.id}`},
	}

	computeInstanceGroupCanaryStageRepresentation = acctest.GetUpdatedRepresentationCopy("deploy_stage_type", acctest.Representation{RepType: acctest.Required, Create: `COMPUTE_INSTANCE_GROUP_CANARY_DEPLOYMENT`},
		acctest.RepresentationCopyWithNewProperties(acctest.RepresentationCopyWithRemovedProperties(DevopsDeployStageRepresentation, []string{"wait_criteria"}), map[string]interface{}{
			"compute_instance_group_deploy_environment_id": acctest.Representation{RepType: acctest.Required, Create: `${oci_devops_deploy_environment.test_deploy_instance_group_environment.id}`},
			"deployment_spec_deploy_artifact_id":           acctest.Representation{RepType: acctest.Required, Create: `${oci_devops_deploy_artifact.test_deploy_generic_artifact.id}`},
			"rollout_policy":                               acctest.RepresentationGroup{RepType: acctest.Required, Group: deployComputeInstanceStageRolloutPolicyRepresentation},
			"production_load_balancer_config":              acctest.RepresentationGroup{RepType: acctest.Required, Group: deployStageProdLoadBalancerInstanceGroupConfigRepresentation},
			"test_load_balancer_config":                    acctest.RepresentationGroup{RepType: acctest.Required, Group: deployStageTestLoadBalancerInstanceGroupConfigRepresentation},
			"lifecycle":                                    acctest.RepresentationGroup{RepType: acctest.Required, Group: ignoreDefinedTagsDifferencesRepresentation},
		}))
	deployStageProdLoadBalancerInstanceGroupConfigRepresentation = map[string]interface{}{
		"backend_port":     acctest.Representation{RepType: acctest.Optional, Create: `8080`},
		"listener_name":    acctest.Representation{RepType: acctest.Required, Create: `ProdLoadBalancerListener`},
		"load_balancer_id": acctest.Representation{RepType: acctest.Required, Create: `${oci_load_balancer_load_balancer.test_load_balancer_1.id}`},
	}
	deployStageTestLoadBalancerInstanceGroupConfigRepresentation = map[string]interface{}{
		"backend_port":     acctest.Representation{RepType: acctest.Optional, Create: `8080`},
		"listener_name":    acctest.Representation{RepType: acctest.Required, Create: `TestLoadBalancerListener`},
		"load_balancer_id": acctest.Representation{RepType: acctest.Required, Create: `${oci_load_balancer_load_balancer.test_load_balancer_2.id}`},
	}
	ComputeInstanceGroupCanaryStageResourceDependencies = acctest.GenerateResourceFromRepresentationMap("oci_devops_deploy_artifact", "test_deploy_generic_artifact", acctest.Required, acctest.Create, deployGenericArtifactRepresentation) +
		acctest.GenerateResourceFromRepresentationMap("oci_devops_deploy_environment", "test_deploy_instance_group_environment", acctest.Required, acctest.Create, deployInstanceGroupEnvironmentRepresentation) +
		acctest.GenerateResourceFromRepresentationMap("oci_devops_deploy_pipeline", "test_deploy_pipeline", acctest.Required, acctest.Create, DevopsDeployPipelineRepresentation) +
		acctest.GenerateResourceFromRepresentationMap("oci_devops_project", "test_project", acctest.Required, acctest.Create, DevopsProjectRepresentation) +
		acctest.GenerateResourceFromRepresentationMap("oci_ons_notification_topic", "test_notification_topic", acctest.Required, acctest.Create, OnsNotificationTopicRepresentation) +
		acctest.GenerateResourceFromRepresentationMap("oci_load_balancer_load_balancer", "test_load_balancer_1", acctest.Required, acctest.Create, loadBalancerRepresentation) +
		acctest.GenerateResourceFromRepresentationMap("oci_load_balancer_load_balancer", "test_load_balancer_2", acctest.Optional, acctest.Create, loadBalancerRepresentation) +
		LoadBalancerResourceDependencies
)

// issue-routing-tag: devops/default
func TestDevopsDeployStageResource_computeInstanceGroupCanaryDeploy(t *testing.T) {
	httpreplay.SetScenario("TestDevopsDeployStageResource_computeInstanceGroupCanaryDeploy")
	defer httpreplay.SaveScenario()

	config := acctest.ProviderTestConfig()

	compartmentId := utils.GetEnvSettingWithBlankDefault("compartment_ocid")
	compartmentIdVariableStr := fmt.Sprintf("variable \"compartment_id\" { default = \"%s\" }\n", compartmentId)

	resourceName := "oci_devops_deploy_stage.test_deploy_stage"
	datasourceName := "data.oci_devops_deploy_stages.test_deploy_stages"
	singularDatasourceName := "data.oci_devops_deploy_stage.test_deploy_stage"

	var resId, resId2 string
	// Save TF content to Create resource with optional properties. This has to be exactly the same as the config part in the "Create with optionals" step in the test.
	acctest.SaveConfigContent(config+compartmentIdVariableStr+ComputeInstanceGroupCanaryStageResourceDependencies+
		acctest.GenerateResourceFromRepresentationMap("oci_devops_deploy_stage", "test_deploy_stage", acctest.Optional, acctest.Create, computeInstanceGroupCanaryStageRepresentation), "devops", "deployStage", t)

	acctest.ResourceTest(t, testAccCheckDevopsDeployStageDestroy, []resource.TestStep{
		// verify Create
		{
			Config: config + compartmentIdVariableStr + ComputeInstanceGroupCanaryStageResourceDependencies +
				acctest.GenerateResourceFromRepresentationMap("oci_devops_deploy_stage", "test_deploy_stage", acctest.Required, acctest.Create, computeInstanceGroupCanaryStageRepresentation),
			Check: acctest.ComposeAggregateTestCheckFuncWrapper(
				resource.TestCheckResourceAttrSet(resourceName, "deploy_pipeline_id"),
				resource.TestCheckResourceAttr(resourceName, "deploy_stage_predecessor_collection.#", "1"),
				resource.TestCheckResourceAttr(resourceName, "deploy_stage_predecessor_collection.0.items.#", "1"),
				resource.TestCheckResourceAttrSet(resourceName, "deploy_stage_predecessor_collection.0.items.0.id"),
				resource.TestCheckResourceAttr(resourceName, "deploy_stage_type", "COMPUTE_INSTANCE_GROUP_CANARY_DEPLOYMENT"),
				resource.TestCheckResourceAttr(resourceName, "rollout_policy.#", "1"),
				resource.TestCheckResourceAttr(resourceName, "rollout_policy.0.batch_count", "5"),
				resource.TestCheckResourceAttr(resourceName, "rollout_policy.0.policy_type", "COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_COUNT"),
				resource.TestCheckResourceAttrSet(resourceName, "compute_instance_group_deploy_environment_id"),
				resource.TestCheckResourceAttrSet(resourceName, "deployment_spec_deploy_artifact_id"),
				resource.TestCheckResourceAttr(resourceName, "production_load_balancer_config.0.listener_name", "ProdLoadBalancerListener"),
				resource.TestCheckResourceAttrSet(resourceName, "production_load_balancer_config.0.load_balancer_id"),

				func(s *terraform.State) (err error) {
					resId, err = acctest.FromInstanceState(s, resourceName, "id")
					return err
				},
			),
		},

		// delete before next Create
		{
			Config: config + compartmentIdVariableStr + ComputeInstanceGroupCanaryStageResourceDependencies,
		},
		// verify Create with optionals
		{
			Config: config + compartmentIdVariableStr + ComputeInstanceGroupCanaryStageResourceDependencies +
				acctest.GenerateResourceFromRepresentationMap("oci_devops_deploy_stage", "test_deploy_stage", acctest.Optional, acctest.Create, computeInstanceGroupCanaryStageRepresentation),
			Check: acctest.ComposeAggregateTestCheckFuncWrapper(
				resource.TestCheckResourceAttrSet(resourceName, "compartment_id"),
				resource.TestCheckResourceAttrSet(resourceName, "deploy_pipeline_id"),
				resource.TestCheckResourceAttr(resourceName, "deploy_stage_predecessor_collection.#", "1"),
				resource.TestCheckResourceAttr(resourceName, "deploy_stage_predecessor_collection.0.items.#", "1"),
				resource.TestCheckResourceAttrSet(resourceName, "deploy_stage_predecessor_collection.0.items.0.id"),
				resource.TestCheckResourceAttr(resourceName, "deploy_stage_type", "COMPUTE_INSTANCE_GROUP_CANARY_DEPLOYMENT"),
				resource.TestCheckResourceAttr(resourceName, "description", "description"),
				resource.TestCheckResourceAttr(resourceName, "display_name", "displayName"),
				resource.TestCheckResourceAttr(resourceName, "freeform_tags.%", "1"),
				resource.TestCheckResourceAttr(resourceName, "defined_tags.%", "3"),
				resource.TestCheckResourceAttrSet(resourceName, "id"),
				resource.TestCheckResourceAttrSet(resourceName, "project_id"),
				resource.TestCheckResourceAttr(resourceName, "rollout_policy.#", "1"),
				resource.TestCheckResourceAttr(resourceName, "rollout_policy.0.batch_count", "5"),
				resource.TestCheckResourceAttr(resourceName, "rollout_policy.0.batch_delay_in_seconds", "5"),
				resource.TestCheckResourceAttr(resourceName, "rollout_policy.0.policy_type", "COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_COUNT"),
				resource.TestCheckResourceAttrSet(resourceName, "compute_instance_group_deploy_environment_id"),
				resource.TestCheckResourceAttrSet(resourceName, "deployment_spec_deploy_artifact_id"),
				resource.TestCheckResourceAttr(resourceName, "production_load_balancer_config.#", "1"),
				resource.TestCheckResourceAttr(resourceName, "production_load_balancer_config.0.listener_name", "ProdLoadBalancerListener"),
				resource.TestCheckResourceAttrSet(resourceName, "production_load_balancer_config.0.load_balancer_id"),
				resource.TestCheckResourceAttr(resourceName, "test_load_balancer_config.#", "1"),
				resource.TestCheckResourceAttr(resourceName, "test_load_balancer_config.0.listener_name", "TestLoadBalancerListener"),
				resource.TestCheckResourceAttrSet(resourceName, "test_load_balancer_config.0.load_balancer_id"),

				func(s *terraform.State) (err error) {
					resId, err = acctest.FromInstanceState(s, resourceName, "id")
					if isEnableExportCompartment, _ := strconv.ParseBool(utils.GetEnvSettingWithDefault("enable_export_compartment", "true")); isEnableExportCompartment {
						if errExport := resourcediscovery.TestExportCompartmentWithResourceName(&resId, &compartmentId, resourceName); errExport != nil {
							return errExport
						}
					}
					return err
				},
			),
		},

		// verify updates to updatable parameters
		{
			Config: config + compartmentIdVariableStr + ComputeInstanceGroupCanaryStageResourceDependencies +
				acctest.GenerateResourceFromRepresentationMap("oci_devops_deploy_stage", "test_deploy_stage", acctest.Optional, acctest.Update, computeInstanceGroupCanaryStageRepresentation),
			Check: acctest.ComposeAggregateTestCheckFuncWrapper(
				resource.TestCheckResourceAttrSet(resourceName, "compartment_id"),
				resource.TestCheckResourceAttrSet(resourceName, "deploy_pipeline_id"),
				resource.TestCheckResourceAttr(resourceName, "deploy_stage_predecessor_collection.#", "1"),
				resource.TestCheckResourceAttr(resourceName, "deploy_stage_predecessor_collection.0.items.#", "1"),
				resource.TestCheckResourceAttrSet(resourceName, "deploy_stage_predecessor_collection.0.items.0.id"),
				resource.TestCheckResourceAttr(resourceName, "description", "description2"),
				resource.TestCheckResourceAttr(resourceName, "display_name", "displayName2"),
				resource.TestCheckResourceAttr(resourceName, "freeform_tags.%", "1"),
				resource.TestCheckResourceAttr(resourceName, "defined_tags.%", "3"),
				resource.TestCheckResourceAttrSet(resourceName, "project_id"),
				resource.TestCheckResourceAttr(resourceName, "rollout_policy.#", "1"),
				resource.TestCheckResourceAttr(resourceName, "rollout_policy.0.batch_count", "5"),
				resource.TestCheckResourceAttr(resourceName, "rollout_policy.0.batch_delay_in_seconds", "5"),
				resource.TestCheckResourceAttr(resourceName, "rollout_policy.0.policy_type", "COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_COUNT"),
				resource.TestCheckResourceAttrSet(resourceName, "compute_instance_group_deploy_environment_id"),
				resource.TestCheckResourceAttrSet(resourceName, "deployment_spec_deploy_artifact_id"),
				resource.TestCheckResourceAttr(resourceName, "production_load_balancer_config.#", "1"),
				resource.TestCheckResourceAttr(resourceName, "production_load_balancer_config.0.listener_name", "ProdLoadBalancerListener"),
				resource.TestCheckResourceAttrSet(resourceName, "production_load_balancer_config.0.load_balancer_id"),
				resource.TestCheckResourceAttr(resourceName, "test_load_balancer_config.#", "1"),
				resource.TestCheckResourceAttr(resourceName, "test_load_balancer_config.0.listener_name", "TestLoadBalancerListener"),
				resource.TestCheckResourceAttrSet(resourceName, "test_load_balancer_config.0.load_balancer_id"),

				func(s *terraform.State) (err error) {
					resId2, err = acctest.FromInstanceState(s, resourceName, "id")
					if resId != resId2 {
						return fmt.Errorf("Resource recreated when it was supposed to be updated.")
					}
					return err
				},
			),
		},
		// verify datasource
		{
			Config: config +
				acctest.GenerateDataSourceFromRepresentationMap("oci_devops_deploy_stages", "test_deploy_stages", acctest.Optional, acctest.Update, DevopsDevopsDeployStageDataSourceRepresentation) +
				compartmentIdVariableStr + ComputeInstanceGroupCanaryStageResourceDependencies +
				acctest.GenerateResourceFromRepresentationMap("oci_devops_deploy_stage", "test_deploy_stage", acctest.Optional, acctest.Update, computeInstanceGroupCanaryStageRepresentation),
			Check: acctest.ComposeAggregateTestCheckFuncWrapper(
				resource.TestCheckResourceAttr(datasourceName, "compartment_id", compartmentId),
				resource.TestCheckResourceAttrSet(datasourceName, "deploy_pipeline_id"),
				resource.TestCheckResourceAttr(datasourceName, "display_name", "displayName2"),
				resource.TestCheckResourceAttrSet(datasourceName, "id"),

				resource.TestCheckResourceAttr(datasourceName, "deploy_stage_collection.#", "1"),
			),
		},
		// verify singular datasource
		{
			Config: config +
				acctest.GenerateDataSourceFromRepresentationMap("oci_devops_deploy_stage", "test_deploy_stage", acctest.Required, acctest.Create, computeInstanceGroupCanaryStageSingularDataSourceRepresentation) +
				compartmentIdVariableStr + ComputeInstanceGroupCanaryStageResourceConfig,
			Check: acctest.ComposeAggregateTestCheckFuncWrapper(
				resource.TestCheckResourceAttrSet(singularDatasourceName, "deploy_stage_id"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "compartment_id"),
				resource.TestCheckResourceAttr(singularDatasourceName, "deploy_stage_predecessor_collection.#", "1"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "deploy_stage_predecessor_collection.0.items.0.id"),
				resource.TestCheckResourceAttr(singularDatasourceName, "deploy_stage_type", "COMPUTE_INSTANCE_GROUP_CANARY_DEPLOYMENT"),
				resource.TestCheckResourceAttr(singularDatasourceName, "description", "description2"),
				resource.TestCheckResourceAttr(singularDatasourceName, "display_name", "displayName2"),
				resource.TestCheckResourceAttr(singularDatasourceName, "freeform_tags.%", "1"),
				resource.TestCheckResourceAttr(singularDatasourceName, "defined_tags.%", "3"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "id"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "project_id"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "state"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "time_created"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "time_updated"),
				resource.TestCheckResourceAttr(singularDatasourceName, "rollout_policy.#", "1"),
				resource.TestCheckResourceAttr(singularDatasourceName, "rollout_policy.0.batch_count", "5"),
				resource.TestCheckResourceAttr(singularDatasourceName, "rollout_policy.0.batch_delay_in_seconds", "5"),
				resource.TestCheckResourceAttr(singularDatasourceName, "rollout_policy.0.policy_type", "COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_COUNT"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "compute_instance_group_deploy_environment_id"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "deployment_spec_deploy_artifact_id"),
				resource.TestCheckResourceAttr(singularDatasourceName, "production_load_balancer_config.#", "1"),
				resource.TestCheckResourceAttr(singularDatasourceName, "production_load_balancer_config.0.listener_name", "ProdLoadBalancerListener"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "production_load_balancer_config.0.load_balancer_id"),
				resource.TestCheckResourceAttr(singularDatasourceName, "test_load_balancer_config.#", "1"),
				resource.TestCheckResourceAttr(singularDatasourceName, "test_load_balancer_config.0.listener_name", "TestLoadBalancerListener"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "test_load_balancer_config.0.load_balancer_id"),
			),
		},
		// verify resource import
		{
			Config:                  config + ComputeInstanceGroupCanaryStageRequiredOnlyResource,
			ImportState:             true,
			ImportStateVerify:       true,
			ImportStateVerifyIgnore: []string{},
			ResourceName:            resourceName,
		},
	})
}
