// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package appmgmt_control

import "github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

func RegisterResource() {
	tfresource.RegisterResource("oci_appmgmt_control_monitor_plugin_management", AppmgmtControlMonitorPluginManagementResource())
}
