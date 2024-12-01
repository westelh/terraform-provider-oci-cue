package database_migration

#resource: {
	attributes: {
		connection: {
			nsg_ids?: [...string]
			database_id?:          string
			ssl_cert?:             string
			replication_username?: string
			database_name?:        string
			defined_tags?: [_]: string
			ssl_crl?:  string
			username!: string
			system_tags: [_]: string
			connection_string?: string
			ssh_key?:           string
			password!:          string
			additional_attributes?: [...{
				value?: string
				name?:  string
			}]
			replication_password?: string
			private_endpoint_id:   string
			wallet?:               string
			freeform_tags?: [_]: string
			ingress_ips: [...{
				ingress_ip: string
			}]
			ssh_host?:          string
			time_created:       string
			subnet_id?:         string
			state:              string
			vault_id!:          string
			secret_id:          string
			host?:              string
			key_id!:            string
			lifecycle_details:  string
			time_updated:       string
			db_system_id?:      string
			security_protocol?: string
			ssh_user?:          string
			compartment_id!:    string
			ssl_mode?:          string
			description?:       string
			connection_type!:   string
			ssl_ca?:            string
			ssl_key?:           string
			port?:              int
			ssh_sudo_location?: string
			display_name!:      string
			technology_type!:   string
		}
		job: {
			freeform_tags?: [_]: string
			unsupported_objects: [...{
				type:   string
				object: string
				owner:  string
			}]
			time_created: string
			progress: [...{
				current_phase:  string
				current_status: string
				phases: [...{
					editable_parameter_files: [...string]
					extract: [...{
						message: string
						type:    string
					}]
					issue: string
					log_location: [...{
						bucket:    string
						namespace: string
						object:    string
					}]
					action:                      string
					is_suspend_available:        bool
					name:                        string
					status:                      string
					duration_in_ms:              int
					is_advisor_report_available: bool
					progress:                    int
				}]
			}]
			system_tags: [_]: string
			lifecycle_details: string
			parameter_file_versions: [...{
				defined_tags: [_]: string
				time_created: string
				is_factory:   bool
				is_current:   bool
				name:         string
				system_tags: [_]: string
				freeform_tags: [_]: string
				kind:        string
				description: string
			}]
			job_id!:       string
			state:         string
			type:          string
			display_name?: string
			migration_id:  string
			defined_tags?: [_]: string
			suspend_trigger?: int
			time_updated:     string
		}
		migration: {
			lifecycle_details: string
			wait_after:        string
			time_updated:      string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			ggs_details?: [...{
				acceptable_lag?: int
				extract?: [...{
					performance_profile?: string
					long_trans_duration?: int
				}]
				replicat?: [...{
					performance_profile?: string
				}]
				ggs_deployment: [...{
					deployment_id:                   string
					ggs_admin_credentials_secret_id: string
				}]
			}]
			target_database_connection_id!: string
			include_objects?: [...{
				owner?:                                   string
				schema?:                                  string
				type?:                                    string
				object!:                                  string
				is_omit_excluded_table_from_replication?: bool
			}]
			description?:                   string
			display_name?:                  string
			time_last_migration:            string
			source_database_connection_id!: string
			compartment_id!:                string
			hub_details?: [...{
				url!:            string
				vault_id!:       string
				acceptable_lag?: int
				compute_id?:     string
				extract?: [...{
					performance_profile?: string
					long_trans_duration?: int
				}]
				replicat?: [...{
					performance_profile?: string
				}]
				key_id!: string
				rest_admin_credentials!: [...{
					password!: string
					username!: string
				}]
			}]
			initial_load_settings?: [...{
				import_directory_object?: [...{
					name?: string
					path?: string
				}]
				tablespace_details?: [...{
					is_auto_create?:     bool
					is_big_file?:        bool
					remap_target?:       string
					target_type!:        string
					block_size_in_kbs?:  string
					extend_size_in_mbs?: int
				}]
				handle_grant_errors?: string
				metadata_remaps?: [...{
					new_value?: string
					old_value?: string
					type?:      string
				}]
				primary_key_compatibility?: string
				job_mode!:                  string
				data_pump_parameters?: [...{
					exclude_parameters?: [...string]
					export_parallelism_degree?: int
					import_parallelism_degree?: int
					is_cluster?:                bool
					table_exists_action?:       string
					estimate?:                  string
				}]
				export_directory_object?: [...{
					path?: string
					name?: string
				}]
				is_consistent?:              bool
				is_ignore_existing_objects?: bool
				is_tz_utc?:                  bool
				compatibility?: [...string]
			}]
			bulk_include_exclude_data?:               string
			executing_job_id:                         string
			source_container_database_connection_id?: string
			exclude_objects?: [...{
				schema?:                                  string
				type?:                                    string
				object!:                                  string
				is_omit_excluded_table_from_replication?: bool
				owner?:                                   string
			}]
			state: string
			data_transfer_medium_details?: [...{
				target?: [...{
					kind!:            string
					oci_home?:        string
					wallet_location?: string
				}]
				region?: string
				object_storage_bucket?: [...{
					bucket?:    string
					namespace?: string
				}]
				secret_access_key?: string
				source?: [...{
					wallet_location?: string
					kind!:            string
					oci_home?:        string
				}]
				access_key_id?:                  string
				name?:                           string
				shared_storage_mount_target_id?: string
				type!:                           string
			}]
			database_combination!: string
			time_created:          string
			advisor_settings?: [...{
				is_ignore_errors?: bool
				is_skip_advisor?:  bool
			}]
			system_tags: [_]: string
			advanced_parameters?: [...{
				data_type?: string
				name?:      string
				value?:     string
			}]
			type!: string
		}
	}
	arguments: {
		connection: {
			defined_tags?: [_]: string
			database_id?:          string
			description?:          string
			ssh_user?:             string
			ssh_host?:             string
			port?:                 int
			ssl_cert?:             string
			replication_password?: string
			ssl_ca?:               string
			additional_attributes?: [...{
				name?:  string
				value?: string
			}]
			connection_string?: string
			security_protocol?: string
			host?:              string
			freeform_tags?: [_]: string
			password!: string
			ssl_crl?:  string
			key_id!:   string
			nsg_ids?: [...string]
			connection_type!:      string
			database_name?:        string
			ssh_sudo_location?:    string
			display_name!:         string
			username!:             string
			ssl_key?:              string
			vault_id!:             string
			compartment_id!:       string
			subnet_id?:            string
			replication_username?: string
			ssl_mode?:             string
			db_system_id?:         string
			wallet?:               string
			technology_type!:      string
			ssh_key?:              string
		}
		job: {
			job_id!:          string
			suspend_trigger?: int
			display_name?:    string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		migration: {
			database_combination!: string
			data_transfer_medium_details?: [...{
				target?: [...{
					kind!:            string
					oci_home?:        string
					wallet_location?: string
				}]
				type!: string
				object_storage_bucket?: [...{
					bucket?:    string
					namespace?: string
				}]
				region?:            string
				secret_access_key?: string
				source?: [...{
					wallet_location?: string
					kind!:            string
					oci_home?:        string
				}]
				shared_storage_mount_target_id?: string
				access_key_id?:                  string
				name?:                           string
			}]
			compartment_id!: string
			initial_load_settings?: [...{
				is_ignore_existing_objects?: bool
				primary_key_compatibility?:  string
				compatibility?: [...string]
				handle_grant_errors?: string
				is_consistent?:       bool
				data_pump_parameters?: [...{
					is_cluster?:          bool
					table_exists_action?: string
					estimate?:            string
					exclude_parameters?: [...string]
					export_parallelism_degree?: int
					import_parallelism_degree?: int
				}]
				import_directory_object?: [...{
					path?: string
					name?: string
				}]
				is_tz_utc?: bool
				export_directory_object?: [...{
					name?: string
					path?: string
				}]
				metadata_remaps?: [...{
					new_value?: string
					old_value?: string
					type?:      string
				}]
				tablespace_details?: [...{
					is_auto_create?:     bool
					is_big_file?:        bool
					remap_target?:       string
					target_type!:        string
					block_size_in_kbs?:  string
					extend_size_in_mbs?: int
				}]
				job_mode!: string
			}]
			ggs_details?: [...{
				replicat?: [...{
					performance_profile?: string
				}]
				acceptable_lag?: int
				extract?: [...{
					long_trans_duration?: int
					performance_profile?: string
				}]
			}]
			advisor_settings?: [...{
				is_ignore_errors?: bool
				is_skip_advisor?:  bool
			}]
			source_database_connection_id!: string
			hub_details?: [...{
				replicat?: [...{
					performance_profile?: string
				}]
				key_id!: string
				rest_admin_credentials!: [...{
					password!: string
					username!: string
				}]
				url!:            string
				vault_id!:       string
				acceptable_lag?: int
				compute_id?:     string
				extract?: [...{
					long_trans_duration?: int
					performance_profile?: string
				}]
			}]
			bulk_include_exclude_data?: string
			description?:               string
			freeform_tags?: [_]: string
			advanced_parameters?: [...{
				data_type?: string
				name?:      string
				value?:     string
			}]
			type!:         string
			display_name?: string
			exclude_objects?: [...{
				schema?:                                  string
				type?:                                    string
				object!:                                  string
				is_omit_excluded_table_from_replication?: bool
				owner?:                                   string
			}]
			include_objects?: [...{
				owner?:                                   string
				schema?:                                  string
				type?:                                    string
				object!:                                  string
				is_omit_excluded_table_from_replication?: bool
			}]
			defined_tags?: [_]: string
			source_container_database_connection_id?: string
			target_database_connection_id!:           string
		}
	}
}
#data: {
	connection: connection_id!: string
	job: job_id!: string
	migration: migration_id!: string
	migration_object_types: {
		connection_type!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	connections: {
		source_connection_id?: string
		state?:                string
		technology_type?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		connection_type?: [...string]
		display_name?: string
	}
	job_advisor_report: job_id!: string
	job_output: job_id!: string
	jobs: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
		migration_id!: string
	}
	migrations: migration_id!: string
}

