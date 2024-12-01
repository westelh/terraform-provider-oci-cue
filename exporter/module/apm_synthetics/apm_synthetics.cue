package apm_synthetics

#resource: {
	attributes: {
		on_premise_vantage_point_worker: {
			monitor_list: [...{
				id:            string
				is_run_now:    bool
				monitor_type:  string
				time_assigned: string
				display_name:  string
			}]
			on_premise_vantage_point_id!: string
			version!:                     string
			identity_info: [...{
				collector_end_point: string
				region_name:         string
				apm_short_id:        string
			}]
			freeform_tags?: [_]: string
			display_name:      string
			geo_info:          string
			time_last_sync_up: string
			version_details: [...{
				latest_version:        string
				min_supported_version: string
				version:               string
			}]
			defined_tags?: [_]: string
			time_updated:                         string
			opvp_id:                              string
			opvp_name:                            string
			priority?:                            int
			configuration_details?:               string
			status?:                              string
			runtime_id:                           string
			time_created:                         string
			apm_domain_id!:                       string
			resource_principal_token_public_key!: string
			worker_type?:                         string
			name!:                                string
		}
		script: {
			time_updated:       string
			content!:           string
			content_file_name?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			monitor_status_count_map: [...{
				enabled:  int
				invalid:  int
				total:    int
				disabled: int
			}]
			time_created:   string
			content_type!:  string
			time_uploaded:  string
			apm_domain_id!: string
			display_name!:  string
			parameters?: [...{
				param_name!:    string
				is_secret?:     bool
				param_value?:   string
				is_overwritten: bool
				script_parameter: [...{
					param_value: string
					is_secret:   bool
					param_name:  string
				}]
			}]
			content_size_in_bytes: int
		}
		dedicated_vantage_point: {
			defined_tags?: [_]: string
			monitor_status_count_map: [...{
				disabled: int
				enabled:  int
				invalid:  int
				total:    int
			}]
			time_created:  string
			display_name!: string
			status?:       string
			freeform_tags?: [_]: string
			region!:        string
			name:           string
			time_updated:   string
			apm_domain_id!: string
			dvp_stack_details!: [...{
				dvp_stream_id!:  string
				dvp_version!:    string
				dvp_stack_id!:   string
				dvp_stack_type!: string
			}]
		}
		monitor: {
			maintenance_window_schedule?: [...{
				time_ended?:   string
				time_started?: string
			}]
			defined_tags?: [_]: string
			is_run_now?:                 bool
			scheduling_policy?:          string
			repeat_interval_in_seconds!: int
			is_run_once?:                bool
			apm_domain_id!:              string
			freeform_tags?: [_]: string
			batch_interval_in_seconds?: int
			script_id?:                 string
			target?:                    string
			script_parameters?: [...{
				param_value!:   string
				is_overwritten: bool
				is_secret:      bool
				monitor_script_parameter: [...{
					param_name:  string
					param_value: string
				}]
				param_name!: string
			}]
			vantage_point_count: int
			vantage_points!: [...{
				name!:         string
				display_name?: string
				worker_list: [...string]
			}]
			script_name?:        string
			display_name!:       string
			timeout_in_seconds?: int
			last_updated_by:     string
			time_updated:        string
			configuration?: [...{
				database_connection_type?: string
				ftp_protocol?:             string
				is_redirection_enabled?:   bool
				database_authentication_details?: [...{
					password?: [...{
						vault_secret_id?: string
						password?:        string
						password_type?:   string
					}]
					username?: string
				}]
				ftp_request_type?:                  string
				database_role?:                     string
				verify_response_content?:           string
				download_size_limit_in_bytes?:      int
				protocol?:                          string
				is_certificate_validation_enabled?: bool
				request_query_params?: [...{
					param_name?:  string
					param_value?: string
				}]
				verify_response_codes?: [...string]
				req_authentication_scheme?: string
				network_configuration?: [...{
					transmission_rate?: int
					number_of_hops?:    int
					probe_mode?:        string
					probe_per_hop?:     int
					protocol?:          string
				}]
				verify_texts?: [...{
					text?: string
				}]
				dns_configuration?: [...{
					is_override_dns?: bool
					override_dns_ip?: string
				}]
				query?:                     string
				upload_file_size_in_bytes?: int
				connection_string?:         string
				req_authentication_details?: [...{
					auth_user_name?:     string
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
				}]
				is_active_mode?: bool
				request_headers?: [...{
					header_name?:  string
					header_value?: string
				}]
				record_type?:                 string
				database_type?:               string
				name_server?:                 string
				is_default_snapshot_enabled?: bool
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
				ftp_basic_authentication_details?: [...{
					password?: [...{
						vault_secret_id?: string
						password?:        string
						password_type?:   string
					}]
					username?: string
				}]
				request_post_body?: string
				database_wallet_details?: [...{
					database_wallet?: string
					service_name?:    string
				}]
				is_failure_retried?: bool
				is_query_recursive?: bool
				config_type?:        string
				request_method?:     string
			}]
			status?: string
			availability_configuration?: [...{
				max_allowed_failures_per_interval?: int
				min_allowed_runs_per_interval?:     int
			}]
			created_by:    string
			monitor_type!: string
			is_ipv6?:      bool
			time_created:  string
		}
		on_premise_vantage_point: {
			description?: string
			freeform_tags?: [_]: string
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
			apm_domain_id!: string
			defined_tags?: [_]: string
			display_name: string
			time_updated: string
			name!:        string
			type?:        string
		}
	}
	arguments: {
		on_premise_vantage_point_worker: {
			version!: string
			defined_tags?: [_]: string
			priority?:                    int
			configuration_details?:       string
			apm_domain_id!:               string
			on_premise_vantage_point_id!: string
			status?:                      string
			name!:                        string
			freeform_tags?: [_]: string
			resource_principal_token_public_key!: string
			worker_type?:                         string
		}
		script: {
			parameters?: [...{
				param_name!:  string
				is_secret?:   bool
				param_value?: string
			}]
			content!:           string
			content_type!:      string
			content_file_name?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			apm_domain_id!: string
			display_name!:  string
		}
		dedicated_vantage_point: {
			status?: string
			region!: string
			defined_tags?: [_]: string
			apm_domain_id!: string
			display_name!:  string
			dvp_stack_details!: [...{
				dvp_stack_type!: string
				dvp_stream_id!:  string
				dvp_version!:    string
				dvp_stack_id!:   string
			}]
			freeform_tags?: [_]: string
		}
		monitor: {
			maintenance_window_schedule?: [...{
				time_ended?:   string
				time_started?: string
			}]
			script_parameters?: [...{
				param_name!:  string
				param_value!: string
			}]
			script_id?:    string
			is_run_now?:   bool
			display_name!: string
			defined_tags?: [_]: string
			target?:             string
			script_name?:        string
			timeout_in_seconds?: int
			scheduling_policy?:  string
			apm_domain_id!:      string
			is_run_once?:        bool
			is_ipv6?:            bool
			configuration?: [...{
				is_active_mode?:            bool
				upload_file_size_in_bytes?: int
				database_authentication_details?: [...{
					password?: [...{
						password?:        string
						password_type?:   string
						vault_secret_id?: string
					}]
					username?: string
				}]
				request_method?:                    string
				ftp_request_type?:                  string
				verify_response_content?:           string
				is_query_recursive?:                bool
				is_certificate_validation_enabled?: bool
				ftp_basic_authentication_details?: [...{
					password?: [...{
						vault_secret_id?: string
						password?:        string
						password_type?:   string
					}]
					username?: string
				}]
				name_server?: string
				network_configuration?: [...{
					probe_per_hop?:     int
					protocol?:          string
					transmission_rate?: int
					number_of_hops?:    int
					probe_mode?:        string
				}]
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
				record_type?:                  string
				database_connection_type?:     string
				database_type?:                string
				is_redirection_enabled?:       bool
				download_size_limit_in_bytes?: int
				protocol?:                     string
				database_role?:                string
				dns_configuration?: [...{
					is_override_dns?: bool
					override_dns_ip?: string
				}]
				query?: string
				request_query_params?: [...{
					param_value?: string
					param_name?:  string
				}]
				request_headers?: [...{
					header_name?:  string
					header_value?: string
				}]
				req_authentication_scheme?: string
				request_post_body?:         string
				database_wallet_details?: [...{
					service_name?:    string
					database_wallet?: string
				}]
				is_failure_retried?:          bool
				ftp_protocol?:                string
				config_type?:                 string
				is_default_snapshot_enabled?: bool
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
				connection_string?: string
				verify_texts?: [...{
					text?: string
				}]
				verify_response_codes?: [...string]
			}]
			repeat_interval_in_seconds!: int
			availability_configuration?: [...{
				max_allowed_failures_per_interval?: int
				min_allowed_runs_per_interval?:     int
			}]
			monitor_type!: string
			freeform_tags?: [_]: string
			batch_interval_in_seconds?: int
			status?:                    string
			vantage_points!: [...{
				name!:         string
				display_name?: string
			}]
		}
		on_premise_vantage_point: {
			defined_tags?: [_]: string
			description?: string
			type?:        string
			freeform_tags?: [_]: string
			apm_domain_id!: string
			name!:          string
		}
	}
}
#data: {
	result: {
		apm_domain_id!:       string
		execution_time!:      string
		monitor_id!:          string
		result_content_type!: string
		result_type!:         string
		vantage_point!:       string
	}
	dedicated_vantage_point: {
		apm_domain_id!:              string
		dedicated_vantage_point_id!: string
	}
	dedicated_vantage_points: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		apm_domain_id!: string
		display_name?:  string
		name?:          string
		status?:        string
	}
	on_premise_vantage_point: {
		apm_domain_id!:               string
		on_premise_vantage_point_id!: string
	}
	public_vantage_points: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		apm_domain_id!: string
		display_name?:  string
		name?:          string
	}
	on_premise_vantage_points: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		apm_domain_id!: string
		display_name?:  string
		name?:          string
	}
	public_vantage_point: {
		apm_domain_id!: string
		display_name?:  string
		name?:          string
	}
	script: {
		apm_domain_id!: string
		script_id!:     string
	}
	scripts: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		apm_domain_id!: string
		content_type?:  string
		display_name?:  string
	}
	monitor: {
		apm_domain_id!: string
		monitor_id!:    string
	}
	monitors: {
		status?:                       string
		vantage_point?:                string
		is_maintenance_window_set?:    bool
		apm_domain_id!:                string
		display_name?:                 string
		is_maintenance_window_active?: bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		monitor_type?: string
		script_id?:    string
	}
	on_premise_vantage_point_worker: {
		apm_domain_id!:               string
		worker_id!:                   string
		on_premise_vantage_point_id!: string
	}
	on_premise_vantage_point_workers: {
		capability?:                  string
		display_name?:                string
		name?:                        string
		on_premise_vantage_point_id!: string
		status?:                      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		apm_domain_id!: string
	}
}

