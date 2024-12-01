package globally_distributed_database

#resource: {
	attributes: {
		private_endpoint: {
			subnet_id!:              string
			lifecycle_state_details: string
			time_updated:            string
			defined_tags?: [_]: string
			reinstate_proxy_instance_trigger?: int
			sharded_databases: [...string]
			state:         string
			display_name!: string
			nsg_ids?: [...string]
			compartment_id!:           string
			private_ip:                string
			description?:              string
			proxy_compute_instance_id: string
			time_created:              string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			vcn_id: string
		}
		sharded_database: {
			gsms: [...{
				metadata: [_]: string
				name:                         string
				time_updated:                 string
				data_storage_size_in_gbs:     float
				time_created:                 string
				time_ssl_certificate_expires: string
				compute_count:                float
				supporting_resource_id:       string
				status:                       string
			}]
			time_zone:                                         string
			compartment_id!:                                   string
			download_gsm_certificate_signing_request_trigger?: int
			configure_gsms_trigger_is_latest_gsm_image?:       bool
			ons_port_remote!:                                  int
			chunks?:                                           int
			state:                                             string
			time_updated:                                      string
			generate_wallet_password?:                         string
			sharding_method!:                                  string
			stop_database_trigger?:                            int
			db_version!:                                       string
			db_deployment_type!:                               string
			connection_strings: [...{
				all_connection_strings: [_]: string
			}]
			catalog_details!: [...{
				cloud_autonomous_vm_cluster_id!: string
				admin_password!:                 string
				data_storage_size_in_gbs!:       float
				supporting_resource_id:          string
				status:                          string
				time_updated:                    string
				container_database_parent_id:    string
				metadata: [_]: string
				peer_cloud_autonomous_vm_cluster_id?: string
				time_created:                         string
				time_ssl_certificate_expires:         string
				name:                                 string
				is_auto_scaling_enabled!:             bool
				compute_count!:                       float
				shard_group:                          string
				encryption_key_details?: [...{
					kms_key_id!:         string
					vault_id!:           string
					kms_key_version_id?: string
				}]
				container_database_id: string
			}]
			display_name!:             string
			ncharacter_set!:           string
			lifecycle_state_details:   string
			validate_network_trigger?: int
			freeform_tags?: [_]: string
			private_endpoint: string
			lifecycle_state:  string
			system_tags: [_]: string
			listener_port_tls!:  int
			replication_factor?: int
			replication_unit?:   int
			shard_details!: [...{
				peer_cloud_autonomous_vm_cluster_id?: string
				shard_space?:                         string
				time_ssl_certificate_expires:         string
				encryption_key_details?: [...{
					kms_key_version_id?: string
					kms_key_id!:         string
					vault_id!:           string
				}]
				container_database_id: string
				metadata: [_]: string
				cloud_autonomous_vm_cluster_id!: string
				compute_count!:                  float
				container_database_parent_id:    string
				time_created:                    string
				admin_password!:                 string
				status:                          string
				data_storage_size_in_gbs!:       float
				shard_group:                     string
				name:                            string
				is_auto_scaling_enabled!:        bool
				supporting_resource_id:          string
				time_updated:                    string
			}]
			replication_method?: string
			defined_tags?: [_]: string
			db_workload!:            string
			start_database_trigger?: int
			configure_gsms_trigger_old_gsm_names?: [...string]
			time_created:                                      string
			cluster_certificate_common_name?:                  string
			sharded_database_id:                               string
			generate_gsm_certificate_signing_request_trigger?: int
			generate_wallet_trigger?:                          int
			character_set!:                                    string
			configure_gsms_trigger?:                           int
			get_connection_string_trigger?:                    int
			listener_port!:                                    int
			ca_signed_certificate?:                            string
			patch_operations?: [...{
				operation!: string
				selection!: string
				value!:     string
			}]
			configure_sharding_trigger?:                            int
			upload_signed_certificate_and_generate_wallet_trigger?: int
			ons_port_local!:                                        int
			prefix!:                                                string
		}
	}
	arguments: {
		private_endpoint: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			nsg_ids?: [...string]
			compartment_id!:                   string
			reinstate_proxy_instance_trigger?: int
			display_name!:                     string
			subnet_id!:                        string
			description?:                      string
		}
		sharded_database: {
			stop_database_trigger?:                                 int
			download_gsm_certificate_signing_request_trigger?:      int
			configure_gsms_trigger_is_latest_gsm_image?:            bool
			ncharacter_set!:                                        string
			upload_signed_certificate_and_generate_wallet_trigger?: int
			validate_network_trigger?:                              int
			ons_port_local!:                                        int
			display_name!:                                          string
			db_workload!:                                           string
			generate_gsm_certificate_signing_request_trigger?:      int
			shard_details!: [...{
				is_auto_scaling_enabled!: bool
				shard_space?:             string
				admin_password!:          string
				encryption_key_details?: [...{
					kms_key_id!:         string
					vault_id!:           string
					kms_key_version_id?: string
				}]
				cloud_autonomous_vm_cluster_id!:      string
				compute_count!:                       float
				peer_cloud_autonomous_vm_cluster_id?: string
				data_storage_size_in_gbs!:            float
			}]
			freeform_tags?: [_]: string
			replication_method?: string
			compartment_id!:     string
			listener_port!:      int
			ons_port_remote!:    int
			replication_unit?:   int
			patch_operations?: [...{
				operation!: string
				selection!: string
				value!:     string
			}]
			db_version!:                      string
			get_connection_string_trigger?:   int
			replication_factor?:              int
			cluster_certificate_common_name?: string
			generate_wallet_password?:        string
			character_set!:                   string
			listener_port_tls!:               int
			db_deployment_type!:              string
			configure_gsms_trigger?:          int
			defined_tags?: [_]: string
			catalog_details!: [...{
				cloud_autonomous_vm_cluster_id!: string
				is_auto_scaling_enabled!:        bool
				encryption_key_details?: [...{
					vault_id!:           string
					kms_key_version_id?: string
					kms_key_id!:         string
				}]
				admin_password!:                      string
				data_storage_size_in_gbs!:            float
				peer_cloud_autonomous_vm_cluster_id?: string
				compute_count!:                       float
			}]
			configure_sharding_trigger?: int
			configure_gsms_trigger_old_gsm_names?: [...string]
			prefix!:                  string
			chunks?:                  int
			ca_signed_certificate?:   string
			sharding_method!:         string
			generate_wallet_trigger?: int
			start_database_trigger?:  int
		}
	}
}
#data: {
	private_endpoint: private_endpoint_id!: string
	private_endpoints: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	sharded_database: {
		metadata?:            string
		sharded_database_id!: string
	}
	sharded_databases: {
		display_name?: string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
}

