// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package integrationtest

import (
	"testing"

	"github.com/westelh/terraform-provider-oci-cue/httpreplay"
	"github.com/westelh/terraform-provider-oci-cue/internal/acctest"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"
)

// issue-routing-tag: load_balancer/default
func TestAccDatasourceLoadBalancerShapes_basic(t *testing.T) {
	httpreplay.SetScenario("TestAccDatasourceLoadBalancerShapes_basic")
	defer httpreplay.SaveScenario()
	providers := acctest.TestAccProviders
	config := acctest.LegacyTestProviderConfig() + `
	data "oci_load_balancer_shapes" "t" {
		compartment_id = "${var.compartment_id}"
		filter {
			name = "name"
			values = ["100Mbps"]
		}
	}`

	resourceName := "data.oci_load_balancer_shapes.t"

	resource.Test(t, resource.TestCase{
		PreCheck:                  func() { acctest.PreCheck(t) },
		PreventPostDestroyRefresh: true,
		Providers:                 providers,
		Steps: []resource.TestStep{
			{
				Config: config,
				Check: acctest.ComposeAggregateTestCheckFuncWrapper(
					resource.TestCheckResourceAttr(resourceName, "shapes.#", "1"),
					resource.TestCheckResourceAttr(resourceName, "shapes.0.name", "100Mbps"),
				),
			},
		},
	})
}
