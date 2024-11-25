// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package service_manager_proxy

import "github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

func RegisterDatasource() {
	tfresource.RegisterDatasource("oci_service_manager_proxy_service_environment", ServiceManagerProxyServiceEnvironmentDataSource())
	tfresource.RegisterDatasource("oci_service_manager_proxy_service_environments", ServiceManagerProxyServiceEnvironmentsDataSource())
}
