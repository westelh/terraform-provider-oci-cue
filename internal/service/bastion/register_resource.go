// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package bastion

import "github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

func RegisterResource() {
	tfresource.RegisterResource("oci_bastion_bastion", BastionBastionResource())
	tfresource.RegisterResource("oci_bastion_session", BastionSessionResource())
}
