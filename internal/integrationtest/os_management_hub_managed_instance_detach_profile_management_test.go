// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package integrationtest

import (
	"fmt"
	"strconv"
	"testing"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"
	"github.com/hashicorp/terraform-plugin-sdk/v2/terraform"

	"github.com/westelh/terraform-provider-oci-cue/httpreplay"
	"github.com/westelh/terraform-provider-oci-cue/internal/acctest"

	"github.com/westelh/terraform-provider-oci-cue/internal/resourcediscovery"

	"github.com/westelh/terraform-provider-oci-cue/internal/utils"
)

var (
	OsManagementHubManagedInstanceDetachProfileManagementRepresentation = map[string]interface{}{
		"managed_instance_id": acctest.Representation{RepType: acctest.Required, Create: `${oci_os_management_hub_managed_instance.test_managed_instance.id}`},
	}

	OsManagementHubManagedInstanceDetachProfileManagementResourceDependencies = acctest.GenerateResourceFromRepresentationMap("oci_os_management_hub_managed_instance", "test_managed_instance", acctest.Required, acctest.Create, OsManagementHubManagedInstanceRegistrationFailureRepresentation)
)

// issue-routing-tag: os_management_hub/default
func TestOsManagementHubManagedInstanceDetachProfileManagementResource_basic(t *testing.T) {
	httpreplay.SetScenario("TestOsManagementHubManagedInstanceDetachProfileManagementResource_basic")
	defer httpreplay.SaveScenario()

	config := acctest.ProviderTestConfig()

	compartmentId := utils.GetEnvSettingWithBlankDefault("compartment_ocid")
	compartmentIdVariableStr := fmt.Sprintf("variable \"compartment_id\" { default = \"%s\" }\n", compartmentId)

	resourceName := "oci_os_management_hub_managed_instance_detach_profile_management.test_managed_instance_detach_profile_management"
	attachResourceName := "oci_os_management_hub_managed_instance_attach_profile_management.test_managed_instance_attach_profile_management"

	var resId string
	// Save TF content to Create resource with only required properties. This has to be exactly the same as the config part in the create step in the test.
	acctest.SaveConfigContent(config+compartmentIdVariableStr+OsManagementHubManagedInstanceDetachProfileManagementResourceDependencies+
		acctest.GenerateResourceFromRepresentationMap("oci_os_management_hub_managed_instance_detach_profile_management", "test_managed_instance_detach_profile_management", acctest.Required, acctest.Create, OsManagementHubManagedInstanceDetachProfileManagementRepresentation), "osmanagementhub", "managedInstanceDetachProfileManagement", t)

	acctest.ResourceTest(t, nil, []resource.TestStep{
		// verify attach profile to instance
		{
			Config: config + compartmentIdVariableStr + OsManagementHubManagedInstanceAttachProfileManagementResourceDependencies +
				acctest.GenerateResourceFromRepresentationMap("oci_os_management_hub_managed_instance_attach_profile_management", "test_managed_instance_attach_profile_management", acctest.Required, acctest.Create, OsManagementHubManagedInstanceAttachProfileManagementRepresentation),
			Check: acctest.ComposeAggregateTestCheckFuncWrapper(
				resource.TestCheckResourceAttrSet(attachResourceName, "managed_instance_id"),
				resource.TestCheckResourceAttrSet(attachResourceName, "profile_id"),

				func(s *terraform.State) (err error) {
					resId, err = acctest.FromInstanceState(s, attachResourceName, "id")
					if isEnableExportCompartment, _ := strconv.ParseBool(utils.GetEnvSettingWithDefault("enable_export_compartment", "true")); isEnableExportCompartment {
						if errExport := resourcediscovery.TestExportCompartmentWithResourceName(&resId, &compartmentId, attachResourceName); errExport != nil {
							return errExport
						}
					}
					return err
				},
			),
		},
		// verify profile detach
		{
			Config: config + compartmentIdVariableStr + OsManagementHubManagedInstanceDetachProfileManagementResourceDependencies +
				acctest.GenerateResourceFromRepresentationMap("oci_os_management_hub_managed_instance_detach_profile_management", "test_managed_instance_detach_profile_management", acctest.Required, acctest.Create, OsManagementHubManagedInstanceDetachProfileManagementRepresentation),
			Check: acctest.ComposeAggregateTestCheckFuncWrapper(
				resource.TestCheckResourceAttrSet(resourceName, "managed_instance_id"),

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
	})
}
