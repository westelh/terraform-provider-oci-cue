// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package opensearch

import "github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

func RegisterDatasource() {
	tfresource.RegisterDatasource("oci_opensearch_opensearch_cluster", OpensearchOpensearchClusterDataSource())
	tfresource.RegisterDatasource("oci_opensearch_opensearch_clusters", OpensearchOpensearchClustersDataSource())
	tfresource.RegisterDatasource("oci_opensearch_opensearch_version", OpensearchOpensearchVersionDataSource())
	tfresource.RegisterDatasource("oci_opensearch_opensearch_versions", OpensearchOpensearchVersionsDataSource())
}
