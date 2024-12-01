package opensearch

#resource: {
	attributes: opensearch_cluster: {
		security_master_user_name?: string
		master_node_count!:         int
		fqdn:                       string
		availability_domains: [...string]
		display_name!:                      string
		subnet_compartment_id!:             string
		opendashboard_node_host_memory_gb!: int
		time_deleted:                       string
		freeform_tags?: [_]: string
		system_tags?: [_]: string
		data_node_storage_gb!:        int
		software_version!:            string
		state:                        string
		security_mode?:               string
		lifecycle_details:            string
		opendashboard_private_ip:     string
		master_node_host_ocpu_count!: int
		time_created:                 string
		opendashboard_node_count!:    int
		subnet_id!:                   string
		master_node_host_memory_gb!:  int
		master_node_host_type!:       string
		vcn_compartment_id!:          string
		vcn_id!:                      string
		opendashboard_fqdn:           string
		total_storage_gb:             int
		defined_tags?: [_]: string
		opensearch_fqdn:                     string
		opensearch_private_ip:               string
		time_updated:                        string
		data_node_host_memory_gb!:           int
		data_node_host_bare_metal_shape?:    string
		data_node_host_ocpu_count!:          int
		compartment_id!:                     string
		security_master_user_password_hash?: string
		data_node_host_type!:                string
		master_node_host_bare_metal_shape?:  string
		data_node_count!:                    int
		opendashboard_node_host_ocpu_count!: int
	}
	arguments: opensearch_cluster: {
		defined_tags?: [_]: string
		display_name!:                       string
		vcn_compartment_id!:                 string
		data_node_host_memory_gb!:           int
		data_node_host_ocpu_count!:          int
		security_mode?:                      string
		opendashboard_node_host_ocpu_count!: int
		system_tags?: [_]: string
		compartment_id!:             string
		master_node_host_memory_gb!: int
		freeform_tags?: [_]: string
		master_node_host_type!:              string
		master_node_host_ocpu_count!:        int
		software_version!:                   string
		master_node_count!:                  int
		opendashboard_node_host_memory_gb!:  int
		security_master_user_password_hash?: string
		master_node_host_bare_metal_shape?:  string
		opendashboard_node_count!:           int
		data_node_storage_gb!:               int
		security_master_user_name?:          string
		subnet_id!:                          string
		data_node_host_type!:                string
		subnet_compartment_id!:              string
		data_node_count!:                    int
		vcn_id!:                             string
		data_node_host_bare_metal_shape?:    string
	}
}
#data: {
	opensearch_cluster: opensearch_cluster_id!: string
	opensearch_clusters: {
		display_name?: string
		id?:           string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	opensearch_version: compartment_id!: string
	opensearch_versions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
}

