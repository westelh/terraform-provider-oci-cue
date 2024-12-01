package database_management

#resource: {
	attributes: {
		database_dbm_features_management: {
			enable_database_dbm_feature!: bool
			modify_database_dbm_feature?: bool
			feature_details?: [...{
				management_type?: string
				feature!:         string
				connector_details?: [...{
					management_agent_id?:   string
					private_end_point_id?:  string
					connector_type?:        string
					database_connector_id?: string
				}]
				database_connection_details?: [...{
					connection_credentials?: [...{
						role?:                string
						ssl_secret_id?:       string
						user_name?:           string
						credential_name?:     string
						credential_type?:     string
						named_credential_id?: string
						password_secret_id?:  string
					}]
					connection_string?: [...{
						connection_type?: string
						port?:            int
						protocol?:        string
						service?:         string
					}]
				}]
				is_auto_enable_pluggable_database?: bool
			}]
			database_id!: string
		}
		db_management_private_endpoint: {
			system_tags: [_]: string
			description?: string
			vcn_id:       string
			is_cluster?:  bool
			state:        string
			time_created: string
			defined_tags?: [_]: string
			name!:           string
			compartment_id!: string
			subnet_id!:      string
			freeform_tags?: [_]: string
			nsg_ids?: [...string]
			private_ip:                 string
			is_dns_resolution_enabled?: bool
		}
		external_cluster_instance: {
			state:                         string
			external_cluster_instance_id!: string
			adr_home_directory:            string
			defined_tags?: [_]: string
			crs_base_directory:     string
			lifecycle_details:      string
			external_cluster_id:    string
			time_updated:           string
			component_name:         string
			external_db_node_id:    string
			time_created:           string
			external_connector_id?: string
			compartment_id:         string
			external_db_system_id:  string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			host_name:    string
			node_role:    string
			display_name: string
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
		external_asm: {
			component_name: string
			freeform_tags?: [_]: string
			serviced_databases: [...{
				display_name:      string
				id:                string
				is_managed:        bool
				compartment_id:    string
				database_sub_type: string
				database_type:     string
				db_unique_name:    string
				disk_groups: [...string]
			}]
			is_flex_enabled:       bool
			external_db_system_id: string
			external_asm_id!:      string
			compartment_id:        string
			additional_details: [_]: string
			is_cluster:             bool
			version:                string
			external_connector_id?: string
			lifecycle_details:      string
			defined_tags?: [_]: string
			display_name: string
			grid_home:    string
			state:        string
			time_created: string
			system_tags: [_]: string
			time_updated: string
		}
		external_db_home: {
			lifecycle_details: string
			system_tags: [_]: string
			component_name: string
			freeform_tags?: [_]: string
			home_directory:        string
			external_db_home_id!:  string
			compartment_id:        string
			external_db_system_id: string
			time_updated:          string
			additional_details: [_]: string
			display_name: string
			time_created: string
			state:        string
			defined_tags?: [_]: string
		}
		external_exadata_infrastructure: {
			lifecycle_details: string
			state:             string
			system_tags: [_]: string
			database_compartments: [...string]
			internal_id: string
			database_systems: [...{
				time_created: string
				additional_details: [_]: string
				display_name:      string
				id:                string
				state:             string
				time_updated:      string
				lifecycle_details: string
				status:            string
				version:           string
				compartment_id?:   string
				internal_id:       string
				license_model:     string
			}]
			defined_tags?: [_]: string
			compartment_id!: string
			freeform_tags?: [_]: string
			display_name!: string
			rack_size:     string
			db_system_ids!: [...string]
			discovery_key?: string
			storage_server_names?: [...string]
			time_created: string
			status:       string
			storage_grid: [...{
				id:           string
				state:        string
				time_created: string
				version:      string
				additional_details: [_]: string
				lifecycle_details: string
				status:            string
				display_name:      string
				internal_id:       string
				server_count:      float
				time_updated:      string
			}]
			version:        string
			license_model?: string
			time_updated:   string
			additional_details: [_]: string
		}
		external_exadata_storage_connector: {
			connection_uri!:    string
			storage_server_id!: string
			additional_details: [_]: string
			time_updated:              string
			time_created:              string
			exadata_infrastructure_id: string
			lifecycle_details:         string
			defined_tags?: [_]: string
			status:      string
			version:     string
			internal_id: string
			freeform_tags?: [_]: string
			state:     string
			agent_id!: string
			credential_info!: [...{
				ssl_trust_store_password?: string
				ssl_trust_store_type?:     string
				password!:                 string
				username!:                 string
				ssl_trust_store_location?: string
			}]
			connector_name!: string
			system_tags: [_]: string
			display_name: string
		}
		external_listener: {
			oracle_home:           string
			listener_alias:        string
			external_db_system_id: string
			listener_ora_location: string
			component_name:        string
			serviced_databases: [...{
				database_sub_type: string
				database_type:     string
				db_unique_name:    string
				display_name:      string
				id:                string
				is_managed:        bool
				compartment_id:    string
			}]
			display_name: string
			system_tags: [_]: string
			serviced_asms: [...{
				id:             string
				compartment_id: string
				display_name:   string
			}]
			host_name:              string
			external_connector_id?: string
			defined_tags?: [_]: string
			additional_details: [_]: string
			state:               string
			lifecycle_details:   string
			trace_directory:     string
			external_db_home_id: string
			adr_home_directory:  string
			compartment_id:      string
			log_directory:       string
			freeform_tags?: [_]: string
			external_listener_id!: string
			endpoints: [...{
				host:     string
				key:      string
				port:     int
				protocol: string
				services: [...string]
			}]
			listener_type:       string
			time_updated:        string
			external_db_node_id: string
			time_created:        string
			version:             string
		}
		externalcontainerdatabase_external_container_dbm_features_management: {
			external_container_database_id!:        string
			enable_external_container_dbm_feature!: bool
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
		}
		external_exadata_infrastructure_exadata_management: {
			license_model?:                      string
			external_exadata_infrastructure_id!: string
			enable_exadata!:                     bool
		}
		external_exadata_storage_grid: {
			server_count: float
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			status:            string
			lifecycle_details: string
			state:             string
			resource_type:     string
			system_tags: [_]: string
			time_updated: string
			time_created: string
			version:      string
			display_name: string
			internal_id:  string
			additional_details: [_]: string
			external_exadata_storage_grid_id!: string
			exadata_infrastructure_id:         string
			storage_servers: [...{
				status:              string
				display_name:        string
				max_flash_disk_iops: int
				version:             string
				additional_details: [_]: string
				max_hard_disk_iops: int
				id:                 string
				ip_address:         string
				memory_gb:          float
				connector_id:       string
				state:              string
				system_tags: [_]: string
				time_updated:              string
				cpu_count:                 float
				resource_type:             string
				max_hard_disk_throughput:  int
				max_flash_disk_throughput: int
				defined_tags: [_]: string
				freeform_tags: [_]: string
				internal_id:       string
				time_created:      string
				lifecycle_details: string
				make_model:        string
			}]
		}
		pluggabledatabase_pluggable_database_dbm_features_management: {
			feature_details?: [...{
				database_connection_details?: [...{
					connection_string?: [...{
						protocol?:        string
						service?:         string
						connection_type?: string
						port?:            int
					}]
					connection_credentials?: [...{
						credential_type?:     string
						named_credential_id?: string
						password_secret_id?:  string
						role?:                string
						ssl_secret_id?:       string
						user_name?:           string
						credential_name?:     string
					}]
				}]
				is_auto_enable_pluggable_database?: bool
				management_type?:                   string
				feature!:                           string
				connector_details?: [...{
					database_connector_id?: string
					management_agent_id?:   string
					private_end_point_id?:  string
					connector_type?:        string
				}]
			}]
			pluggable_database_id!:                 string
			enable_pluggable_database_dbm_feature!: bool
			modify_pluggable_database_dbm_feature?: bool
		}
		autonomous_database_autonomous_database_dbm_features_management: {
			autonomous_database_id!:                 string
			enable_autonomous_database_dbm_feature!: bool
			feature_details?: [...{
				database_connection_details?: [...{
					connection_credentials?: [...{
						credential_type?:    string
						password_secret_id?: string
						role?:               string
						ssl_secret_id?:      string
						user_name?:          string
						credential_name?:    string
					}]
					connection_string?: [...{
						connection_type?: string
						port?:            int
						protocol?:        string
						service?:         string
					}]
				}]
				feature!: string
				connector_details?: [...{
					connector_type?:        string
					database_connector_id?: string
					management_agent_id?:   string
					private_end_point_id?:  string
				}]
			}]
		}
		external_db_system_database_managements_management: {
			external_db_system_id!:      string
			enable_database_management!: bool
			license_model?:              string
		}
		managed_database_group: {
			freeform_tags?: [_]: string
			state:           string
			time_created:    string
			time_updated:    string
			compartment_id!: string
			name!:           string
			defined_tags?: [_]: string
			description?: string
			managed_databases?: [...{
				freeform_tags: [_]: string
				workload_type:   string
				id?:             string
				database_type:   string
				compartment_id?: string
				defined_tags: [_]: string
				time_added:        string
				deployment_type:   string
				database_sub_type: string
				name:              string
				system_tags: [_]: string
			}]
			system_tags: [_]: string
		}
		external_db_system: {
			defined_tags?: [_]: string
			db_system_discovery_id!: string
			database_management_config?: [...{
				license_model!: string
			}]
			lifecycle_details: string
			system_tags: [_]: string
			is_cluster:    bool
			display_name?: string
			stack_monitoring_config?: [...{
				is_enabled!: bool
				metadata?:   string
			}]
			home_directory:     string
			compartment_id!:    string
			discovery_agent_id: string
			freeform_tags?: [_]: string
			time_created: string
			time_updated: string
			state:        string
		}
		external_db_system_connector: {
			connection_info?: [...{
				component_type!: string
				connection_credentials?: [...{
					credential_type?:    string
					named_credential_id: string
					password_secret_id?: string
					role?:               string
					ssl_secret_id?:      string
					user_name?:          string
					credential_name?:    string
				}]
				connection_string?: [...{
					protocol?:  string
					service?:   string
					host_name?: string
					hosts?: [...string]
					port?: int
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
			defined_tags?: [_]: string
			lifecycle_details: string
			state:             string
			system_tags: [_]: string
			connection_status:          string
			agent_id?:                  string
			compartment_id:             string
			connection_failure_message: string
			freeform_tags?: [_]: string
			connector_type!:                     string
			external_db_system_id!:              string
			display_name?:                       string
			time_connection_status_last_updated: string
			time_updated:                        string
			time_created:                        string
		}
		external_db_system_stack_monitorings_management: {
			is_enabled?:              bool
			metadata?:                string
			external_db_system_id!:   string
			enable_stack_monitoring!: bool
		}
		external_exadata_storage_server: {
			additional_details: [_]: string
			cpu_count:                           float
			max_flash_disk_iops:                 int
			resource_type:                       string
			state:                               string
			display_name:                        string
			external_exadata_storage_server_id!: string
			ip_address:                          string
			time_created:                        string
			memory_gb:                           float
			freeform_tags?: [_]: string
			max_hard_disk_iops: int
			storage_grid_id:    string
			defined_tags?: [_]: string
			max_hard_disk_throughput:  int
			version:                   string
			exadata_infrastructure_id: string
			system_tags: [_]: string
			status:       string
			time_updated: string
			connector: [...{
				lifecycle_details: string
				internal_id:       string
				version:           string
				system_tags: [_]: string
				state:             string
				storage_server_id: string
				additional_details: [_]: string
				freeform_tags: [_]: string
				resource_type:  string
				id:             string
				status:         string
				time_updated:   string
				connection_uri: string
				defined_tags: [_]: string
				time_created: string
				agent_id:     string
				display_name: string
			}]
			internal_id:               string
			make_model:                string
			max_flash_disk_throughput: int
			lifecycle_details:         string
		}
		managed_database: {
			storage_system_id: string
			dbmgmt_feature_configs: [...{
				feature:        string
				feature_status: string
				license_model:  string
				connector_details: [...{
					management_agent_id:   string
					private_end_point_id:  string
					connector_type:        string
					database_connector_id: string
				}]
				database_connection_details: [...{
					connection_string: [...{
						service:         string
						connection_type: string
						port:            int
						protocol:        string
					}]
					connection_credentials: [...{
						credential_name:     string
						credential_type:     string
						named_credential_id: string
						password_secret_id:  string
						role:                string
						ssl_secret_id:       string
						user_name:           string
					}]
				}]
			}]
			defined_tags?: [_]: string
			database_platform_name: string
			managed_database_id!:   string
			compartment_id:         string
			is_cluster:             bool
			database_sub_type:      string
			parent_container_id:    string
			workload_type:          string
			database_type:          string
			managed_database_groups: [...{
				name:           string
				compartment_id: string
				id:             string
			}]
			deployment_type: string
			time_created:    string
			additional_details: [_]: string
			database_version: string
			db_system_id:     string
			freeform_tags?: [_]: string
			management_option: string
			name:              string
			system_tags: [_]: string
			database_status: string
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
				credential_type!:     string
				named_credential_id?: string
				password?:            string
				password_secret_id?:  string
				role?:                string
				username?:            string
			}]
			managed_database_id!: string
		}
		named_credential: {
			compartment_id!: string
			type!:           string
			defined_tags?: [_]: string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			time_created:         string
			lifecycle_details:    string
			associated_resource?: string
			scope!:               string
			description?:         string
			name!:                string
			state:                string
			content!: [...{
				password_secret_access_mode!: string
				password_secret_id!:          string
				role!:                        string
				user_name!:                   string
				credential_type!:             string
			}]
			time_updated: string
		}
		external_asm_instance: {
			external_asm_instance_id!: string
			state:                     string
			freeform_tags?: [_]: string
			display_name:      string
			lifecycle_details: string
			system_tags: [_]: string
			adr_home_directory:    string
			time_created:          string
			external_db_node_id:   string
			external_asm_id:       string
			host_name:             string
			compartment_id:        string
			external_db_system_id: string
			component_name:        string
			defined_tags?: [_]: string
			time_updated: string
		}
		external_cluster: {
			external_connector_id?: string
			component_name:         string
			version:                string
			additional_details: [_]: string
			ocr_file_location: string
			time_updated:      string
			freeform_tags?: [_]: string
			lifecycle_details: string
			scan_configurations: [...{
				scan_protocol:  string
				network_number: int
				scan_name:      string
				scan_port:      int
			}]
			network_configurations: [...{
				network_number: int
				network_type:   string
				subnet:         string
			}]
			display_name: string
			grid_home:    string
			defined_tags?: [_]: string
			external_db_system_id: string
			external_cluster_id!:  string
			compartment_id:        string
			is_flex_cluster:       bool
			system_tags: [_]: string
			time_created: string
			vip_configurations: [...{
				address:        string
				network_number: int
				node_name:      string
			}]
			state: string
		}
		external_db_node: {
			external_db_system_id:  string
			external_connector_id?: string
			system_tags: [_]: string
			time_updated:         string
			external_db_node_id!: string
			cpu_core_count:       float
			state:                string
			memory_size_in_gbs:   float
			component_name:       string
			defined_tags?: [_]: string
			display_name: string
			freeform_tags?: [_]: string
			domain_name:       string
			host_name:         string
			lifecycle_details: string
			time_created:      string
			additional_details: [_]: string
			compartment_id: string
		}
		external_db_system_discovery: {
			grid_home:         string
			lifecycle_details: string
			state:             string
			agent_id!:         string
			display_name?:     string
			time_created:      string
			freeform_tags?: [_]: string
			external_db_system_discovery_id: string
			patch_operations?: [...{
				value?: [...{
					is_selected_for_monitoring?: bool
					connector?: [...{
						connector_type!: string
						display_name!:   string
						agent_id?:       string
						connection_info?: [...{
							connection_string?: [...{
								protocol?:  string
								service?:   string
								host_name?: string
								hosts?: [...string]
								port?: int
							}]
							component_type!: string
							connection_credentials?: [...{
								password_secret_id?: string
								role?:               string
								ssl_secret_id?:      string
								user_name?:          string
								credential_type!:    string
								credential_name?:    string
							}]
						}]
					}]
					display_name?:   string
					compartment_id?: string
				}]
				operation!: string
				selection!: string
			}]
			compartment_id!: string
			resource_id:     string
			system_tags: [_]: string
			defined_tags?: [_]: string
			discovered_components: [...{
				ocr_file_location:          string
				listener_alias:             string
				is_selected_for_monitoring: bool
				node_role:                  string
				asm_instances: [...{
					adr_home_directory: string
					host_name:          string
					instance_name:      string
				}]
				cpu_core_count:     float
				db_unique_name:     string
				adr_home_directory: string
				display_name:       string
				vip_configurations: [...{
					network_number: int
					node_name:      string
					address:        string
				}]
				is_cluster:      bool
				instance_name:   string
				is_flex_cluster: bool
				associated_components: [...{
					component_type:   string
					association_type: string
					component_id:     string
				}]
				db_version:    string
				grid_home:     string
				log_directory: string
				status:        string
				db_packs:      string
				guid:          string
				db_node_name:  string
				version:       string
				cluster_instances: [...{
					host_name:          string
					node_role:          string
					adr_home_directory: string
					cluster_id:         string
					connector: [...{
						time_connection_status_last_updated: string
						agent_id:                            string
						connection_failure_message:          string
						connection_info: [...{
							component_type: string
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
								host_name: string
								hosts: [...string]
								port:     int
								protocol: string
								service:  string
							}]
							database_credential: [...{
								role:                string
								username:            string
								credential_type:     string
								named_credential_id: string
								password:            string
								password_secret_id:  string
							}]
						}]
						connection_status: string
						connector_type:    string
						display_name:      string
					}]
					crs_base_directory: string
				}]
				crs_base_directory:    string
				home_directory:        string
				container_database_id: string
				network_configurations: [...{
					subnet:         string
					network_number: int
					network_type:   string
				}]
				db_role:            string
				component_type:     string
				memory_size_in_gbs: float
				scan_configurations: [...{
					network_number: int
					scan_name:      string
					scan_port:      int
					scan_protocol:  string
				}]
				db_id: string
				endpoints: [...{
					key:      string
					port:     int
					protocol: string
					services: [...string]
					host: string
				}]
				connector: [...{
					connection_failure_message: string
					connection_info: [...{
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
							port:      int
							protocol:  string
							service:   string
							host_name: string
							hosts: [...string]
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
				host_name:       string
				db_type:         string
				listener_type:   string
				cluster_id:      string
				compartment_id:  string
				component_name:  string
				trace_directory: string
				component_id:    string
				oracle_home:     string
				pluggable_databases: [...{
					guid:           string
					compartment_id: string
					connector: [...{
						connection_failure_message: string
						connection_info: [...{
							database_credential: [...{
								password_secret_id:  string
								role:                string
								username:            string
								credential_type:     string
								named_credential_id: string
								password:            string
							}]
							component_type: string
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
						}]
						connection_status:                   string
						connector_type:                      string
						display_name:                        string
						time_connection_status_last_updated: string
						agent_id:                            string
					}]
					container_database_id: string
				}]
				is_flex_enabled: bool
				db_edition:      string
				resource_id:     string
			}]
			time_updated: string
		}
		externalnoncontainerdatabase_external_non_container_dbm_features_management: {
			external_non_container_database_id!:        string
			enable_external_non_container_dbm_feature!: bool
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
		managed_databases_reset_database_parameter: {
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
			scope!: string
		}
	}
	arguments: {
		database_dbm_features_management: {
			database_id!:                 string
			enable_database_dbm_feature!: bool
			modify_database_dbm_feature?: bool
			feature_details?: [...{
				feature!: string
				connector_details?: [...{
					connector_type?:        string
					database_connector_id?: string
					management_agent_id?:   string
					private_end_point_id?:  string
				}]
				database_connection_details?: [...{
					connection_credentials?: [...{
						credential_name?:     string
						credential_type?:     string
						named_credential_id?: string
						password_secret_id?:  string
						role?:                string
						ssl_secret_id?:       string
						user_name?:           string
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
		db_management_private_endpoint: {
			is_dns_resolution_enabled?: bool
			compartment_id!:            string
			subnet_id!:                 string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			name!: string
			nsg_ids?: [...string]
			description?: string
			is_cluster?:  bool
		}
		external_cluster_instance: {
			external_cluster_instance_id!: string
			freeform_tags?: [_]: string
			external_connector_id?: string
			defined_tags?: [_]: string
		}
		externalpluggabledatabase_external_pluggable_dbm_features_management: {
			external_pluggable_database_id!:        string
			enable_external_pluggable_dbm_feature!: bool
			feature_details?: [...{
				connector_details?: [...{
					database_connector_id?: string
					management_agent_id?:   string
					private_end_point_id?:  string
					connector_type?:        string
				}]
				feature!: string
			}]
		}
		external_asm: {
			external_connector_id?: string
			external_asm_id!:       string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		external_db_home: {
			external_db_home_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		external_exadata_infrastructure: {
			defined_tags?: [_]: string
			db_system_ids!: [...string]
			discovery_key?: string
			license_model?: string
			storage_server_names?: [...string]
			compartment_id!: string
			freeform_tags?: [_]: string
			display_name!: string
		}
		external_exadata_storage_connector: {
			credential_info!: [...{
				ssl_trust_store_location?: string
				ssl_trust_store_password?: string
				ssl_trust_store_type?:     string
				password!:                 string
				username!:                 string
			}]
			storage_server_id!: string
			connector_name!:    string
			defined_tags?: [_]: string
			connection_uri!: string
			freeform_tags?: [_]: string
			agent_id!: string
		}
		external_listener: {
			external_connector_id?: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			external_listener_id!: string
		}
		externalcontainerdatabase_external_container_dbm_features_management: {
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
			external_container_database_id!:        string
			enable_external_container_dbm_feature!: bool
		}
		external_exadata_infrastructure_exadata_management: {
			external_exadata_infrastructure_id!: string
			enable_exadata!:                     bool
			license_model?:                      string
		}
		external_exadata_storage_grid: {
			defined_tags?: [_]: string
			external_exadata_storage_grid_id!: string
			freeform_tags?: [_]: string
		}
		pluggabledatabase_pluggable_database_dbm_features_management: {
			feature_details?: [...{
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
				feature!:                           string
				connector_details?: [...{
					private_end_point_id?:  string
					connector_type?:        string
					database_connector_id?: string
					management_agent_id?:   string
				}]
			}]
			pluggable_database_id!:                 string
			enable_pluggable_database_dbm_feature!: bool
			modify_pluggable_database_dbm_feature?: bool
		}
		autonomous_database_autonomous_database_dbm_features_management: {
			autonomous_database_id!:                 string
			enable_autonomous_database_dbm_feature!: bool
			feature_details?: [...{
				database_connection_details?: [...{
					connection_credentials?: [...{
						password_secret_id?: string
						role?:               string
						ssl_secret_id?:      string
						user_name?:          string
						credential_name?:    string
						credential_type?:    string
					}]
					connection_string?: [...{
						port?:            int
						protocol?:        string
						service?:         string
						connection_type?: string
					}]
				}]
				feature!: string
				connector_details?: [...{
					management_agent_id?:   string
					private_end_point_id?:  string
					connector_type?:        string
					database_connector_id?: string
				}]
			}]
		}
		external_db_system_database_managements_management: {
			external_db_system_id!:      string
			enable_database_management!: bool
			license_model?:              string
		}
		managed_database_group: {
			compartment_id!: string
			name!:           string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			description?: string
			managed_databases?: [...{
				id?:             string
				compartment_id?: string
			}]
		}
		external_db_system: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			stack_monitoring_config?: [...{
				is_enabled!: bool
				metadata?:   string
			}]
			compartment_id!:         string
			db_system_discovery_id!: string
			database_management_config?: [...{
				license_model!: string
			}]
			display_name?: string
		}
		external_db_system_connector: {
			display_name?: string
			defined_tags?: [_]: string
			connector_type!:        string
			agent_id?:              string
			external_db_system_id!: string
			connection_info?: [...{
				connection_credentials?: [...{
					user_name?:          string
					credential_name?:    string
					credential_type?:    string
					password_secret_id?: string
					role?:               string
					ssl_secret_id?:      string
				}]
				connection_string?: [...{
					host_name?: string
					hosts?: [...string]
					port?:     int
					protocol?: string
					service?:  string
				}]
				component_type!: string
			}]
			freeform_tags?: [_]: string
		}
		external_db_system_stack_monitorings_management: {
			metadata?:                string
			external_db_system_id!:   string
			enable_stack_monitoring!: bool
			is_enabled?:              bool
		}
		external_exadata_storage_server: {
			external_exadata_storage_server_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		managed_database: {
			freeform_tags?: [_]: string
			managed_database_id!: string
			defined_tags?: [_]: string
		}
		managed_databases_change_database_parameter: {
			scope!: string
			credentials?: [...{
				role?:      string
				secret_id?: string
				user_name?: string
				password?:  string
			}]
			database_credential?: [...{
				credential_type!:     string
				named_credential_id?: string
				password?:            string
				password_secret_id?:  string
				role?:                string
				username?:            string
			}]
			managed_database_id!: string
			parameters!: [...{
				name!:           string
				value!:          string
				update_comment?: string
			}]
		}
		named_credential: {
			name!:  string
			scope!: string
			content!: [...{
				password_secret_access_mode!: string
				password_secret_id!:          string
				role!:                        string
				user_name!:                   string
				credential_type!:             string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!:      string
			type!:                string
			associated_resource?: string
			description?:         string
		}
		external_asm_instance: {
			defined_tags?: [_]: string
			external_asm_instance_id!: string
			freeform_tags?: [_]: string
		}
		external_cluster: {
			freeform_tags?: [_]: string
			external_connector_id?: string
			defined_tags?: [_]: string
			external_cluster_id!: string
		}
		external_db_node: {
			defined_tags?: [_]: string
			external_connector_id?: string
			freeform_tags?: [_]: string
			external_db_node_id!: string
		}
		external_db_system_discovery: {
			freeform_tags?: [_]: string
			agent_id!: string
			patch_operations?: [...{
				operation!: string
				selection!: string
				value?: [...{
					connector?: [...{
						connector_type!: string
						display_name!:   string
						agent_id?:       string
						connection_info?: [...{
							connection_credentials?: [...{
								ssl_secret_id?:      string
								user_name?:          string
								credential_type!:    string
								credential_name?:    string
								password_secret_id?: string
								role?:               string
							}]
							connection_string?: [...{
								host_name?: string
								hosts?: [...string]
								port?:     int
								protocol?: string
								service?:  string
							}]
							component_type!: string
						}]
					}]
					display_name?:               string
					compartment_id?:             string
					is_selected_for_monitoring?: bool
				}]
			}]
			defined_tags?: [_]: string
			display_name?:   string
			compartment_id!: string
		}
		externalnoncontainerdatabase_external_non_container_dbm_features_management: {
			external_non_container_database_id!:        string
			enable_external_non_container_dbm_feature!: bool
			feature_details?: [...{
				connector_details?: [...{
					private_end_point_id?:  string
					connector_type?:        string
					database_connector_id?: string
					management_agent_id?:   string
				}]
				license_model?: string
				feature!:       string
			}]
		}
		managed_databases_reset_database_parameter: {
			parameters!: [...string]
			credentials?: [...{
				secret_id?: string
				user_name?: string
				password?:  string
				role?:      string
			}]
			database_credential?: [...{
				password?:            string
				password_secret_id?:  string
				role?:                string
				username?:            string
				credential_type!:     string
				named_credential_id?: string
			}]
			scope!:               string
			managed_database_id!: string
		}
	}
}
#data: {
	external_db_system_connectors: {
		external_db_system_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
	}
	managed_database_addm_tasks: {
		time_start!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!: string
		time_end!:            string
	}
	managed_database_user: {
		user_name!:               string
		managed_database_id!:     string
		opc_named_credential_id?: string
	}
	managed_database_user_roles: {
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
	managed_databases_user_proxy_user: {
		name?:                string
		user_name!:           string
		managed_database_id!: string
	}
	managed_databases_user_system_privileges: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!:     string
		name?:                    string
		opc_named_credential_id?: string
		user_name!:               string
	}
	external_clusters: {
		compartment_id?:        string
		display_name?:          string
		external_db_system_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	managed_database_sql_plan_baseline_configuration: {
		managed_database_id!:     string
		opc_named_credential_id?: string
	}
	managed_database_sql_plan_baseline_jobs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!:     string
		name?:                    string
		opc_named_credential_id?: string
	}
	managed_databases_database_parameter: {
		is_allowed_values_included?: bool
		name?:                       string
		source?:                     string
		managed_database_id!:        string
	}
	named_credentials: {
		compartment_id!: string
		name?:           string
		scope?:          string
		type?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		associated_resource?: string
	}
	managed_database_optimizer_statistics_advisor_execution_script: {
		execution_name!:      string
		managed_database_id!: string
		task_name!:           string
	}
	managed_database_optimizer_statistics_collection_aggregations: {
		task_type?: string
		limit?:     int
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		end_time_less_than_or_equal_to?:      string
		group_type!:                          string
		managed_database_id!:                 string
		start_time_greater_than_or_equal_to?: string
	}
	managed_database_preferred_credential: {
		managed_database_id!: string
		named_credential_id?: string
		credential_name!:     string
	}
	managed_database_sql_plan_baseline: {
		opc_named_credential_id?: string
		managed_database_id!:     string
		plan_name!:               string
	}
	managed_database_sql_plan_baselines: {
		plan_name?:           string
		is_auto_purged?:      bool
		is_fixed?:            bool
		managed_database_id!: string
		is_never_executed?:   bool
		is_adaptive?:         bool
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		is_enabled?:              bool
		is_accepted?:             bool
		origin?:                  string
		is_reproduced?:           bool
		opc_named_credential_id?: string
		sql_handle?:              string
		sql_text?:                string
		limit?:                   int
	}
	managed_database_sql_tuning_set: {
		owner?:               string
		managed_database_id!: string
		name_contains?:       string
	}
	managed_databases_user_system_privilege: {
		user_name!:           string
		managed_database_id!: string
		name?:                string
	}
	managed_my_sql_database: managed_my_sql_database_id!: string
	managed_database_table_statistics: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!: string
	}
	external_asm_instance: external_asm_instance_id!: string
	external_db_system_connector: external_db_system_connector_id!: string
	external_db_system_discovery: external_db_system_discovery_id!: string
	external_exadata_storage_server: external_exadata_storage_server_id!: string
	external_listener_services: {
		managed_database_id!:     string
		opc_named_credential_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		external_listener_id!: string
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
	managed_my_sql_databases: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	external_asm_disk_groups: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		external_asm_id!:         string
		opc_named_credential_id?: string
	}
	external_db_node: external_db_node_id!: string
	managed_databases_asm_properties: {
		managed_database_id!: string
		name?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	external_cluster: external_cluster_id!: string
	external_db_system_discoveries: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	external_exadata_infrastructures: {
		compartment_id!: string
		display_name?:   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	managed_database_addm_task: {
		time_end!:            string
		time_start!:          string
		managed_database_id!: string
	}
	managed_database_sql_tuning_advisor_tasks_findings: {
		stats_hash_filter?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		begin_exec_id?:              string
		end_exec_id?:                string
		finding_filter?:             string
		sql_tuning_advisor_task_id!: string
		search_period?:              string
		index_hash_filter?:          string
		managed_database_id!:        string
		opc_named_credential_id?:    string
	}
	managed_database_sql_tuning_advisor_tasks_sql_execution_plan: {
		opc_named_credential_id?:    string
		sql_object_id!:              string
		sql_tuning_advisor_task_id!: string
		attribute!:                  string
		managed_database_id!:        string
	}
	managed_database_user_consumer_group_privileges: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!:     string
		name?:                    string
		opc_named_credential_id?: string
		user_name!:               string
	}
	managed_database_user_object_privilege: {
		name?:                string
		user_name!:           string
		managed_database_id!: string
	}
	db_management_private_endpoint_associated_database: {
		compartment_id!:                    string
		db_management_private_endpoint_id!: string
	}
	managed_database_optimizer_statistics_advisor_executions: {
		end_time_less_than_or_equal_to?:      string
		managed_database_id!:                 string
		start_time_greater_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	managed_database_preferred_credentials: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		managed_database_id!: string
	}
	managed_databases: {
		management_option?: string
		name?:              string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:                     string
		deployment_type?:                    string
		external_exadata_infrastructure_id?: string
		id?:                                 string
	}
	external_listener: external_listener_id!: string
	managed_database: {
		database_platform_name?: string
		managed_database_id!:    string
	}
	managed_database_attention_log_count: {
		time_greater_than_or_equal_to?: string
		time_less_than_or_equal_to?:    string
		type_filter?:                   string
		urgency_filter?:                string
		group_by?:                      string
		is_regular_expression?:         bool
		log_search_text?:               string
		managed_database_id!:           string
	}
	managed_database_user_proxied_for_user: {
		name?:                string
		user_name!:           string
		managed_database_id!: string
	}
	managed_databases_asm_property: {
		managed_database_id!: string
		name?:                string
	}
	external_exadata_storage_server_iorm_plan: external_exadata_storage_server_id!: string
	external_cluster_instance: external_cluster_instance_id!: string
	external_db_home: external_db_home_id!: string
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
	job_executions_status: {
		managed_database_id?:       string
		name?:                      string
		start_time!:                string
		compartment_id!:            string
		end_time!:                  string
		id?:                        string
		managed_database_group_id?: string
	}
	managed_database_alert_log_count: {
		group_by?:                      string
		is_regular_expression?:         bool
		managed_database_id!:           string
		time_greater_than_or_equal_to?: string
		time_less_than_or_equal_to?:    string
		level_filter?:                  string
		log_search_text?:               string
		type_filter?:                   string
	}
	managed_database_sql_tuning_advisor_tasks_summary_report: {
		sql_tuning_advisor_task_id!:             string
		begin_exec_id_greater_than_or_equal_to?: string
		opc_named_credential_id?:                string
		time_greater_than_or_equal_to?:          string
		time_less_than_or_equal_to?:             string
		end_exec_id_less_than_or_equal_to?:      string
		managed_database_id!:                    string
		search_period?:                          string
	}
	managed_database_user_proxied_for_users: {
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
	external_asms: {
		display_name?:          string
		external_db_system_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
	}
	managed_my_sql_database_sql_data: {
		start_time!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		end_time!:                   string
		filter_column?:              string
		managed_my_sql_database_id!: string
	}
	managed_databases_database_parameters: {
		name?:                    string
		opc_named_credential_id?: string
		source?:                  string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		is_allowed_values_included?: bool
		managed_database_id!:        string
	}
	managed_database_sql_tuning_advisor_tasks_recommendations: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		execution_id!:               string
		managed_database_id!:        string
		opc_named_credential_id?:    string
		sql_object_id!:              string
		sql_tuning_advisor_task_id!: string
	}
	external_exadata_storage_grid: external_exadata_storage_grid_id!: string
	external_exadata_storage_server_open_alert_history: external_exadata_storage_server_id!: string
	external_listeners: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:        string
		display_name?:          string
		external_db_system_id?: string
	}
	external_databases: {
		display_name?:          string
		external_database_id?:  string
		external_db_system_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	external_db_homes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:        string
		display_name?:          string
		external_db_system_id?: string
	}
	external_db_nodes: {
		compartment_id?:        string
		display_name?:          string
		external_db_system_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	external_db_system: external_db_system_id!: string
	external_db_systems: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
	managed_database_sql_tuning_advisor_tasks: {
		status?:                        string
		time_greater_than_or_equal_to?: string
		time_less_than_or_equal_to?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_database_id!:     string
		name?:                    string
		opc_named_credential_id?: string
	}
	db_management_private_endpoints: {
		is_dns_resolution_enabled?: bool
		name?:                      string
		state?:                     string
		vcn_id?:                    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		is_cluster?:     bool
	}
	external_exadata_infrastructure: external_exadata_infrastructure_id!: string
	external_exadata_storage_connector: external_exadata_storage_connector_id!: string
	managed_database_user_data_access_container: {
		managed_database_id!: string
		name?:                string
		user_name!:           string
	}
	db_management_private_endpoint: db_management_private_endpoint_id!: string
	job_executions_statuses: {
		managed_database_id?:       string
		name?:                      string
		end_time!:                  string
		managed_database_group_id?: string
		start_time!:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		id?:             string
	}
	managed_database_groups: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		id?:             string
		name?:           string
	}
	managed_database_sql_tuning_advisor_tasks_recommendation: {
		execution_id!:               string
		managed_database_id!:        string
		sql_object_id!:              string
		sql_tuning_advisor_task_id!: string
	}
	managed_database_sql_tuning_sets: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		managed_database_id!:     string
		name_contains?:           string
		opc_named_credential_id?: string
		owner?:                   string
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
	managed_database_user_role: {
		managed_database_id!: string
		name?:                string
		user_name!:           string
	}
	named_credential: named_credential_id!: string
	db_management_private_endpoint_associated_databases: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:                    string
		db_management_private_endpoint_id!: string
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
	managed_database_optimizer_statistics_collection_operation: {
		managed_database_id!:                          string
		optimizer_statistics_collection_operation_id!: float
	}
	external_asm_users: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		external_asm_id!:         string
		opc_named_credential_id?: string
	}
	external_cluster_instances: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:      string
		display_name?:        string
		external_cluster_id?: string
	}
	external_exadata_storage_server_top_sql_cpu_activity: external_exadata_storage_server_id!: string
	managed_database_optimizer_statistics_advisor_execution: {
		execution_name!:      string
		managed_database_id!: string
		task_name!:           string
	}
	external_asm: external_asm_id!: string
	external_asm_instances: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:  string
		display_name?:    string
		external_asm_id?: string
	}
	external_exadata_storage_connectors: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:                     string
		display_name?:                       string
		external_exadata_infrastructure_id!: string
	}
	managed_database_cursor_cache_statements: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		managed_database_id!:     string
		opc_named_credential_id?: string
		sql_text?:                string
		limit?:                   int
	}
	managed_database_group: managed_database_group_id!: string
	managed_database_sql_tuning_advisor_task: {
		time_less_than_or_equal_to?:    string
		managed_database_id!:           string
		name?:                          string
		status?:                        string
		time_greater_than_or_equal_to?: string
	}
	managed_database_sql_tuning_advisor_tasks_execution_plan_stats_comparision: {
		execution_id!:               string
		managed_database_id!:        string
		opc_named_credential_id?:    string
		sql_object_id!:              string
		sql_tuning_advisor_task_id!: string
	}
	managed_database_sql_tuning_advisor_tasks_finding: {
		begin_exec_id?:              string
		managed_database_id!:        string
		sql_tuning_advisor_task_id!: string
		end_exec_id?:                string
		finding_filter?:             string
		index_hash_filter?:          string
		search_period?:              string
		stats_hash_filter?:          string
	}
	external_asm_configuration: {
		external_asm_id!:         string
		opc_named_credential_id?: string
	}
	managed_databases_user_proxy_users: {
		name?:                    string
		opc_named_credential_id?: string
		user_name!:               string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		managed_database_id!: string
	}
	managed_my_sql_database_configuration_data: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		managed_my_sql_database_id!: string
	}
	managed_database_user_consumer_group_privilege: {
		managed_database_id!: string
		name?:                string
		user_name!:           string
	}
	managed_database_attention_log_counts: {
		type_filter?:                   string
		group_by?:                      string
		time_less_than_or_equal_to?:    string
		time_greater_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		log_search_text?:       string
		managed_database_id!:   string
		urgency_filter?:        string
		is_regular_expression?: bool
	}
	managed_database_user_data_access_containers: {
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
	managed_database_alert_log_counts: {
		log_search_text?:               string
		managed_database_id!:           string
		time_less_than_or_equal_to?:    string
		is_regular_expression?:         bool
		level_filter?:                  string
		time_greater_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		group_by?:    string
		type_filter?: string
	}
}

