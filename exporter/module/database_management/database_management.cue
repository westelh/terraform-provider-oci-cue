package database_management

#resource: {
	attributes: {
		externalnoncontainerdatabase_external_non_container_dbm_features_management: {
			external_non_container_database_id!:        string
			enable_external_non_container_dbm_feature!: bool
			feature_details?: [...{
				license_model?: string
				feature!:       string
				connector_details?: [...{
					database_connector_id?: string
					management_agent_id?:   string
					private_end_point_id?:  string
					connector_type?:        string
				}]
			}]
		}
		external_asm_instance: {
			system_tags: [_]: string
			host_name:                 string
			lifecycle_details:         string
			time_created:              string
			external_asm_instance_id!: string
			adr_home_directory:        string
			time_updated:              string
			compartment_id:            string
			display_name:              string
			external_db_node_id:       string
			defined_tags?: [_]: string
			external_asm_id:       string
			external_db_system_id: string
			state:                 string
			freeform_tags?: [_]: string
			component_name: string
		}
		external_db_system_stack_monitorings_management: {
			enable_stack_monitoring!: bool
			is_enabled?:              bool
			metadata?:                string
			external_db_system_id!:   string
		}
		externalcontainerdatabase_external_container_dbm_features_management: {
			external_container_database_id!:        string
			enable_external_container_dbm_feature!: bool
			feature_details?: [...{
				feature!: string
				connector_details?: [...{
					connector_type?:        string
					database_connector_id?: string
					management_agent_id?:   string
					private_end_point_id?:  string
				}]
				license_model?: string
			}]
		}
		pluggabledatabase_pluggable_database_dbm_features_management: {
			feature_details?: [...{
				database_connection_details?: [...{
					connection_credentials?: [...{
						named_credential_id?: string
						password_secret_id?:  string
						role?:                string
						ssl_secret_id?:       string
						user_name?:           string
						credential_name?:     string
						credential_type?:     string
					}]
					connection_string?: [...{
						connection_type?: string
						port?:            int
						protocol?:        string
						service?:         string
					}]
				}]
				is_auto_enable_pluggable_database?: bool
				management_type?:                   string
				feature!:                           string
				connector_details?: [...{
					management_agent_id?:   string
					private_end_point_id?:  string
					connector_type?:        string
					database_connector_id?: string
				}]
			}]
			pluggable_database_id!:                 string
			enable_pluggable_database_dbm_feature!: bool
			modify_pluggable_database_dbm_feature?: bool
		}
		db_management_private_endpoint: {
			name!:           string
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_cluster?:                bool
			vcn_id:                     string
			time_created:               string
			description?:               string
			is_dns_resolution_enabled?: bool
			state:                      string
			subnet_id!:                 string
			private_ip:                 string
			system_tags: [_]: string
			nsg_ids?: [...string]
		}
		external_exadata_infrastructure_exadata_management: {
			license_model?:                      string
			external_exadata_infrastructure_id!: string
			enable_exadata!:                     bool
		}
		external_exadata_storage_server: {
			state:                     string
			status:                    string
			max_flash_disk_iops:       int
			exadata_infrastructure_id: string
			defined_tags?: [_]: string
			additional_details: [_]: string
			internal_id:  string
			time_created: string
			version:      string
			connector: [...{
				display_name: string
				time_updated: string
				version:      string
				system_tags: [_]: string
				connection_uri: string
				internal_id:    string
				additional_details: [_]: string
				state: string
				defined_tags: [_]: string
				freeform_tags: [_]: string
				agent_id:          string
				resource_type:     string
				storage_server_id: string
				id:                string
				lifecycle_details: string
				time_created:      string
				status:            string
			}]
			make_model: string
			system_tags: [_]: string
			ip_address:                          string
			external_exadata_storage_server_id!: string
			memory_gb:                           float
			max_hard_disk_throughput:            int
			cpu_count:                           float
			time_updated:                        string
			max_flash_disk_throughput:           int
			max_hard_disk_iops:                  int
			lifecycle_details:                   string
			storage_grid_id:                     string
			freeform_tags?: [_]: string
			display_name:  string
			resource_type: string
		}
		managed_databases_change_database_parameter: {
			managed_database_id!: string
			parameters!: [...{
				update_comment?: string
				name!:           string
				value!:          string
			}]
			scope!: string
			credentials?: [...{
				role?:      string
				secret_id?: string
				user_name?: string
				password?:  string
			}]
			database_credential?: [...{
				named_credential_id?: string
				password?:            string
				password_secret_id?:  string
				role?:                string
				username?:            string
				credential_type!:     string
			}]
		}
		autonomous_database_autonomous_database_dbm_features_management: {
			feature_details?: [...{
				feature!: string
				connector_details?: [...{
					management_agent_id?:   string
					private_end_point_id?:  string
					connector_type?:        string
					database_connector_id?: string
				}]
				database_connection_details?: [...{
					connection_credentials?: [...{
						credential_name?:    string
						credential_type?:    string
						password_secret_id?: string
						role?:               string
						ssl_secret_id?:      string
						user_name?:          string
					}]
					connection_string?: [...{
						port?:            int
						protocol?:        string
						service?:         string
						connection_type?: string
					}]
				}]
			}]
			autonomous_database_id!:                 string
			enable_autonomous_database_dbm_feature!: bool
		}
		external_exadata_infrastructure: {
			internal_id:    string
			version:        string
			discovery_key?: string
			storage_grid: [...{
				additional_details: [_]: string
				state:             string
				display_name:      string
				id:                string
				time_updated:      string
				version:           string
				status:            string
				time_created:      string
				internal_id:       string
				lifecycle_details: string
				server_count:      float
			}]
			license_model?: string
			database_systems: [...{
				time_updated:    string
				compartment_id?: string
				additional_details: [_]: string
				id:                string
				license_model:     string
				lifecycle_details: string
				time_created:      string
				internal_id:       string
				state:             string
				status:            string
				version:           string
				display_name:      string
			}]
			rack_size:       string
			compartment_id!: string
			db_system_ids!: [...string]
			additional_details: [_]: string
			system_tags: [_]: string
			display_name!: string
			defined_tags?: [_]: string
			state:  string
			status: string
			storage_server_names?: [...string]
			database_compartments: [...string]
			lifecycle_details: string
			freeform_tags?: [_]: string
			time_created: string
			time_updated: string
		}
		external_db_home: {
			component_name:        string
			time_created:          string
			time_updated:          string
			external_db_system_id: string
			home_directory:        string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			external_db_home_id!: string
			state:                string
			additional_details: [_]: string
			lifecycle_details: string
			display_name:      string
			system_tags: [_]: string
			compartment_id: string
		}
		external_db_system_connector: {
			time_updated:           string
			external_db_system_id!: string
			display_name?:          string
			time_created:           string
			compartment_id:         string
			lifecycle_details:      string
			freeform_tags?: [_]: string
			connection_info?: [...{
				component_type!: string
				connection_credentials?: [...{
					password_secret_id?: string
					role?:               string
					ssl_secret_id?:      string
					user_name?:          string
					credential_name?:    string
					credential_type?:    string
					named_credential_id: string
				}]
				connection_string?: [...{
					host_name?: string
					hosts?: [...string]
					port?:     int
					protocol?: string
					service?:  string
				}]
				database_credential: [...{
					username:            string
					credential_type:     string
					named_credential_id: string
					password:            string
					password_secret_id:  string
					role:                string
				}]
			}]
			state:     string
			agent_id?: string
			system_tags: [_]: string
			connection_status:          string
			connector_type!:            string
			connection_failure_message: string
			defined_tags?: [_]: string
			time_connection_status_last_updated: string
		}
		external_db_system_discovery: {
			time_created:    string
			compartment_id!: string
			patch_operations?: [...{
				operation!: string
				selection!: string
				value?: [...{
					display_name?:               string
					compartment_id?:             string
					is_selected_for_monitoring?: bool
					connector?: [...{
						agent_id?: string
						connection_info?: [...{
							component_type!: string
							connection_credentials?: [...{
								credential_name?:    string
								password_secret_id?: string
								role?:               string
								ssl_secret_id?:      string
								user_name?:          string
								credential_type!:    string
							}]
							connection_string?: [...{
								host_name?: string
								hosts?: [...string]
								port?:     int
								protocol?: string
								service?:  string
							}]
						}]
						connector_type!: string
						display_name!:   string
					}]
				}]
			}]
			external_db_system_discovery_id: string
			display_name?:                   string
			resource_id:                     string
			state:                           string
			agent_id!:                       string
			discovered_components: [...{
				is_cluster:         bool
				adr_home_directory: string
				endpoints: [...{
					host:     string
					key:      string
					port:     int
					protocol: string
					services: [...string]
				}]
				network_configurations: [...{
					network_number: int
					network_type:   string
					subnet:         string
				}]
				associated_components: [...{
					association_type: string
					component_id:     string
					component_type:   string
				}]
				db_edition:      string
				cpu_core_count:  float
				component_type:  string
				is_flex_cluster: bool
				cluster_id:      string
				trace_directory: string
				resource_id:     string
				host_name:       string
				status:          string
				db_unique_name:  string
				listener_alias:  string
				db_packs:        string
				grid_home:       string
				vip_configurations: [...{
					node_name:      string
					address:        string
					network_number: int
				}]
				listener_type:   string
				oracle_home:     string
				display_name:    string
				component_id:    string
				is_flex_enabled: bool
				db_id:           string
				pluggable_databases: [...{
					connector: [...{
						connection_failure_message: string
						connection_info: [...{
							connection_credentials: [...{
								credential_type:     string
								named_credential_id: string
								password_secret_id:  string
								role:                string
								ssl_secret_id:       string
								user_name:           string
								credential_name:     string
							}]
							connection_string: [...{
								port:      int
								protocol:  string
								service:   string
								host_name: string
								hosts: [...string]
							}]
							database_credential: [...{
								credential_type:     string
								named_credential_id: string
								password:            string
								password_secret_id:  string
								role:                string
								username:            string
							}]
							component_type: string
						}]
						connection_status:                   string
						connector_type:                      string
						display_name:                        string
						time_connection_status_last_updated: string
						agent_id:                            string
					}]
					container_database_id: string
					guid:                  string
					compartment_id:        string
				}]
				version:                    string
				component_name:             string
				is_selected_for_monitoring: bool
				db_role:                    string
				connector: [...{
					time_connection_status_last_updated: string
					agent_id:                            string
					connection_failure_message:          string
					connection_info: [...{
						component_type: string
						connection_credentials: [...{
							named_credential_id: string
							password_secret_id:  string
							role:                string
							ssl_secret_id:       string
							user_name:           string
							credential_name:     string
							credential_type:     string
						}]
						connection_string: [...{
							hosts: [...string]
							port:      int
							protocol:  string
							service:   string
							host_name: string
						}]
						database_credential: [...{
							password:            string
							password_secret_id:  string
							role:                string
							username:            string
							credential_type:     string
							named_credential_id: string
						}]
					}]
					connection_status: string
					connector_type:    string
					display_name:      string
				}]
				cluster_instances: [...{
					connector: [...{
						connection_failure_message: string
						connection_info: [...{
							connection_credentials: [...{
								ssl_secret_id:       string
								user_name:           string
								credential_name:     string
								credential_type:     string
								named_credential_id: string
								password_secret_id:  string
								role:                string
							}]
							connection_string: [...{
								host_name: string
								hosts: [...string]
								port:     int
								protocol: string
								service:  string
							}]
							database_credential: [...{
								named_credential_id: string
								password:            string
								password_secret_id:  string
								role:                string
								username:            string
								credential_type:     string
							}]
							component_type: string
						}]
						connection_status:                   string
						connector_type:                      string
						display_name:                        string
						time_connection_status_last_updated: string
						agent_id:                            string
					}]
					crs_base_directory: string
					host_name:          string
					node_role:          string
					adr_home_directory: string
					cluster_id:         string
				}]
				node_role:          string
				compartment_id:     string
				memory_size_in_gbs: float
				log_directory:      string
				db_version:         string
				scan_configurations: [...{
					network_number: int
					scan_name:      string
					scan_port:      int
					scan_protocol:  string
				}]
				container_database_id: string
				guid:                  string
				home_directory:        string
				crs_base_directory:    string
				db_type:               string
				db_node_name:          string
				ocr_file_location:     string
				asm_instances: [...{
					host_name:          string
					instance_name:      string
					adr_home_directory: string
				}]
				instance_name: string
			}]
			lifecycle_details: string
			freeform_tags?: [_]: string
			grid_home: string
			system_tags: [_]: string
			defined_tags?: [_]: string
			time_updated: string
		}
		externalpluggabledatabase_external_pluggable_dbm_features_management: {
			external_pluggable_database_id!:        string
			enable_external_pluggable_dbm_feature!: bool
			feature_details?: [...{
				connector_details?: [...{
					connector_type?:        string
					database_connector_id?: string
					management_agent_id?:   string
					private_end_point_id?:  string
				}]
				feature!: string
			}]
		}
		external_db_node: {
			external_connector_id?: string
			system_tags: [_]: string
			time_updated: string
			additional_details: [_]: string
			cpu_core_count:    float
			lifecycle_details: string
			time_created:      string
			domain_name:       string
			display_name:      string
			host_name:         string
			compartment_id:    string
			freeform_tags?: [_]: string
			component_name:     string
			state:              string
			memory_size_in_gbs: float
			defined_tags?: [_]: string
			external_db_node_id!:  string
			external_db_system_id: string
		}
		external_db_system: {
			db_system_discovery_id!: string
			database_management_config?: [...{
				license_model!: string
			}]
			state: string
			stack_monitoring_config?: [...{
				is_enabled!: bool
				metadata?:   string
			}]
			discovery_agent_id: string
			lifecycle_details:  string
			compartment_id!:    string
			time_updated:       string
			is_cluster:         bool
			display_name?:      string
			defined_tags?: [_]: string
			home_directory: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_created: string
		}
		managed_database: {
			additional_details: [_]: string
			is_cluster:     bool
			compartment_id: string
			managed_database_groups: [...{
				compartment_id: string
				id:             string
				name:           string
			}]
			managed_database_id!: string
			system_tags: [_]: string
			workload_type: string
			defined_tags?: [_]: string
			database_version:       string
			deployment_type:        string
			database_platform_name: string
			dbmgmt_feature_configs: [...{
				connector_details: [...{
					connector_type:        string
					database_connector_id: string
					management_agent_id:   string
					private_end_point_id:  string
				}]
				database_connection_details: [...{
					connection_credentials: [...{
						password_secret_id:  string
						role:                string
						ssl_secret_id:       string
						user_name:           string
						credential_name:     string
						credential_type:     string
						named_credential_id: string
					}]
					connection_string: [...{
						service:         string
						connection_type: string
						port:            int
						protocol:        string
					}]
				}]
				feature:        string
				feature_status: string
				license_model:  string
			}]
			database_sub_type:   string
			db_system_id:        string
			parent_container_id: string
			freeform_tags?: [_]: string
			database_status:   string
			storage_system_id: string
			database_type:     string
			name:              string
			management_option: string
			time_created:      string
		}
		database_dbm_features_management: {
			database_id!:                 string
			enable_database_dbm_feature!: bool
			modify_database_dbm_feature?: bool
			feature_details?: [...{
				feature!: string
				connector_details?: [...{
					private_end_point_id?:  string
					connector_type?:        string
					database_connector_id?: string
					management_agent_id?:   string
				}]
				database_connection_details?: [...{
					connection_credentials?: [...{
						named_credential_id?: string
						password_secret_id?:  string
						role?:                string
						ssl_secret_id?:       string
						user_name?:           string
						credential_name?:     string
						credential_type?:     string
					}]
					connection_string?: [...{
						connection_type?: string
						port?:            int
						protocol?:        string
						service?:         string
					}]
				}]
				is_auto_enable_pluggable_database?: bool
				management_type?:                   string
			}]
		}
		external_exadata_storage_grid: {
			defined_tags?: [_]: string
			exadata_infrastructure_id:         string
			version:                           string
			lifecycle_details:                 string
			status:                            string
			time_updated:                      string
			time_created:                      string
			external_exadata_storage_grid_id!: string
			storage_servers: [...{
				max_hard_disk_iops:        int
				state:                     string
				memory_gb:                 float
				time_updated:              string
				connector_id:              string
				id:                        string
				ip_address:                string
				time_created:              string
				max_flash_disk_throughput: int
				status:                    string
				display_name:              string
				cpu_count:                 float
				max_hard_disk_throughput:  int
				resource_type:             string
				version:                   string
				max_flash_disk_iops:       int
				system_tags: [_]: string
				additional_details: [_]: string
				make_model:        string
				lifecycle_details: string
				defined_tags: [_]: string
				internal_id: string
				freeform_tags: [_]: string
			}]
			resource_type: string
			server_count:  float
			display_name:  string
			internal_id:   string
			state:         string
			additional_details: [_]: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
		}
		external_exadata_storage_connector: {
			status:          string
			time_created:    string
			connector_name!: string
			additional_details: [_]: string
			connection_uri!:   string
			internal_id:       string
			lifecycle_details: string
			time_updated:      string
			agent_id!:         string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			credential_info!: [...{
				password!:                 string
				username!:                 string
				ssl_trust_store_location?: string
				ssl_trust_store_password?: string
				ssl_trust_store_type?:     string
			}]
			defined_tags?: [_]: string
			display_name:              string
			storage_server_id!:        string
			version:                   string
			state:                     string
			exadata_infrastructure_id: string
		}
		managed_databases_reset_database_parameter: {
			credentials?: [...{
				password?:  string
				role?:      string
				secret_id?: string
				user_name?: string
			}]
			database_credential?: [...{
				credential_type!:     string
				named_credential_id?: string
				password?:            string
				password_secret_id?:  string
				role?:                string
				username?:            string
			}]
			scope!:               string
			managed_database_id!: string
			parameters!: [...string]
		}
		named_credential: {
			scope!: string
			state:  string
			type!:  string
			freeform_tags?: [_]: string
			name!:        string
			time_created: string
			defined_tags?: [_]: string
			system_tags: [_]: string
			compartment_id!:      string
			associated_resource?: string
			content!: [...{
				credential_type!:             string
				password_secret_access_mode!: string
				password_secret_id!:          string
				role!:                        string
				user_name!:                   string
			}]
			description?:      string
			lifecycle_details: string
			time_updated:      string
		}
		external_asm: {
			display_name:           string
			component_name:         string
			time_created:           string
			external_asm_id!:       string
			compartment_id:         string
			external_connector_id?: string
			lifecycle_details:      string
			state:                  string
			freeform_tags?: [_]: string
			external_db_system_id: string
			time_updated:          string
			is_flex_enabled:       bool
			additional_details: [_]: string
			is_cluster: bool
			version:    string
			grid_home:  string
			defined_tags?: [_]: string
			serviced_databases: [...{
				id:                string
				is_managed:        bool
				compartment_id:    string
				database_sub_type: string
				database_type:     string
				db_unique_name:    string
				disk_groups: [...string]
				display_name: string
			}]
			system_tags: [_]: string
		}
		external_db_system_database_managements_management: {
			external_db_system_id!:      string
			enable_database_management!: bool
			license_model?:              string
		}
		external_listener: {
			external_listener_id!: string
			state:                 string
			external_db_system_id: string
			endpoints: [...{
				services: [...string]
				host:     string
				key:      string
				port:     int
				protocol: string
			}]
			version:        string
			listener_type:  string
			compartment_id: string
			serviced_asms: [...{
				compartment_id: string
				display_name:   string
				id:             string
			}]
			host_name:              string
			listener_ora_location:  string
			external_connector_id?: string
			system_tags: [_]: string
			external_db_home_id: string
			serviced_databases: [...{
				id:                string
				is_managed:        bool
				compartment_id:    string
				database_sub_type: string
				database_type:     string
				db_unique_name:    string
				display_name:      string
			}]
			external_db_node_id: string
			defined_tags?: [_]: string
			time_updated:       string
			adr_home_directory: string
			component_name:     string
			listener_alias:     string
			display_name:       string
			time_created:       string
			oracle_home:        string
			trace_directory:    string
			lifecycle_details:  string
			additional_details: [_]: string
			freeform_tags?: [_]: string
			log_directory: string
		}
		managed_database_group: {
			time_created: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			managed_databases?: [...{
				database_sub_type: string
				defined_tags: [_]: string
				deployment_type: string
				freeform_tags: [_]: string
				system_tags: [_]: string
				name:            string
				time_added:      string
				workload_type:   string
				database_type:   string
				id?:             string
				compartment_id?: string
			}]
			compartment_id!: string
			name!:           string
			time_updated:    string
			description?:    string
			state:           string
			system_tags: [_]: string
		}
		external_cluster: {
			state: string
			system_tags: [_]: string
			external_cluster_id!: string
			ocr_file_location:    string
			time_created:         string
			time_updated:         string
			grid_home:            string
			defined_tags?: [_]: string
			external_connector_id?: string
			freeform_tags?: [_]: string
			external_db_system_id: string
			lifecycle_details:     string
			component_name:        string
			display_name:          string
			compartment_id:        string
			version:               string
			network_configurations: [...{
				network_number: int
				network_type:   string
				subnet:         string
			}]
			additional_details: [_]: string
			vip_configurations: [...{
				address:        string
				network_number: int
				node_name:      string
			}]
			is_flex_cluster: bool
			scan_configurations: [...{
				scan_protocol:  string
				network_number: int
				scan_name:      string
				scan_port:      int
			}]
		}
		external_cluster_instance: {
			external_db_node_id: string
			defined_tags?: [_]: string
			crs_base_directory:  string
			node_role:           string
			adr_home_directory:  string
			external_cluster_id: string
			system_tags: [_]: string
			external_connector_id?:        string
			host_name:                     string
			external_cluster_instance_id!: string
			compartment_id:                string
			time_updated:                  string
			component_name:                string
			state:                         string
			time_created:                  string
			display_name:                  string
			lifecycle_details:             string
			external_db_system_id:         string
			freeform_tags?: [_]: string
		}
	}
	arguments: {
		externalnoncontainerdatabase_external_non_container_dbm_features_management: {
			feature_details?: [...{
				feature!: string
				connector_details?: [...{
					database_connector_id?: string
					management_agent_id?:   string
					private_end_point_id?:  string
					connector_type?:        string
				}]
				license_model?: string
			}]
			external_non_container_database_id!:        string
			enable_external_non_container_dbm_feature!: bool
		}
		external_asm_instance: {
			external_asm_instance_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
		}
		external_db_system_stack_monitorings_management: {
			external_db_system_id!:   string
			enable_stack_monitoring!: bool
			is_enabled?:              bool
			metadata?:                string
		}
		externalcontainerdatabase_external_container_dbm_features_management: {
			external_container_database_id!:        string
			enable_external_container_dbm_feature!: bool
			feature_details?: [...{
				license_model?: string
				feature!:       string
				connector_details?: [...{
					private_end_point_id?:  string
					connector_type?:        string
					database_connector_id?: string
					management_agent_id?:   string
				}]
			}]
		}
		pluggabledatabase_pluggable_database_dbm_features_management: {
			enable_pluggable_database_dbm_feature!: bool
			modify_pluggable_database_dbm_feature?: bool
			feature_details?: [...{
				connector_details?: [...{
					private_end_point_id?:  string
					connector_type?:        string
					database_connector_id?: string
					management_agent_id?:   string
				}]
				database_connection_details?: [...{
					connection_string?: [...{
						service?:         string
						connection_type?: string
						port?:            int
						protocol?:        string
					}]
					connection_credentials?: [...{
						role?:                string
						ssl_secret_id?:       string
						user_name?:           string
						credential_name?:     string
						credential_type?:     string
						named_credential_id?: string
						password_secret_id?:  string
					}]
				}]
				is_auto_enable_pluggable_database?: bool
				management_type?:                   string
				feature!:                           string
			}]
			pluggable_database_id!: string
		}
		db_management_private_endpoint: {
			subnet_id!:      string
			compartment_id!: string
			freeform_tags?: [_]: string
			is_cluster?:                bool
			is_dns_resolution_enabled?: bool
			defined_tags?: [_]: string
			description?: string
			name!:        string
			nsg_ids?: [...string]
		}
		external_exadata_infrastructure_exadata_management: {
			enable_exadata!:                     bool
			license_model?:                      string
			external_exadata_infrastructure_id!: string
		}
		external_exadata_storage_server: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			external_exadata_storage_server_id!: string
		}
		managed_databases_change_database_parameter: {
			parameters!: [...{
				name!:           string
				value!:          string
				update_comment?: string
			}]
			scope!: string
			credentials?: [...{
				secret_id?: string
				user_name?: string
				password?:  string
				role?:      string
			}]
			database_credential?: [...{
				named_credential_id?: string
				password?:            string
				password_secret_id?:  string
				role?:                string
				username?:            string
				credential_type!:     string
			}]
			managed_database_id!: string
		}
		autonomous_database_autonomous_database_dbm_features_management: {
			autonomous_database_id!:                 string
			enable_autonomous_database_dbm_feature!: bool
			feature_details?: [...{
				feature!: string
				connector_details?: [...{
					private_end_point_id?:  string
					connector_type?:        string
					database_connector_id?: string
					management_agent_id?:   string
				}]
				database_connection_details?: [...{
					connection_credentials?: [...{
						ssl_secret_id?:      string
						user_name?:          string
						credential_name?:    string
						credential_type?:    string
						password_secret_id?: string
						role?:               string
					}]
					connection_string?: [...{
						connection_type?: string
						port?:            int
						protocol?:        string
						service?:         string
					}]
				}]
			}]
		}
		external_exadata_infrastructure: {
			discovery_key?: string
			freeform_tags?: [_]: string
			display_name!:   string
			license_model?:  string
			compartment_id!: string
			db_system_ids!: [...string]
			storage_server_names?: [...string]
			defined_tags?: [_]: string
		}
		external_db_home: {
			defined_tags?: [_]: string
			external_db_home_id!: string
			freeform_tags?: [_]: string
		}
		external_db_system_connector: {
			display_name?: string
			connection_info?: [...{
				connection_credentials?: [...{
					ssl_secret_id?:      string
					user_name?:          string
					credential_name?:    string
					credential_type?:    string
					password_secret_id?: string
					role?:               string
				}]
				connection_string?: [...{
					port?:      int
					protocol?:  string
					service?:   string
					host_name?: string
					hosts?: [...string]
				}]
				component_type!: string
			}]
			defined_tags?: [_]: string
			external_db_system_id!: string
			agent_id?:              string
			freeform_tags?: [_]: string
			connector_type!: string
		}
		external_db_system_discovery: {
			display_name?:   string
			agent_id!:       string
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			patch_operations?: [...{
				operation!: string
				selection!: string
				value?: [...{
					is_selected_for_monitoring?: bool
					connector?: [...{
						agent_id?: string
						connection_info?: [...{
							component_type!: string
							connection_credentials?: [...{
								credential_type!:    string
								credential_name?:    string
								password_secret_id?: string
								role?:               string
								ssl_secret_id?:      string
								user_name?:          string
							}]
							connection_string?: [...{
								host_name?: string
								hosts?: [...string]
								port?:     int
								protocol?: string
								service?:  string
							}]
						}]
						connector_type!: string
						display_name!:   string
					}]
					display_name?:   string
					compartment_id?: string
				}]
			}]
		}
		externalpluggabledatabase_external_pluggable_dbm_features_management: {
			feature_details?: [...{
				feature!: string
				connector_details?: [...{
					connector_type?:        string
					database_connector_id?: string
					management_agent_id?:   string
					private_end_point_id?:  string
				}]
			}]
			external_pluggable_database_id!:        string
			enable_external_pluggable_dbm_feature!: bool
		}
		external_db_node: {
			external_connector_id?: string
			external_db_node_id!:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		external_db_system: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!:         string
			db_system_discovery_id!: string
			database_management_config?: [...{
				license_model!: string
			}]
			display_name?: string
			stack_monitoring_config?: [...{
				is_enabled!: bool
				metadata?:   string
			}]
		}
		managed_database: {
			managed_database_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		database_dbm_features_management: {
			database_id!:                 string
			enable_database_dbm_feature!: bool
			modify_database_dbm_feature?: bool
			feature_details?: [...{
				feature!: string
				connector_details?: [...{
					database_connector_id?: string
					management_agent_id?:   string
					private_end_point_id?:  string
					connector_type?:        string
				}]
				database_connection_details?: [...{
					connection_credentials?: [...{
						password_secret_id?:  string
						role?:                string
						ssl_secret_id?:       string
						user_name?:           string
						credential_name?:     string
						credential_type?:     string
						named_credential_id?: string
					}]
					connection_string?: [...{
						service?:         string
						connection_type?: string
						port?:            int
						protocol?:        string
					}]
				}]
				is_auto_enable_pluggable_database?: bool
				management_type?:                   string
			}]
		}
		external_exadata_storage_grid: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			external_exadata_storage_grid_id!: string
		}
		external_exadata_storage_connector: {
			freeform_tags?: [_]: string
			connection_uri!: string
			credential_info!: [...{
				ssl_trust_store_type?:     string
				password!:                 string
				username!:                 string
				ssl_trust_store_location?: string
				ssl_trust_store_password?: string
			}]
			defined_tags?: [_]: string
			agent_id!:          string
			connector_name!:    string
			storage_server_id!: string
		}
		managed_databases_reset_database_parameter: {
			scope!:               string
			managed_database_id!: string
			parameters!: [...string]
			credentials?: [...{
				secret_id?: string
				user_name?: string
				password?:  string
				role?:      string
			}]
			database_credential?: [...{
				role?:                string
				username?:            string
				credential_type!:     string
				named_credential_id?: string
				password?:            string
				password_secret_id?:  string
			}]
		}
		named_credential: {
			associated_resource?: string
			description?:         string
			type!:                string
			freeform_tags?: [_]: string
			content!: [...{
				user_name!:                   string
				credential_type!:             string
				password_secret_access_mode!: string
				password_secret_id!:          string
				role!:                        string
			}]
			name!: string
			defined_tags?: [_]: string
			compartment_id!: string
			scope!:          string
		}
		external_asm: {
			external_connector_id?: string
			defined_tags?: [_]: string
			external_asm_id!: string
			freeform_tags?: [_]: string
		}
		external_db_system_database_managements_management: {
			license_model?:              string
			external_db_system_id!:      string
			enable_database_management!: bool
		}
		external_listener: {
			external_listener_id!:  string
			external_connector_id?: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
		}
		managed_database_group: {
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			managed_databases?: [...{
				id?:             string
				compartment_id?: string
			}]
			compartment_id!: string
			name!:           string
		}
		external_cluster: {
			external_cluster_id!: string
			defined_tags?: [_]: string
			external_connector_id?: string
			freeform_tags?: [_]: string
		}
		external_cluster_instance: {
			freeform_tags?: [_]: string
			external_connector_id?:        string
			external_cluster_instance_id!: string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	external_asm: external_asm_id!: string
	external_asm_instance: external_asm_instance_id!: string
	external_exadata_storage_servers: {
		external_exadata_infrastructure_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	managed_database_cursor_cache_statements: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!:     string
		opc_named_credential_id?: string
		sql_text?:                string
		limit?:                   int
	}
	managed_database_sql_tuning_set: {
		owner?:               string
		managed_database_id!: string
		name_contains?:       string
	}
	managed_my_sql_database_sql_data: {
		end_time!:                   string
		filter_column?:              string
		managed_my_sql_database_id!: string
		start_time!:                 string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	named_credential: named_credential_id!: string
	external_asm_configuration: {
		opc_named_credential_id?: string
		external_asm_id!:         string
	}
	external_cluster_instances: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?:      string
		display_name?:        string
		external_cluster_id?: string
	}
	external_db_system_connector: external_db_system_connector_id!: string
	job_executions_statuses: {
		end_time!:                  string
		managed_database_group_id?: string
		managed_database_id?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		id?:             string
		name?:           string
		start_time!:     string
	}
	managed_database_sql_plan_baselines: {
		is_never_executed?:       bool
		is_reproduced?:           bool
		origin?:                  string
		sql_handle?:              string
		is_enabled?:              bool
		plan_name?:               string
		managed_database_id!:     string
		opc_named_credential_id?: string
		is_accepted?:             bool
		sql_text?:                string
		limit?:                   int
		is_auto_purged?:          bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		is_adaptive?: bool
		is_fixed?:    bool
	}
	managed_my_sql_database: managed_my_sql_database_id!: string
	managed_database_optimizer_statistics_advisor_execution: {
		execution_name!:      string
		managed_database_id!: string
		task_name!:           string
	}
	external_cluster: external_cluster_id!: string
	managed_database_attention_log_counts: {
		is_regular_expression?: bool
		managed_database_id!:   string
		urgency_filter?:        string
		group_by?:              string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		type_filter?:                   string
		log_search_text?:               string
		time_less_than_or_equal_to?:    string
		time_greater_than_or_equal_to?: string
	}
	managed_database_user_consumer_group_privilege: {
		name?:                string
		user_name!:           string
		managed_database_id!: string
	}
	managed_database_optimizer_statistics_advisor_executions: {
		start_time_greater_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		end_time_less_than_or_equal_to?: string
		managed_database_id!:            string
	}
	db_management_private_endpoints: {
		vcn_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:            string
		is_cluster?:                bool
		is_dns_resolution_enabled?: bool
		name?:                      string
		state?:                     string
	}
	external_exadata_storage_connector: external_exadata_storage_connector_id!: string
	managed_databases_user_system_privileges: {
		opc_named_credential_id?: string
		user_name!:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!: string
		name?:                string
	}
	managed_database_optimizer_statistics_collection_operation: {
		managed_database_id!:                          string
		optimizer_statistics_collection_operation_id!: float
	}
	db_management_private_endpoint_associated_database: {
		db_management_private_endpoint_id!: string
		compartment_id!:                    string
	}
	external_asm_instances: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?:  string
		display_name?:    string
		external_asm_id?: string
	}
	external_exadata_infrastructure: external_exadata_infrastructure_id!: string
	job_executions_status: {
		id?:                        string
		managed_database_group_id?: string
		managed_database_id?:       string
		name?:                      string
		start_time!:                string
		compartment_id!:            string
		end_time!:                  string
	}
	managed_database_user_object_privilege: {
		name?:                string
		user_name!:           string
		managed_database_id!: string
	}
	managed_database_user_role: {
		managed_database_id!: string
		name?:                string
		user_name!:           string
	}
	managed_my_sql_database_configuration_data: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		managed_my_sql_database_id!: string
	}
	managed_database_preferred_credentials: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!: string
	}
	db_management_private_endpoint: db_management_private_endpoint_id!: string
	external_asm_disk_groups: {
		opc_named_credential_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		external_asm_id!: string
	}
	external_clusters: {
		display_name?:          string
		external_db_system_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	managed_databases: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:                     string
		deployment_type?:                    string
		external_exadata_infrastructure_id?: string
		id?:                                 string
		management_option?:                  string
		name?:                               string
	}
	managed_databases_asm_property: {
		managed_database_id!: string
		name?:                string
	}
	managed_database_sql_plan_baseline_jobs: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		managed_database_id!:     string
		name?:                    string
		opc_named_credential_id?: string
	}
	external_asms: {
		display_name?:          string
		external_db_system_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	external_db_systems: {
		compartment_id!: string
		display_name?:   string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	external_exadata_storage_server: external_exadata_storage_server_id!: string
	external_exadata_storage_server_open_alert_history: external_exadata_storage_server_id!: string
	external_listener: external_listener_id!: string
	managed_database: {
		managed_database_id!:    string
		database_platform_name?: string
	}
	managed_database_alert_log_counts: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		time_less_than_or_equal_to?:    string
		type_filter?:                   string
		time_greater_than_or_equal_to?: string
		managed_database_id!:           string
		is_regular_expression?:         bool
		level_filter?:                  string
		group_by?:                      string
		log_search_text?:               string
	}
	managed_database_optimizer_statistics_collection_operations: {
		task_type?: string
		limit?:     int
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		end_time_less_than_or_equal_to?:      string
		filter_by?:                           string
		managed_database_id!:                 string
		start_time_greater_than_or_equal_to?: string
	}
	external_db_system: external_db_system_id!: string
	external_db_system_connectors: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:        string
		display_name?:          string
		external_db_system_id?: string
	}
	managed_database_user_data_access_containers: {
		user_name!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!:     string
		name?:                    string
		opc_named_credential_id?: string
	}
	managed_databases_database_parameters: {
		source?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		is_allowed_values_included?: bool
		managed_database_id!:        string
		name?:                       string
		opc_named_credential_id?:    string
	}
	external_databases: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:        string
		display_name?:          string
		external_database_id?:  string
		external_db_system_id?: string
	}
	external_exadata_storage_server_top_sql_cpu_activity: external_exadata_storage_server_id!: string
	managed_database_attention_log_count: {
		group_by?:                      string
		is_regular_expression?:         bool
		log_search_text?:               string
		time_greater_than_or_equal_to?: string
		managed_database_id!:           string
		type_filter?:                   string
		time_less_than_or_equal_to?:    string
		urgency_filter?:                string
	}
	managed_database_sql_tuning_advisor_task: {
		status?:                        string
		time_greater_than_or_equal_to?: string
		time_less_than_or_equal_to?:    string
		managed_database_id!:           string
		name?:                          string
	}
	managed_database_sql_tuning_advisor_tasks: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		managed_database_id!:           string
		name?:                          string
		opc_named_credential_id?:       string
		status?:                        string
		time_greater_than_or_equal_to?: string
		time_less_than_or_equal_to?:    string
	}
	managed_database_user_proxied_for_users: {
		user_name!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		managed_database_id!:     string
		name?:                    string
		opc_named_credential_id?: string
	}
	managed_databases_asm_properties: {
		name?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		managed_database_id!: string
	}
	managed_databases_user_system_privilege: {
		name?:                string
		user_name!:           string
		managed_database_id!: string
	}
	external_cluster_instance: external_cluster_instance_id!: string
	external_exadata_storage_server_iorm_plan: external_exadata_storage_server_id!: string
	managed_database_sql_tuning_advisor_tasks_execution_plan_stats_comparision: {
		managed_database_id!:        string
		opc_named_credential_id?:    string
		sql_object_id!:              string
		sql_tuning_advisor_task_id!: string
		execution_id!:               string
	}
	managed_database_sql_tuning_advisor_tasks_findings: {
		search_period?:           string
		opc_named_credential_id?: string
		begin_exec_id?:           string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		end_exec_id?:                string
		finding_filter?:             string
		index_hash_filter?:          string
		managed_database_id!:        string
		sql_tuning_advisor_task_id!: string
		stats_hash_filter?:          string
	}
	managed_database_sql_tuning_sets: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!:     string
		name_contains?:           string
		opc_named_credential_id?: string
		owner?:                   string
	}
	managed_database_user_consumer_group_privileges: {
		name?:                    string
		opc_named_credential_id?: string
		user_name!:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!: string
	}
	managed_database_user_object_privileges: {
		name?:                    string
		opc_named_credential_id?: string
		user_name!:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!: string
	}
	managed_database_addm_tasks: {
		managed_database_id!: string
		time_end!:            string
		time_start!:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	managed_database_group: managed_database_group_id!: string
	managed_database_sql_tuning_advisor_tasks_finding: {
		sql_tuning_advisor_task_id!: string
		end_exec_id?:                string
		finding_filter?:             string
		index_hash_filter?:          string
		stats_hash_filter?:          string
		begin_exec_id?:              string
		managed_database_id!:        string
		search_period?:              string
	}
	managed_database_sql_tuning_advisor_tasks_summary_report: {
		end_exec_id_less_than_or_equal_to?:      string
		opc_named_credential_id?:                string
		time_less_than_or_equal_to?:             string
		managed_database_id!:                    string
		search_period?:                          string
		sql_tuning_advisor_task_id!:             string
		time_greater_than_or_equal_to?:          string
		begin_exec_id_greater_than_or_equal_to?: string
	}
	managed_database_user_roles: {
		managed_database_id!:     string
		name?:                    string
		opc_named_credential_id?: string
		user_name!:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	managed_database_sql_plan_baseline_configuration: {
		opc_named_credential_id?: string
		managed_database_id!:     string
	}
	managed_database_sql_tuning_advisor_tasks_recommendation: {
		execution_id!:               string
		managed_database_id!:        string
		sql_object_id!:              string
		sql_tuning_advisor_task_id!: string
	}
	managed_databases_database_parameter: {
		managed_database_id!:        string
		name?:                       string
		source?:                     string
		is_allowed_values_included?: bool
	}
	managed_databases_user_proxy_user: {
		managed_database_id!: string
		name?:                string
		user_name!:           string
	}
	managed_databases_user_proxy_users: {
		opc_named_credential_id?: string
		user_name!:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!: string
		name?:                string
	}
	managed_database_optimizer_statistics_advisor_execution_script: {
		execution_name!:      string
		managed_database_id!: string
		task_name!:           string
	}
	external_db_node: external_db_node_id!: string
	external_listeners: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?:        string
		display_name?:          string
		external_db_system_id?: string
	}
	managed_database_addm_task: {
		time_end!:            string
		time_start!:          string
		managed_database_id!: string
	}
	managed_database_sql_tuning_advisor_tasks_recommendations: {
		sql_tuning_advisor_task_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		execution_id!:            string
		managed_database_id!:     string
		opc_named_credential_id?: string
		sql_object_id!:           string
	}
	managed_database_sql_tuning_advisor_tasks_sql_execution_plan: {
		managed_database_id!:        string
		opc_named_credential_id?:    string
		sql_object_id!:              string
		sql_tuning_advisor_task_id!: string
		attribute!:                  string
	}
	managed_database_user: {
		user_name!:               string
		managed_database_id!:     string
		opc_named_credential_id?: string
	}
	managed_my_sql_databases: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	external_asm_users: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		external_asm_id!:         string
		opc_named_credential_id?: string
	}
	external_exadata_storage_grid: external_exadata_storage_grid_id!: string
	external_listener_services: {
		external_listener_id!:    string
		managed_database_id!:     string
		opc_named_credential_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	managed_database_user_data_access_container: {
		managed_database_id!: string
		name?:                string
		user_name!:           string
	}
	managed_database_table_statistics: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		managed_database_id!: string
	}
	managed_database_preferred_credential: {
		managed_database_id!: string
		credential_name!:     string
		named_credential_id?: string
	}
	db_management_private_endpoint_associated_databases: {
		compartment_id!:                    string
		db_management_private_endpoint_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	external_db_home: external_db_home_id!: string
	external_db_nodes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?:        string
		display_name?:          string
		external_db_system_id?: string
	}
	external_db_system_discoveries: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
	external_db_system_discovery: external_db_system_discovery_id!: string
	managed_database_alert_log_count: {
		type_filter?:                   string
		managed_database_id!:           string
		time_greater_than_or_equal_to?: string
		time_less_than_or_equal_to?:    string
		group_by?:                      string
		level_filter?:                  string
		log_search_text?:               string
		is_regular_expression?:         bool
	}
	managed_database_users: {
		name?:                    string
		opc_named_credential_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!: string
	}
	managed_database_optimizer_statistics_collection_aggregations: {
		group_type!:                          string
		managed_database_id!:                 string
		start_time_greater_than_or_equal_to?: string
		task_type?:                           string
		limit?:                               int
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		end_time_less_than_or_equal_to?: string
	}
	external_db_homes: {
		compartment_id?:        string
		display_name?:          string
		external_db_system_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	external_exadata_infrastructures: {
		compartment_id!: string
		display_name?:   string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	external_exadata_storage_connectors: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:                     string
		display_name?:                       string
		external_exadata_infrastructure_id!: string
	}
	managed_database_groups: {
		compartment_id!: string
		id?:             string
		name?:           string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	managed_database_sql_plan_baseline: {
		managed_database_id!:     string
		opc_named_credential_id?: string
		plan_name!:               string
	}
	managed_database_user_proxied_for_user: {
		managed_database_id!: string
		name?:                string
		user_name!:           string
	}
	named_credentials: {
		compartment_id!: string
		name?:           string
		scope?:          string
		type?:           string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		associated_resource?: string
	}
}

