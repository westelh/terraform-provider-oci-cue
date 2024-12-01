package apm_synthetics

#resource: {
	attributes: {
		monitor: {
			timeout_in_seconds?: int
			freeform_tags?: [_]: string
			availability_configuration?: [...{
				max_allowed_failures_per_interval?: int
				min_allowed_runs_per_interval?:     int
			}]
			apm_domain_id!: string
			vantage_points!: [...{
				display_name?: string
				worker_list: [...string]
				name!: string
			}]
			script_parameters?: [...{
				is_overwritten: bool
				is_secret:      bool
				monitor_script_parameter: [...{
					param_name:  string
					param_value: string
				}]
				param_name!:  string
				param_value!: string
			}]
			monitor_type!: string
			configuration?: [...{
				request_headers?: [...{
					header_name?:  string
					header_value?: string
				}]
				verify_texts?: [...{
					text?: string
				}]
				network_configuration?: [...{
					transmission_rate?: int
					number_of_hops?:    int
					probe_mode?:        string
					probe_per_hop?:     int
					protocol?:          string
				}]
				record_type?: string
				verify_response_codes?: [...string]
				download_size_limit_in_bytes?: int
				request_method?:               string
				client_certificate_details?: [...{
					client_certificate?: [...{
						content?:   string
						file_name?: string
					}]
					private_key?: [...{
						file_name?: string
						content?:   string
					}]
				}]
				database_wallet_details?: [...{
					database_wallet?: string
					service_name?:    string
				}]
				database_connection_type?: string
				is_failure_retried?:       bool
				ftp_basic_authentication_details?: [...{
					password?: [...{
						vault_secret_id?: string
						password?:        string
						password_type?:   string
					}]
					username?: string
				}]
				is_redirection_enabled?:            bool
				database_type?:                     string
				connection_string?:                 string
				is_query_recursive?:                bool
				database_role?:                     string
				query?:                             string
				verify_response_content?:           string
				is_certificate_validation_enabled?: bool
				req_authentication_details?: [...{
					auth_url?:           string
					auth_user_name?:     string
					auth_user_password?: string
					oauth_scheme?:       string
					auth_headers?: [...{
						header_value?: string
						header_name?:  string
					}]
					auth_request_method?:    string
					auth_request_post_body?: string
					auth_token?:             string
				}]
				config_type?:                 string
				is_default_snapshot_enabled?: bool
				upload_file_size_in_bytes?:   int
				ftp_request_type?:            string
				request_post_body?:           string
				protocol?:                    string
				request_query_params?: [...{
					param_name?:  string
					param_value?: string
				}]
				is_active_mode?: bool
				dns_configuration?: [...{
					is_override_dns?: bool
					override_dns_ip?: string
				}]
				req_authentication_scheme?: string
				database_authentication_details?: [...{
					password?: [...{
						password?:        string
						password_type?:   string
						vault_secret_id?: string
					}]
					username?: string
				}]
				name_server?:  string
				ftp_protocol?: string
			}]
			created_by:   string
			is_ipv6?:     bool
			time_created: string
			defined_tags?: [_]: string
			status?:      string
			target?:      string
			time_updated: string
			is_run_now?:  bool
			maintenance_window_schedule?: [...{
				time_started?: string
				time_ended?:   string
			}]
			is_run_once?:                bool
			display_name!:               string
			repeat_interval_in_seconds!: int
			scheduling_policy?:          string
			script_name?:                string
			batch_interval_in_seconds?:  int
			last_updated_by:             string
			vantage_point_count:         int
			script_id?:                  string
		}
		on_premise_vantage_point: {
			display_name: string
			time_created: string
			workers_summary: [...{
				available: int
				available_capabilities: [...{
					capability:                     string
					on_premise_vantage_point_count: int
				}]
				disabled:    int
				min_version: string
				total:       int
				used:        int
			}]
			name!: string
			defined_tags?: [_]: string
			type?:          string
			apm_domain_id!: string
			time_updated:   string
			description?:   string
			freeform_tags?: [_]: string
		}
		on_premise_vantage_point_worker: {
			name!:                                string
			resource_principal_token_public_key!: string
			time_updated:                         string
			status?:                              string
			time_created:                         string
			apm_domain_id!:                       string
			opvp_id:                              string
			worker_type?:                         string
			opvp_name:                            string
			identity_info: [...{
				region_name:         string
				apm_short_id:        string
				collector_end_point: string
			}]
			runtime_id: string
			version!:   string
			monitor_list: [...{
				is_run_now:    bool
				monitor_type:  string
				time_assigned: string
				display_name:  string
				id:            string
			}]
			time_last_sync_up:            string
			on_premise_vantage_point_id!: string
			priority?:                    int
			geo_info:                     string
			freeform_tags?: [_]: string
			version_details: [...{
				version:               string
				latest_version:        string
				min_supported_version: string
			}]
			configuration_details?: string
			defined_tags?: [_]: string
			display_name: string
		}
		script: {
			apm_domain_id!:     string
			content_file_name?: string
			parameters?: [...{
				script_parameter: [...{
					is_secret:   bool
					param_name:  string
					param_value: string
				}]
				param_name!:    string
				is_secret?:     bool
				param_value?:   string
				is_overwritten: bool
			}]
			content!: string
			freeform_tags?: [_]: string
			time_uploaded: string
			defined_tags?: [_]: string
			display_name!:         string
			content_size_in_bytes: int
			monitor_status_count_map: [...{
				disabled: int
				enabled:  int
				invalid:  int
				total:    int
			}]
			time_created:  string
			content_type!: string
			time_updated:  string
		}
		dedicated_vantage_point: {
			apm_domain_id!: string
			time_created:   string
			display_name!:  string
			freeform_tags?: [_]: string
			dvp_stack_details!: [...{
				dvp_version!:    string
				dvp_stack_id!:   string
				dvp_stack_type!: string
				dvp_stream_id!:  string
			}]
			defined_tags?: [_]: string
			monitor_status_count_map: [...{
				enabled:  int
				invalid:  int
				total:    int
				disabled: int
			}]
			name:         string
			status?:      string
			time_updated: string
			region!:      string
		}
	}
	arguments: {
		monitor: {
			freeform_tags?: [_]: string
			is_ipv6?:            bool
			scheduling_policy?:  string
			is_run_now?:         bool
			timeout_in_seconds?: int
			display_name!:       string
			is_run_once?:        bool
			script_id?:          string
			apm_domain_id!:      string
			script_parameters?: [...{
				param_name!:  string
				param_value!: string
			}]
			target?: string
			maintenance_window_schedule?: [...{
				time_ended?:   string
				time_started?: string
			}]
			repeat_interval_in_seconds!: int
			vantage_points!: [...{
				name!:         string
				display_name?: string
			}]
			batch_interval_in_seconds?: int
			script_name?:               string
			configuration?: [...{
				database_type?:      string
				name_server?:        string
				is_failure_retried?: bool
				verify_texts?: [...{
					text?: string
				}]
				is_query_recursive?: bool
				database_wallet_details?: [...{
					database_wallet?: string
					service_name?:    string
				}]
				ftp_request_type?: string
				verify_response_codes?: [...string]
				protocol?:                    string
				request_post_body?:           string
				req_authentication_scheme?:   string
				config_type?:                 string
				connection_string?:           string
				is_active_mode?:              bool
				is_default_snapshot_enabled?: bool
				ftp_protocol?:                string
				upload_file_size_in_bytes?:   int
				request_query_params?: [...{
					param_name?:  string
					param_value?: string
				}]
				req_authentication_details?: [...{
					auth_user_password?: string
					oauth_scheme?:       string
					auth_headers?: [...{
						header_name?:  string
						header_value?: string
					}]
					auth_request_method?:    string
					auth_request_post_body?: string
					auth_token?:             string
					auth_url?:               string
					auth_user_name?:         string
				}]
				request_method?:          string
				verify_response_content?: string
				request_headers?: [...{
					header_name?:  string
					header_value?: string
				}]
				ftp_basic_authentication_details?: [...{
					password?: [...{
						password_type?:   string
						vault_secret_id?: string
						password?:        string
					}]
					username?: string
				}]
				network_configuration?: [...{
					probe_per_hop?:     int
					protocol?:          string
					transmission_rate?: int
					number_of_hops?:    int
					probe_mode?:        string
				}]
				download_size_limit_in_bytes?: int
				is_redirection_enabled?:       bool
				client_certificate_details?: [...{
					client_certificate?: [...{
						content?:   string
						file_name?: string
					}]
					private_key?: [...{
						content?:   string
						file_name?: string
					}]
				}]
				database_connection_type?: string
				database_role?:            string
				query?:                    string
				database_authentication_details?: [...{
					username?: string
					password?: [...{
						vault_secret_id?: string
						password?:        string
						password_type?:   string
					}]
				}]
				record_type?: string
				dns_configuration?: [...{
					is_override_dns?: bool
					override_dns_ip?: string
				}]
				is_certificate_validation_enabled?: bool
			}]
			defined_tags?: [_]: string
			availability_configuration?: [...{
				max_allowed_failures_per_interval?: int
				min_allowed_runs_per_interval?:     int
			}]
			status?:       string
			monitor_type!: string
		}
		on_premise_vantage_point: {
			apm_domain_id!: string
			description?:   string
			freeform_tags?: [_]: string
			name!: string
			defined_tags?: [_]: string
			type?: string
		}
		on_premise_vantage_point_worker: {
			status?:                              string
			resource_principal_token_public_key!: string
			apm_domain_id!:                       string
			worker_type?:                         string
			on_premise_vantage_point_id!:         string
			freeform_tags?: [_]: string
			configuration_details?: string
			defined_tags?: [_]: string
			version!:  string
			name!:     string
			priority?: int
		}
		script: {
			parameters?: [...{
				param_name!:  string
				is_secret?:   bool
				param_value?: string
			}]
			content!:           string
			content_type!:      string
			display_name!:      string
			content_file_name?: string
			apm_domain_id!:     string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		dedicated_vantage_point: {
			freeform_tags?: [_]: string
			apm_domain_id!: string
			display_name!:  string
			dvp_stack_details!: [...{
				dvp_stream_id!:  string
				dvp_version!:    string
				dvp_stack_id!:   string
				dvp_stack_type!: string
			}]
			region!: string
			status?: string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	public_vantage_points: {
		name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		apm_domain_id!: string
		display_name?:  string
	}
	result: {
		vantage_point!:       string
		apm_domain_id!:       string
		execution_time!:      string
		monitor_id!:          string
		result_content_type!: string
		result_type!:         string
	}
	dedicated_vantage_point: {
		apm_domain_id!:              string
		dedicated_vantage_point_id!: string
	}
	on_premise_vantage_point: {
		apm_domain_id!:               string
		on_premise_vantage_point_id!: string
	}
	on_premise_vantage_point_worker: {
		on_premise_vantage_point_id!: string
		apm_domain_id!:               string
		worker_id!:                   string
	}
	on_premise_vantage_point_workers: {
		capability?:                  string
		display_name?:                string
		name?:                        string
		on_premise_vantage_point_id!: string
		status?:                      string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		apm_domain_id!: string
	}
	on_premise_vantage_points: {
		display_name?: string
		name?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		apm_domain_id!: string
	}
	public_vantage_point: {
		apm_domain_id!: string
		display_name?:  string
		name?:          string
	}
	script: {
		script_id!:     string
		apm_domain_id!: string
	}
	dedicated_vantage_points: {
		apm_domain_id!: string
		display_name?:  string
		name?:          string
		status?:        string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	monitor: {
		apm_domain_id!: string
		monitor_id!:    string
	}
	monitors: {
		vantage_point?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		apm_domain_id!:                string
		script_id?:                    string
		status?:                       string
		display_name?:                 string
		is_maintenance_window_set?:    bool
		is_maintenance_window_active?: bool
		monitor_type?:                 string
	}
	scripts: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		apm_domain_id!: string
		content_type?:  string
		display_name?:  string
	}
}

