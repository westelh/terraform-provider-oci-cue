// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package integrationtest

import (
	"fmt"
	"log"
	"strconv"
	"testing"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"
	"github.com/hashicorp/terraform-plugin-sdk/v2/terraform"

	"github.com/oracle/terraform-provider-oci/httpreplay"
	"github.com/westelh/terraform-provider-oci-cue/internal/acctest"
	"github.com/westelh/terraform-provider-oci-cue/internal/resourcediscovery"
	"github.com/westelh/terraform-provider-oci-cue/internal/utils"
)

// issue-routing-tag: kms/default
func TestKmsKeyResource_ResourceDiscovery(t *testing.T) {
	httpreplay.SetScenario("TestKmsKeyResource_ResourceDiscovery")
	defer httpreplay.SaveScenario()

	config := acctest.ProviderTestConfig()

	compartmentId := utils.GetEnvSettingWithBlankDefault("compartment_ocid")
	compartmentIdVariableStr := fmt.Sprintf("variable \"compartment_id\" { default = \"%s\" }\n", compartmentId)

	tenancyId := utils.GetEnvSettingWithBlankDefault("tenancy_ocid")
	kmsKeyId := utils.GetEnvSettingWithBlankDefault("kms_key_ocid")

	resourceName := "oci_kms_key.test_key"

	acctest.ResourceTest(t, nil, []resource.TestStep{
		// verify resource discovery for KMS Keys
		// Our vault is in root compartment, so we need to run Keys resource discovery in root compartment, as first RD tries to find the vault and then keys inside the vault
		{
			Config: config + compartmentIdVariableStr + KmsKeyResourceDependencies,
			Check: acctest.ComposeAggregateTestCheckFuncWrapper(

				func(s *terraform.State) (err error) {
					managementEndpoint, errRead := acctest.FromInstanceState(s, "data.oci_kms_vault.test_vault", "management_endpoint")
					if errRead != nil {
						return errRead
					}

					compositeId := "managementEndpoint/" + managementEndpoint + "/keys/" + kmsKeyId
					log.Printf("[DEBUG] Composite ID to import: %s", compositeId)
					if isEnableExportCompartment, _ := strconv.ParseBool(utils.GetEnvSettingWithDefault("enable_export_compartment", "true")); isEnableExportCompartment {
						if errExport := resourcediscovery.TestExportCompartmentWithResourceName(&compositeId, &tenancyId, resourceName); errExport != nil {
							return errExport
						}
					}
					return err
				},
			),
		},
	})
}
