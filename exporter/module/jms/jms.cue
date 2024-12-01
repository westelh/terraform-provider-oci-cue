package jms

#resource: {
	attributes: {
		fleet: {
			approximate_jre_count:              int
			approximate_managed_instance_count: int
			state:                              string
			inventory_log!: [...{
				log_group_id!: string
				log_id!:       string
			}]
			description?: string
			defined_tags?: [_]: string
			approximate_java_server_count: int
			is_export_setting_enabled:     bool
			is_advanced_features_enabled?: bool
			time_created:                  string
			approximate_application_count: int
			operation_log?: [...{
				log_group_id!: string
				log_id!:       string
			}]
			system_tags: [_]: string
			freeform_tags?: [_]: string
			compartment_id!:                string
			approximate_installation_count: int
			display_name!:                  string
		}
		fleet_advanced_feature_configuration: {
			analytic_bucket_name?: string
			analytic_namespace?:   string
			java_migration_analysis?: [...{
				is_enabled?: bool
			}]
			lcm?: [...{
				is_enabled?: bool
				post_installation_actions?: [...{
					disabled_tls_versions?: [...string]
					global_logging_level?: string
					minimum_key_size_settings?: [...{
						certpath?: [...{
							key_size?: int
							name?:     string
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
						https_proxy_host?:   string
						ftp_proxy_host?:     string
						socks_proxy_port?:   int
						https_proxy_port?:   int
						use_system_proxies?: bool
						ftp_proxy_port?:     int
						http_proxy_port?:    int
						socks_proxy_host?:   string
					}]
					should_replace_certificates_operating_system?: bool
					add_logging_handler?:                          bool
				}]
			}]
			performance_tuning_analysis?: [...{
				is_enabled?: bool
			}]
			time_last_modified: string
			fleet_id!:          string
			advanced_usage_tracking?: [...{
				is_enabled?: bool
			}]
			crypto_event_analysis?: [...{
				is_enabled?: bool
				summarized_events_log?: [...{
					log_group_id!: string
					log_id!:       string
				}]
			}]
			jfr_recording?: [...{
				is_enabled?: bool
			}]
		}
		jms_plugin: {
			time_registered:     string
			compartment_id!:     string
			agent_id!:           string
			agent_type:          string
			plugin_version:      string
			os_distribution:     string
			os_architecture:     string
			state:               string
			os_family:           string
			availability_status: string
			fleet_id?:           string
			time_last_seen:      string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			hostname: string
			defined_tags?: [_]: string
		}
	}
	arguments: {
		fleet: {
			is_advanced_features_enabled?: bool
			display_name!:                 string
			inventory_log!: [...{
				log_group_id!: string
				log_id!:       string
			}]
			description?: string
			defined_tags?: [_]: string
			operation_log?: [...{
				log_id!:       string
				log_group_id!: string
			}]
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		fleet_advanced_feature_configuration: {
			java_migration_analysis?: [...{
				is_enabled?: bool
			}]
			fleet_id!:           string
			analytic_namespace?: string
			crypto_event_analysis?: [...{
				is_enabled?: bool
				summarized_events_log?: [...{
					log_id!:       string
					log_group_id!: string
				}]
			}]
			jfr_recording?: [...{
				is_enabled?: bool
			}]
			performance_tuning_analysis?: [...{
				is_enabled?: bool
			}]
			advanced_usage_tracking?: [...{
				is_enabled?: bool
			}]
			lcm?: [...{
				is_enabled?: bool
				post_installation_actions?: [...{
					add_logging_handler?: bool
					disabled_tls_versions?: [...string]
					global_logging_level?: string
					minimum_key_size_settings?: [...{
						certpath?: [...{
							key_size?: int
							name?:     string
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
						socks_proxy_host?:   string
						ftp_proxy_host?:     string
						https_proxy_port?:   int
						use_system_proxies?: bool
						http_proxy_port?:    int
						socks_proxy_port?:   int
						ftp_proxy_port?:     int
						http_proxy_host?:    string
						https_proxy_host?:   string
					}]
					should_replace_certificates_operating_system?: bool
				}]
			}]
			analytic_bucket_name?: string
		}
		jms_plugin: {
			defined_tags?: [_]: string
			fleet_id?: string
			agent_id!: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
	}
}
#data: {
	fleet_advanced_feature_configuration: fleet_id!: string
	fleet_export_status: fleet_id!: string
	java_release: release_version!: string
	jms_plugins: {
		state?:                                 string
		agent_id?:                              string
		id?:                                    string
		availability_status?:                   string
		compartment_id?:                        string
		hostname_contains?:                     string
		time_last_seen_less_than_or_equal_to?:  string
		time_registered_less_than_or_equal_to?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		fleet_id?:                  string
		compartment_id_in_subtree?: bool
	}
	fleet_blocklists: {
		managed_instance_id?: string
		operation?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		fleet_id!: string
	}
	fleet_diagnoses: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		fleet_id!: string
	}
	fleet_drs_files: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		fleet_id!: string
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
	fleet_drs_file: {
		drs_file_key!: string
		fleet_id!:     string
	}
	fleet_export_setting: fleet_id!: string
	fleet_performance_tuning_analysis_result: {
		fleet_id!:                              string
		performance_tuning_analysis_result_id!: string
	}
	java_family: family_version!: string
	java_releases: {
		release_type?:    string
		release_version?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		family_version?:      string
		jre_security_status?: string
		license_type?:        string
	}
	fleet_crypto_analysis_results: {
		non_compliant_finding_count_greater_than?: int
		aggregation_mode?:                         string
		host_name?:                                string
		finding_count?:                            int
		fleet_id!:                                 string
		managed_instance_id?:                      string
		non_compliant_finding_count?:              int
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		finding_count_greater_than?: int
		time_start?:                 string
		time_end?:                   string
	}
	fleet_performance_tuning_analysis_results: {
		time_end?:   string
		time_start?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		application_id?:      string
		fleet_id!:            string
		host_name?:           string
		managed_instance_id?: string
	}
	agent_installers: {
		platform_architecture?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		fleet_id?:       string
		os_family?:      string
	}
	fleet_installation_sites: {
		application_id?: string
		os_family?: [...string]
		jre_distribution?:    string
		installation_path?:   string
		jre_security_status?: string
		managed_instance_id?: string
		path_contains?:       string
		time_end?:            string
		jre_version?:         string
		time_start?:          string
		jre_vendor?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		fleet_id!: string
	}
	jms_plugin: jms_plugin_id!: string
	java_families: {
		is_supported_version?: bool
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:   string
		family_version?: string
	}
	summarize_resource_inventory: {
		time_end?:       string
		time_start?:     string
		compartment_id?: string
	}
	fleet: fleet_id!: string
	fleet_installation_site: {
		jre_security_status?: string
		jre_version?:         string
		os_family?: [...string]
		fleet_id!:            string
		jre_vendor?:          string
		installation_path?:   string
		jre_distribution?:    string
		managed_instance_id?: string
		time_end?:            string
		time_start?:          string
		application_id?:      string
		path_contains?:       string
	}
	fleet_java_migration_analysis_result: {
		java_migration_analysis_result_id!: string
		fleet_id!:                          string
	}
	fleet_crypto_analysis_result: {
		fleet_id!:                  string
		crypto_analysis_result_id!: string
	}
	fleets: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:        string
		display_name?:          string
		display_name_contains?: string
		id?:                    string
	}
	list_jre_usage: {
		time_end?:         string
		time_start?:       string
		application_id?:   string
		application_name?: string
		compartment_id?:   string
		host_id?:          string
	}
}

