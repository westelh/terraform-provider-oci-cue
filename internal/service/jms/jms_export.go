package jms

import (
	oci_jms "github.com/oracle/oci-go-sdk/v65/jms"

	tf_export "github.com/westelh/terraform-provider-oci-cue/internal/commonexport"
)

func init() {
	exportJmsFleetAdvancedFeatureConfigurationHints.GetIdFn = getJmsFleetAdvancedFeatureConfigurationId
	tf_export.RegisterCompartmentGraphs("jms", jmsResourceGraph)
}

// Custom overrides for generating composite IDs within the resource discovery framework

func getJmsFleetAdvancedFeatureConfigurationId(resource *tf_export.OCIResource) (string, error) {

	fleetId := resource.Parent.Id
	return GetFleetAdvancedFeatureConfigurationCompositeId(fleetId), nil
}

// Hints for discovering and exporting this resource to configuration and state files
var exportJmsFleetHints = &tf_export.TerraformResourceHints{
	ResourceClass:          "oci_jms_fleet",
	DatasourceClass:        "oci_jms_fleets",
	DatasourceItemsAttr:    "fleet_collection",
	IsDatasourceCollection: true,
	ResourceAbbreviation:   "fleet",
	RequireResourceRefresh: true,
	DiscoverableLifecycleStates: []string{
		string(oci_jms.LifecycleStateActive),
		string(oci_jms.LifecycleStateNeedsAttention),
	},
}

var exportJmsFleetAdvancedFeatureConfigurationHints = &tf_export.TerraformResourceHints{
	ResourceClass:        "oci_jms_fleet_advanced_feature_configuration",
	DatasourceClass:      "oci_jms_fleet_advanced_feature_configuration",
	ResourceAbbreviation: "fleet_advanced_feature_configuration",
}

var exportJmsJmsPluginHints = &tf_export.TerraformResourceHints{
	ResourceClass:          "oci_jms_jms_plugin",
	DatasourceClass:        "oci_jms_jms_plugins",
	DatasourceItemsAttr:    "jms_plugin_collection",
	IsDatasourceCollection: true,
	ResourceAbbreviation:   "jms_plugin",
	RequireResourceRefresh: true,
	DiscoverableLifecycleStates: []string{
		string(oci_jms.JmsPluginLifecycleStateActive),
		string(oci_jms.JmsPluginLifecycleStateNeedsAttention),
	},
}

var jmsResourceGraph = tf_export.TerraformResourceGraph{
	"oci_identity_compartment": {
		{TerraformResourceHints: exportJmsFleetHints},
		{TerraformResourceHints: exportJmsJmsPluginHints},
	},
	"oci_jms_fleet": {
		{
			TerraformResourceHints: exportJmsFleetAdvancedFeatureConfigurationHints,
			DatasourceQueryParams: map[string]string{
				"fleet_id": "id",
			},
		},
	},
}
