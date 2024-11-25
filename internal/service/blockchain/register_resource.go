// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package blockchain

import "github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

func RegisterResource() {
	tfresource.RegisterResource("oci_blockchain_blockchain_platform", BlockchainBlockchainPlatformResource())
	tfresource.RegisterResource("oci_blockchain_osn", BlockchainOsnResource())
	tfresource.RegisterResource("oci_blockchain_peer", BlockchainPeerResource())
}
