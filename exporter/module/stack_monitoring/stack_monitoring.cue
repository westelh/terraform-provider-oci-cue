package stack_monitoring

#resource: {
	attributes: {
		baselineable_metric: {
			freeform_tags: [_]: string
			name?:           string
			created_by:      string
			column!:         string
			compartment_id!: string
			system_tags: [_]: string
			time_last_updated: string
			last_updated_by:   string
			tenancy_id:        string
			defined_tags: [_]: string
			state:           string
			resource_group?: string
			namespace!:      string
			time_created:    string
			is_out_of_box:   bool
			resource_type?:  string
		}
		monitored_resource_type: {
			system_tags: [_]: string
			metadata?: [...{
				valid_properties_for_update?: [...string]
				valid_property_values?: [_]: string
				format!: string
				agent_properties?: [...string]
				required_properties?: [...string]
				unique_property_sets?: [...{
					properties!: [...string]
				}]
				valid_properties_for_create?: [...string]
			}]
			display_name?: string
			time_updated:  string
			defined_tags?: [_]: string
			compartment_id!:    string
			resource_category?: string
			freeform_tags?: [_]: string
			name!:             string
			source_type?:      string
			state:             string
			time_created:      string
			description?:      string
			metric_namespace?: string
		}
		metric_extension_metric_extension_on_given_resources_management: {
			metric_extension_id!: string
			resource_ids!: [...string]
			enable_metric_extension_on_given_resources!: bool
		}
		monitored_resource_task: {
			time_created: string
			time_updated: string
			work_request_ids: [...string]
			defined_tags?: [_]: string
			task_details!: [...{
				resource_type_filter?:                          string
				namespace!:                                     string
				resource_group?:                                string
				availability_proxy_metric_collection_interval?: int
				source!:                                        string
				type!:                                          string
				console_path_prefix?:                           string
				should_use_metrics_flow_for_status?:            bool
				availability_proxy_metrics?: [...string]
				external_id_mapping?: string
				lifecycle_status_mappings_for_up_status?: [...string]
				resource_name_filter?:  string
				resource_type_mapping?: string
				service_base_url?:      string
				resource_name_mapping?: string
			}]
			freeform_tags?: [_]: string
			system_tags: [_]: string
			tenant_id:       string
			compartment_id!: string
			name?:           string
			state:           string
		}
		monitored_resources_search: {
			fields?: [...string]
			host_name_contains?: string
			items: [...{
				time_updated: string
				external_id:  string
				name:         string
				license:      string
				freeform_tags: [_]: string
				management_agent_id: string
				display_name:        string
				compartment_id:      string
				defined_tags: [_]: string
				id:                string
				host_name:         string
				resource_category: string
				properties: [...{
					value: string
					name:  string
				}]
				time_created: string
				type:         string
				source_type:  string
				state:        string
				system_tags: [_]: string
			}]
			type?:                                  string
			compartment_id!:                        string
			time_created_greater_than_or_equal_to?: string
			compartment_ids?: [...string]
			property_equals?: [_]: string
			resource_category?:                     string
			time_updated_less_than?:                string
			state?:                                 string
			name?:                                  string
			host_name?:                             string
			name_contains?:                         string
			source_type?:                           string
			time_updated_greater_than_or_equal_to?: string
			time_created_less_than?:                string
			lifecycle_states?: [...string]
			license?: string
			exclude_fields?: [...string]
			management_agent_id?: string
			resource_time_zone?:  string
			external_id?:         string
		}
		monitored_resources_list_member: {
			monitored_resource_id!:   string
			destination_resource_id?: string
			limit_level?:             int
			items: [...{
				compartment_id: string
				defined_tags: [_]: string
				resource_name: string
				freeform_tags: [_]: string
				resource_display_name: string
				license:               string
				resource_type:         string
				resource_category:     string
				external_id:           string
				host_name:             string
				source_type:           string
				parent_id:             string
				system_tags: [_]: string
				resource_id: string
				state:       string
			}]
		}
		process_set: {
			specification!: [...{
				items!: [...{
					process_command?: string, process_line_regex_pattern?: string, process_user?: string, label?: string
				}]
			}]
			revision: string
			state:    string
			system_tags: [_]: string
			time_created: string
			time_updated: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
		}
		discovery_job: {
			compartment_id!: string
			status_message:  string
			defined_tags?: [_]: string
			discovery_details!: [...{
				agent_id!: string
				properties!: [...{
					properties_map?: [_]: string
				}]
				resource_name!: string
				resource_type!: string
				credentials?: [...{
					items!: [...{
						properties!: [...{
							properties_map?: [_]: string
						}]
						credential_name!: string, credential_type!: string
					}]
				}]
				license?: string
				tags?: [...{
					properties_map?: [_]: string
				}]
			}]
			discovery_type?:                                string
			discovery_client?:                              string
			time_updated:                                   string
			state:                                          string
			should_propagate_tags_to_discovered_resources?: bool
			tenant_id:                                      string
			freeform_tags?: [_]: string
			status: string
			system_tags: [_]: string
			user_id: string
		}
		maintenance_windows_stop: maintenance_window_id!: string
		monitored_resource: {
			source_type:     string
			type!:           string
			compartment_id!: string
			freeform_tags?: [_]: string
			state:                string
			host_name?:           string
			management_agent_id?: string
			resource_time_zone?:  string
			defined_tags?: [_]: string
			tenant_id: string
			aliases?: [...{
				credential!: [...{
					service!: string
					source!:  string
					name!:    string
				}]
				name!:   string
				source!: string
			}]
			system_tags: [_]: string
			time_created: string
			database_connection_details?: [...{
				protocol!:       string
				service_name!:   string
				connector_id?:   string
				db_id?:          string
				db_unique_name?: string
				ssl_secret_id?:  string
				port!:           int
			}]
			name!: string
			additional_credentials?: [...{
				credential_type?: string
				description?:     string
				key_id?:          string
				name?:            string
				properties?: [...{
					name?:  string
					value?: string
				}]
				source?: string
				type?:   string
			}]
			license?:      string
			display_name?: string
			time_updated:  string
			additional_aliases?: [...{
				credential!: [...{
					service!: string
					source!:  string
					name!:    string
				}]
				name!:   string
				source!: string
			}]
			external_id?: string
			properties?: [...{
				name?:  string
				value?: string
			}]
			external_resource_id?: string
			resource_category:     string
			credentials?: [...{
				name?: string
				properties?: [...{
					name?:  string
					value?: string
				}]
				source?:          string
				type?:            string
				credential_type?: string
				description?:     string
				key_id?:          string
			}]
		}
		monitored_resources_associate_monitored_resource: {
			category:                 string
			tenant_id:                string
			association_type!:        string
			compartment_id!:          string
			destination_resource_id!: string
			source_resource_id!:      string
			destination_resource_details: [...{
				compartment_id: string
				name:           string
				type:           string
			}]
			time_created: string
			source_resource_details: [...{
				compartment_id: string
				name:           string
				type:           string
			}]
		}
		metric_extensions_test_management: {
			test_run_namespace_name:      string
			test_run_resource_group_name: string
			metric_extension_id!:         string
			resource_ids!: [...string]
			test_run_id:            string
			test_run_metric_suffix: string
		}
		monitored_resources_search_association: {
			source_resource_name?:      string
			source_resource_type?:      string
			association_type?:          string
			destination_resource_type?: string
			destination_resource_id?:   string
			items: [...{
				destination_resource_id: string
				source_resource_details: [...{
					compartment_id: string
					name:           string
					type:           string
				}]
				source_resource_id: string
				time_created:       string
				association_type:   string
				destination_resource_details: [...{
					compartment_id: string
					name:           string
					type:           string
				}]
			}]
			compartment_id!:            string
			destination_resource_name?: string
			source_resource_id?:        string
		}
		config: {
			time_created: string
			state:        string
			system_tags: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			config_type!:    string
			license?:        string
			resource_type?:  string
			defined_tags?: [_]: string
			time_updated: string
			is_enabled?:  bool
		}
		maintenance_window: {
			schedule!: [...{
				maintenance_window_recurrences?: string
				time_maintenance_window_end?:    string
				time_maintenance_window_start?:  string
				schedule_type!:                  string
				maintenance_window_duration?:    string
			}]
			lifecycle_details: string
			resources_details: [...{
				name:              string
				number_of_members: int
				resource_id:       string
				type:              string
			}]
			time_created:    string
			compartment_id!: string
			name!:           string
			resources!: [...{
				resource_id!:          string
				are_members_included?: bool
			}]
			state:        string
			time_updated: string
			description?: string
		}
		maintenance_windows_retry_failed_operation: maintenance_window_id!: string
		metric_extension: {
			tenant_id:        string
			publish_trigger?: bool
			state:            string
			enabled_on_resources: [...{
				resource_id: string
			}]
			created_by:        string
			last_updated_by:   string
			status:            string
			collection_method: string
			metric_list!: [...{
				display_name?:       *" " | string
				is_dimension?:       bool
				is_hidden?:          bool
				metric_category?:    string
				unit?:               *" " | string
				data_type!:          string
				name!:               string
				compute_expression?: *" " | string
			}]
			name!:         string
			time_updated:  string
			display_name!: string
			query_properties!: [...{
				identity_metric?:   string
				sql_type?:          string
				collection_method!: string
				starts_with?:       string
				command?:           string
				arguments?:         string
				in_param_details?: [...{
					in_param_position!: int
					in_param_value!:    string
				}]
				script_details?: [...{
					content!: string
					name!:    string
				}]
				sql_details?: [...{
					content!:          string
					script_file_name?: *" " | string
				}]
				delimiter?:          string
				jmx_attributes?:     string
				managed_bean_query?: string
				out_param_details?: [...{
					out_param_position!: int
					out_param_type!:     string
				}]
				is_metric_service_enabled?: bool
				auto_row_prefix?:           string
			}]
			time_created:               string
			resource_uri:               string
			compartment_id!:            string
			enabled_on_resources_count: int
			resource_type!:             string
			collection_recurrences!:    string
			description?:               string
		}
	}
	arguments: {
		baselineable_metric: {
			resource_type?:  string
			resource_group?: string
			namespace!:      string
			name?:           string
			column!:         string
			compartment_id!: string
		}
		monitored_resource_type: {
			defined_tags?: [_]: string
			metadata?: [...{
				unique_property_sets?: [...{
					properties!: [...string]
				}]
				valid_properties_for_create?: [...string]
				valid_properties_for_update?: [...string]
				valid_property_values?: [_]: string
				format!: string
				agent_properties?: [...string]
				required_properties?: [...string]
			}]
			source_type?:       string
			display_name?:      string
			resource_category?: string
			freeform_tags?: [_]: string
			metric_namespace?: string
			name!:             string
			description?:      string
			compartment_id!:   string
		}
		metric_extension_metric_extension_on_given_resources_management: {
			metric_extension_id!: string
			resource_ids!: [...string]
			enable_metric_extension_on_given_resources!: bool
		}
		monitored_resource_task: {
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			name?:           string
			compartment_id!: string
			task_details!: [...{
				type!:                                          string
				external_id_mapping?:                           string
				availability_proxy_metric_collection_interval?: int
				lifecycle_status_mappings_for_up_status?: [...string]
				resource_name_filter?: string
				console_path_prefix?:  string
				availability_proxy_metrics?: [...string]
				resource_type_mapping?:              string
				namespace!:                          string
				resource_type_filter?:               string
				source!:                             string
				resource_name_mapping?:              string
				resource_group?:                     string
				should_use_metrics_flow_for_status?: bool
				service_base_url?:                   string
			}]
		}
		monitored_resources_search: {
			name_contains?:       string
			external_id?:         string
			management_agent_id?: string
			compartment_ids?: [...string]
			time_created_greater_than_or_equal_to?: string
			property_equals?: [_]: string
			resource_category?:      string
			time_created_less_than?: string
			host_name_contains?:     string
			exclude_fields?: [...string]
			host_name?:              string
			source_type?:            string
			time_updated_less_than?: string
			lifecycle_states?: [...string]
			name?:               string
			compartment_id!:     string
			resource_time_zone?: string
			type?:               string
			license?:            string
			fields?: [...string]
			time_updated_greater_than_or_equal_to?: string
			state?:                                 string
		}
		monitored_resources_list_member: {
			monitored_resource_id!:   string
			destination_resource_id?: string
			limit_level?:             int
		}
		process_set: {
			compartment_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			display_name!: string
			specification!: [...{
				items!: [...{
					label?: string, process_command?: string, process_line_regex_pattern?: string, process_user?: string
				}]
			}]
		}
		discovery_job: {
			defined_tags?: [_]: string
			discovery_client?:                              string
			should_propagate_tags_to_discovered_resources?: bool
			discovery_details!: [...{
				resource_name!: string
				resource_type!: string
				credentials?: [...{
					items!: [...{
						credential_name!: string, credential_type!: string, properties!: [...{
									properties_map?: [_]:     string
						}]
					}]
				}]
				license?: string
				tags?: [...{
					properties_map?: [_]: string
				}]
				agent_id!: string
				properties!: [...{
					properties_map?: [_]: string
				}]
			}]
			discovery_type?: string
			compartment_id!: string
			freeform_tags?: [_]: string
		}
		maintenance_windows_stop: maintenance_window_id!: string
		monitored_resource: {
			defined_tags?: [_]: string
			name!: string
			additional_credentials?: [...{
				description?: string
				key_id?:      string
				name?:        string
				properties?: [...{
					name?:  string
					value?: string
				}]
				source?:          string
				type?:            string
				credential_type?: string
			}]
			external_resource_id?: string
			type!:                 string
			additional_aliases?: [...{
				name!:   string
				source!: string
				credential!: [...{
					source!:  string
					name!:    string
					service!: string
				}]
			}]
			freeform_tags?: [_]: string
			properties?: [...{
				name?:  string
				value?: string
			}]
			compartment_id!:     string
			resource_time_zone?: string
			credentials?: [...{
				properties?: [...{
					name?:  string
					value?: string
				}]
				source?:          string
				type?:            string
				credential_type?: string
				description?:     string
				key_id?:          string
				name?:            string
			}]
			management_agent_id?: string
			external_id?:         string
			database_connection_details?: [...{
				db_id?:          string
				db_unique_name?: string
				ssl_secret_id?:  string
				port!:           int
				protocol!:       string
				service_name!:   string
				connector_id?:   string
			}]
			host_name?: string
			aliases?: [...{
				name!:   string
				source!: string
				credential!: [...{
					name!:    string
					service!: string
					source!:  string
				}]
			}]
			license?:      string
			display_name?: string
		}
		monitored_resources_associate_monitored_resource: {
			source_resource_id!:      string
			association_type!:        string
			compartment_id!:          string
			destination_resource_id!: string
		}
		metric_extensions_test_management: {
			resource_ids!: [...string]
			metric_extension_id!: string
		}
		monitored_resources_search_association: {
			source_resource_id?:        string
			source_resource_name?:      string
			source_resource_type?:      string
			compartment_id!:            string
			association_type?:          string
			destination_resource_name?: string
			destination_resource_type?: string
			destination_resource_id?:   string
		}
		config: {
			resource_type?: string
			defined_tags?: [_]: string
			display_name?: string
			license?:      string
			freeform_tags?: [_]: string
			compartment_id!: string
			config_type!:    string
			is_enabled?:     bool
		}
		maintenance_window: {
			name!: string
			resources!: [...{
				are_members_included?: bool
				resource_id!:          string
			}]
			schedule!: [...{
				time_maintenance_window_start?:  string
				schedule_type!:                  string
				maintenance_window_duration?:    string
				maintenance_window_recurrences?: string
				time_maintenance_window_end?:    string
			}]
			compartment_id!: string
			description?:    string
		}
		maintenance_windows_retry_failed_operation: maintenance_window_id!: string
		metric_extension: {
			display_name!: string
			metric_list!: [...{
				name!:               string
				compute_expression?: *" " | string
				display_name?:       *" " | string
				is_dimension?:       bool
				is_hidden?:          bool
				metric_category?:    string
				unit?:               *" " | string
				data_type!:          string
			}]
			name!:                   string
			collection_recurrences!: string
			query_properties!: [...{
				in_param_details?: [...{
					in_param_value!:    string
					in_param_position!: int
				}]
				collection_method!: string
				identity_metric?:   string
				sql_details?: [...{
					script_file_name?: *" " | string
					content!:          string
				}]
				command?:            string
				jmx_attributes?:     string
				managed_bean_query?: string
				out_param_details?: [...{
					out_param_position!: int
					out_param_type!:     string
				}]
				delimiter?:   string
				starts_with?: string
				script_details?: [...{
					content!: string
					name!:    string
				}]
				arguments?:                 string
				sql_type?:                  string
				is_metric_service_enabled?: bool
				auto_row_prefix?:           string
			}]
			description?:     string
			resource_type!:   string
			publish_trigger?: bool
			compartment_id!:  string
		}
	}
}
#data: {
	discovery_jobs: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		name?:           string
	}
	maintenance_window: maintenance_window_id!: string
	baselineable_metrics_evaluate: {
		resource_id!:            string
		baselineable_metric_id!: string
		items!: [...{
			evaluation_data_points!: [...{
				timestamp!: string
				value!:     float
			}]
			training_data_points!: [...{
				timestamp!: string
				value!:     float
			}]
			dimensions?: [_]: string
		}]
	}
	configs: {
		state?: string
		type?:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	maintenance_windows: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:    string
		lifecycle_details?: string
		name?:              string
		status?:            string
	}
	monitored_resource_task: monitored_resource_task_id!: string
	process_set: process_set_id!: string
	discovery_job_logs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		discovery_job_id!: string
		log_type?:         string
	}
	metric_extensions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:         string
		enabled_on_resource_id?: string
		name?:                   string
		resource_type?:          string
		state?:                  string
		status?:                 string
	}
	monitored_resource: monitored_resource_id!: string
	monitored_resource_tasks: {
		compartment_id!: string
		status?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	monitored_resource_type: monitored_resource_type_id!: string
	process_sets: {
		compartment_id!: string
		display_name?:   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	baselineable_metric: baselineable_metric_id!: string
	baselineable_metrics: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:         string
		metric_namespace?:       string
		resource_group?:         string
		baselineable_metric_id?: string
		is_out_of_box?:          bool
		name?:                   string
		resource_type?:          string
	}
	config: config_id!: string
	discovery_job: discovery_job_id!: string
	metric_extension: metric_extension_id!: string
	monitored_resources: {
		name?:            string
		status?:          string
		work_request_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	monitored_resource_types: {
		exclude_fields?: [...string]
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		is_exclude_system_types?: bool
		metric_namespace?:        string
		name?:                    string
		status?:                  string
		fields?: [...string]
		compartment_id!: string
	}
}

