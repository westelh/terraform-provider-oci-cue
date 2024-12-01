package golden_gate

#resource: {
	attributes: {
		deployment: {
			cpu_core_count!:          int
			is_auto_scaling_enabled!: bool
			ingress_ips: [...{
				ingress_ip: string
			}]
			time_updated:             string
			time_of_next_maintenance: string
			deployment_backup_id?:    string
			private_ip_address:       string
			is_healthy:               bool
			fqdn?:                    string
			locks?: [...{
				message?:            string
				related_resource_id: string
				time_created:        string
				type!:               string
			}]
			state?:                                string
			deployment_type!:                      string
			is_storage_utilization_limit_exceeded: bool
			system_tags: [_]: string
			nsg_ids?: [...string]
			defined_tags?: [_]: string
			time_upgrade_required:        string
			next_maintenance_action_type: string
			maintenance_configuration?: [...{
				security_patch_upgrade_period_in_days?:   int
				bundle_release_upgrade_period_in_days?:   int
				interim_release_upgrade_period_in_days?:  int
				is_interim_release_auto_upgrade_enabled?: bool
				major_release_upgrade_period_in_days?:    int
			}]
			category:          string
			public_ip_address: string
			environment_type?: string
			deployment_diagnostic_data: [...{
				object:                string
				time_diagnostic_end:   string
				time_diagnostic_start: string
				bucket:                string
				diagnostic_state:      string
				namespace:             string
			}]
			license_model!: string
			maintenance_window?: [...{
				day!:        string
				start_hour!: int
			}]
			time_ogg_version_supported_until: string
			freeform_tags?: [_]: string
			display_name!: string
			ogg_data?: [...{
				deployment_name!: string
				admin_password?:  string
				admin_username?:  string
				group_to_roles_mapping?: [...{
					security_group_id!:      string
					administrator_group_id?: string
					operator_group_id?:      string
					user_group_id?:          string
				}]
				key?:                string
				certificate?:        string
				credential_store?:   string
				password_secret_id?: string
				identity_domain_id?: string
				ogg_version?:        string
			}]
			subnet_id!:                   string
			description?:                 string
			is_public?:                   bool
			next_maintenance_description: string
			storage_utilization_in_bytes: string
			deployment_url:               string
			time_created:                 string
			is_latest_version:            bool
			compartment_id!:              string
			is_lock_override?:            bool
			lifecycle_details:            string
			lifecycle_sub_state:          string
			load_balancer_subnet_id?:     string
			load_balancer_id:             string
		}
		deployment_backup: {
			compartment_id!: string
			system_tags: [_]: string
			time_created:         string
			time_backup_finished: string
			freeform_tags?: [_]: string
			time_of_backup: string
			namespace!:     string
			display_name!:  string
			defined_tags?: [_]: string
			deployment_type: string
			time_updated:    string
			ogg_version:     string
			size_in_bytes:   float
			bucket!:         string
			backup_type:     string
			state:           string
			object!:         string
			locks?: [...{
				type!:               string
				message?:            string
				related_resource_id: string
				time_created:        string
			}]
			is_automatic:      bool
			lifecycle_details: string
			deployment_id!:    string
			is_metadata_only?: bool
			is_lock_override?: bool
		}
		deployment_certificate: {
			public_key_size:      string
			state:                string
			time_created:         string
			deployment_id!:       string
			time_valid_to:        string
			authority_key_id:     string
			serial:               string
			is_ca:                bool
			public_key:           string
			is_lock_override?:    bool
			issuer:               string
			key!:                 string
			subject_key_id:       string
			version:              string
			public_key_algorithm: string
			time_valid_from:      string
			subject:              string
			md5hash:              string
			is_self_signed:       bool
			sha1hash:             string
			certificate_content!: string
		}
		connection: {
			secret_access_key?:          string
			key_id?:                     string
			client_id?:                  string
			subnet_id?:                  string
			jndi_provider_url?:          string
			private_key_file_secret_id?: string
			compartment_id!:             string
			defined_tags?: [_]: string
			technology_type!:        string
			authentication_type?:    string
			ssl_mode?:               string
			public_key_fingerprint?: string
			db_system_id?:           string
			user_id?:                string
			producer_properties?:    string
			ssl_key?:                string
			endpoint?:               string
			connection_factory?:     string
			bootstrap_servers?: [...{
				port?:       int
				private_ip?: string
				host?:       string
			}]
			does_use_secret_ids?:       bool
			wallet_secret_id?:          string
			time_created:               string
			ssl_ca?:                    string
			client_secret?:             string
			routing_method?:            string
			private_ip?:                string
			jndi_security_credentials?: string
			database_id?:               string
			description?:               string
			ingress_ips: [...{
				ingress_ip: string
			}]
			region?:                  string
			sas_token?:               string
			ssl_crl?:                 string
			jndi_connection_factory?: string
			freeform_tags?: [_]: string
			username?:                            string
			should_validate_server_certificate?:  bool
			session_mode?:                        string
			ssl_server_certificate?:              string
			jndi_security_credentials_secret_id?: string
			ssl_client_keystash?:                 string
			ssl_client_keystash_secret_id?:       string
			core_site_xml?:                       string
			jndi_initial_context_factory?:        string
			stream_pool_id?:                      string
			ssl_client_keystoredb_secret_id?:     string
			fingerprint?:                         string
			should_use_jndi?:                     bool
			sas_token_secret_id?:                 string
			account_name?:                        string
			host?:                                string
			access_key_id?:                       string
			ssl_key_secret_id?:                   string
			client_secret_secret_id?:             string
			trust_store_secret_id?:               string
			ssl_client_keystoredb?:               string
			deployment_id?:                       string
			password?:                            string
			service_account_key_file?:            string
			ssl_cert?:                            string
			connection_string?:                   string
			trust_store?:                         string
			ssl_key_password?:                    string
			servers?:                             string
			private_key_passphrase?:              string
			jndi_security_principal?:             string
			vault_id?:                            string
			key_store_password_secret_id?:        string
			connection_type!:                     string
			key_store?:                           string
			private_key_passphrase_secret_id?:    string
			account_key?:                         string
			nsg_ids?: [...string]
			trust_store_password_secret_id?: string
			is_lock_override?:               bool
			locks?: [...{
				time_created:        string
				type!:               string
				message?:            string
				related_resource_id: string
			}]
			system_tags: [_]: string
			account_key_secret_id?:       string
			security_protocol?:           string
			trigger_refresh?:             bool
			key_store_secret_id?:         string
			wallet?:                      string
			connection_url?:              string
			secret_access_key_secret_id?: string
			private_key_file?:            string
			database_name?:               string
			url?:                         string
			state:                        string
			lifecycle_details:            string
			trust_store_password?:        string
			time_updated:                 string
			ssl_key_password_secret_id?:  string
			tenancy_id?:                  string
			display_name!:                string
			additional_attributes?: [...{
				value?: string
				name?:  string
			}]
			azure_tenant_id?:                    string
			port?:                               int
			service_account_key_file_secret_id?: string
			consumer_properties?:                string
			authentication_mode?:                string
			redis_cluster_id?:                   string
			password_secret_id?:                 string
			key_store_password?:                 string
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
			wallet?:       string
			subnet_id?:    string
			fqdn!:         string
			display_name!: string
			freeform_tags?: [_]: string
			session_mode?:          string
			time_created:           string
			lifecycle_details:      string
			time_updated:           string
			description?:           string
			ip_address?:            string
			state:                  string
			database_id?:           string
			secret_compartment_id?: string
			system_tags: [_]: string
			rce_private_ip: string
			key_id?:        string
			password!:      string
			defined_tags?: [_]: string
			connection_string?: string
			username!:          string
			secret_id:          string
			vault_id?:          string
			compartment_id!:    string
			alias_name!:        string
		}
	}
	arguments: {
		deployment: {
			subnet_id!:        string
			description?:      string
			license_model!:    string
			is_lock_override?: bool
			freeform_tags?: [_]: string
			load_balancer_subnet_id?: string
			deployment_backup_id?:    string
			is_public?:               bool
			defined_tags?: [_]: string
			is_auto_scaling_enabled!: bool
			environment_type?:        string
			cpu_core_count!:          int
			compartment_id!:          string
			deployment_type!:         string
			display_name!:            string
			fqdn?:                    string
			locks?: [...{
				message?: string
				type!:    string
			}]
			maintenance_window?: [...{
				day!:        string
				start_hour!: int
			}]
			state?: string
			maintenance_configuration?: [...{
				is_interim_release_auto_upgrade_enabled?: bool
				major_release_upgrade_period_in_days?:    int
				security_patch_upgrade_period_in_days?:   int
				bundle_release_upgrade_period_in_days?:   int
				interim_release_upgrade_period_in_days?:  int
			}]
			nsg_ids?: [...string]
			ogg_data?: [...{
				ogg_version?:        string
				admin_username?:     string
				password_secret_id?: string
				admin_password?:     string
				credential_store?:   string
				group_to_roles_mapping?: [...{
					user_group_id?:          string
					security_group_id!:      string
					administrator_group_id?: string
					operator_group_id?:      string
				}]
				identity_domain_id?: string
				key?:                string
				deployment_name!:    string
				certificate?:        string
			}]
		}
		deployment_backup: {
			deployment_id!: string
			freeform_tags?: [_]: string
			namespace!:        string
			bucket!:           string
			object!:           string
			is_metadata_only?: bool
			locks?: [...{
				type!:    string
				message?: string
			}]
			is_lock_override?: bool
			compartment_id!:   string
			display_name!:     string
			defined_tags?: [_]: string
		}
		deployment_certificate: {
			certificate_content!: string
			key!:                 string
			deployment_id!:       string
			is_lock_override?:    bool
		}
		connection: {
			key_store_password_secret_id?: string
			defined_tags?: [_]: string
			username?:                      string
			trust_store_secret_id?:         string
			authentication_type?:           string
			endpoint?:                      string
			private_key_file?:              string
			service_account_key_file?:      string
			ssl_client_keystash_secret_id?: string
			locks?: [...{
				message?: string
				type!:    string
			}]
			connection_url?:                 string
			security_protocol?:              string
			access_key_id?:                  string
			private_ip?:                     string
			trust_store?:                    string
			deployment_id?:                  string
			trust_store_password_secret_id?: string
			database_name?:                  string
			ssl_crl?:                        string
			jndi_security_principal?:        string
			freeform_tags?: [_]: string
			fingerprint?: string
			wallet?:      string
			bootstrap_servers?: [...{
				port?:       int
				private_ip?: string
				host?:       string
			}]
			key_store_secret_id?:              string
			client_secret?:                    string
			client_secret_secret_id?:          string
			private_key_passphrase_secret_id?: string
			ssl_server_certificate?:           string
			ssl_ca?:                           string
			database_id?:                      string
			ssl_client_keystoredb_secret_id?:  string
			secret_access_key?:                string
			key_store?:                        string
			client_id?:                        string
			jndi_provider_url?:                string
			routing_method?:                   string
			authentication_mode?:              string
			region?:                           string
			public_key_fingerprint?:           string
			connection_factory?:               string
			private_key_passphrase?:           string
			ssl_client_keystash?:              string
			jndi_security_credentials?:        string
			account_name?:                     string
			key_store_password?:               string
			ssl_mode?:                         string
			sas_token?:                        string
			core_site_xml?:                    string
			sas_token_secret_id?:              string
			jndi_initial_context_factory?:     string
			password_secret_id?:               string
			stream_pool_id?:                   string
			consumer_properties?:              string
			does_use_secret_ids?:              bool
			session_mode?:                     string
			technology_type!:                  string
			key_id?:                           string
			password?:                         string
			port?:                             int
			private_key_file_secret_id?:       string
			url?:                              string
			additional_attributes?: [...{
				value?: string
				name?:  string
			}]
			is_lock_override?:                    bool
			service_account_key_file_secret_id?:  string
			account_key_secret_id?:               string
			secret_access_key_secret_id?:         string
			tenancy_id?:                          string
			ssl_key?:                             string
			wallet_secret_id?:                    string
			redis_cluster_id?:                    string
			user_id?:                             string
			ssl_cert?:                            string
			host?:                                string
			compartment_id!:                      string
			connection_string?:                   string
			jndi_connection_factory?:             string
			description?:                         string
			ssl_key_password?:                    string
			connection_type!:                     string
			account_key?:                         string
			should_validate_server_certificate?:  bool
			azure_tenant_id?:                     string
			trigger_refresh?:                     bool
			subnet_id?:                           string
			jndi_security_credentials_secret_id?: string
			trust_store_password?:                string
			producer_properties?:                 string
			display_name!:                        string
			should_use_jndi?:                     bool
			servers?:                             string
			nsg_ids?: [...string]
			db_system_id?:               string
			ssl_key_secret_id?:          string
			vault_id?:                   string
			ssl_client_keystoredb?:      string
			ssl_key_password_secret_id?: string
		}
		connection_assignment: {
			connection_id!:    string
			deployment_id!:    string
			is_lock_override?: bool
		}
		database_registration: {
			fqdn!:     string
			password!: string
			defined_tags?: [_]: string
			alias_name!:            string
			username!:              string
			ip_address?:            string
			secret_compartment_id?: string
			vault_id?:              string
			description?:           string
			freeform_tags?: [_]: string
			key_id?:            string
			display_name!:      string
			compartment_id!:    string
			connection_string?: string
			database_id?:       string
			session_mode?:      string
			wallet?:            string
			subnet_id?:         string
		}
	}
}
#data: {
	connection_assignments: {
		connection_id?: string
		deployment_id?: string
		name?:          string
		state?:         string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
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
	connection_assignment: connection_assignment_id!: string
	deployment_type: {
		display_name?:   string
		compartment_id!: string
	}
	deployment_types: {
		display_name?: string
		ogg_version?:  string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:  string
		deployment_type?: string
	}
	deployment_upgrade: deployment_upgrade_id!: string
	trail_files: {
		deployment_id!: string
		display_name?:  string
		trail_file_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	trail_sequence: {
		trail_sequence_id!: string
		deployment_id!:     string
		display_name!:      string
		trail_file_id!:     string
	}
	database_registrations: {
		display_name?: string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	deployment: deployment_id!: string
	deployment_certificate: {
		deployment_id!:   string
		certificate_key!: string
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
	deployment_versions: {
		deployment_id?:   string
		deployment_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	deployment_environments: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	deployment_upgrades: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		deployment_id?:  string
	}
	deployments: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		fqdn?:                      string
		supported_connection_type?: string
		compartment_id!:            string
		state?:                     string
		lifecycle_sub_state?:       string
		assignable_connection_id?:  string
		assigned_connection_id?:    string
		display_name?:              string
	}
	connection: connection_id!: string
	connections: {
		technology_type?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		assignable_deployment_type?: string
		connection_type?: [...string]
		display_name?:             string
		assigned_deployment_id?:   string
		compartment_id!:           string
		state?:                    string
		assignable_deployment_id?: string
	}
	database_registration: database_registration_id!: string
	deployment_backup: deployment_backup_id!: string
	deployment_backups: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		deployment_id?:  string
		display_name?:   string
		state?:          string
	}
	message: deployment_id!: string
	trail_sequences: {
		trail_sequence_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		deployment_id!: string
		display_name!:  string
		trail_file_id!: string
	}
}

