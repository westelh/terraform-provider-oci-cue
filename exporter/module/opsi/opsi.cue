package opsi

#resource: {
	attributes: {
		news_report: {
			are_child_compartments_included?: bool
			status?:                          string
			description!:                     string
			ons_topic_id!:                    string
			locale!:                          string
			system_tags: [_]: string
			defined_tags?: [_]: string
			state:           string
			time_updated:    string
			time_created:    string
			day_of_week?:    string
			news_frequency!: string
			freeform_tags?: [_]: string
			compartment_id!: string
			content_types!: [...{
				sql_insights_top_sql_by_insights_resources?: [...string]
				sql_insights_top_sql_resources?: [...string]
				capacity_planning_resources?: [...string]
				sql_insights_fleet_analysis_resources?: [...string]
				sql_insights_performance_degradation_resources?: [...string]
				sql_insights_plan_changes_resources?: [...string]
				sql_insights_top_databases_resources?: [...string]
			}]
			lifecycle_details: string
			name!:             string
		}
		awr_hub: {
			lifecycle_details:        string
			time_updated:             string
			hub_dst_timezone_version: string
			state:                    string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			object_storage_bucket_name?:       string
			awr_mailbox_url:                   string
			compartment_id!:                   string
			operations_insights_warehouse_id!: string
			defined_tags?: [_]: string
			time_created:  string
			display_name!: string
		}
		operations_insights_warehouse_rotate_warehouse_wallet: operations_insights_warehouse_id!: string
		operations_insights_warehouse_user: {
			lifecycle_details:                 string
			state:                             string
			operations_insights_warehouse_id!: string
			system_tags: [_]: string
			time_created:         string
			time_updated:         string
			is_opsi_data_access?: bool
			is_awr_data_access!:  bool
			defined_tags?: [_]: string
			connection_password!: string
			freeform_tags?: [_]: string
			name!:              string
			is_em_data_access?: bool
			compartment_id!:    string
		}
		awr_hub_source_awrhubsources_management: {
			awr_hub_source_id!:   string
			enable_awrhubsource!: bool
		}
		enterprise_manager_bridge: {
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			object_storage_bucket_status_details: string
			display_name!:                        string
			system_tags: [_]: string
			time_created:                  string
			compartment_id!:               string
			time_updated:                  string
			object_storage_bucket_name!:   string
			lifecycle_details:             string
			state:                         string
			object_storage_namespace_name: string
		}
		operations_insights_private_endpoint: {
			state:             string
			time_created:      string
			display_name!:     string
			lifecycle_details: string
			vcn_id!:           string
			system_tags: [_]: string
			description?: string
			nsg_ids?: [...string]
			is_used_for_rac_dbs!: bool
			defined_tags?: [_]: string
			private_endpoint_status_details?: string
			compartment_id!:                  string
			subnet_id!:                       string
			private_ip:                       string
			freeform_tags?: [_]: string
		}
		host_insight: {
			state: string
			system_tags: [_]: string
			exadata_insight_id?:                   string
			platform_type:                         string
			management_agent_id?:                  string
			host_name:                             string
			status?:                               string
			host_display_name:                     string
			compute_id?:                           string
			platform_version:                      string
			lifecycle_details:                     string
			entity_source!:                        string
			enterprise_manager_bridge_id?:         string
			host_type:                             string
			enterprise_manager_entity_identifier?: string
			platform_name:                         string
			processor_count:                       int
			freeform_tags?: [_]: string
			time_created:                           string
			compartment_id!:                        string
			enterprise_manager_identifier?:         string
			enterprise_manager_entity_name:         string
			enterprise_manager_entity_display_name: string
			enterprise_manager_entity_type:         string
			time_updated:                           string
			defined_tags?: [_]: string
		}
		operations_insights_warehouse: {
			time_last_wallet_rotated: string
			cpu_allocated!:           float
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state:                          string
			display_name!:                  string
			operations_insights_tenancy_id: string
			dynamic_group_id:               string
			time_updated:                   string
			system_tags: [_]: string
			time_created:              string
			storage_allocated_in_gbs?: float
			cpu_used:                  float
			storage_used_in_gbs:       float
			lifecycle_details:         string
			compartment_id!:           string
		}
		operations_insights_warehouse_download_warehouse_wallet: {
			operations_insights_warehouse_id!:              string
			operations_insights_warehouse_wallet_password!: string
		}
		opsi_configuration: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			time_created:    string
			display_name?:   string
			compartment_id?: string
			opsi_config_field?: [...string]
			config_item_custom_status?: [...string]
			state: string
			config_items_applicable_context?: [...string]
			system_tags?: [_]: string
			description?:      string
			lifecycle_details: string
			config_items?: [...{
				config_item_type!: string
				name?:             string
				value?:            string
				applicable_contexts: [...string]
				default_value: string
				metadata: [...{
					display_name: string
					unit_details: [...{
						display_name: string
						unit:         string
					}]
					value_input_details: [...{
						min_value: string
						possible_values: [...string]
						allowed_value_type: string
						max_value:          string
					}]
					config_item_type: string
					data_type:        string
					description:      string
				}]
			}]
			config_item_field?: [...string]
			time_updated:      string
			opsi_config_type!: string
		}
		awr_hub_source: {
			min_snapshot_identifier:    float
			associated_opsi_id?:        string
			state:                      string
			status:                     string
			is_registered_with_awr_hub: bool
			time_created:               string
			name!:                      string
			defined_tags?: [_]: string
			type!:                   string
			associated_resource_id?: string
			awr_hub_opsi_source_id:  string
			compartment_id!:         string
			awr_source_database_id:  string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			time_first_snapshot_generated: string
			time_last_snapshot_generated:  string
			time_updated:                  string
			source_mail_box_url:           string
			awr_hub_id!:                   string
			hours_since_last_import:       float
			max_snapshot_identifier:       float
		}
		database_insight: {
			service_name?:                          string
			enterprise_manager_entity_name:         string
			enterprise_manager_entity_display_name: string
			is_advanced_features_enabled?:          bool
			lifecycle_details:                      string
			processor_count:                        int
			is_highly_available:                    bool
			enterprise_manager_entity_type:         string
			database_type:                          string
			credential_details?: [...{
				user_name?:              string
				wallet_secret_id?:       string
				credential_type!:        string
				credential_source_name?: string
				password_secret_id?:     string
				role?:                   string
			}]
			database_id?:                          string
			dbm_private_endpoint_id?:              string
			deployment_type?:                      string
			database_display_name:                 string
			exadata_insight_id?:                   string
			database_connection_status_details?:   string
			opsi_private_endpoint_id?:             string
			entity_source!:                        string
			database_version:                      string
			enterprise_manager_entity_identifier?: string
			parent_id:                             string
			connection_credential_details?: [...{
				password_secret_id?:     string
				role?:                   string
				user_name?:              string
				credential_type!:        string
				credential_source_name?: string
			}]
			enterprise_manager_bridge_id?: string
			management_agent_id?:          string
			database_name:                 string
			defined_tags?: [_]: string
			enterprise_manager_identifier?: string
			status?:                        string
			compartment_id!:                string
			connector_id?:                  string
			system_tags: [_]: string
			root_id:                       string
			is_heat_wave_cluster_attached: bool
			state:                         string
			database_resource_type?:       string
			time_created:                  string
			freeform_tags?: [_]: string
			time_updated: string
			connection_details?: [...{
				protocol?:     string
				service_name?: string
				host_name?:    string
				hosts?: [...{
					host_ip?: string
					port?:    int
				}]
				port?: int
			}]
		}
		exadata_insight: {
			entity_source!:                         string
			exadata_rack_type:                      string
			state:                                  string
			is_auto_sync_enabled?:                  bool
			enterprise_manager_entity_display_name: string
			defined_tags?: [_]: string
			exadata_infra_id?:                     string
			enterprise_manager_bridge_id?:         string
			enterprise_manager_entity_identifier?: string
			enterprise_manager_entity_name:        string
			system_tags: [_]: string
			lifecycle_details:              string
			enterprise_manager_identifier?: string
			freeform_tags?: [_]: string
			exadata_name:                string
			exadata_infra_resource_type: string
			exadata_type:                string
			is_virtualized_exadata:      bool
			status?:                     string
			exadata_display_name:        string
			member_vm_cluster_details?: [...{
				opsi_private_endpoint_id?: string
				vm_cluster_type?:          string
				vmcluster_id?:             string
				compartment_id?:           string
				dbm_private_endpoint_id?:  string
				member_database_details?: [...{
					dbm_private_endpoint_id?: string
					entity_source?:           string
					connection_credential_details?: [...{
						password_secret_id?:     string
						role?:                   string
						user_name?:              string
						wallet_secret_id?:       string
						credential_type!:        string
						credential_source_name?: string
					}]
					database_id?:     string
					deployment_type?: string
					service_name?:    string
					defined_tags?: [_]: string
					management_agent_id?: string
					credential_details?: [...{
						user_name?:              string
						wallet_secret_id?:       string
						credential_type!:        string
						credential_source_name?: string
						password_secret_id?:     string
						role?:                   string
					}]
					system_tags?: [_]: string
					database_resource_type?:   string
					opsi_private_endpoint_id?: string
					compartment_id?:           string
					connection_details?: [...{
						port?:         int
						protocol?:     string
						service_name?: string
						host_name?:    string
						hosts?: [...{
							port?:    int
							host_ip?: string
						}]
					}]
					freeform_tags?: [_]: string
				}]
			}]
			exadata_shape:                  string
			compartment_id!:                string
			enterprise_manager_entity_type: string
			time_created:                   string
			time_updated:                   string
		}
	}
	arguments: {
		news_report: {
			name!:                            string
			news_frequency!:                  string
			are_child_compartments_included?: bool
			freeform_tags?: [_]: string
			compartment_id!: string
			ons_topic_id!:   string
			locale!:         string
			day_of_week?:    string
			status?:         string
			defined_tags?: [_]: string
			content_types!: [...{
				sql_insights_fleet_analysis_resources?: [...string]
				sql_insights_performance_degradation_resources?: [...string]
				sql_insights_plan_changes_resources?: [...string]
				sql_insights_top_databases_resources?: [...string]
				sql_insights_top_sql_by_insights_resources?: [...string]
				sql_insights_top_sql_resources?: [...string]
				capacity_planning_resources?: [...string]
			}]
			description!: string
		}
		awr_hub: {
			display_name!: string
			freeform_tags?: [_]: string
			object_storage_bucket_name?:       string
			compartment_id!:                   string
			operations_insights_warehouse_id!: string
			defined_tags?: [_]: string
		}
		operations_insights_warehouse_rotate_warehouse_wallet: operations_insights_warehouse_id!: string
		operations_insights_warehouse_user: {
			is_awr_data_access!: bool
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_em_data_access?:                bool
			compartment_id!:                   string
			connection_password!:              string
			is_opsi_data_access?:              bool
			operations_insights_warehouse_id!: string
			name!:                             string
		}
		awr_hub_source_awrhubsources_management: {
			enable_awrhubsource!: bool
			awr_hub_source_id!:   string
		}
		enterprise_manager_bridge: {
			display_name!:               string
			object_storage_bucket_name!: string
			compartment_id!:             string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
		}
		operations_insights_private_endpoint: {
			compartment_id!: string
			nsg_ids?: [...string]
			subnet_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name!:                    string
			vcn_id!:                          string
			private_endpoint_status_details?: string
			description?:                     string
			is_used_for_rac_dbs!:             bool
		}
		host_insight: {
			compute_id?:                           string
			compartment_id!:                       string
			enterprise_manager_bridge_id?:         string
			entity_source!:                        string
			enterprise_manager_entity_identifier?: string
			management_agent_id?:                  string
			defined_tags?: [_]: string
			status?:             string
			exadata_insight_id?: string
			freeform_tags?: [_]: string
			enterprise_manager_identifier?: string
		}
		operations_insights_warehouse: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name!:             string
			cpu_allocated!:            float
			storage_allocated_in_gbs?: float
			compartment_id!:           string
		}
		operations_insights_warehouse_download_warehouse_wallet: {
			operations_insights_warehouse_id!:              string
			operations_insights_warehouse_wallet_password!: string
		}
		opsi_configuration: {
			config_items_applicable_context?: [...string]
			config_item_custom_status?: [...string]
			config_items?: [...{
				value?:            string
				config_item_type!: string
				name?:             string
			}]
			description?:    string
			compartment_id?: string
			freeform_tags?: [_]: string
			opsi_config_type!: string
			config_item_field?: [...string]
			defined_tags?: [_]: string
			opsi_config_field?: [...string]
			system_tags?: [_]: string
			display_name?: string
		}
		awr_hub_source: {
			freeform_tags?: [_]: string
			associated_opsi_id?:     string
			awr_hub_id!:             string
			type!:                   string
			associated_resource_id?: string
			compartment_id!:         string
			name!:                   string
			defined_tags?: [_]: string
		}
		database_insight: {
			is_advanced_features_enabled?:         bool
			database_resource_type?:               string
			connector_id?:                         string
			enterprise_manager_entity_identifier?: string
			enterprise_manager_identifier?:        string
			status?:                               string
			compartment_id!:                       string
			database_connection_status_details?:   string
			opsi_private_endpoint_id?:             string
			connection_credential_details?: [...{
				role?:                   string
				user_name?:              string
				credential_type!:        string
				credential_source_name?: string
				password_secret_id?:     string
			}]
			connection_details?: [...{
				hosts?: [...{
					host_ip?: string
					port?:    int
				}]
				port?:         int
				protocol?:     string
				service_name?: string
				host_name?:    string
			}]
			enterprise_manager_bridge_id?: string
			credential_details?: [...{
				credential_type!:        string
				credential_source_name?: string
				password_secret_id?:     string
				role?:                   string
				user_name?:              string
				wallet_secret_id?:       string
			}]
			exadata_insight_id?:      string
			dbm_private_endpoint_id?: string
			deployment_type?:         string
			entity_source!:           string
			freeform_tags?: [_]: string
			management_agent_id?: string
			service_name?:        string
			database_id?:         string
			defined_tags?: [_]: string
		}
		exadata_insight: {
			entity_source!:                        string
			is_auto_sync_enabled?:                 bool
			compartment_id!:                       string
			enterprise_manager_entity_identifier?: string
			freeform_tags?: [_]: string
			member_vm_cluster_details?: [...{
				member_database_details?: [...{
					dbm_private_endpoint_id?: string
					compartment_id?:          string
					credential_details?: [...{
						role?:                   string
						user_name?:              string
						wallet_secret_id?:       string
						credential_type!:        string
						credential_source_name?: string
						password_secret_id?:     string
					}]
					connection_details?: [...{
						port?:         int
						protocol?:     string
						service_name?: string
						host_name?:    string
						hosts?: [...{
							host_ip?: string
							port?:    int
						}]
					}]
					connection_credential_details?: [...{
						credential_source_name?: string
						password_secret_id?:     string
						role?:                   string
						user_name?:              string
						wallet_secret_id?:       string
						credential_type!:        string
					}]
					opsi_private_endpoint_id?: string
					entity_source?:            string
					freeform_tags?: [_]: string
					service_name?:        string
					management_agent_id?: string
					defined_tags?: [_]: string
					database_id?: string
					system_tags?: [_]: string
					deployment_type?:        string
					database_resource_type?: string
				}]
				opsi_private_endpoint_id?: string
				vm_cluster_type?:          string
				vmcluster_id?:             string
				compartment_id?:           string
				dbm_private_endpoint_id?:  string
			}]
			defined_tags?: [_]: string
			exadata_infra_id?:              string
			enterprise_manager_identifier?: string
			status?:                        string
			enterprise_manager_bridge_id?:  string
		}
	}
}
#data: {
	operations_insights_warehouse: operations_insights_warehouse_id!: string
	awr_hub_sources: {
		awr_hub_source_id?: string
		name?:              string
		compartment_id?:    string
		source_type?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		awr_hub_id!: string
		state?: [...string]
		status?: [...string]
	}
	news_reports: {
		status?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:            string
		compartment_id_in_subtree?: bool
		news_report_id?:            string
		state?: [...string]
	}
	operations_insights_private_endpoint: operations_insights_private_endpoint_id!: string
	importable_agent_entities: compartment_id!: string
	awr_hub_awr_snapshot: {
		time_greater_than_or_equal_to?:  string
		time_less_than_or_equal_to?:     string
		awr_hub_id!:                     string
		awr_source_database_identifier!: string
	}
	importable_compute_entity: compartment_id!: string
	operations_insights_private_endpoints: {
		compartment_id?:            string
		compartment_id_in_subtree?: bool
		is_used_for_rac_dbs?:       bool
		opsi_private_endpoint_id?:  string
		vcn_id?:                    string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?: string
		state?: [...string]
	}
	importable_agent_entity: compartment_id!: string
	awr_hub_awr_snapshots: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		awr_hub_id!:                     string
		awr_source_database_identifier!: string
		time_greater_than_or_equal_to?:  string
		time_less_than_or_equal_to?:     string
	}
	database_insight: database_insight_id!: string
	exadata_insights: {
		compartment_id_in_subtree?: bool
		exadata_type?: [...string]
		compartment_id?:               string
		enterprise_manager_bridge_id?: string
		status?: [...string]
		id?: string
		state?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	operations_insights_warehouse_users: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:                   string
		display_name?:                     string
		id?:                               string
		operations_insights_warehouse_id!: string
		state?: [...string]
	}
	operations_insights_warehouses: {
		state?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
	}
	awr_hub: awr_hub_id!: string
	operations_insights_warehouse_user: operations_insights_warehouse_user_id!: string
	opsi_configurations: {
		state?: [...string]
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		opsi_config_type?: [...string]
	}
	enterprise_manager_bridge: enterprise_manager_bridge_id!: string
	enterprise_manager_bridges: {
		id?: string
		state?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
	}
	operations_insights_warehouse_resource_usage_summary: operations_insights_warehouse_id!: string
	opsi_configuration_configuration_item: {
		config_item_field?: [...string]
		config_items_applicable_context?: [...string]
		name?:             string
		opsi_config_type!: string
		compartment_id?:   string
	}
	awr_hubs: {
		display_name?:                     string
		id?:                               string
		operations_insights_warehouse_id!: string
		state?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	database_insights: {
		compartment_id_in_subtree?: bool
		fields?: [...string]
		enterprise_manager_bridge_id?: string
		id?:                           string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		state?: [...string]
		exadata_insight_id?: string
		compartment_id?:     string
		database_id?: [...string]
		database_type?: [...string]
		status?: [...string]
		opsi_private_endpoint_id?: string
	}
	host_insight: host_insight_id!: string
	host_insights: {
		host_type?: [...string]
		id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		exadata_insight_id?:           string
		compartment_id_in_subtree?:    bool
		enterprise_manager_bridge_id?: string
		status?: [...string]
		compartment_id?: string
		state?: [...string]
	}
	importable_compute_entities: compartment_id!: string
	awr_hub_awr_sources_summary: {
		name?:           string
		awr_hub_id!:     string
		compartment_id?: string
	}
	awr_hub_source: awr_hub_source_id!: string
	exadata_insight: exadata_insight_id!: string
	news_report: news_report_id!: string
	opsi_configuration: {
		config_items_applicable_context!: [...string]
		opsi_config_field!: [...string]
		config_item_custom_status!: [...string]
		opsi_configuration_id!: string
		config_item_field!: [...string]
	}
}

