// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package psql

import "github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

func RegisterResource() {
	tfresource.RegisterResource("oci_psql_backup", PsqlBackupResource())
	tfresource.RegisterResource("oci_psql_configuration", PsqlConfigurationResource())
	tfresource.RegisterResource("oci_psql_db_system", PsqlDbSystemResource())
}
