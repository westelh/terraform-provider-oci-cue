// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package integrationtest

import (
	"fmt"
	"testing"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"

	"github.com/westelh/terraform-provider-oci-cue/httpreplay"
	"github.com/westelh/terraform-provider-oci-cue/internal/acctest"
	"github.com/westelh/terraform-provider-oci-cue/internal/utils"
)

var (
	DatabaseDatabaseFlexComponentDataSourceRepresentation = map[string]interface{}{
		"compartment_id": acctest.Representation{RepType: acctest.Required, Create: `${var.compartment_id}`},
		"name":           acctest.Representation{RepType: acctest.Optional, Create: `Exadata.X8M.StorageServer`},
	}

	DatabaseFlexComponentResourceConfig = ""
)

// issue-routing-tag: database/default
func TestDatabaseFlexComponentResource_basic(t *testing.T) {
	httpreplay.SetScenario("TestDatabaseFlexComponentResource_basic")
	defer httpreplay.SaveScenario()

	config := acctest.ProviderTestConfig()

	compartmentId := utils.GetEnvSettingWithBlankDefault("compartment_ocid")
	compartmentIdVariableStr := fmt.Sprintf("variable \"compartment_id\" { default = \"%s\" }\n", compartmentId)

	datasourceName := "data.oci_database_flex_components.test_flex_components"

	acctest.SaveConfigContent("", "", "", t)

	acctest.ResourceTest(t, nil, []resource.TestStep{
		// verify datasource
		{
			Config: config +
				acctest.GenerateDataSourceFromRepresentationMap("oci_database_flex_components", "test_flex_components", acctest.Optional, acctest.Create, DatabaseDatabaseFlexComponentDataSourceRepresentation) +
				compartmentIdVariableStr + DatabaseFlexComponentResourceConfig,
			Check: acctest.ComposeAggregateTestCheckFuncWrapper(
				resource.TestCheckResourceAttr(datasourceName, "compartment_id", compartmentId),
				resource.TestCheckResourceAttr(datasourceName, "name", "Exadata.X8M.StorageServer"),

				resource.TestCheckResourceAttrSet(datasourceName, "flex_component_collection.#"),
				resource.TestCheckResourceAttr(datasourceName, "flex_component_collection.0.items.#", "1"),
				resource.TestCheckResourceAttrSet(datasourceName, "flex_component_collection.0.items.0.available_core_count"),
				resource.TestCheckResourceAttrSet(datasourceName, "flex_component_collection.0.items.0.available_db_storage_in_gbs"),
				resource.TestCheckResourceAttrSet(datasourceName, "flex_component_collection.0.items.0.minimum_core_count"),
				resource.TestCheckResourceAttrSet(datasourceName, "flex_component_collection.0.items.0.name"),
			),
		},
	})
}
