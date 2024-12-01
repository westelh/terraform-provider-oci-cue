package jms

#resource: {
	attributes: {
		fleet: {
			is_advanced_features_enabled?: bool
			operation_log?: [...{
				log_group_id!: string
				log_id!:       string
			}]
			display_name!:                  string
			approximate_installation_count: int
			system_tags: [_]: string
			approximate_application_count: int
			compartment_id!:               string
			defined_tags?: [_]: string
			approximate_jre_count:              int
			approximate_managed_instance_count: int
			time_created:                       string
			state:                              string
			inventory_log!: [...{
				log_group_id!: string
				log_id!:       string
			}]
			approximate_java_server_count: int
			is_export_setting_enabled:     bool
			description?:                  string
			freeform_tags?: [_]: string
		}
		fleet_advanced_feature_configuration: {
			java_migration_analysis?: [...{
				is_enabled?: bool
			}]
			lcm?: [...{
				is_enabled?: bool
				post_installation_actions?: [...{
					minimum_key_size_settings?: [...{
						certpath?: [...{
							key_size?: int
							name?:     string
						}]
						jar?: [...{
							name?:     string
							key_size?: int
						}]
						tls?: [...{
							name?:     string
							key_size?: int
						}]
					}]
					proxies?: [...{
						http_proxy_host?:    string
						https_proxy_host?:   string
						socks_proxy_host?:   string
						socks_proxy_port?:   int
						ftp_proxy_host?:     string
						ftp_proxy_port?:     int
						http_proxy_port?:    int
						https_proxy_port?:   int
						use_system_proxies?: bool
					}]
					should_replace_certificates_operating_system?: bool
					add_logging_handler?:                          bool
					disabled_tls_versions?: [...string]
					global_logging_level?: string
				}]
			}]
			jfr_recording?: [...{
				is_enabled?: bool
			}]
			time_last_modified:  string
			analytic_namespace?: string
			crypto_event_analysis?: [...{
				is_enabled?: bool
				summarized_events_log?: [...{
					log_group_id!: string
					log_id!:       string
				}]
			}]
			advanced_usage_tracking?: [...{
				is_enabled?: bool
			}]
			performance_tuning_analysis?: [...{
				is_enabled?: bool
			}]
			fleet_id!:             string
			analytic_bucket_name?: string
		}
		jms_plugin: {
			agent_id!:       string
			os_distribution: string
			compartment_id!: string
			os_family:       string
			state:           string
			system_tags: [_]: string
			fleet_id?: string
			freeform_tags?: [_]: string
			time_registered: string
			hostname:        string
			defined_tags?: [_]: string
			agent_type:          string
			plugin_version:      string
			os_architecture:     string
			time_last_seen:      string
			availability_status: string
		}
	}
	arguments: {
		fleet: {
			freeform_tags?: [_]: string
			inventory_log!: [...{
				log_group_id!: string
				log_id!:       string
			}]
			is_advanced_features_enabled?: bool
			operation_log?: [...{
				log_group_id!: string
				log_id!:       string
			}]
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			description?: string
		}
		fleet_advanced_feature_configuration: {
			jfr_recording?: [...{
				is_enabled?: bool
			}]
			performance_tuning_analysis?: [...{
				is_enabled?: bool
			}]
			analytic_bucket_name?: string
			fleet_id!:             string
			lcm?: [...{
				is_enabled?: bool
				post_installation_actions?: [...{
					minimum_key_size_settings?: [...{
						certpath?: [...{
							name?:     string
							key_size?: int
						}]
						jar?: [...{
							key_size?: int
							name?:     string
						}]
						tls?: [...{
							name?:     string
							key_size?: int
						}]
					}]
					proxies?: [...{
						http_proxy_host?:    string
						http_proxy_port?:    int
						ftp_proxy_host?:     string
						socks_proxy_host?:   string
						socks_proxy_port?:   int
						ftp_proxy_port?:     int
						https_proxy_host?:   string
						https_proxy_port?:   int
						use_system_proxies?: bool
					}]
					should_replace_certificates_operating_system?: bool
					add_logging_handler?:                          bool
					disabled_tls_versions?: [...string]
					global_logging_level?: string
				}]
			}]
			advanced_usage_tracking?: [...{
				is_enabled?: bool
			}]
			analytic_namespace?: string
			crypto_event_analysis?: [...{
				is_enabled?: bool
				summarized_events_log?: [...{
					log_group_id!: string
					log_id!:       string
				}]
			}]
			java_migration_analysis?: [...{
				is_enabled?: bool
			}]
		}
		jms_plugin: {
			defined_tags?: [_]: string
			fleet_id?: string
			freeform_tags?: [_]: string
			agent_id!:       string
			compartment_id!: string
		}
	}
}
#data: {
	announcements: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		summary_contains?: string
		time_end?:         string
		time_start?:       string
	}
	fleet_installation_site: {
		jre_vendor?:  string
		time_start?:  string
		fleet_id!:    string
		jre_version?: string
		os_family?: [...string]
		time_end?:            string
		application_id?:      string
		jre_distribution?:    string
		jre_security_status?: string
		installation_path?:   string
		managed_instance_id?: string
		path_contains?:       string
	}
	fleet_installation_sites: {
		managed_instance_id?: string
		time_end?:            string
		time_start?:          string
		path_contains?:       string
		application_id?:      string
		fleet_id!:            string
		os_family?: [...string]
		jre_distribution?:    string
		jre_security_status?: string
		installation_path?:   string
		jre_vendor?:          string
		jre_version?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	fleet_crypto_analysis_result: {
		crypto_analysis_result_id!: string
		fleet_id!:                  string
	}
	fleet_crypto_analysis_results: {
		aggregation_mode?: string
		time_end?:         string
		fleet_id!:         string
		time_start?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		finding_count?:                            int
		finding_count_greater_than?:               int
		host_name?:                                string
		non_compliant_finding_count?:              int
		managed_instance_id?:                      string
		non_compliant_finding_count_greater_than?: int
	}
	fleet_diagnoses: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		fleet_id!: string
	}
	fleet_drs_files: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		fleet_id!: string
	}
	fleet_export_status: fleet_id!: string
	fleet_performance_tuning_analysis_results: {
		host_name?:           string
		managed_instance_id?: string
		time_end?:            string
		time_start?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		application_id?: string
		fleet_id!:       string
	}
	jms_plugins: {
		compartment_id?:                        string
		time_last_seen_less_than_or_equal_to?:  string
		agent_id?:                              string
		id?:                                    string
		availability_status?:                   string
		fleet_id?:                              string
		hostname_contains?:                     string
		time_registered_less_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?: bool
		state?:                     string
	}
	fleet_drs_file: {
		fleet_id!:     string
		drs_file_key!: string
	}
	fleet_performance_tuning_analysis_result: {
		performance_tuning_analysis_result_id!: string
		fleet_id!:                              string
	}
	fleets: {
		display_name?:          string
		display_name_contains?: string
		id?:                    string
		state?:                 string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
	}
	java_family: family_version!: string
	java_releases: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		family_version?:      string
		jre_security_status?: string
		license_type?:        string
		release_type?:        string
		release_version?:     string
	}
	java_families: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:         string
		family_version?:       string
		is_supported_version?: bool
	}
	summarize_resource_inventory: {
		time_start?:     string
		compartment_id?: string
		time_end?:       string
	}
	fleet_blocklists: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		fleet_id!:            string
		managed_instance_id?: string
		operation?:           string
	}
	fleet_advanced_feature_configuration: fleet_id!: string
	fleet_java_migration_analysis_result: {
		fleet_id!:                          string
		java_migration_analysis_result_id!: string
	}
	fleet_java_migration_analysis_results: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		application_name?:    string
		fleet_id!:            string
		host_name?:           string
		managed_instance_id?: string
		time_end?:            string
		time_start?:          string
	}
	jms_plugin: jms_plugin_id!: string
	agent_installers: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?:        string
		fleet_id?:              string
		os_family?:             string
		platform_architecture?: string
	}
	fleet: fleet_id!: string
	fleet_export_setting: fleet_id!: string
	java_release: release_version!: string
	list_jre_usage: {
		application_id?:   string
		application_name?: string
		compartment_id?:   string
		host_id?:          string
		time_end?:         string
		time_start?:       string
	}
}

