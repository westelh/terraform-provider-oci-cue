package stack_monitoring

#resource: {
	attributes: {
		discovery_job: {
			user_id: string
			discovery_details!: [...{
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
				resource_name!: string
				resource_type!: string
			}]
			status_message:                                 string
			time_updated:                                   string
			discovery_type?:                                string
			should_propagate_tags_to_discovered_resources?: bool
			status:                                         string
			defined_tags?: [_]: string
			compartment_id!: string
			system_tags: [_]: string
			discovery_client?: string
			state:             string
			tenant_id:         string
			freeform_tags?: [_]: string
		}
		maintenance_windows_retry_failed_operation: maintenance_window_id!: string
		metric_extension: {
			state:           string
			time_updated:    string
			tenant_id:       string
			time_created:    string
			compartment_id!: string
			metric_list!: [...{
				unit?:               *" " | string
				data_type!:          string
				name!:               string
				compute_expression?: *" " | string
				display_name?:       *" " | string
				is_dimension?:       bool
				is_hidden?:          bool
				metric_category?:    string
			}]
			resource_type!:             string
			name!:                      string
			resource_uri:               string
			created_by:                 string
			description?:               string
			enabled_on_resources_count: int
			collection_method:          string
			publish_trigger?:           bool
			display_name!:              string
			last_updated_by:            string
			enabled_on_resources: [...{
				resource_id: string
			}]
			query_properties!: [...{
				is_metric_service_enabled?: bool
				identity_metric?:           string
				managed_bean_query?:        string
				command?:                   string
				sql_details?: [...{
					content!:          string
					script_file_name?: *" " | string
				}]
				collection_method!: string
				starts_with?:       string
				in_param_details?: [...{
					in_param_position!: int
					in_param_value!:    string
				}]
				auto_row_prefix?: string
				jmx_attributes?:  string
				sql_type?:        string
				script_details?: [...{
					content!: string
					name!:    string
				}]
				arguments?: string
				delimiter?: string
				out_param_details?: [...{
					out_param_position!: int
					out_param_type!:     string
				}]
			}]
			collection_recurrences!: string
			status:                  string
		}
		monitored_resource_task: {
			system_tags: [_]: string
			defined_tags?: [_]: string
			compartment_id!: string
			name?:           string
			task_details!: [...{
				type!: string
				lifecycle_status_mappings_for_up_status?: [...string]
				resource_name_filter?:                          string
				should_use_metrics_flow_for_status?:            bool
				namespace!:                                     string
				external_id_mapping?:                           string
				availability_proxy_metric_collection_interval?: int
				source!:                                        string
				resource_group?:                                string
				resource_type_filter?:                          string
				resource_type_mapping?:                         string
				service_base_url?:                              string
				resource_name_mapping?:                         string
				availability_proxy_metrics?: [...string]
				console_path_prefix?: string
			}]
			tenant_id:    string
			time_updated: string
			freeform_tags?: [_]: string
			state:        string
			time_created: string
			work_request_ids: [...string]
		}
		monitored_resource_type: {
			metric_namespace?: string
			display_name?:     string
			time_created:      string
			description?:      string
			metadata?: [...{
				agent_properties?: [...string]
				required_properties?: [...string]
				unique_property_sets?: [...{
					properties!: [...string]
				}]
				valid_properties_for_create?: [...string]
				valid_properties_for_update?: [...string]
				valid_property_values?: [_]: string
				format!: string
			}]
			time_updated: string
			defined_tags?: [_]: string
			resource_category?: string
			name!:              string
			state:              string
			freeform_tags?: [_]: string
			source_type?:    string
			compartment_id!: string
			system_tags: [_]: string
		}
		baselineable_metric: {
			defined_tags: [_]: string
			compartment_id!:   string
			resource_type?:    string
			time_last_updated: string
			name?:             string
			resource_group?:   string
			freeform_tags: [_]: string
			system_tags: [_]: string
			is_out_of_box:   bool
			namespace!:      string
			column!:         string
			last_updated_by: string
			state:           string
			tenancy_id:      string
			time_created:    string
			created_by:      string
		}
		maintenance_window: {
			compartment_id!: string
			resources!: [...{
				resource_id!:          string
				are_members_included?: bool
			}]
			resources_details: [...{
				number_of_members: int
				resource_id:       string
				type:              string
				name:              string
			}]
			state:             string
			lifecycle_details: string
			time_created:      string
			name!:             string
			schedule!: [...{
				schedule_type!:                  string
				maintenance_window_duration?:    string
				maintenance_window_recurrences?: string
				time_maintenance_window_end?:    string
				time_maintenance_window_start?:  string
			}]
			description?: string
			time_updated: string
		}
		metric_extension_metric_extension_on_given_resources_management: {
			enable_metric_extension_on_given_resources!: bool
			metric_extension_id!:                        string
			resource_ids!: [...string]
		}
		monitored_resources_search: {
			time_created_greater_than_or_equal_to?: string
			type?:                                  string
			resource_category?:                     string
			host_name?:                             string
			property_equals?: [_]: string
			lifecycle_states?: [...string]
			name?:        string
			source_type?: string
			external_id?: string
			compartment_ids?: [...string]
			management_agent_id?: string
			host_name_contains?:  string
			license?:             string
			items: [...{
				type:                string
				management_agent_id: string
				time_created:        string
				state:               string
				system_tags: [_]: string
				host_name:         string
				external_id:       string
				resource_category: string
				display_name:      string
				id:                string
				compartment_id:    string
				properties: [...{
					name:  string
					value: string
				}]
				license:      string
				name:         string
				time_updated: string
				freeform_tags: [_]: string
				source_type: string
				defined_tags: [_]: string
			}]
			time_created_less_than?:                string
			time_updated_greater_than_or_equal_to?: string
			time_updated_less_than?:                string
			state?:                                 string
			fields?: [...string]
			resource_time_zone?: string
			compartment_id!:     string
			exclude_fields?: [...string]
			name_contains?: string
		}
		monitored_resources_search_association: {
			association_type?: string
			items: [...{
				destination_resource_id: string
				source_resource_details: [...{
					name:           string
					type:           string
					compartment_id: string
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
			destination_resource_type?: string
			source_resource_name?:      string
			source_resource_type?:      string
			destination_resource_id?:   string
			source_resource_id?:        string
		}
		config: {
			time_created:   string
			license?:       string
			state:          string
			resource_type?: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_updated:    string
			config_type!:    string
			compartment_id!: string
			is_enabled?:     bool
		}
		metric_extensions_test_management: {
			metric_extension_id!: string
			resource_ids!: [...string]
			test_run_id:                  string
			test_run_metric_suffix:       string
			test_run_namespace_name:      string
			test_run_resource_group_name: string
		}
		monitored_resources_list_member: {
			limit_level?: int
			items: [...{
				defined_tags: [_]: string
				freeform_tags: [_]: string
				resource_display_name: string
				state:                 string
				system_tags: [_]: string
				resource_type:     string
				compartment_id:    string
				resource_category: string
				external_id:       string
				host_name:         string
				parent_id:         string
				source_type:       string
				license:           string
				resource_name:     string
				resource_id:       string
			}]
			monitored_resource_id!:   string
			destination_resource_id?: string
		}
		process_set: {
			display_name!: string
			system_tags: [_]: string
			time_updated: string
			specification!: [...{
				items!: [...{
					label?: string, process_command?: string, process_line_regex_pattern?: string, process_user?: string
				}]
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state:           string
			compartment_id!: string
			time_created:    string
			revision:        string
		}
		maintenance_windows_stop: maintenance_window_id!: string
		monitored_resources_associate_monitored_resource: {
			category:  string
			tenant_id: string
			source_resource_details: [...{
				name:           string
				type:           string
				compartment_id: string
			}]
			time_created:             string
			destination_resource_id!: string
			association_type!:        string
			compartment_id!:          string
			source_resource_id!:      string
			destination_resource_details: [...{
				compartment_id: string
				name:           string
				type:           string
			}]
		}
		monitored_resource: {
			host_name?: string
			freeform_tags?: [_]: string
			time_created:      string
			tenant_id:         string
			resource_category: string
			defined_tags?: [_]: string
			time_updated:          string
			name!:                 string
			external_resource_id?: string
			display_name?:         string
			system_tags: [_]: string
			compartment_id!: string
			aliases?: [...{
				credential!: [...{
					name!:    string
					service!: string
					source!:  string
				}]
				name!:   string
				source!: string
			}]
			resource_time_zone?: string
			state:               string
			additional_credentials?: [...{
				properties?: [...{
					value?: string
					name?:  string
				}]
				source?:          string
				type?:            string
				credential_type?: string
				description?:     string
				key_id?:          string
				name?:            string
			}]
			external_id?: string
			license?:     string
			additional_aliases?: [...{
				name!:   string
				source!: string
				credential!: [...{
					source!:  string
					name!:    string
					service!: string
				}]
			}]
			management_agent_id?: string
			source_type:          string
			type!:                string
			database_connection_details?: [...{
				db_id?:          string
				db_unique_name?: string
				ssl_secret_id?:  string
				port!:           int
				protocol!:       string
				service_name!:   string
				connector_id?:   string
			}]
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
			properties?: [...{
				name?:  string
				value?: string
			}]
		}
	}
	arguments: {
		discovery_job: {
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			discovery_client?:                              string
			discovery_type?:                                string
			should_propagate_tags_to_discovered_resources?: bool
			compartment_id!:                                string
			discovery_details!: [...{
				properties!: [...{
					properties_map?: [_]: string
				}]
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
			}]
		}
		maintenance_windows_retry_failed_operation: maintenance_window_id!: string
		metric_extension: {
			metric_list!: [...{
				compute_expression?: *" " | string
				display_name?:       *" " | string
				is_dimension?:       bool
				is_hidden?:          bool
				metric_category?:    string
				unit?:               *" " | string
				data_type!:          string
				name!:               string
			}]
			resource_type!:          string
			publish_trigger?:        bool
			collection_recurrences!: string
			display_name!:           string
			description?:            string
			name!:                   string
			query_properties!: [...{
				auto_row_prefix?: string
				command?:         string
				arguments?:       string
				sql_details?: [...{
					content!:          string
					script_file_name?: *" " | string
				}]
				identity_metric?:    string
				managed_bean_query?: string
				script_details?: [...{
					name!:    string
					content!: string
				}]
				delimiter?: string
				in_param_details?: [...{
					in_param_position!: int
					in_param_value!:    string
				}]
				is_metric_service_enabled?: bool
				out_param_details?: [...{
					out_param_type!:     string
					out_param_position!: int
				}]
				sql_type?:          string
				jmx_attributes?:    string
				collection_method!: string
				starts_with?:       string
			}]
			compartment_id!: string
		}
		monitored_resource_task: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			task_details!: [...{
				type!: string
				lifecycle_status_mappings_for_up_status?: [...string]
				resource_type_filter?:               string
				should_use_metrics_flow_for_status?: bool
				resource_group?:                     string
				namespace!:                          string
				resource_type_mapping?:              string
				availability_proxy_metrics?: [...string]
				source!:                                        string
				resource_name_mapping?:                         string
				resource_name_filter?:                          string
				availability_proxy_metric_collection_interval?: int
				console_path_prefix?:                           string
				service_base_url?:                              string
				external_id_mapping?:                           string
			}]
			name?:           string
			compartment_id!: string
		}
		monitored_resource_type: {
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			name!:           string
			metadata?: [...{
				valid_properties_for_create?: [...string]
				valid_properties_for_update?: [...string]
				valid_property_values?: [_]: string
				format!: string
				agent_properties?: [...string]
				required_properties?: [...string]
				unique_property_sets?: [...{
					properties!: [...string]
				}]
			}]
			source_type?: string
			defined_tags?: [_]: string
			resource_category?: string
			description?:       string
			metric_namespace?:  string
		}
		baselineable_metric: {
			column!:         string
			compartment_id!: string
			resource_type?:  string
			namespace!:      string
			name?:           string
			resource_group?: string
		}
		maintenance_window: {
			compartment_id!: string
			name!:           string
			resources!: [...{
				resource_id!:          string
				are_members_included?: bool
			}]
			schedule!: [...{
				maintenance_window_duration?:    string
				maintenance_window_recurrences?: string
				time_maintenance_window_end?:    string
				time_maintenance_window_start?:  string
				schedule_type!:                  string
			}]
			description?: string
		}
		metric_extension_metric_extension_on_given_resources_management: {
			metric_extension_id!: string
			resource_ids!: [...string]
			enable_metric_extension_on_given_resources!: bool
		}
		monitored_resources_search: {
			host_name?:          string
			resource_category?:  string
			host_name_contains?: string
			exclude_fields?: [...string]
			time_updated_greater_than_or_equal_to?: string
			compartment_ids?: [...string]
			license?:                string
			time_updated_less_than?: string
			compartment_id!:         string
			property_equals?: [_]: string
			name?:                   string
			state?:                  string
			management_agent_id?:    string
			time_created_less_than?: string
			lifecycle_states?: [...string]
			resource_time_zone?:                    string
			source_type?:                           string
			time_created_greater_than_or_equal_to?: string
			fields?: [...string]
			external_id?:   string
			name_contains?: string
			type?:          string
		}
		monitored_resources_search_association: {
			destination_resource_id?:   string
			source_resource_id?:        string
			source_resource_name?:      string
			source_resource_type?:      string
			association_type?:          string
			destination_resource_name?: string
			destination_resource_type?: string
			compartment_id!:            string
		}
		config: {
			is_enabled?: bool
			defined_tags?: [_]: string
			config_type!:   string
			resource_type?: string
			license?:       string
			display_name?:  string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		metric_extensions_test_management: {
			metric_extension_id!: string
			resource_ids!: [...string]
		}
		monitored_resources_list_member: {
			monitored_resource_id!:   string
			destination_resource_id?: string
			limit_level?:             int
		}
		process_set: {
			display_name!: string
			specification!: [...{
				items!: [...{
					process_user?: string, label?: string, process_command?: string, process_line_regex_pattern?: string
				}]
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		maintenance_windows_stop: maintenance_window_id!: string
		monitored_resources_associate_monitored_resource: {
			compartment_id!:          string
			destination_resource_id!: string
			source_resource_id!:      string
			association_type!:        string
		}
		monitored_resource: {
			properties?: [...{
				value?: string
				name?:  string
			}]
			resource_time_zone?: string
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
			external_id?: string
			host_name?:   string
			aliases?: [...{
				credential!: [...{
					service!: string
					source!:  string
					name!:    string
				}]
				name!:   string
				source!: string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			type!:                string
			management_agent_id?: string
			database_connection_details?: [...{
				ssl_secret_id?:  string
				port!:           int
				protocol!:       string
				service_name!:   string
				connector_id?:   string
				db_id?:          string
				db_unique_name?: string
			}]
			external_resource_id?: string
			name!:                 string
			additional_credentials?: [...{
				source?:          string
				type?:            string
				credential_type?: string
				description?:     string
				key_id?:          string
				name?:            string
				properties?: [...{
					name?:  string
					value?: string
				}]
			}]
			display_name?:   string
			license?:        string
			compartment_id!: string
			additional_aliases?: [...{
				source!: string
				credential!: [...{
					service!: string
					source!:  string
					name!:    string
				}]
				name!: string
			}]
		}
	}
}
#data: {
	monitored_resource_task: monitored_resource_task_id!: string
	process_sets: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	baselineable_metric: baselineable_metric_id!: string
	baselineable_metrics: {
		baselineable_metric_id?: string
		metric_namespace?:       string
		resource_group?:         string
		resource_type?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		is_out_of_box?:  bool
		name?:           string
	}
	configs: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
		type?:           string
	}
	discovery_job: discovery_job_id!: string
	metric_extension: metric_extension_id!: string
	discovery_jobs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
	}
	maintenance_window: maintenance_window_id!: string
	monitored_resource_type: monitored_resource_type_id!: string
	process_set: process_set_id!: string
	metric_extensions: {
		status?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:         string
		enabled_on_resource_id?: string
		name?:                   string
		resource_type?:          string
		state?:                  string
	}
	monitored_resource: monitored_resource_id!: string
	monitored_resource_tasks: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		status?:         string
	}
	monitored_resource_types: {
		exclude_fields?: [...string]
		fields?: [...string]
		metric_namespace?: string
		name?:             string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:          string
		is_exclude_system_types?: bool
		status?:                  string
	}
	baselineable_metrics_evaluate: {
		baselineable_metric_id!: string
		items!: [...{
			evaluation_data_points!: [...{
				value!:     float
				timestamp!: string
			}]
			training_data_points!: [...{
				timestamp!: string
				value!:     float
			}]
			dimensions?: [_]: string
		}]
		resource_id!: string
	}
	config: config_id!: string
	discovery_job_logs: {
		discovery_job_id!: string
		log_type?:         string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	maintenance_windows: {
		name?:   string
		status?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:    string
		lifecycle_details?: string
	}
	monitored_resources: {
		status?:          string
		work_request_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
	}
}

