// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package integrationtest

import (
	"fmt"
	"testing"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"

	"github.com/oracle/terraform-provider-oci/httpreplay"
	"github.com/oracle/terraform-provider-oci/internal/acctest"

	"github.com/oracle/terraform-provider-oci/internal/utils"
)

var (
	FleetAppsManagementFleetComplianceReportSingularDataSourceRepresentation = map[string]interface{}{
		"compliance_report_id": acctest.Representation{RepType: acctest.Required, Create: `${var.test_compliance_report_id}`},
		"fleet_id":             acctest.Representation{RepType: acctest.Required, Create: `${var.test_active_fleet}`},
	}

	FleetAppsManagementFleetComplianceReportResourceConfig = ""
)

// issue-routing-tag: fleet_apps_management/default
func TestFleetAppsManagementFleetComplianceReportResource_basic(t *testing.T) {
	httpreplay.SetScenario("TestFleetAppsManagementFleetComplianceReportResource_basic")
	defer httpreplay.SaveScenario()

	config := acctest.ProviderTestConfig()

	compartmentId := utils.GetEnvSettingWithBlankDefault("compartment_ocid")
	compartmentIdVariableStr := fmt.Sprintf("variable \"compartment_id\" { default = \"%s\" }\n", compartmentId)

	// Fleet in ACTIVE state. Fleets require a confirmation action call not supported by Terraform to go active.
	// Thus, this needs to be created and confirmed manually.
	activeFleetId := utils.GetEnvSettingWithBlankDefault("test_active_fleet")
	activeFleetStr := fmt.Sprintf("variable \"test_active_fleet\" { default = \"%s\" }\n", activeFleetId)

	// Generated Compliance report for above Fleet.
	// These reports are generated by an action call not supported by the Terraform provider.
	complianceReportId := utils.GetEnvSettingWithBlankDefault("test_compliance_report_id")
	complianceReportIdStr := fmt.Sprintf("variable \"test_compliance_report_id\" { default = \"%s\" }\n", complianceReportId)
	singularDatasourceName := "data.oci_fleet_apps_management_fleet_compliance_report.test_fleet_compliance_report"

	acctest.SaveConfigContent("", "", "", t)

	acctest.ResourceTest(t, nil, []resource.TestStep{
		// verify singular datasource
		{
			Config: config +
				acctest.GenerateDataSourceFromRepresentationMap("oci_fleet_apps_management_fleet_compliance_report", "test_fleet_compliance_report", acctest.Required, acctest.Create, FleetAppsManagementFleetComplianceReportSingularDataSourceRepresentation) +
				complianceReportIdStr + activeFleetStr + compartmentIdVariableStr + FleetAppsManagementFleetComplianceReportResourceConfig,
			Check: acctest.ComposeAggregateTestCheckFuncWrapper(
				resource.TestCheckResourceAttrSet(singularDatasourceName, "compliance_report_id"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "fleet_id"),

				resource.TestCheckResourceAttrSet(singularDatasourceName, "compliance_state"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "id"),
				resource.TestCheckResourceAttrSet(singularDatasourceName, "resources.#"),
			),
		},
	})
}