package opsi

#resource: {
	attributes: {
		enterprise_manager_bridge: {
			freeform_tags?: [_]: string
			display_name!:                 string
			object_storage_namespace_name: string
			state:                         string
			object_storage_bucket_name!:   string
			defined_tags?: [_]: string
			object_storage_bucket_status_details: string
			time_updated:                         string
			compartment_id!:                      string
			description?:                         string
			system_tags: [_]: string
			time_created:      string
			lifecycle_details: string
		}
		operations_insights_warehouse_download_warehouse_wallet: {
			operations_insights_warehouse_id!:              string
			operations_insights_warehouse_wallet_password!: string
		}
		opsi_configuration: {
			defined_tags?: [_]: string
			opsi_config_field?: [...string]
			system_tags?: [_]: string
			config_items_applicable_context?: [...string]
			state:             string
			lifecycle_details: string
			compartment_id?:   string
			opsi_config_type!: string
			display_name?:     string
			config_items?: [...{
				metadata: [...{
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
					display_name:     string
				}]
				config_item_type!: string
				name?:             string
				value?:            string
				applicable_contexts: [...string]
				default_value: string
			}]
			freeform_tags?: [_]: string
			config_item_custom_status?: [...string]
			description?: string
			time_created: string
			time_updated: string
			config_item_field?: [...string]
		}
		host_insight: {
			freeform_tags?: [_]: string
			state:                                  string
			enterprise_manager_entity_display_name: string
			platform_version:                       string
			time_created:                           string
			exadata_insight_id?:                    string
			enterprise_manager_entity_name:         string
			platform_name:                          string
			compartment_id!:                        string
			enterprise_manager_entity_identifier?:  string
			enterprise_manager_entity_type:         string
			management_agent_id?:                   string
			platform_type:                          string
			compute_id?:                            string
			defined_tags?: [_]: string
			time_updated:                  string
			status?:                       string
			enterprise_manager_bridge_id?: string
			host_type:                     string
			host_display_name:             string
			host_name:                     string
			lifecycle_details:             string
			processor_count:               int
			system_tags: [_]: string
			entity_source!:                 string
			enterprise_manager_identifier?: string
		}
		news_report: {
			locale!:      string
			description!: string
			day_of_week?: string
			defined_tags?: [_]: string
			status?:           string
			lifecycle_details: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			ons_topic_id!:                    string
			are_child_compartments_included?: bool
			news_frequency!:                  string
			time_updated:                     string
			time_created:                     string
			state:                            string
			content_types!: [...{
				sql_insights_top_sql_by_insights_resources?: [...string]
				sql_insights_top_sql_resources?: [...string]
				capacity_planning_resources?: [...string]
				sql_insights_fleet_analysis_resources?: [...string]
				sql_insights_performance_degradation_resources?: [...string]
				sql_insights_plan_changes_resources?: [...string]
				sql_insights_top_databases_resources?: [...string]
			}]
			compartment_id!: string
			name!:           string
		}
		operations_insights_warehouse_rotate_warehouse_wallet: operations_insights_warehouse_id!: string
		operations_insights_private_endpoint: {
			compartment_id!:      string
			lifecycle_details:    string
			is_used_for_rac_dbs!: bool
			system_tags: [_]: string
			description?: string
			freeform_tags?: [_]: string
			subnet_id!:                       string
			private_endpoint_status_details?: string
			nsg_ids?: [...string]
			state: string
			defined_tags?: [_]: string
			private_ip:    string
			vcn_id!:       string
			time_created:  string
			display_name!: string
		}
		awr_hub: {
			display_name!:               string
			object_storage_bucket_name?: string
			freeform_tags?: [_]: string
			time_created:             string
			compartment_id!:          string
			hub_dst_timezone_version: string
			lifecycle_details:        string
			defined_tags?: [_]: string
			state: string
			system_tags: [_]: string
			time_updated:                      string
			operations_insights_warehouse_id!: string
			awr_mailbox_url:                   string
		}
		awr_hub_source: {
			associated_opsi_id?:           string
			associated_resource_id?:       string
			hours_since_last_import:       float
			time_updated:                  string
			awr_hub_id!:                   string
			max_snapshot_identifier:       float
			status:                        string
			compartment_id!:               string
			min_snapshot_identifier:       float
			name!:                         string
			awr_source_database_id:        string
			is_registered_with_awr_hub:    bool
			time_last_snapshot_generated:  string
			time_created:                  string
			awr_hub_opsi_source_id:        string
			time_first_snapshot_generated: string
			source_mail_box_url:           string
			system_tags: [_]: string
			state: string
			type!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		awr_hub_source_awrhubsources_management: {
			awr_hub_source_id!:   string
			enable_awrhubsource!: bool
		}
		exadata_insight: {
			enterprise_manager_entity_name: string
			state:                          string
			system_tags: [_]: string
			compartment_id!:                        string
			entity_source!:                         string
			exadata_infra_resource_type:            string
			lifecycle_details:                      string
			enterprise_manager_entity_display_name: string
			enterprise_manager_bridge_id?:          string
			enterprise_manager_entity_identifier?:  string
			exadata_infra_id?:                      string
			exadata_name:                           string
			exadata_rack_type:                      string
			time_created:                           string
			time_updated:                           string
			exadata_display_name:                   string
			exadata_type:                           string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			member_vm_cluster_details?: [...{
				vm_cluster_type?:         string
				vmcluster_id?:            string
				compartment_id?:          string
				dbm_private_endpoint_id?: string
				member_database_details?: [...{
					dbm_private_endpoint_id?: string
					connection_credential_details?: [...{
						password_secret_id?:     string
						role?:                   string
						user_name?:              string
						wallet_secret_id?:       string
						credential_type!:        string
						credential_source_name?: string
					}]
					connection_details?: [...{
						host_name?: string
						hosts?: [...{
							host_ip?: string
							port?:    int
						}]
						port?:         int
						protocol?:     string
						service_name?: string
					}]
					opsi_private_endpoint_id?: string
					database_resource_type?:   string
					freeform_tags?: [_]: string
					compartment_id?: string
					system_tags?: [_]: string
					deployment_type?: string
					credential_details?: [...{
						credential_source_name?: string
						password_secret_id?:     string
						role?:                   string
						user_name?:              string
						wallet_secret_id?:       string
						credential_type!:        string
					}]
					service_name?: string
					defined_tags?: [_]: string
					database_id?:         string
					entity_source?:       string
					management_agent_id?: string
				}]
				opsi_private_endpoint_id?: string
			}]
			status?:                        string
			is_auto_sync_enabled?:          bool
			enterprise_manager_entity_type: string
			enterprise_manager_identifier?: string
			exadata_shape:                  string
			is_virtualized_exadata:         bool
		}
		database_insight: {
			is_heat_wave_cluster_attached:  bool
			database_resource_type?:        string
			time_updated:                   string
			management_agent_id?:           string
			enterprise_manager_entity_name: string
			deployment_type?:               string
			system_tags: [_]: string
			database_id?:                   string
			time_created:                   string
			database_version:               string
			enterprise_manager_entity_type: string
			connection_credential_details?: [...{
				role?:                   string
				user_name?:              string
				credential_type!:        string
				credential_source_name?: string
				password_secret_id?:     string
			}]
			exadata_insight_id?: string
			parent_id:           string
			defined_tags?: [_]: string
			is_advanced_features_enabled?:         bool
			database_name:                         string
			enterprise_manager_entity_identifier?: string
			state:                                 string
			freeform_tags?: [_]: string
			enterprise_manager_entity_display_name: string
			database_connection_status_details?:    string
			processor_count:                        int
			opsi_private_endpoint_id?:              string
			compartment_id!:                        string
			database_type:                          string
			enterprise_manager_identifier?:         string
			dbm_private_endpoint_id?:               string
			status?:                                string
			lifecycle_details:                      string
			credential_details?: [...{
				wallet_secret_id?:       string
				credential_type!:        string
				credential_source_name?: string
				password_secret_id?:     string
				role?:                   string
				user_name?:              string
			}]
			enterprise_manager_bridge_id?: string
			service_name?:                 string
			database_display_name:         string
			connection_details?: [...{
				host_name?: string
				hosts?: [...{
					port?:    int
					host_ip?: string
				}]
				port?:         int
				protocol?:     string
				service_name?: string
			}]
			connector_id?:       string
			is_highly_available: bool
			root_id:             string
			entity_source!:      string
		}
		operations_insights_warehouse: {
			dynamic_group_id:    string
			lifecycle_details:   string
			time_created:        string
			storage_used_in_gbs: float
			cpu_used:            float
			system_tags: [_]: string
			storage_allocated_in_gbs?:      float
			state:                          string
			operations_insights_tenancy_id: string
			defined_tags?: [_]: string
			compartment_id!: string
			cpu_allocated!:  float
			freeform_tags?: [_]: string
			time_updated:             string
			display_name!:            string
			time_last_wallet_rotated: string
		}
		operations_insights_warehouse_user: {
			time_updated:                      string
			name!:                             string
			connection_password!:              string
			lifecycle_details:                 string
			state:                             string
			is_em_data_access?:                bool
			time_created:                      string
			operations_insights_warehouse_id!: string
			defined_tags?: [_]: string
			is_opsi_data_access?: bool
			freeform_tags?: [_]: string
			compartment_id!: string
			system_tags: [_]: string
			is_awr_data_access!: bool
		}
	}
	arguments: {
		enterprise_manager_bridge: {
			object_storage_bucket_name!: string
			defined_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
			description?:    string
			freeform_tags?: [_]: string
		}
		operations_insights_warehouse_download_warehouse_wallet: {
			operations_insights_warehouse_id!:              string
			operations_insights_warehouse_wallet_password!: string
		}
		opsi_configuration: {
			defined_tags?: [_]: string
			compartment_id?: string
			config_items?: [...{
				config_item_type!: string
				name?:             string
				value?:            string
			}]
			opsi_config_field?: [...string]
			description?: string
			config_items_applicable_context?: [...string]
			display_name?: string
			freeform_tags?: [_]: string
			opsi_config_type!: string
			config_item_custom_status?: [...string]
			system_tags?: [_]: string
			config_item_field?: [...string]
		}
		host_insight: {
			management_agent_id?: string
			status?:              string
			defined_tags?: [_]: string
			entity_source!:                        string
			enterprise_manager_bridge_id?:         string
			enterprise_manager_entity_identifier?: string
			freeform_tags?: [_]: string
			exadata_insight_id?:            string
			compartment_id!:                string
			compute_id?:                    string
			enterprise_manager_identifier?: string
		}
		news_report: {
			freeform_tags?: [_]: string
			content_types!: [...{
				sql_insights_top_sql_resources?: [...string]
				capacity_planning_resources?: [...string]
				sql_insights_fleet_analysis_resources?: [...string]
				sql_insights_performance_degradation_resources?: [...string]
				sql_insights_plan_changes_resources?: [...string]
				sql_insights_top_databases_resources?: [...string]
				sql_insights_top_sql_by_insights_resources?: [...string]
			}]
			description!:                     string
			news_frequency!:                  string
			name!:                            string
			ons_topic_id!:                    string
			are_child_compartments_included?: bool
			day_of_week?:                     string
			compartment_id!:                  string
			defined_tags?: [_]: string
			status?: string
			locale!: string
		}
		operations_insights_warehouse_rotate_warehouse_wallet: operations_insights_warehouse_id!: string
		operations_insights_private_endpoint: {
			subnet_id!:                       string
			private_endpoint_status_details?: string
			compartment_id!:                  string
			is_used_for_rac_dbs!:             bool
			display_name!:                    string
			description?:                     string
			nsg_ids?: [...string]
			defined_tags?: [_]: string
			vcn_id!: string
			freeform_tags?: [_]: string
		}
		awr_hub: {
			operations_insights_warehouse_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			object_storage_bucket_name?: string
			compartment_id!:             string
			display_name!:               string
		}
		awr_hub_source: {
			name!:           string
			compartment_id!: string
			type!:           string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			associated_opsi_id?:     string
			associated_resource_id?: string
			awr_hub_id!:             string
		}
		awr_hub_source_awrhubsources_management: {
			awr_hub_source_id!:   string
			enable_awrhubsource!: bool
		}
		exadata_insight: {
			compartment_id!:   string
			entity_source!:    string
			exadata_infra_id?: string
			member_vm_cluster_details?: [...{
				opsi_private_endpoint_id?: string
				vm_cluster_type?:          string
				vmcluster_id?:             string
				compartment_id?:           string
				dbm_private_endpoint_id?:  string
				member_database_details?: [...{
					database_resource_type?:  string
					deployment_type?:         string
					compartment_id?:          string
					dbm_private_endpoint_id?: string
					defined_tags?: [_]: string
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
					service_name?:             string
					opsi_private_endpoint_id?: string
					database_id?:              string
					freeform_tags?: [_]: string
					system_tags?: [_]: string
					credential_details?: [...{
						user_name?:              string
						wallet_secret_id?:       string
						credential_type!:        string
						credential_source_name?: string
						password_secret_id?:     string
						role?:                   string
					}]
					management_agent_id?: string
					entity_source?:       string
					connection_credential_details?: [...{
						role?:                   string
						user_name?:              string
						wallet_secret_id?:       string
						credential_type!:        string
						credential_source_name?: string
						password_secret_id?:     string
					}]
				}]
			}]
			enterprise_manager_identifier?:        string
			enterprise_manager_entity_identifier?: string
			status?:                               string
			is_auto_sync_enabled?:                 bool
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			enterprise_manager_bridge_id?: string
		}
		database_insight: {
			compartment_id!:          string
			dbm_private_endpoint_id?: string
			freeform_tags?: [_]: string
			exadata_insight_id?:            string
			database_resource_type?:        string
			management_agent_id?:           string
			connector_id?:                  string
			enterprise_manager_identifier?: string
			is_advanced_features_enabled?:  bool
			status?:                        string
			entity_source!:                 string
			enterprise_manager_bridge_id?:  string
			opsi_private_endpoint_id?:      string
			defined_tags?: [_]: string
			deployment_type?: string
			credential_details?: [...{
				user_name?:              string
				wallet_secret_id?:       string
				credential_type!:        string
				credential_source_name?: string
				password_secret_id?:     string
				role?:                   string
			}]
			connection_details?: [...{
				host_name?: string
				hosts?: [...{
					host_ip?: string
					port?:    int
				}]
				port?:         int
				protocol?:     string
				service_name?: string
			}]
			database_id?: string
			connection_credential_details?: [...{
				credential_source_name?: string
				password_secret_id?:     string
				role?:                   string
				user_name?:              string
				credential_type!:        string
			}]
			database_connection_status_details?:   string
			enterprise_manager_entity_identifier?: string
			service_name?:                         string
		}
		operations_insights_warehouse: {
			cpu_allocated!: float
			freeform_tags?: [_]: string
			storage_allocated_in_gbs?: float
			defined_tags?: [_]: string
			display_name!:   string
			compartment_id!: string
		}
		operations_insights_warehouse_user: {
			defined_tags?: [_]: string
			is_em_data_access?:                bool
			is_awr_data_access!:               bool
			connection_password!:              string
			operations_insights_warehouse_id!: string
			freeform_tags?: [_]: string
			name!:                string
			is_opsi_data_access?: bool
			compartment_id!:      string
		}
	}
}
#data: {
	awr_hub_awr_sources_summary: {
		name?:           string
		awr_hub_id!:     string
		compartment_id?: string
	}
	news_reports: {
		state?: [...string]
		status?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:            string
		compartment_id_in_subtree?: bool
		news_report_id?:            string
	}
	importable_agent_entity: compartment_id!: string
	importable_compute_entities: compartment_id!: string
	operations_insights_warehouse_resource_usage_summary: operations_insights_warehouse_id!: string
	opsi_configuration: {
		config_item_custom_status!: [...string]
		opsi_configuration_id!: string
		opsi_config_field!: [...string]
		config_items_applicable_context!: [...string]
		config_item_field!: [...string]
	}
	awr_hub_sources: {
		name?: string
		state?: [...string]
		status?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		source_type?: [...string]
		awr_hub_id!:        string
		awr_hub_source_id?: string
		compartment_id?:    string
	}
	database_insights: {
		opsi_private_endpoint_id?:  string
		compartment_id_in_subtree?: bool
		database_id?: [...string]
		status?: [...string]
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		database_type?: [...string]
		id?:                           string
		enterprise_manager_bridge_id?: string
		fields?: [...string]
		state?: [...string]
		compartment_id?:     string
		exadata_insight_id?: string
	}
	exadata_insights: {
		status?: [...string]
		exadata_type?: [...string]
		compartment_id?:               string
		compartment_id_in_subtree?:    bool
		enterprise_manager_bridge_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		id?: string
		state?: [...string]
	}
	opsi_configuration_configuration_item: {
		config_item_field?: [...string]
		config_items_applicable_context?: [...string]
		name?:             string
		opsi_config_type!: string
		compartment_id?:   string
	}
	database_insight: database_insight_id!: string
	operations_insights_warehouse_user: operations_insights_warehouse_user_id!: string
	operations_insights_warehouses: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?: [...string]
	}
	operations_insights_private_endpoints: {
		opsi_private_endpoint_id?: string
		vcn_id?:                   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?:      string
		is_used_for_rac_dbs?: bool
		state?: [...string]
		compartment_id_in_subtree?: bool
		display_name?:              string
	}
	opsi_configurations: {
		compartment_id!: string
		display_name?:   string
		opsi_config_type?: [...string]
		state?: [...string]
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	awr_hub: awr_hub_id!: string
	importable_compute_entity: compartment_id!: string
	awr_hub_awr_snapshot: {
		time_greater_than_or_equal_to?:  string
		time_less_than_or_equal_to?:     string
		awr_hub_id!:                     string
		awr_source_database_identifier!: string
	}
	awr_hubs: {
		state?: [...string]
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?:                   string
		display_name?:                     string
		id?:                               string
		operations_insights_warehouse_id!: string
	}
	enterprise_manager_bridges: {
		display_name?: string
		id?:           string
		state?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:            string
		compartment_id_in_subtree?: bool
	}
	host_insights: {
		enterprise_manager_bridge_id?: string
		host_type?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		status?: [...string]
		state?: [...string]
		id?:                        string
		compartment_id?:            string
		compartment_id_in_subtree?: bool
		exadata_insight_id?:        string
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
	enterprise_manager_bridge: enterprise_manager_bridge_id!: string
	exadata_insight: exadata_insight_id!: string
	host_insight: host_insight_id!: string
	operations_insights_private_endpoint: operations_insights_private_endpoint_id!: string
	operations_insights_warehouse: operations_insights_warehouse_id!: string
	importable_agent_entities: compartment_id!: string
	awr_hub_awr_snapshots: {
		awr_source_database_identifier!: string
		time_greater_than_or_equal_to?:  string
		time_less_than_or_equal_to?:     string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		awr_hub_id!: string
	}
	awr_hub_source: awr_hub_source_id!: string
	news_report: news_report_id!: string
}

