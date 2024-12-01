package golden_gate

#resource: {
	attributes: {
		connection: {
			client_secret?:                      string
			sas_token_secret_id?:                string
			vault_id?:                           string
			key_store_password?:                 string
			port?:                               int
			lifecycle_details:                   string
			sas_token?:                          string
			jndi_initial_context_factory?:       string
			time_updated:                        string
			trust_store_secret_id?:              string
			key_store_secret_id?:                string
			secret_access_key?:                  string
			should_validate_server_certificate?: bool
			database_name?:                      string
			ssl_cert?:                           string
			freeform_tags?: [_]: string
			trigger_refresh?:                    bool
			connection_factory?:                 string
			user_id?:                            string
			db_system_id?:                       string
			private_key_passphrase_secret_id?:   string
			ssl_key_password_secret_id?:         string
			ssl_server_certificate?:             string
			account_name?:                       string
			service_account_key_file_secret_id?: string
			account_key?:                        string
			client_id?:                          string
			ingress_ips: [...{
				ingress_ip: string
			}]
			connection_string?:            string
			jndi_provider_url?:            string
			should_use_jndi?:              bool
			security_protocol?:            string
			client_secret_secret_id?:      string
			description?:                  string
			technology_type!:              string
			ssl_client_keystoredb?:        string
			redis_cluster_id?:             string
			host?:                         string
			core_site_xml?:                string
			producer_properties?:          string
			password?:                     string
			azure_tenant_id?:              string
			key_store_password_secret_id?: string
			locks?: [...{
				type!:               string
				message?:            string
				related_resource_id: string
				time_created:        string
			}]
			wallet_secret_id?:          string
			jndi_security_credentials?: string
			jndi_security_principal?:   string
			url?:                       string
			session_mode?:              string
			access_key_id?:             string
			fingerprint?:               string
			ssl_mode?:                  string
			public_key_fingerprint?:    string
			region?:                    string
			servers?:                   string
			stream_pool_id?:            string
			nsg_ids?: [...string]
			account_key_secret_id?: string
			defined_tags?: [_]: string
			compartment_id!:                      string
			trust_store?:                         string
			private_ip?:                          string
			consumer_properties?:                 string
			database_id?:                         string
			wallet?:                              string
			key_store?:                           string
			display_name!:                        string
			secret_access_key_secret_id?:         string
			jndi_connection_factory?:             string
			private_key_passphrase?:              string
			ssl_client_keystoredb_secret_id?:     string
			jndi_security_credentials_secret_id?: string
			system_tags: [_]: string
			ssl_crl?:                       string
			ssl_client_keystash?:           string
			authentication_type?:           string
			private_key_file?:              string
			service_account_key_file?:      string
			key_id?:                        string
			ssl_key_password?:              string
			connection_type!:               string
			routing_method?:                string
			ssl_key?:                       string
			ssl_client_keystash_secret_id?: string
			authentication_mode?:           string
			deployment_id?:                 string
			username?:                      string
			time_created:                   string
			password_secret_id?:            string
			endpoint?:                      string
			ssl_ca?:                        string
			trust_store_password?:          string
			bootstrap_servers?: [...{
				host?:       string
				port?:       int
				private_ip?: string
			}]
			subnet_id?:                      string
			private_key_file_secret_id?:     string
			tenancy_id?:                     string
			ssl_key_secret_id?:              string
			is_lock_override?:               bool
			connection_url?:                 string
			trust_store_password_secret_id?: string
			state:                           string
			additional_attributes?: [...{
				name?:  string
				value?: string
			}]
			does_use_secret_ids?: bool
		}
		connection_assignment: {
			time_created:      string
			time_updated:      string
			connection_id!:    string
			deployment_id!:    string
			is_lock_override?: bool
			alias_name:        string
			compartment_id:    string
			state:             string
		}
		database_registration: {
			time_updated:       string
			connection_string?: string
			lifecycle_details:  string
			rce_private_ip:     string
			system_tags: [_]: string
			description?:    string
			username!:       string
			state:           string
			time_created:    string
			alias_name!:     string
			compartment_id!: string
			wallet?:         string
			defined_tags?: [_]: string
			session_mode?: string
			display_name!: string
			subnet_id?:    string
			secret_id:     string
			freeform_tags?: [_]: string
			database_id?:           string
			ip_address?:            string
			key_id?:                string
			vault_id?:              string
			fqdn!:                  string
			password!:              string
			secret_compartment_id?: string
		}
		deployment: {
			environment_type?:            string
			next_maintenance_description: string
			ingress_ips: [...{
				ingress_ip: string
			}]
			is_storage_utilization_limit_exceeded: bool
			load_balancer_id:                      string
			time_upgrade_required:                 string
			subnet_id!:                            string
			is_auto_scaling_enabled!:              bool
			is_latest_version:                     bool
			deployment_diagnostic_data: [...{
				diagnostic_state:      string
				namespace:             string
				object:                string
				time_diagnostic_end:   string
				time_diagnostic_start: string
				bucket:                string
			}]
			license_model!:           string
			time_of_next_maintenance: string
			public_ip_address:        string
			deployment_type!:         string
			ogg_data?: [...{
				credential_store?: string
				group_to_roles_mapping?: [...{
					administrator_group_id?: string
					operator_group_id?:      string
					user_group_id?:          string
					security_group_id!:      string
				}]
				password_secret_id?: string
				admin_password?:     string
				certificate?:        string
				identity_domain_id?: string
				key?:                string
				ogg_version?:        string
				deployment_name!:    string
				admin_username?:     string
			}]
			deployment_url:        string
			lifecycle_details:     string
			fqdn?:                 string
			deployment_backup_id?: string
			is_lock_override?:     bool
			state?:                string
			time_created:          string
			description?:          string
			is_healthy:            bool
			category:              string
			is_public?:            bool
			system_tags: [_]: string
			nsg_ids?: [...string]
			load_balancer_subnet_id?:         string
			storage_utilization_in_bytes:     string
			lifecycle_sub_state:              string
			time_updated:                     string
			time_ogg_version_supported_until: string
			private_ip_address:               string
			compartment_id!:                  string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			maintenance_window?: [...{
				start_hour!: int
				day!:        string
			}]
			cpu_core_count!: int
			maintenance_configuration?: [...{
				bundle_release_upgrade_period_in_days?:   int
				interim_release_upgrade_period_in_days?:  int
				is_interim_release_auto_upgrade_enabled?: bool
				major_release_upgrade_period_in_days?:    int
				security_patch_upgrade_period_in_days?:   int
			}]
			next_maintenance_action_type: string
			display_name!:                string
			locks?: [...{
				type!:               string
				message?:            string
				related_resource_id: string
				time_created:        string
			}]
		}
		deployment_backup: {
			compartment_id!:      string
			namespace!:           string
			ogg_version:          string
			time_backup_finished: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			deployment_id!:    string
			is_lock_override?: bool
			time_of_backup:    string
			time_updated:      string
			object!:           string
			deployment_type:   string
			locks?: [...{
				type!:               string
				message?:            string
				related_resource_id: string
				time_created:        string
			}]
			state:             string
			time_created:      string
			bucket!:           string
			is_metadata_only?: bool
			lifecycle_details: string
			size_in_bytes:     float
			backup_type:       string
			is_automatic:      bool
			display_name!:     string
		}
		deployment_certificate: {
			subject:              string
			deployment_id!:       string
			key!:                 string
			is_lock_override?:    bool
			certificate_content!: string
			public_key_algorithm: string
			sha1hash:             string
			is_self_signed:       bool
			time_created:         string
			version:              string
			issuer:               string
			public_key_size:      string
			subject_key_id:       string
			time_valid_to:        string
			authority_key_id:     string
			state:                string
			time_valid_from:      string
			md5hash:              string
			public_key:           string
			serial:               string
			is_ca:                bool
		}
	}
	arguments: {
		connection: {
			trigger_refresh?:                    bool
			is_lock_override?:                   bool
			database_name?:                      string
			subnet_id?:                          string
			private_key_file_secret_id?:         string
			private_key_file?:                   string
			username?:                           string
			display_name!:                       string
			ssl_server_certificate?:             string
			consumer_properties?:                string
			service_account_key_file_secret_id?: string
			vault_id?:                           string
			sas_token_secret_id?:                string
			trust_store_password_secret_id?:     string
			ssl_client_keystoredb_secret_id?:    string
			jndi_security_principal?:            string
			wallet?:                             string
			ssl_client_keystoredb?:              string
			trust_store_secret_id?:              string
			key_id?:                             string
			key_store_secret_id?:                string
			connection_url?:                     string
			ssl_client_keystash_secret_id?:      string
			freeform_tags?: [_]: string
			azure_tenant_id?: string
			bootstrap_servers?: [...{
				port?:       int
				private_ip?: string
				host?:       string
			}]
			private_ip?:                       string
			authentication_mode?:              string
			description?:                      string
			redis_cluster_id?:                 string
			trust_store?:                      string
			routing_method?:                   string
			secret_access_key_secret_id?:      string
			deployment_id?:                    string
			ssl_ca?:                           string
			connection_factory?:               string
			should_use_jndi?:                  bool
			url?:                              string
			ssl_key_secret_id?:                string
			private_key_passphrase_secret_id?: string
			key_store_password_secret_id?:     string
			producer_properties?:              string
			fingerprint?:                      string
			jndi_security_credentials?:        string
			user_id?:                          string
			database_id?:                      string
			wallet_secret_id?:                 string
			authentication_type?:              string
			client_secret_secret_id?:          string
			technology_type!:                  string
			client_secret?:                    string
			ssl_mode?:                         string
			additional_attributes?: [...{
				name?:  string
				value?: string
			}]
			jndi_initial_context_factory?: string
			trust_store_password?:         string
			service_account_key_file?:     string
			ssl_key_password_secret_id?:   string
			private_key_passphrase?:       string
			region?:                       string
			db_system_id?:                 string
			port?:                         int
			jndi_connection_factory?:      string
			ssl_cert?:                     string
			tenancy_id?:                   string
			jndi_provider_url?:            string
			stream_pool_id?:               string
			access_key_id?:                string
			core_site_xml?:                string
			ssl_key_password?:             string
			key_store?:                    string
			client_id?:                    string
			ssl_client_keystash?:          string
			servers?:                      string
			endpoint?:                     string
			account_name?:                 string
			locks?: [...{
				type!:    string
				message?: string
			}]
			ssl_key?:           string
			security_protocol?: string
			defined_tags?: [_]: string
			account_key?:                        string
			does_use_secret_ids?:                bool
			connection_type!:                    string
			secret_access_key?:                  string
			account_key_secret_id?:              string
			key_store_password?:                 string
			ssl_crl?:                            string
			public_key_fingerprint?:             string
			should_validate_server_certificate?: bool
			connection_string?:                  string
			compartment_id!:                     string
			session_mode?:                       string
			nsg_ids?: [...string]
			password?:                            string
			sas_token?:                           string
			jndi_security_credentials_secret_id?: string
			password_secret_id?:                  string
			host?:                                string
		}
		connection_assignment: {
			connection_id!:    string
			deployment_id!:    string
			is_lock_override?: bool
		}
		database_registration: {
			alias_name!:            string
			password!:              string
			connection_string?:     string
			fqdn!:                  string
			database_id?:           string
			description?:           string
			session_mode?:          string
			secret_compartment_id?: string
			freeform_tags?: [_]: string
			key_id?:       string
			wallet?:       string
			display_name!: string
			username!:     string
			defined_tags?: [_]: string
			subnet_id?:      string
			ip_address?:     string
			vault_id?:       string
			compartment_id!: string
		}
		deployment: {
			cpu_core_count!:   int
			environment_type?: string
			is_lock_override?: bool
			description?:      string
			nsg_ids?: [...string]
			defined_tags?: [_]: string
			maintenance_configuration?: [...{
				security_patch_upgrade_period_in_days?:   int
				bundle_release_upgrade_period_in_days?:   int
				interim_release_upgrade_period_in_days?:  int
				is_interim_release_auto_upgrade_enabled?: bool
				major_release_upgrade_period_in_days?:    int
			}]
			state?:           string
			is_public?:       bool
			subnet_id!:       string
			deployment_type!: string
			ogg_data?: [...{
				password_secret_id?: string
				group_to_roles_mapping?: [...{
					security_group_id!:      string
					administrator_group_id?: string
					operator_group_id?:      string
					user_group_id?:          string
				}]
				identity_domain_id?: string
				key?:                string
				admin_password?:     string
				ogg_version?:        string
				deployment_name!:    string
				admin_username?:     string
				certificate?:        string
				credential_store?:   string
			}]
			freeform_tags?: [_]: string
			maintenance_window?: [...{
				day!:        string
				start_hour!: int
			}]
			fqdn?:                    string
			load_balancer_subnet_id?: string
			deployment_backup_id?:    string
			display_name!:            string
			is_auto_scaling_enabled!: bool
			license_model!:           string
			locks?: [...{
				type!:    string
				message?: string
			}]
			compartment_id!: string
		}
		deployment_backup: {
			locks?: [...{
				message?: string
				type!:    string
			}]
			bucket!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			is_metadata_only?: bool
			compartment_id!:   string
			display_name!:     string
			is_lock_override?: bool
			deployment_id!:    string
			namespace!:        string
			object!:           string
		}
		deployment_certificate: {
			key!:                 string
			is_lock_override?:    bool
			deployment_id!:       string
			certificate_content!: string
		}
	}
}
#data: {
	connection: connection_id!: string
	connection_assignments: {
		connection_id?: string
		deployment_id?: string
		name?:          string
		state?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	deployment_certificates: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		deployment_id!: string
		state?:         string
	}
	deployment_types: {
		display_name?: string
		ogg_version?:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		deployment_type?: string
	}
	deployments: {
		assignable_connection_id?:  string
		supported_connection_type?: string
		display_name?:              string
		fqdn?:                      string
		lifecycle_sub_state?:       string
		state?:                     string
		assigned_connection_id?:    string
		compartment_id!:            string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	database_registrations: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	deployment_certificate: {
		certificate_key!: string
		deployment_id!:   string
	}
	deployment_environments: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	deployment_upgrade: deployment_upgrade_id!: string
	message: deployment_id!: string
	trail_files: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		deployment_id!: string
		display_name?:  string
		trail_file_id!: string
	}
	trail_sequences: {
		display_name!:      string
		trail_file_id!:     string
		trail_sequence_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		deployment_id!: string
	}
	database_registration: database_registration_id!: string
	deployment_backups: {
		compartment_id!: string
		deployment_id?:  string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	deployment_type: {
		display_name?:   string
		compartment_id!: string
	}
	deployment_upgrades: {
		compartment_id!: string
		deployment_id?:  string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	deployment_versions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		deployment_id?:   string
		deployment_type?: string
	}
	messages: {
		deployment_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	trail_file: {
		deployment_id!: string
		display_name?:  string
		trail_file_id!: string
	}
	trail_sequence: {
		trail_sequence_id!: string
		deployment_id!:     string
		display_name!:      string
		trail_file_id!:     string
	}
	connection_assignment: connection_assignment_id!: string
	connections: {
		assignable_deployment_type?: string
		display_name?:               string
		compartment_id!:             string
		connection_type?: [...string]
		state?:                    string
		assignable_deployment_id?: string
		assigned_deployment_id?:   string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		technology_type?: [...string]
	}
	deployment: deployment_id!: string
	deployment_backup: deployment_backup_id!: string
}

