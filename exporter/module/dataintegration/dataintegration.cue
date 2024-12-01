package dataintegration

#resource: {
	attributes: {
		workspace_task: {
			metadata: [...{
				updated_by_name: string
				aggregator_key:  string
				time_created:    string
				created_by_name: string
				time_updated:    string
				info_fields: [_]: string
				is_favorite:      bool
				updated_by:       string
				created_by:       string
				registry_version: int
				count_statistics: [...{
					object_type_count_list: [...{
						object_count: string, object_type: string
					}]
				}]
				identifier_path: string
				labels: [...string]
				aggregator: [...{
					identifier:  string
					key:         string
					name:        string
					type:        string
					description: string
				}]
			}]
			cancel_rest_call_config?: [...{
				request_headers?: [_]: string
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
						}]
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				method_type?: string
			}]
			registry_metadata!: [...{
				is_favorite?: bool
				key?:         string
				labels?: [...string]
				registry_version?: int
				aggregator_key!:   string
			}]
			poll_rest_call_config?: [...{
				key?:        string
				model_type?: string
				config_values?: [...{
					config_param_values?: [...{
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
						request_payload?: [...{
							parameter_value?: string
							ref_value?: [...{
								name?:       string
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
						poll_max_duration?: [...{
							object_value?: float
						}]
						poll_max_duration_unit?: [...{
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
			api_call_mode?: string
			operation?:     string
			identifier!:    string
			workspace_id!:  string
			typed_expressions?: [...{
				model_version?: string
				name?:          string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				description?: string
				expression?:  string
				type?:        string
				config_values?: [...{
					config_param_values?: [...{
						length?: [...{
							int_value?: int
						}]
						scale?: [...{
							int_value?: int
						}]
					}]
					parent_ref?: [...{
						root_doc_id?: string
						parent?:      string
					}]
				}]
				model_type?:    string
				object_status?: int
				key?:           string
			}]
			model_type!: string
			key_map: [_]: string
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
			op_config_values?: [...{
				config_param_values?: [...{
					key?: string
					config_param_value?: [...{
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
			output_ports?: [...{
				config_values?: [...{
					config_param_values?: [...{
						parameter_value?:   string
						ref_value?:         string
						root_object_value?: string
						string_value?:      string
						int_value?:         int
						object_value?:      string
					}]
					parent_ref?: [...{
						root_doc_id?: string
						parent?:      string
					}]
				}]
				key?:           string
				name?:          string
				object_status?: int
				model_version?: string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				description?: string
				fields?: [...string]
				model_type!: string
				port_type?:  string
			}]
			auth_config?: [...{
				key?:           string
				model_type?:    string
				model_version?: string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				resource_principal_source?: string
			}]
			execute_rest_call_config?: [...{
				key?:        string
				model_type?: string
				config_values?: [...{
					config_param_values?: [...{
						request_payload?: [...{
							parameter_value?: string
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
						}]
						request_url?: [...{
							string_value?: string
						}]
					}]
					parent_ref?: [...{
						root_doc_id?: string
						parent?:      string
					}]
				}]
				method_type?: string
				request_headers?: [_]: string
			}]
			description?: string
			key?:         string
			parent_ref?: [...{
				parent?:      string
				root_doc_id?: string
			}]
			name!: string
			parameters?: [...{
				is_output?: bool
				type_name?: string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				default_value?:             string
				object_status?:             int
				is_input?:                  bool
				name?:                      string
				output_aggregation_type?:   string
				type?:                      string
				key?:                       string
				root_object_default_value?: string
				used_for?:                  string
				config_values?: [...{
					config_param_values?: [...{
						key?: string
						config_param_value?: [...{
							ref_value?: [...{
								object_status?: int
								key?:           string
								name?:          string
								model_type?:    string
								model_version?: string
							}]
							root_object_value?: [...{
								key?:           string
								model_type?:    string
								model_version?: string
								object_status?: int
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
				model_version?: string
				model_type!:    string
				description?:   string
			}]
			object_version:  int
			model_version?:  string
			is_single_load?: bool
			input_ports?: [...{
				name?:      string
				port_type?: string
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
				object_status?: int
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				description?: string
				fields?: [...string]
				model_version?: string
				model_type!:    string
				key?:           string
			}]
			parallel_load_limit?: int
		}
		workspace: {
			vcn_id?: string
			freeform_tags?: [_]: string
			is_private_network_enabled?: bool
			registry_compartment_id?:    string
			compartment_id!:             string
			subnet_id?:                  string
			defined_tags?: [_]: string
			time_created:             string
			description?:             string
			endpoint_id?:             string
			registry_id?:             string
			registry_name?:           string
			dns_server_zone?:         string
			endpoint_compartment_id?: string
			state:                    string
			time_updated:             string
			quiesce_timeout?:         int
			endpoint_name?:           string
			dns_server_ip?:           string
			display_name!:            string
			is_force_operation?:      bool
			state_message:            string
		}
		workspace_export_request: {
			error_messages: [_]: string
			file_name?:                   string
			is_object_overwrite_enabled?: bool
			object_keys?: [...string]
			are_references_included?:    bool
			name:                        string
			bucket!:                     string
			time_started_in_millis:      string
			status:                      string
			key:                         string
			total_exported_object_count: int
			time_ended_in_millis:        string
			exported_items: [...{
				name:                   string
				name_path:              string
				object_type:            string
				object_version:         string
				time_updated_in_millis: string
				aggregator_key:         string
				identifier:             string
				key:                    string
			}]
			referenced_items:           string
			workspace_id!:              string
			object_storage_region?:     string
			created_by:                 string
			object_storage_tenancy_id?: string
			filters?: [...string]
		}
		workspace_import_request: {
			object_storage_region?: string
			workspace_id!:          string
			import_conflict_resolution?: [...{
				import_conflict_resolution_type!: string
				duplicate_prefix?:                string
				duplicate_suffix?:                string
			}]
			bucket!:                    string
			file_name!:                 string
			object_storage_tenancy_id?: string
			created_by:                 string
			imported_objects: [...{
				identifier:             string
				name:                   string
				old_key:                string
				time_updated_in_millis: string
				resolution_action:      string
				aggregator_key:         string
				name_path:              string
				new_key:                string
				object_type:            string
				object_version:         string
			}]
			status:                              string
			total_imported_object_count:         int
			are_data_asset_references_included?: bool
			error_messages: [_]: string
			key:                    string
			object_key_for_import?: string
			time_started_in_millis: string
			name:                   string
			time_ended_in_millis:   string
		}
		workspace_project: {
			description?: string
			registry_metadata?: [...{
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
				key?:              string
			}]
			metadata: [...{
				aggregator: [...{
					description: string
					identifier:  string
					key:         string
					name:        string
					type:        string
				}]
				count_statistics: [...{
					object_type_count_list: [...{
						object_count: string, object_type: string
					}]
				}]
				updated_by_name: string
				time_updated:    string
				labels: [...string]
				identifier_path: string
				updated_by:      string
				is_favorite:     bool
				time_created:    string
				info_fields: [_]: string
				created_by_name:  string
				registry_version: int
				created_by:       string
				aggregator_key:   string
			}]
			project_key?:   string
			object_status?: int
			object_version: int
			name!:          string
			workspace_id!:  string
			key_map: [_]: string
			model_type: string
			parent_ref: [...{
				root_doc_id: string
				parent:      string
			}]
			identifier!:    string
			model_version?: string
			key?:           string
		}
		workspace_folder: {
			model_version?: string
			parent_ref: [...{
				parent:      string
				root_doc_id: string
			}]
			category_name?: string
			key?:           string
			identifier!:    string
			description?:   string
			registry_metadata!: [...{
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
				key?:              string
				labels?: [...string]
			}]
			object_status?: int
			folder_key?:    string
			metadata: [...{
				created_by_name: string
				aggregator: [...{
					identifier:  string
					key:         string
					name:        string
					type:        string
					description: string
				}]
				updated_by_name: string
				info_fields: [_]: string
				is_favorite:      bool
				identifier_path:  string
				time_updated:     string
				time_created:     string
				created_by:       string
				updated_by:       string
				aggregator_key:   string
				registry_version: int
				labels: [...string]
				count_statistics: [...{
					object_type_count_list: [...{
						object_type: string, object_count: string
					}]
				}]
			}]
			model_type:     string
			object_version: int
			name!:          string
			workspace_id!:  string
			key_map: [_]: string
		}
		workspace_application: {
			defined_tags?: [_]: string
			dependent_object_metadata: [...{
				type:           string
				action:         string
				identifier:     string
				key:            string
				name:           string
				name_path:      string
				object_version: int
			}]
			workspace_id!: string
			description?:  string
			key?:          string
			published_object_metadata: [...{
				identifier:     string
				key:            string
				name:           string
				name_path:      string
				object_version: int
				type:           string
				action:         string
			}]
			time_patched: string
			source_application_info?: [...{
				workspace_id?:       string
				application_version: string
				last_patch_key:      string
				application_key?:    string
				copy_type?:          string
			}]
			object_status?:      int
			application_version: int
			identifier!:         string
			display_name?:       string
			parent_ref: [...{
				parent:      string
				root_doc_id: string
			}]
			registry_metadata?: [...{
				is_favorite?: bool
				key?:         string
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
			}]
			model_version?: string
			time_created:   string
			name!:          string
			freeform_tags?: [_]: string
			state?: string
			key_map: [_]: string
			model_type!:    string
			time_updated:   string
			compartment_id: string
			metadata: [...{
				aggregator_key: string
				updated_by:     string
				time_created:   string
				labels: [...string]
				time_updated: string
				count_statistics: [...{
					object_type_count_list: [...{
						object_count: string, object_type: string
					}]
				}]
				identifier_path: string
				created_by:      string
				aggregator: [...{
					description: string
					identifier:  string
					key:         string
					name:        string
					type:        string
				}]
				registry_version: int
				created_by_name:  string
				info_fields: [_]: string
				is_favorite:     bool
				updated_by_name: string
			}]
			object_version: int
		}
		workspace_application_patch: {
			model_type:   string
			time_patched: string
			patch_status: string
			key_map: [_]: string
			error_messages: [_]: string
			application_key!: string
			registry_metadata?: [...{
				aggregator_key?: string
				is_favorite?:    bool
				key?:            string
				labels?: [...string]
				registry_version?: int
			}]
			metadata: [...{
				labels: [...string]
				aggregator: [...{
					type:        string
					description: string
					identifier:  string
					key:         string
					name:        string
				}]
				identifier_path: string
				info_fields: [_]: string
				time_created:    string
				aggregator_key:  string
				created_by_name: string
				count_statistics: [...{
					object_type_count_list: [...{
						object_count: string, object_type: string
					}]
				}]
				created_by:       string
				registry_version: int
				updated_by:       string
				is_favorite:      bool
				time_updated:     string
				updated_by_name:  string
			}]
			name!:          string
			model_version?: string
			patch_object_metadata: [...{
				name_path:      string
				object_version: int
				type:           string
				action:         string
				identifier:     string
				key:            string
				name:           string
			}]
			patch_type!:    string
			description?:   string
			key?:           string
			workspace_id!:  string
			object_status?: int
			identifier?:    string
			dependent_object_metadata: [...{
				key:            string
				name:           string
				name_path:      string
				object_version: int
				type:           string
				action:         string
				identifier:     string
			}]
			object_keys?: [...string]
			application_version: int
			parent_ref: [...{
				root_doc_id: string
				parent:      string
			}]
			object_version: int
		}
		workspace_application_schedule: {
			model_version?:                  string
			workspace_id!:                   string
			is_daylight_adjustment_enabled?: bool
			key?:                            string
			application_key!:                string
			object_version?:                 int
			frequency_details?: [...{
				time?: [...{
					minute?: int
					second?: int
					hour?:   int
				}]
				week_of_month?:     string
				model_type!:        string
				custom_expression?: string
				day_of_week?:       string
				days?: [...int]
				frequency?: string
				interval?:  int
			}]
			object_status?: int
			parent_ref: [...{
				parent:      string
				root_doc_id: string
			}]
			identifier!: string
			name!:       string
			timezone?:   string
			metadata: [...{
				count_statistics: [...{
					object_type_count_list: [...{
						object_type: string, object_count: string
					}]
				}]
				created_by_name: string
				is_favorite:     bool
				labels: [...string]
				time_updated:   string
				time_created:   string
				aggregator_key: string
				created_by:     string
				info_fields: [_]: string
				updated_by: string
				aggregator: [...{
					name:        string
					type:        string
					description: string
					identifier:  string
					key:         string
				}]
				identifier_path:  string
				updated_by_name:  string
				registry_version: int
			}]
			registry_metadata?: [...{
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
				key?:              string
			}]
			model_type:   string
			description?: string
		}
		workspace_application_task_schedule: {
			config_provider_delegate?: string
			expected_duration_unit?:   string
			retry_delay_unit?:         string
			start_time_millis?:        string
			expected_duration?:        float
			identifier!:               string
			object_status?:            int
			number_of_retries?:        int
			is_enabled?:               bool
			registry_metadata?: [...{
				key?: string
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
			}]
			object_version?: int
			retry_attempts:  int
			model_version?:  string
			parent_ref?: [...{
				parent?:      string
				root_doc_id?: string
			}]
			workspace_id!:          string
			model_type:             string
			is_concurrent_allowed?: bool
			auth_mode?:             string
			retry_delay?:           float
			metadata: [...{
				is_favorite:     bool
				created_by_name: string
				time_updated:    string
				count_statistics: [...{
					object_type_count_list: [...{
						object_count: string, object_type: string
					}]
				}]
				time_created:    string
				updated_by:      string
				updated_by_name: string
				info_fields: [_]: string
				labels: [...string]
				created_by:      string
				identifier_path: string
				aggregator_key:  string
				aggregator: [...{
					key:         string
					name:        string
					type:        string
					description: string
					identifier:  string
				}]
				registry_version: int
			}]
			key?: string
			last_run_details: [...{
				last_run_time_millis: string
				description:          string
				key:                  string
				object_status:        int
				object_version:       int
				model_type:           string
				parent_ref: [...{
					parent:      string
					root_doc_id: string
				}]
				identifier:    string
				model_version: string
				name:          string
			}]
			description?:          string
			is_backfill_enabled?:  bool
			application_key!:      string
			next_run_time_millis?: string
			end_time_millis?:      string
			name!:                 string
			schedule_ref?: [...{
				model_version?: string
				description?:   string
				frequency_details?: [...{
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
					week_of_month?: string
					model_type!:    string
				}]
				metadata?: [...{
					updated_by_name?: string
					updated_by?:      string
					count_statistics?: [...{
						object_type_count_list!: [...{
							object_count?: string, object_type?: string
						}]
					}]
					info_fields?: [_]: string
					is_favorite?:      bool
					time_updated?:     string
					time_created?:     string
					created_by?:       string
					identifier_path?:  string
					registry_version?: int
					labels?: [...string]
					aggregator?: [...{
						description?: string
						identifier?:  string
						key?:         string
						name?:        string
						type?:        string
					}]
					aggregator_key?:  string
					created_by_name?: string
				}]
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				model_type?:                     string
				object_version?:                 int
				is_daylight_adjustment_enabled?: bool
				timezone?:                       string
				name?:                           string
				object_status?:                  int
				identifier?:                     string
				key?:                            string
			}]
		}
	}
	arguments: {
		workspace_task: {
			parent_ref?: [...{
				parent?:      string
				root_doc_id?: string
			}]
			operation?: string
			config_provider_delegate?: [...{
				bindings?: [...{
					parameter_values?: [...{
						root_object_value?: [...{
							key?: string, model_type?: string, model_version?: string, object_status?: int
						}]
						simple_value?: string
					}]
					key?: string
				}]
			}]
			workspace_id!: string
			registry_metadata!: [...{
				is_favorite?: bool
				key?:         string
				labels?: [...string]
				registry_version?: int
				aggregator_key!:   string
			}]
			auth_config?: [...{
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				resource_principal_source?: string
				key?:                       string
				model_type?:                string
				model_version?:             string
			}]
			execute_rest_call_config?: [...{
				request_headers?: [_]: string
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
			}]
			is_single_load?: bool
			input_ports?: [...{
				name?:          string
				key?:           string
				object_status?: int
				parent_ref?: [...{
					root_doc_id?: string
					parent?:      string
				}]
				config_values?: [...{
					config_param_values?: [...{
						object_value?:      string
						parameter_value?:   string
						ref_value?:         string
						root_object_value?: string
						string_value?:      string
						int_value?:         int
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				fields?: [...string]
				model_version?: string
				port_type?:     string
				model_type!:    string
				description?:   string
			}]
			cancel_rest_call_config?: [...{
				method_type?: string
				request_headers?: [_]: string
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
			}]
			object_status?: int
			key?:           string
			name!:          string
			op_config_values?: [...{
				config_param_values?: [...{
					key?: string
					config_param_value?: [...{
						ref_value?: [...{
							name?:          string
							key?:           string
							model_type?:    string
							model_version?: string
							object_status?: int
						}]
						root_object_value?: [...{
							key?:           string
							model_type?:    string
							model_version?: string
							object_status?: int
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
			parallel_load_limit?: int
			parameters?: [...{
				name?:                      string
				default_value?:             string
				is_output?:                 bool
				root_object_default_value?: string
				config_values?: [...{
					config_param_values?: [...{
						key?: string
						config_param_value?: [...{
							parameter_value?: string
							ref_value?: [...{
								object_status?: int
								key?:           string
								name?:          string
								model_type?:    string
								model_version?: string
							}]
							root_object_value?: [...{
								object_status?: int
								key?:           string
								model_type?:    string
								model_version?: string
							}]
							string_value?: string
							int_value?:    int
							object_value?: string
						}]
					}]
					parent_ref?: [...{
						root_doc_id?: string
						parent?:      string
					}]
				}]
				is_input?:                bool
				key?:                     string
				object_status?:           int
				output_aggregation_type?: string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				type?:          string
				used_for?:      string
				model_type!:    string
				type_name?:     string
				description?:   string
				model_version?: string
			}]
			poll_rest_call_config?: [...{
				request_headers?: [_]: string
				key?:        string
				model_type?: string
				config_values?: [...{
					config_param_values?: [...{
						poll_interval?: [...{
							object_value?: float
						}]
						poll_interval_unit?: [...{
							string_value?: string
						}]
						poll_condition?: [...{
							ref_value?: [...{
								key?:         string
								name?:        string
								model_type?:  string
								expr_string?: string
							}]
							parameter_value?: string
						}]
						request_url?: [...{
							string_value?: string
						}]
						request_payload?: [...{
							parameter_value?: string
							ref_value?: [...{
								key?:        string
								name?:       string
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
						poll_max_duration?: [...{
							object_value?: float
						}]
						poll_max_duration_unit?: [...{
							string_value?: string
						}]
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				method_type?: string
			}]
			identifier!:    string
			model_version?: string
			typed_expressions?: [...{
				config_values?: [...{
					config_param_values?: [...{
						length?: [...{
							int_value?: int
						}]
						scale?: [...{
							int_value?: int
						}]
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				name?:          string
				object_status?: int
				model_type?:    string
				model_version?: string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				description?: string
				expression?:  string
				key?:         string
				type?:        string
			}]
			api_call_mode?: string
			model_type!:    string
			description?:   string
			output_ports?: [...{
				model_type!: string
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				key?:       string
				name?:      string
				port_type?: string
				fields?: [...string]
				model_version?: string
				object_status?: int
				config_values?: [...{
					config_param_values?: [...{
						int_value?:         int
						object_value?:      string
						parameter_value?:   string
						ref_value?:         string
						root_object_value?: string
						string_value?:      string
					}]
					parent_ref?: [...{
						parent?:      string
						root_doc_id?: string
					}]
				}]
				description?: string
			}]
		}
		workspace: {
			subnet_id?:                  string
			is_private_network_enabled?: bool
			registry_id?:                string
			vcn_id?:                     string
			description?:                string
			registry_compartment_id?:    string
			quiesce_timeout?:            int
			endpoint_name?:              string
			dns_server_ip?:              string
			is_force_operation?:         bool
			endpoint_id?:                string
			dns_server_zone?:            string
			endpoint_compartment_id?:    string
			display_name!:               string
			registry_name?:              string
			compartment_id!:             string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		workspace_export_request: {
			object_keys?: [...string]
			bucket!:                      string
			are_references_included?:     bool
			file_name?:                   string
			is_object_overwrite_enabled?: bool
			filters?: [...string]
			object_storage_tenancy_id?: string
			workspace_id!:              string
			object_storage_region?:     string
		}
		workspace_import_request: {
			object_key_for_import?:              string
			object_storage_region?:              string
			object_storage_tenancy_id?:          string
			workspace_id!:                       string
			are_data_asset_references_included?: bool
			import_conflict_resolution?: [...{
				duplicate_suffix?:                string
				import_conflict_resolution_type!: string
				duplicate_prefix?:                string
			}]
			bucket!:    string
			file_name!: string
		}
		workspace_project: {
			name!:          string
			model_version?: string
			identifier!:    string
			workspace_id!:  string
			key?:           string
			project_key?:   string
			description?:   string
			object_status?: int
			registry_metadata?: [...{
				key?: string
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
			}]
		}
		workspace_folder: {
			identifier!:    string
			workspace_id!:  string
			folder_key?:    string
			key?:           string
			model_version?: string
			object_status?: int
			name!:          string
			registry_metadata!: [...{
				key?: string
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
			}]
			category_name?: string
			description?:   string
		}
		workspace_application: {
			freeform_tags?: [_]: string
			source_application_info?: [...{
				application_key?: string
				copy_type?:       string
				workspace_id?:    string
			}]
			identifier!:   string
			description?:  string
			state?:        string
			workspace_id!: string
			display_name?: string
			registry_metadata?: [...{
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
				key?:              string
				labels?: [...string]
			}]
			model_version?: string
			object_status?: int
			model_type!:    string
			name!:          string
			defined_tags?: [_]: string
			key?: string
		}
		workspace_application_patch: {
			object_keys?: [...string]
			key?:             string
			application_key!: string
			object_status?:   int
			registry_metadata?: [...{
				aggregator_key?: string
				is_favorite?:    bool
				key?:            string
				labels?: [...string]
				registry_version?: int
			}]
			description?:   string
			name!:          string
			workspace_id!:  string
			model_version?: string
			identifier?:    string
			patch_type!:    string
		}
		workspace_application_schedule: {
			is_daylight_adjustment_enabled?: bool
			object_status?:                  int
			application_key!:                string
			name!:                           string
			description?:                    string
			identifier!:                     string
			timezone?:                       string
			registry_metadata?: [...{
				key?: string
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
			}]
			frequency_details?: [...{
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
				day_of_week?:       string
				days?: [...int]
			}]
			key?:            string
			model_version?:  string
			workspace_id!:   string
			object_version?: int
		}
		workspace_application_task_schedule: {
			object_version?:       int
			next_run_time_millis?: string
			retry_delay?:          float
			is_backfill_enabled?:  bool
			schedule_ref?: [...{
				object_status?:  int
				identifier?:     string
				object_version?: int
				parent_ref?: [...{
					parent?:      string
					root_doc_id?: string
				}]
				model_version?: string
				timezone?:      string
				model_type?:    string
				name?:          string
				description?:   string
				frequency_details?: [...{
					interval?: int
					time?: [...{
						hour?:   int
						minute?: int
						second?: int
					}]
					week_of_month?:     string
					model_type!:        string
					custom_expression?: string
					day_of_week?:       string
					days?: [...int]
					frequency?: string
				}]
				is_daylight_adjustment_enabled?: bool
				key?:                            string
				metadata?: [...{
					registry_version?: int
					time_created?:     string
					is_favorite?:      bool
					time_updated?:     string
					aggregator?: [...{
						key?:         string
						name?:        string
						type?:        string
						description?: string
						identifier?:  string
					}]
					created_by_name?: string
					identifier_path?: string
					updated_by?:      string
					updated_by_name?: string
					aggregator_key?:  string
					count_statistics?: [...{
						object_type_count_list!: [...{
							object_count?: string, object_type?: string
						}]
					}]
					labels?: [...string]
					info_fields?: [_]: string
					created_by?: string
				}]
			}]
			is_concurrent_allowed?:    bool
			config_provider_delegate?: string
			object_status?:            int
			workspace_id!:             string
			is_enabled?:               bool
			identifier!:               string
			auth_mode?:                string
			parent_ref?: [...{
				root_doc_id?: string
				parent?:      string
			}]
			name!: string
			registry_metadata?: [...{
				key?: string
				labels?: [...string]
				registry_version?: int
				aggregator_key?:   string
				is_favorite?:      bool
			}]
			expected_duration?:      float
			key?:                    string
			application_key!:        string
			model_version?:          string
			description?:            string
			end_time_millis?:        string
			number_of_retries?:      int
			retry_delay_unit?:       string
			start_time_millis?:      string
			expected_duration_unit?: string
		}
	}
}
#data: {
	workspace: workspace_id!: string
	workspace_application: {
		workspace_id!:    string
		application_key!: string
	}
	workspaces: {
		compartment_id!: string
		name?:           string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	workspace_task: {
		workspace_id!:      string
		key!:               string
		expand_references!: string
	}
	workspace_application_schedule: {
		application_key!: string
		workspace_id!:    string
		schedule_key!:    string
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
	workspace_projects: {
		identifier?: [...string]
		name?:          string
		name_contains?: string
		workspace_id!:  string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		fields?: [...string]
	}
	workspace_export_requests: {
		workspace_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		export_status?:          string
		name?:                   string
		projection?:             string
		time_ended_in_millis?:   string
		time_started_in_millis?: string
	}
	workspace_import_requests: {
		workspace_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		import_status?:          string
		name?:                   string
		projection?:             string
		time_ended_in_millis?:   string
		time_started_in_millis?: string
	}
	workspace_application_patches: {
		application_key!: string
		fields?: [...string]
		identifier?: [...string]
		name?:         string
		workspace_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
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
	workspace_applications: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		fields?: [...string]
		identifier?: [...string]
		name?:          string
		name_contains?: string
		workspace_id!:  string
	}
	workspace_export_request: {
		workspace_id!:       string
		export_request_key!: string
	}
	workspace_project: {
		project_key!:  string
		workspace_id!: string
	}
	workspace_tasks: {
		fields?: [...string]
		folder_id?: string
		type?: [...string]
		identifier?: [...string]
		key?: [...string]
		name?:         string
		workspace_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	workspace_application_patch: {
		application_key!: string
		workspace_id!:    string
		patch_key!:       string
	}
	workspace_application_task_schedules: {
		application_key!: string
		is_enabled?:      bool
		key?: [...string]
		identifier?: [...string]
		name?: string
		type?: [...string]
		workspace_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	workspace_folder: {
		workspace_id!: string
		folder_key!:   string
	}
	workspace_folders: {
		workspace_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		aggregator_key?: string
		fields?: [...string]
		identifier?: [...string]
		name?:          string
		name_contains?: string
	}
}

