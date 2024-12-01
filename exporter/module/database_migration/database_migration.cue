package database_migration

#resource: {
	attributes: {
		connection: {
			db_system_id?:         string
			wallet?:               string
			ssh_host?:             string
			key_id!:               string
			replication_username?: string
			password!:             string
			username!:             string
			additional_attributes?: [...{
				name?:  string
				value?: string
			}]
			defined_tags?: [_]: string
			system_tags: [_]: string
			description?:  string
			display_name!: string
			freeform_tags?: [_]: string
			subnet_id?:            string
			ssh_user?:             string
			replication_password?: string
			ssh_key?:              string
			host?:                 string
			compartment_id!:       string
			nsg_ids?: [...string]
			ssl_crl?:     string
			time_created: string
			time_updated: string
			ssl_key?:     string
			ingress_ips: [...{
				ingress_ip: string
			}]
			ssl_cert?:           string
			database_name?:      string
			connection_string?:  string
			ssl_ca?:             string
			ssl_mode?:           string
			lifecycle_details:   string
			secret_id:           string
			connection_type!:    string
			security_protocol?:  string
			ssh_sudo_location?:  string
			state:               string
			vault_id!:           string
			port?:               int
			private_endpoint_id: string
			technology_type!:    string
			database_id?:        string
		}
		job: {
			defined_tags?: [_]: string
			unsupported_objects: [...{
				object: string
				owner:  string
				type:   string
			}]
			time_created: string
			freeform_tags?: [_]: string
			state:             string
			time_updated:      string
			job_id!:           string
			type:              string
			lifecycle_details: string
			progress: [...{
				current_phase:  string
				current_status: string
				phases: [...{
					issue:          string
					progress:       int
					duration_in_ms: int
					extract: [...{
						message: string
						type:    string
					}]
					status: string
					editable_parameter_files: [...string]
					is_advisor_report_available: bool
					log_location: [...{
						namespace: string
						object:    string
						bucket:    string
					}]
					name:                 string
					action:               string
					is_suspend_available: bool
				}]
			}]
			system_tags: [_]: string
			suspend_trigger?: int
			parameter_file_versions: [...{
				defined_tags: [_]: string
				description: string
				name:        string
				system_tags: [_]: string
				is_current:   bool
				is_factory:   bool
				kind:         string
				time_created: string
				freeform_tags: [_]: string
			}]
			migration_id:  string
			display_name?: string
		}
		migration: {
			type!: string
			data_transfer_medium_details?: [...{
				access_key_id?: string
				object_storage_bucket?: [...{
					bucket?:    string
					namespace?: string
				}]
				region?: string
				target?: [...{
					wallet_location?: string
					kind!:            string
					oci_home?:        string
				}]
				type!:              string
				secret_access_key?: string
				source?: [...{
					oci_home?:        string
					wallet_location?: string
					kind!:            string
				}]
				name?:                           string
				shared_storage_mount_target_id?: string
			}]
			exclude_objects?: [...{
				type?:                                    string
				object!:                                  string
				is_omit_excluded_table_from_replication?: bool
				owner?:                                   string
				schema?:                                  string
			}]
			bulk_include_exclude_data?: string
			freeform_tags?: [_]: string
			include_objects?: [...{
				owner?:                                   string
				schema?:                                  string
				type?:                                    string
				object!:                                  string
				is_omit_excluded_table_from_replication?: bool
			}]
			database_combination!: string
			description?:          string
			executing_job_id:      string
			defined_tags?: [_]: string
			advisor_settings?: [...{
				is_ignore_errors?: bool
				is_skip_advisor?:  bool
			}]
			display_name?: string
			state:         string
			time_created:  string
			ggs_details?: [...{
				acceptable_lag?: int
				extract?: [...{
					long_trans_duration?: int
					performance_profile?: string
				}]
				replicat?: [...{
					performance_profile?: string
				}]
				ggs_deployment: [...{
					deployment_id:                   string
					ggs_admin_credentials_secret_id: string
				}]
			}]
			hub_details?: [...{
				compute_id?: string
				extract?: [...{
					long_trans_duration?: int
					performance_profile?: string
				}]
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
			}]
			time_updated:                             string
			wait_after:                               string
			source_container_database_connection_id?: string
			target_database_connection_id!:           string
			system_tags: [_]: string
			compartment_id!: string
			initial_load_settings?: [...{
				import_directory_object?: [...{
					path?: string
					name?: string
				}]
				is_consistent?:             bool
				is_tz_utc?:                 bool
				handle_grant_errors?:       string
				primary_key_compatibility?: string
				data_pump_parameters?: [...{
					import_parallelism_degree?: int
					is_cluster?:                bool
					table_exists_action?:       string
					estimate?:                  string
					exclude_parameters?: [...string]
					export_parallelism_degree?: int
				}]
				metadata_remaps?: [...{
					type?:      string
					new_value?: string
					old_value?: string
				}]
				job_mode!: string
				export_directory_object?: [...{
					name?: string
					path?: string
				}]
				is_ignore_existing_objects?: bool
				tablespace_details?: [...{
					block_size_in_kbs?:  string
					extend_size_in_mbs?: int
					is_auto_create?:     bool
					is_big_file?:        bool
					remap_target?:       string
					target_type!:        string
				}]
				compatibility?: [...string]
			}]
			time_last_migration:            string
			lifecycle_details:              string
			source_database_connection_id!: string
			advanced_parameters?: [...{
				data_type?: string
				name?:      string
				value?:     string
			}]
		}
	}
	arguments: {
		connection: {
			connection_type!: string
			nsg_ids?: [...string]
			connection_string?: string
			database_id?:       string
			freeform_tags?: [_]: string
			subnet_id?:         string
			ssl_ca?:            string
			vault_id!:          string
			ssh_user?:          string
			compartment_id!:    string
			db_system_id?:      string
			description?:       string
			ssl_cert?:          string
			host?:              string
			database_name?:     string
			ssh_key?:           string
			display_name!:      string
			ssl_crl?:           string
			ssh_sudo_location?: string
			ssl_key?:           string
			technology_type!:   string
			wallet?:            string
			ssh_host?:          string
			key_id!:            string
			additional_attributes?: [...{
				name?:  string
				value?: string
			}]
			defined_tags?: [_]: string
			port?:                 int
			ssl_mode?:             string
			username!:             string
			security_protocol?:    string
			replication_username?: string
			replication_password?: string
			password!:             string
		}
		job: {
			job_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			display_name?:    string
			suspend_trigger?: int
		}
		migration: {
			advanced_parameters?: [...{
				data_type?: string
				name?:      string
				value?:     string
			}]
			hub_details?: [...{
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
				url!:            string
				vault_id!:       string
				acceptable_lag?: int
				compute_id?:     string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			include_objects?: [...{
				is_omit_excluded_table_from_replication?: bool
				owner?:                                   string
				schema?:                                  string
				type?:                                    string
				object!:                                  string
			}]
			database_combination!:          string
			description?:                   string
			source_database_connection_id!: string
			data_transfer_medium_details?: [...{
				secret_access_key?:              string
				access_key_id?:                  string
				name?:                           string
				shared_storage_mount_target_id?: string
				source?: [...{
					kind!:            string
					oci_home?:        string
					wallet_location?: string
				}]
				target?: [...{
					kind!:            string
					oci_home?:        string
					wallet_location?: string
				}]
				object_storage_bucket?: [...{
					bucket?:    string
					namespace?: string
				}]
				region?: string
				type!:   string
			}]
			advisor_settings?: [...{
				is_ignore_errors?: bool
				is_skip_advisor?:  bool
			}]
			display_name?: string
			exclude_objects?: [...{
				type?:                                    string
				object!:                                  string
				is_omit_excluded_table_from_replication?: bool
				owner?:                                   string
				schema?:                                  string
			}]
			target_database_connection_id!: string
			type!:                          string
			bulk_include_exclude_data?:     string
			initial_load_settings?: [...{
				data_pump_parameters?: [...{
					estimate?: string
					exclude_parameters?: [...string]
					export_parallelism_degree?: int
					import_parallelism_degree?: int
					is_cluster?:                bool
					table_exists_action?:       string
				}]
				handle_grant_errors?: string
				metadata_remaps?: [...{
					new_value?: string
					old_value?: string
					type?:      string
				}]
				primary_key_compatibility?: string
				compatibility?: [...string]
				job_mode!: string
				export_directory_object?: [...{
					path?: string
					name?: string
				}]
				import_directory_object?: [...{
					path?: string
					name?: string
				}]
				is_consistent?:              bool
				is_ignore_existing_objects?: bool
				is_tz_utc?:                  bool
				tablespace_details?: [...{
					extend_size_in_mbs?: int
					is_auto_create?:     bool
					is_big_file?:        bool
					remap_target?:       string
					target_type!:        string
					block_size_in_kbs?:  string
				}]
			}]
			source_container_database_connection_id?: string
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
		}
	}
}
#data: {
	jobs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
		migration_id!: string
		state?:        string
	}
	migration_object_types: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		connection_type!: string
	}
	connection: connection_id!: string
	connections: {
		compartment_id!: string
		connection_type?: [...string]
		display_name?:         string
		source_connection_id?: string
		state?:                string
		technology_type?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	job: job_id!: string
	job_advisor_report: job_id!: string
	job_output: job_id!: string
	migration: migration_id!: string
	migrations: migration_id!: string
}

