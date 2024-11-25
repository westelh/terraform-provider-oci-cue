// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package zpr

import "github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

func RegisterResource() {
	tfresource.RegisterResource("oci_zpr_configuration", ZprConfigurationResource())
	tfresource.RegisterResource("oci_zpr_zpr_policy", ZprZprPolicyResource())
}
