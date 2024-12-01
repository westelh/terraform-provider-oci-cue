package opensearch

#resource: {
	attributes: opensearch_cluster: {
		time_created:                 string
		data_node_count!:             int
		state:                        string
		compartment_id!:              string
		fqdn:                         string
		master_node_host_ocpu_count!: int
		freeform_tags?: [_]: string
		opensearch_fqdn:                     string
		security_master_user_password_hash?: string
		system_tags?: [_]: string
		opendashboard_node_host_ocpu_count!: int
		master_node_host_type!:              string
		vcn_compartment_id!:                 string
		display_name!:                       string
		opendashboard_private_ip:            string
		availability_domains: [...string]
		time_deleted:               string
		subnet_id!:                 string
		security_master_user_name?: string
		opendashboard_node_count!:  int
		defined_tags?: [_]: string
		total_storage_gb:                   int
		security_mode?:                     string
		software_version!:                  string
		opensearch_private_ip:              string
		data_node_storage_gb!:              int
		master_node_host_memory_gb!:        int
		time_updated:                       string
		master_node_host_bare_metal_shape?: string
		data_node_host_ocpu_count!:         int
		lifecycle_details:                  string
		opendashboard_fqdn:                 string
		subnet_compartment_id!:             string
		data_node_host_memory_gb!:          int
		vcn_id!:                            string
		data_node_host_type!:               string
		opendashboard_node_host_memory_gb!: int
		master_node_count!:                 int
		data_node_host_bare_metal_shape?:   string
	}
	arguments: opensearch_cluster: {
		master_node_host_ocpu_count!:        int
		security_master_user_name?:          string
		subnet_compartment_id!:              string
		data_node_host_memory_gb!:           int
		security_mode?:                      string
		compartment_id!:                     string
		opendashboard_node_count!:           int
		vcn_id!:                             string
		vcn_compartment_id!:                 string
		display_name!:                       string
		data_node_host_bare_metal_shape?:    string
		security_master_user_password_hash?: string
		subnet_id!:                          string
		master_node_host_memory_gb!:         int
		master_node_count!:                  int
		data_node_host_type!:                string
		data_node_storage_gb!:               int
		data_node_count!:                    int
		opendashboard_node_host_ocpu_count!: int
		software_version!:                   string
		defined_tags?: [_]: string
		data_node_host_ocpu_count!:         int
		opendashboard_node_host_memory_gb!: int
		master_node_host_bare_metal_shape?: string
		master_node_host_type!:             string
		freeform_tags?: [_]: string
		system_tags?: [_]: string
	}
}
#data: {
	opensearch_version: compartment_id!: string
	opensearch_versions: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	opensearch_cluster: opensearch_cluster_id!: string
	opensearch_clusters: {
		display_name?: string
		id?:           string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
}

