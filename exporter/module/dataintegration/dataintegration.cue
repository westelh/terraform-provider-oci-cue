package dataintegration

#resource: {
	attributes: {
		workspace: {
			registry_name?: string
			defined_tags?: [_]: string
			subnet_id?:          string
			dns_server_ip?:      string
			is_force_operation?: bool
			description?:        string
			state:               string
			state_message:       string
			vcn_id?:             string
			freeform_tags?: [_]: string
			compartment_id!:             string
			endpoint_compartment_id?:    string
			is_private_network_enabled?: bool
			display_name!:               string
			endpoint_id?:                string
			time_updated:                string
			registry_id?:                string
			time_created:                string
			endpoint_name?:              string
			dns_server_zone?:            string
			registry_compartment_id?:    string
			quiesce_timeout?:            int
		}
		workspace_application_schedule: {
			description?:     string
			object_version?:  int
			application_key!: string
			identifier!:      string
			frequency_details?: [...{
				week_of_month?:     string
				model_type!:        string
				custom_expression?: string
				day_of_week?:       string
				days?: [...int]
				frequency?: string
				interval?:  int
				time?: [...{
					hour?:   int
					minute?: int
					second?: int
				}]
			}]
			metadata: [...{
				aggregator: [...{
					description: string
					identifier:  string
					key:         string
					name:        string
					type:        string
				}]
				labels: [...string]
				updated_by:       string
				registry_version: int
				aggregator_key:   string
				info_fields: [_]: string
				time_updated: string
				count_statistics: [...{
					object_type_count_list: [...{
						object_count: string, object_type: string
					}]
				}]
				updated_by_name: string
				identifier_path: string
				is_favorite:     bool
				created_by:      string
				created_by_name: string
				time_created:    string
			}]
			timezone?: string
			parent_ref: [...{
				parent:      string
				root_doc_id: string
			}]
			model_type:                      string
			is_daylight_adjustment_enabled?: bool
			registry_metadata?: [...{
				aggregator_key?: string
				is_favorite?:    bool
				key?:            string
				labels?: [...string]
				registry_version?: int
			}]
			model_version?: string
			name!:          string
			workspace_id!:  string
			key?:           string
			object_status?: int
		}
		workspace_application_task_schedule: {
			parent_ref?: [...{
				parent?:      string
				root_doc_id?: string
			}]
			retry_delay?:       float
			expected_duration?: float
			auth_mode?:         string
			metadata: [...{
				registry_version: int
				info_fields: [_]: string
				aggregator_key:  string
				identifier_path: string
				is_favorite:     bool
				time_updated:    string
				updated_by_name: string
				time_created:    string
				aggregator: [...{
					description: string
					identifier:  string
					key:         string
					name:        string
					type:        string
				}]
				created_by_name: string
				updated_by:      string
				count_statistics: [...{
					object_type_count_list: [...{
						object_count: string, object_type: string
					}]
				}]
				created_by: string
				labels: [...string]
			}]
			model_type:            string
			key?:                  string
			model_version?:        string
			application_key!:      string
			number_of_retries?:    int
			retry_attempts:        int
			object_status?:        int
			name!:                 string
			next_run_time_millis?: string
			last_run_details: [...{
				parent_ref: [...{
					parent:      string
					root_doc_id: string
				}]
				identifier:           string
				last_run_time_millis: string
				name:                 string
				description:          string
				model_version:        string
				object_status:        int
				key:                  string
				object_version:       int
				model_type:           string
			}]
			config_provider_delegate?: string
			is_enabled?:               bool
			workspace_id!:             string
			schedule_ref?: [...{
				name?: string
				frequency_details?: [...{
					week_of_month?:     string
					model_type!:        string
					custom_expression?: string
					day_of_week?:       string
					days?: [...int]
					frequency?: string
					interval?:  int
					time?: [...{
						hour?:   int
						minute?: int
						second?: int
					}]
				}]
				identifier?:                     string
				is_daylight_adjustment_enabled?: bool
				metadata?: [...{
					is_favorite?:     bool
					identifier_path?: string
					time_updated?:    string
					updated_by?:      string
					created_by_name?: string
					labels?: [...string]
					aggregator_key?: string
					info_fields?: [_]: string
					aggregator?: [...{
						name?:        string
						type?:        string
						description?: string
						identifier?:  string
						key?:         string
					}]
					count_statistics?: [...{
						object_type_count_list!: [...{
							object_count?: string, object_type?: string
						}]
					}]
					created_by?:       string
					registry_version?: int
					time_created?:     string
					updated_by_name?:  string
				}]
				object_status?: int
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				timezone?:       string
				model_type?:     string
				object_version?: int
				description?:    string
				key?:            string
				model_version?:  string
			}]
			description?:           string
			end_time_millis?:       string
			is_concurrent_allowed?: bool
			registry_metadata?: [...{
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
				key?:              string
			}]
			retry_delay_unit?:       string
			is_backfill_enabled?:    bool
			object_version?:         int
			identifier!:             string
			expected_duration_unit?: string
			start_time_millis?:      string
		}
		workspace_import_request: {
			created_by: string
			import_conflict_resolution?: [...{
				import_conflict_resolution_type!: string
				duplicate_prefix?:                string
				duplicate_suffix?:                string
			}]
			status:  string
			bucket!: string
			imported_objects: [...{
				object_version:         string
				name_path:              string
				new_key:                string
				aggregator_key:         string
				identifier:             string
				old_key:                string
				resolution_action:      string
				name:                   string
				time_updated_in_millis: string
				object_type:            string
			}]
			total_imported_object_count:         int
			object_key_for_import?:              string
			file_name!:                          string
			are_data_asset_references_included?: bool
			object_storage_region?:              string
			object_storage_tenancy_id?:          string
			error_messages: [_]: string
			workspace_id!:          string
			time_ended_in_millis:   string
			time_started_in_millis: string
			key:                    string
			name:                   string
		}
		workspace_task: {
			poll_rest_call_config?: [...{
				model_type?: string
				config_values?: [...{
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
					config_param_values?: [...{
						request_payload?: [...{
							ref_value?: [...{
								model_type?: string
								config_values?: [...{
									config_param_values?: [...{
										data_param?: [...{
											string_value?: string
										}]
									}]
								}]
								key?:  string
								name?: string
							}]
							parameter_value?: string
						}]
						poll_max_duration?: [...{
							object_value?: float
						}]
						poll_max_duration_unit?: [...{
							string_value?: string
						}]
						poll_interval?: [...{
							object_value?: float
						}]
						poll_interval_unit?: [...{
							string_value?: string
						}]
						poll_condition?: [...{
							parameter_value?: string
							ref_value?: [...{
								key?:         string
								name?:        string
								model_type?:  string
								expr_string?: string
							}]
						}]
						request_url?: [...{
							string_value?: string
						}]
					}]
				}]
				method_type?: string
				request_headers?: [_]: string
				key?: string
			}]
			object_version:       int
			object_status?:       int
			identifier!:          string
			parallel_load_limit?: int
			name!:                string
			metadata: [...{
				created_by_name:  string
				registry_version: int
				info_fields: [_]: string
				updated_by_name: string
				time_created:    string
				identifier_path: string
				updated_by:      string
				aggregator: [...{
					key:         string
					name:        string
					type:        string
					description: string
					identifier:  string
				}]
				is_favorite:    bool
				aggregator_key: string
				labels: [...string]
				count_statistics: [...{
					object_type_count_list: [...{
						object_count: string, object_type: string
					}]
				}]
				created_by:   string
				time_updated: string
			}]
			parent_ref?: [...{
				parent?:      string
				root_doc_id?: string
			}]
			key?: string
			cancel_rest_call_config?: [...{
				model_type?: string
				config_values?: [...{
					config_param_values?: [...{
						request_url?: [...{
							string_value?: string
						}]
						request_payload?: [...{
							parameter_value?: string
							ref_value?: [...{
								model_type?: string
								config_values?: [...{
									config_param_values?: [...{
										data_param?: [...{
											string_value?: string
										}]
									}]
								}]
								key?: string
							}]
						}]
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				method_type?: string
				request_headers?: [_]: string
				key?: string
			}]
			model_version?: string
			operation?:     string
			model_type!:    string
			output_ports?: [...{
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				config_values?: [...{
					config_param_values?: [...{
						root_object_value?: string
						string_value?:      string
						int_value?:         int
						object_value?:      string
						parameter_value?:   string
						ref_value?:         string
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				model_version?: string
				object_status?: int
				port_type?:     string
				description?:   string
				key?:           string
				name?:          string
				model_type!:    string
				fields?: [...string]
			}]
			api_call_mode?: string
			execute_rest_call_config?: [...{
				key?:        string
				model_type?: string
				config_values?: [...{
					config_param_values?: [...{
						request_url?: [...{
							string_value?: string
						}]
						request_payload?: [...{
							parameter_value?: string
							ref_value?: [...{
								key?:        string
								model_type?: string
								config_values?: [...{
									config_param_values?: [...{
										data_param?: [...{
											string_value?: string
										}]
									}]
								}]
							}]
						}]
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				method_type?: string
				request_headers?: [_]: string
			}]
			description?: string
			config_provider_delegate?: [...{
				bindings?: [...{
					key?: string, parameter_values?: [...{
						root_object_value?: [...{
							key?: string, model_type?: string, model_version?: string, object_status?: int
						}]
						simple_value?: string
					}]
				}]
			}]
			workspace_id!:   string
			is_single_load?: bool
			typed_expressions?: [...{
				model_version?: string
				parent_ref?: [...{
					root_doc_id?: string
					parent?:      string
				}]
				type?:          string
				name?:          string
				object_status?: int
				key?:           string
				model_type?:    string
				config_values?: [...{
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
					config_param_values?: [...{
						length?: [...{
							int_value?: int
						}]
						scale?: [...{
							int_value?: int
						}]
					}]
				}]
				description?: string
				expression?:  string
			}]
			key_map: [_]: string
			registry_metadata!: [...{
				aggregator_key!: string
				is_favorite?:    bool
				key?:            string
				labels?: [...string]
				registry_version?: int
			}]
			parameters?: [...{
				output_aggregation_type?: string
				is_output?:               bool
				name?:                    string
				config_values?: [...{
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
					config_param_values?: [...{
						config_param_value?: [...{
							int_value?:       int
							object_value?:    string
							parameter_value?: string
							ref_value?: [...{
								key?:           string
								name?:          string
								model_type?:    string
								model_version?: string
								object_status?: int
							}]
							root_object_value?: [...{
								object_status?: int
								key?:           string
								model_type?:    string
								model_version?: string
							}]
							string_value?: string
						}]
						key?: string
					}]
				}]
				is_input?:      bool
				type_name?:     string
				default_value?: string
				key?:           string
				parent_ref?: [...{
					root_doc_id?: string
					parent?:      string
				}]
				model_version?:             string
				object_status?:             int
				description?:               string
				type?:                      string
				model_type!:                string
				root_object_default_value?: string
				used_for?:                  string
			}]
			op_config_values?: [...{
				config_param_values?: [...{
					key?: string
					config_param_value?: [...{
						int_value?:       int
						object_value?:    string
						parameter_value?: string
						ref_value?: [...{
							model_type?:    string
							model_version?: string
							object_status?: int
							name?:          string
							key?:           string
						}]
						root_object_value?: [...{
							key?:           string
							model_type?:    string
							model_version?: string
							object_status?: int
						}]
						string_value?: string
					}]
				}]
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
			}]
			auth_config?: [...{
				model_type?:    string
				model_version?: string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				resource_principal_source?: string
				key?:                       string
			}]
			input_ports?: [...{
				model_version?: string
				description?:   string
				fields?: [...string]
				object_status?: int
				config_values?: [...{
					config_param_values?: [...{
						string_value?:      string
						int_value?:         int
						object_value?:      string
						parameter_value?:   string
						ref_value?:         string
						root_object_value?: string
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				key?:        string
				name?:       string
				model_type!: string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				port_type?: string
			}]
		}
		workspace_application: {
			object_status?: int
			state?:         string
			compartment_id: string
			workspace_id!:  string
			display_name?:  string
			name!:          string
			model_type!:    string
			defined_tags?: [_]: string
			registry_metadata?: [...{
				aggregator_key?: string
				is_favorite?:    bool
				key?:            string
				labels?: [...string]
				registry_version?: int
			}]
			model_version?: string
			key_map: [_]: string
			identifier!: string
			freeform_tags?: [_]: string
			dependent_object_metadata: [...{
				identifier:     string
				key:            string
				name:           string
				name_path:      string
				object_version: int
				type:           string
				action:         string
			}]
			published_object_metadata: [...{
				key:            string
				name:           string
				name_path:      string
				object_version: int
				type:           string
				action:         string
				identifier:     string
			}]
			time_created: string
			metadata: [...{
				identifier_path:  string
				registry_version: int
				aggregator: [...{
					description: string
					identifier:  string
					key:         string
					name:        string
					type:        string
				}]
				created_by_name: string
				time_updated:    string
				info_fields: [_]: string
				aggregator_key: string
				labels: [...string]
				count_statistics: [...{
					object_type_count_list: [...{
						object_type: string, object_count: string
					}]
				}]
				created_by:      string
				time_created:    string
				updated_by:      string
				is_favorite:     bool
				updated_by_name: string
			}]
			time_patched: string
			description?: string
			source_application_info?: [...{
				copy_type?:          string
				workspace_id?:       string
				application_version: string
				last_patch_key:      string
				application_key?:    string
			}]
			application_version: int
			parent_ref: [...{
				parent:      string
				root_doc_id: string
			}]
			key?:           string
			object_version: int
			time_updated:   string
		}
		workspace_application_patch: {
			description?:     string
			object_status?:   int
			application_key!: string
			model_type:       string
			parent_ref: [...{
				parent:      string
				root_doc_id: string
			}]
			dependent_object_metadata: [...{
				identifier:     string
				key:            string
				name:           string
				name_path:      string
				object_version: int
				type:           string
				action:         string
			}]
			patch_type!:  string
			patch_status: string
			object_keys?: [...string]
			object_version: int
			name!:          string
			error_messages: [_]: string
			key_map: [_]: string
			workspace_id!:  string
			model_version?: string
			metadata: [...{
				identifier_path: string
				time_created:    string
				updated_by_name: string
				info_fields: [_]: string
				is_favorite:      bool
				updated_by:       string
				created_by_name:  string
				registry_version: int
				created_by:       string
				count_statistics: [...{
					object_type_count_list: [...{
						object_count: string, object_type: string
					}]
				}]
				aggregator: [...{
					type:        string
					description: string
					identifier:  string
					key:         string
					name:        string
				}]
				aggregator_key: string
				time_updated:   string
				labels: [...string]
			}]
			identifier?: string
			registry_metadata?: [...{
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
				key?:              string
			}]
			patch_object_metadata: [...{
				name_path:      string
				object_version: int
				type:           string
				action:         string
				identifier:     string
				key:            string
				name:           string
			}]
			time_patched:        string
			key?:                string
			application_version: int
		}
		workspace_export_request: {
			exported_items: [...{
				object_type:            string
				object_version:         string
				time_updated_in_millis: string
				aggregator_key:         string
				identifier:             string
				key:                    string
				name:                   string
				name_path:              string
			}]
			file_name?:           string
			referenced_items:     string
			status:               string
			created_by:           string
			time_ended_in_millis: string
			error_messages: [_]: string
			bucket!:                     string
			name:                        string
			time_started_in_millis:      string
			key:                         string
			total_exported_object_count: int
			workspace_id!:               string
			filters?: [...string]
			object_storage_tenancy_id?:   string
			is_object_overwrite_enabled?: bool
			object_keys?: [...string]
			object_storage_region?:   string
			are_references_included?: bool
		}
		workspace_folder: {
			name!:          string
			workspace_id!:  string
			model_version?: string
			registry_metadata!: [...{
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
				key?:              string
				labels?: [...string]
			}]
			folder_key?: string
			key_map: [_]: string
			object_status?: int
			key?:           string
			parent_ref: [...{
				parent:      string
				root_doc_id: string
			}]
			identifier!:    string
			category_name?: string
			metadata: [...{
				is_favorite:      bool
				created_by_name:  string
				time_created:     string
				time_updated:     string
				registry_version: int
				identifier_path:  string
				labels: [...string]
				aggregator: [...{
					description: string
					identifier:  string
					key:         string
					name:        string
					type:        string
				}]
				updated_by_name: string
				info_fields: [_]: string
				updated_by: string
				created_by: string
				count_statistics: [...{
					object_type_count_list: [...{
						object_count: string, object_type: string
					}]
				}]
				aggregator_key: string
			}]
			object_version: int
			description?:   string
			model_type:     string
		}
		workspace_project: {
			key_map: [_]: string
			object_version: int
			object_status?: int
			metadata: [...{
				updated_by:      string
				time_created:    string
				aggregator_key:  string
				created_by:      string
				created_by_name: string
				identifier_path: string
				labels: [...string]
				updated_by_name: string
				time_updated:    string
				info_fields: [_]: string
				aggregator: [...{
					key:         string
					name:        string
					type:        string
					description: string
					identifier:  string
				}]
				is_favorite:      bool
				registry_version: int
				count_statistics: [...{
					object_type_count_list: [...{
						object_count: string, object_type: string
					}]
				}]
			}]
			project_key?:  string
			identifier!:   string
			workspace_id!: string
			description?:  string
			registry_metadata?: [...{
				is_favorite?: bool
				key?:         string
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
			}]
			model_type: string
			parent_ref: [...{
				parent:      string
				root_doc_id: string
			}]
			model_version?: string
			name!:          string
			key?:           string
		}
	}
	arguments: {
		workspace: {
			display_name!:            string
			endpoint_name?:           string
			dns_server_zone?:         string
			description?:             string
			endpoint_compartment_id?: string
			endpoint_id?:             string
			compartment_id!:          string
			defined_tags?: [_]: string
			is_private_network_enabled?: bool
			subnet_id?:                  string
			is_force_operation?:         bool
			registry_name?:              string
			vcn_id?:                     string
			freeform_tags?: [_]: string
			registry_compartment_id?: string
			quiesce_timeout?:         int
			dns_server_ip?:           string
			registry_id?:             string
		}
		workspace_application_schedule: {
			workspace_id!:  string
			model_version?: string
			name!:          string
			registry_metadata?: [...{
				is_favorite?: bool
				key?:         string
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
			}]
			timezone?:        string
			description?:     string
			application_key!: string
			frequency_details?: [...{
				week_of_month?:     string
				model_type!:        string
				custom_expression?: string
				day_of_week?:       string
				days?: [...int]
				frequency?: string
				interval?:  int
				time?: [...{
					hour?:   int
					minute?: int
					second?: int
				}]
			}]
			key?:                            string
			object_status?:                  int
			is_daylight_adjustment_enabled?: bool
			object_version?:                 int
			identifier!:                     string
		}
		workspace_application_task_schedule: {
			is_backfill_enabled?:      bool
			expected_duration?:        float
			key?:                      string
			next_run_time_millis?:     string
			application_key!:          string
			description?:              string
			name!:                     string
			object_status?:            int
			identifier!:               string
			auth_mode?:                string
			workspace_id!:             string
			number_of_retries?:        int
			object_version?:           int
			config_provider_delegate?: string
			expected_duration_unit?:   string
			is_enabled?:               bool
			registry_metadata?: [...{
				key?: string
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
			}]
			parent_ref?: [...{
				parent?:      string
				root_doc_id?: string
			}]
			schedule_ref?: [...{
				identifier?: string
				metadata?: [...{
					aggregator?: [...{
						name?:        string
						type?:        string
						description?: string
						identifier?:  string
						key?:         string
					}]
					identifier_path?: string
					labels?: [...string]
					time_created?:     string
					is_favorite?:      bool
					registry_version?: int
					count_statistics?: [...{
						object_type_count_list!: [...{
							object_type?: string, object_count?: string
						}]
					}]
					updated_by?:      string
					aggregator_key?:  string
					created_by?:      string
					created_by_name?: string
					updated_by_name?: string
					time_updated?:    string
					info_fields?: [_]: string
				}]
				name?:           string
				model_type?:     string
				model_version?:  string
				object_version?: int
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				frequency_details?: [...{
					day_of_week?: string
					days?: [...int]
					frequency?: string
					interval?:  int
					time?: [...{
						hour?:   int
						minute?: int
						second?: int
					}]
					week_of_month?:     string
					model_type!:        string
					custom_expression?: string
				}]
				is_daylight_adjustment_enabled?: bool
				description?:                    string
				key?:                            string
				object_status?:                  int
				timezone?:                       string
			}]
			model_version?:         string
			start_time_millis?:     string
			retry_delay_unit?:      string
			retry_delay?:           float
			end_time_millis?:       string
			is_concurrent_allowed?: bool
		}
		workspace_import_request: {
			file_name!:                          string
			workspace_id!:                       string
			are_data_asset_references_included?: bool
			object_storage_region?:              string
			object_storage_tenancy_id?:          string
			bucket!:                             string
			import_conflict_resolution?: [...{
				duplicate_prefix?:                string
				duplicate_suffix?:                string
				import_conflict_resolution_type!: string
			}]
			object_key_for_import?: string
		}
		workspace_task: {
			description?:         string
			parallel_load_limit?: int
			config_provider_delegate?: [...{
				bindings?: [...{
					key?: string, parameter_values?: [...{
						simple_value?: string, root_object_value?: [...{
								model_version?: string, object_status?: int, key?: string, model_type?: string
						}]
					}]
				}]
			}]
			api_call_mode?: string
			model_version?: string
			typed_expressions?: [...{
				expression?: string
				name?:       string
				key?:        string
				model_type?: string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				config_values?: [...{
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
					config_param_values?: [...{
						length?: [...{
							int_value?: int
						}]
						scale?: [...{
							int_value?: int
						}]
					}]
				}]
				description?:   string
				object_status?: int
				type?:          string
				model_version?: string
			}]
			key?: string
			op_config_values?: [...{
				config_param_values?: [...{
					config_param_value?: [...{
						string_value?:    string
						int_value?:       int
						object_value?:    string
						parameter_value?: string
						ref_value?: [...{
							object_status?: int
							name?:          string
							key?:           string
							model_type?:    string
							model_version?: string
						}]
						root_object_value?: [...{
							model_version?: string
							object_status?: int
							key?:           string
							model_type?:    string
						}]
					}]
					key?: string
				}]
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
			}]
			execute_rest_call_config?: [...{
				key?:        string
				model_type?: string
				config_values?: [...{
					config_param_values?: [...{
						request_payload?: [...{
							parameter_value?: string
							ref_value?: [...{
								key?:        string
								model_type?: string
								config_values?: [...{
									config_param_values?: [...{
										data_param?: [...{
											string_value?: string
										}]
									}]
								}]
							}]
						}]
						request_url?: [...{
							string_value?: string
						}]
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				method_type?: string
				request_headers?: [_]: string
			}]
			output_ports?: [...{
				model_version?: string
				description?:   string
				key?:           string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				config_values?: [...{
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
					config_param_values?: [...{
						object_value?:      string
						parameter_value?:   string
						ref_value?:         string
						root_object_value?: string
						string_value?:      string
						int_value?:         int
					}]
				}]
				fields?: [...string]
				object_status?: int
				port_type?:     string
				model_type!:    string
				name?:          string
			}]
			parent_ref?: [...{
				parent?:      string
				root_doc_id?: string
			}]
			identifier!: string
			input_ports?: [...{
				description?: string
				fields?: [...string]
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				port_type?:     string
				name?:          string
				object_status?: int
				model_type!:    string
				key?:           string
				model_version?: string
				config_values?: [...{
					config_param_values?: [...{
						string_value?:      string
						int_value?:         int
						object_value?:      string
						parameter_value?:   string
						ref_value?:         string
						root_object_value?: string
					}]
					parent_ref?: [...{
						root_doc_id?: string
						parent?:      string
					}]
				}]
			}]
			operation?: string
			registry_metadata!: [...{
				aggregator_key!: string
				is_favorite?:    bool
				key?:            string
				labels?: [...string]
				registry_version?: int
			}]
			auth_config?: [...{
				model_version?: string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				resource_principal_source?: string
				key?:                       string
				model_type?:                string
			}]
			parameters?: [...{
				model_type!:              string
				is_output?:               bool
				key?:                     string
				output_aggregation_type?: string
				type_name?:               string
				description?:             string
				is_input?:                bool
				default_value?:           string
				model_version?:           string
				object_status?:           int
				used_for?:                string
				parent_ref?: [...{
					root_doc_id?: string
					parent?:      string
				}]
				type?: string
				config_values?: [...{
					config_param_values?: [...{
						key?: string
						config_param_value?: [...{
							ref_value?: [...{
								model_version?: string
								object_status?: int
								key?:           string
								name?:          string
								model_type?:    string
							}]
							root_object_value?: [...{
								object_status?: int
								key?:           string
								model_type?:    string
								model_version?: string
							}]
							string_value?:    string
							int_value?:       int
							object_value?:    string
							parameter_value?: string
						}]
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				root_object_default_value?: string
				name?:                      string
			}]
			model_type!:     string
			name!:           string
			workspace_id!:   string
			is_single_load?: bool
			cancel_rest_call_config?: [...{
				config_values?: [...{
					config_param_values?: [...{
						request_url?: [...{
							string_value?: string
						}]
						request_payload?: [...{
							ref_value?: [...{
								config_values?: [...{
									config_param_values?: [...{
										data_param?: [...{
											string_value?: string
										}]
									}]
								}]
								key?:        string
								model_type?: string
							}]
							parameter_value?: string
						}]
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				method_type?: string
				request_headers?: [_]: string
				key?:        string
				model_type?: string
			}]
			poll_rest_call_config?: [...{
				key?:        string
				model_type?: string
				config_values?: [...{
					config_param_values?: [...{
						request_payload?: [...{
							parameter_value?: string
							ref_value?: [...{
								model_type?: string
								config_values?: [...{
									config_param_values?: [...{
										data_param?: [...{
											string_value?: string
										}]
									}]
								}]
								key?:  string
								name?: string
							}]
						}]
						poll_max_duration?: [...{
							object_value?: float
						}]
						poll_max_duration_unit?: [...{
							string_value?: string
						}]
						poll_interval?: [...{
							object_value?: float
						}]
						poll_interval_unit?: [...{
							string_value?: string
						}]
						poll_condition?: [...{
							parameter_value?: string
							ref_value?: [...{
								model_type?:  string
								expr_string?: string
								key?:         string
								name?:        string
							}]
						}]
						request_url?: [...{
							string_value?: string
						}]
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				method_type?: string
				request_headers?: [_]: string
			}]
			object_status?: int
		}
		workspace_application: {
			name!:          string
			description?:   string
			model_type!:    string
			object_status?: int
			model_version?: string
			source_application_info?: [...{
				application_key?: string
				copy_type?:       string
				workspace_id?:    string
			}]
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			workspace_id!: string
			registry_metadata?: [...{
				aggregator_key?: string
				is_favorite?:    bool
				key?:            string
				labels?: [...string]
				registry_version?: int
			}]
			display_name?: string
			key?:          string
			identifier!:   string
			state?:        string
		}
		workspace_application_patch: {
			identifier?:    string
			description?:   string
			object_status?: int
			name!:          string
			workspace_id!:  string
			registry_metadata?: [...{
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
				key?:              string
			}]
			patch_type!:      string
			application_key!: string
			model_version?:   string
			object_keys?: [...string]
			key?: string
		}
		workspace_export_request: {
			filters?: [...string]
			object_storage_tenancy_id?:   string
			is_object_overwrite_enabled?: bool
			bucket!:                      string
			file_name?:                   string
			are_references_included?:     bool
			workspace_id!:                string
			object_keys?: [...string]
			object_storage_region?: string
		}
		workspace_folder: {
			description?:   string
			folder_key?:    string
			name!:          string
			category_name?: string
			workspace_id!:  string
			key?:           string
			model_version?: string
			registry_metadata!: [...{
				aggregator_key?: string
				is_favorite?:    bool
				key?:            string
				labels?: [...string]
				registry_version?: int
			}]
			object_status?: int
			identifier!:    string
		}
		workspace_project: {
			identifier!:    string
			model_version?: string
			object_status?: int
			workspace_id!:  string
			description?:   string
			key?:           string
			project_key?:   string
			registry_metadata?: [...{
				is_favorite?: bool
				key?:         string
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
			}]
			name!: string
		}
	}
}
#data: {
	workspace_application_schedules: {
		identifier?: [...string]
		key?: [...string]
		name?: string
		type?: [...string]
		workspace_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		application_key!: string
	}
	workspace_export_requests: {
		time_started_in_millis?: string
		workspace_id!:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		export_status?:        string
		name?:                 string
		projection?:           string
		time_ended_in_millis?: string
	}
	workspace_projects: {
		fields?: [...string]
		identifier?: [...string]
		name?:          string
		name_contains?: string
		workspace_id!:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	workspace_task: {
		key!:               string
		expand_references!: string
		workspace_id!:      string
	}
	workspace_application_schedule: {
		application_key!: string
		schedule_key!:    string
		workspace_id!:    string
	}
	workspace_application_task_schedules: {
		is_enabled?: bool
		key?: [...string]
		name?: string
		identifier?: [...string]
		type?: [...string]
		workspace_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		application_key!: string
	}
	workspace_folder: {
		folder_key!:   string
		workspace_id!: string
	}
	workspace_import_requests: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		import_status?:          string
		name?:                   string
		projection?:             string
		time_ended_in_millis?:   string
		time_started_in_millis?: string
		workspace_id!:           string
	}
	workspace_tasks: {
		fields?: [...string]
		type?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		folder_id?: string
		identifier?: [...string]
		key?: [...string]
		name?:         string
		workspace_id!: string
	}
	workspaces: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
	}
	workspace_application_patches: {
		application_key!: string
		fields?: [...string]
		identifier?: [...string]
		name?:         string
		workspace_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	workspace_export_request: {
		export_request_key!: string
		workspace_id!:       string
	}
	workspace_folders: {
		aggregator_key?: string
		fields?: [...string]
		identifier?: [...string]
		name?:          string
		name_contains?: string
		workspace_id!:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	workspace_project: {
		workspace_id!: string
		project_key!:  string
	}
	workspace_applications: {
		name?:          string
		name_contains?: string
		workspace_id!:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		fields?: [...string]
		identifier?: [...string]
	}
	workspace_application: {
		workspace_id!:    string
		application_key!: string
	}
	workspace_application_patch: {
		patch_key!:       string
		application_key!: string
		workspace_id!:    string
	}
	workspace_application_task_schedule: {
		workspace_id!:      string
		task_schedule_key!: string
		application_key!:   string
	}
	workspace_import_request: {
		import_request_key!: string
		workspace_id!:       string
	}
	workspace: workspace_id!: string
}

