package globally_distributed_database

#resource: {
	attributes: {
		private_endpoint: {
			vcn_id:                            string
			compartment_id!:                   string
			reinstate_proxy_instance_trigger?: int
			sharded_databases: [...string]
			description?:  string
			display_name!: string
			time_updated:  string
			time_created:  string
			freeform_tags?: [_]: string
			lifecycle_state_details: string
			system_tags: [_]: string
			proxy_compute_instance_id: string
			private_ip:                string
			defined_tags?: [_]: string
			state: string
			nsg_ids?: [...string]
			subnet_id!: string
		}
		sharded_database: {
			display_name!: string
			freeform_tags?: [_]: string
			catalog_details!: [...{
				cloud_autonomous_vm_cluster_id!: string
				shard_group:                     string
				admin_password!:                 string
				compute_count!:                  float
				status:                          string
				time_updated:                    string
				container_database_parent_id:    string
				metadata: [_]: string
				is_auto_scaling_enabled!:  bool
				data_storage_size_in_gbs!: float
				encryption_key_details?: [...{
					vault_id!:           string
					kms_key_version_id?: string
					kms_key_id!:         string
				}]
				peer_cloud_autonomous_vm_cluster_id?: string
				time_ssl_certificate_expires:         string
				container_database_id:                string
				supporting_resource_id:               string
				name:                                 string
				time_created:                         string
			}]
			generate_gsm_certificate_signing_request_trigger?: int
			configure_sharding_trigger?:                       int
			state:                                             string
			time_zone:                                         string
			compartment_id!:                                   string
			listener_port!:                                    int
			shard_details!: [...{
				metadata: [_]: string
				is_auto_scaling_enabled!:        bool
				time_ssl_certificate_expires:    string
				time_created:                    string
				cloud_autonomous_vm_cluster_id!: string
				status:                          string
				shard_space?:                    string
				admin_password!:                 string
				container_database_parent_id:    string
				shard_group:                     string
				supporting_resource_id:          string
				name:                            string
				data_storage_size_in_gbs!:       float
				encryption_key_details?: [...{
					kms_key_id!:         string
					vault_id!:           string
					kms_key_version_id?: string
				}]
				time_updated:                         string
				compute_count!:                       float
				container_database_id:                string
				peer_cloud_autonomous_vm_cluster_id?: string
			}]
			patch_operations?: [...{
				value!:     string
				operation!: string
				selection!: string
			}]
			sharded_database_id: string
			connection_strings: [...{
				all_connection_strings: [_]: string
			}]
			ons_port_local!: int
			defined_tags?: [_]: string
			get_connection_string_trigger?: int
			ons_port_remote!:               int
			gsms: [...{
				status:                   string
				time_updated:             string
				data_storage_size_in_gbs: float
				name:                     string
				metadata: [_]: string
				time_created:                 string
				time_ssl_certificate_expires: string
				compute_count:                float
				supporting_resource_id:       string
			}]
			db_workload!:                                string
			configure_gsms_trigger_is_latest_gsm_image?: bool
			configure_gsms_trigger_old_gsm_names?: [...string]
			generate_wallet_trigger?:                          int
			listener_port_tls!:                                int
			character_set!:                                    string
			prefix!:                                           string
			download_gsm_certificate_signing_request_trigger?: int
			chunks?:                                           int
			validate_network_trigger?:                         int
			db_deployment_type!:                               string
			lifecycle_state_details:                           string
			replication_factor?:                               int
			ca_signed_certificate?:                            string
			time_created:                                      string
			time_updated:                                      string
			cluster_certificate_common_name?:                  string
			sharding_method!:                                  string
			configure_gsms_trigger?:                           int
			start_database_trigger?:                           int
			stop_database_trigger?:                            int
			private_endpoint:                                  string
			system_tags: [_]: string
			lifecycle_state:                                        string
			replication_method?:                                    string
			replication_unit?:                                      int
			upload_signed_certificate_and_generate_wallet_trigger?: int
			db_version!:                                            string
			generate_wallet_password?:                              string
			ncharacter_set!:                                        string
		}
	}
	arguments: {
		private_endpoint: {
			subnet_id!: string
			freeform_tags?: [_]: string
			compartment_id!:                   string
			display_name!:                     string
			reinstate_proxy_instance_trigger?: int
			defined_tags?: [_]: string
			description?: string
			nsg_ids?: [...string]
		}
		sharded_database: {
			chunks?:                        int
			generate_wallet_trigger?:       int
			get_connection_string_trigger?: int
			shard_details!: [...{
				shard_space?:                         string
				cloud_autonomous_vm_cluster_id!:      string
				peer_cloud_autonomous_vm_cluster_id?: string
				admin_password!:                      string
				data_storage_size_in_gbs!:            float
				encryption_key_details?: [...{
					vault_id!:           string
					kms_key_version_id?: string
					kms_key_id!:         string
				}]
				compute_count!:           float
				is_auto_scaling_enabled!: bool
			}]
			replication_method?:       string
			generate_wallet_password?: string
			configure_gsms_trigger_old_gsm_names?: [...string]
			display_name!: string
			defined_tags?: [_]: string
			ons_port_remote!:   int
			db_workload!:       string
			ncharacter_set!:    string
			sharding_method!:   string
			listener_port_tls!: int
			catalog_details!: [...{
				encryption_key_details?: [...{
					kms_key_id!:         string
					vault_id!:           string
					kms_key_version_id?: string
				}]
				peer_cloud_autonomous_vm_cluster_id?: string
				is_auto_scaling_enabled!:             bool
				admin_password!:                      string
				compute_count!:                       float
				cloud_autonomous_vm_cluster_id!:      string
				data_storage_size_in_gbs!:            float
			}]
			prefix!:                                                string
			replication_unit?:                                      int
			upload_signed_certificate_and_generate_wallet_trigger?: int
			compartment_id!:                                        string
			ons_port_local!:                                        int
			configure_gsms_trigger?:                                int
			db_deployment_type!:                                    string
			db_version!:                                            string
			stop_database_trigger?:                                 int
			cluster_certificate_common_name?:                       string
			freeform_tags?: [_]: string
			listener_port!: int
			patch_operations?: [...{
				selection!: string
				value!:     string
				operation!: string
			}]
			download_gsm_certificate_signing_request_trigger?: int
			validate_network_trigger?:                         int
			generate_gsm_certificate_signing_request_trigger?: int
			configure_sharding_trigger?:                       int
			replication_factor?:                               int
			ca_signed_certificate?:                            string
			start_database_trigger?:                           int
			configure_gsms_trigger_is_latest_gsm_image?:       bool
			character_set!:                                    string
		}
	}
}
#data: {
	sharded_databases: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
	private_endpoint: private_endpoint_id!: string
	private_endpoints: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
	sharded_database: {
		metadata?:            string
		sharded_database_id!: string
	}
}

