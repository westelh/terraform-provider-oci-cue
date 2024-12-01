package data_safe

#resource: {
	attributes: {
		set_user_assessment_baseline_management: {
			target_id!:         string
			compartment_id!:    string
			user_assessment_id: string
			assessment_ids: [...string]
		}
		audit_archive_retrieval: {
			end_date!:         string
			error_info:        string
			target_id!:        string
			compartment_id!:   string
			description?:      string
			state:             string
			lifecycle_details: string
			time_completed:    string
			defined_tags?: [_]: string
			audit_event_count: string
			display_name?:     string
			start_date!:       string
			time_of_expiry:    string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			time_requested: string
		}
		database_security_config_management: {
			state:           string
			compartment_id?: string
			description?:    string
			sql_firewall_config?: [...{
				time_status_updated:       string
				exclude_job?:              string
				status?:                   string
				violation_log_auto_purge?: string
			}]
			target_id?:          string
			time_updated:        string
			time_last_refreshed: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			defined_tags?: [_]: string
			refresh_trigger?:  bool
			time_created:      string
			display_name?:     string
			lifecycle_details: string
		}
		library_masking_format: {
			freeform_tags?: [_]: string
			time_updated: string
			format_entries!: [...{
				table_name?: string
				grouping_columns?: [...string]
				type!:                  string
				regular_expression?:    string
				schema_name?:           string
				replace_with?:          string
				start_position?:        int
				user_defined_function?: string
				random_list?: [...string]
				sql_expression?:            string
				end_value?:                 float
				description?:               string
				fixed_string?:              string
				pattern?:                   string
				post_processing_function?:  string
				end_length?:                int
				library_masking_format_id?: string
				start_length?:              int
				start_value?:               float
				column_name?:               string
				end_date?:                  string
				fixed_number?:              float
				length?:                    int
				start_date?:                string
			}]
			description?: string
			time_created: string
			state:        string
			defined_tags?: [_]: string
			sensitive_type_ids?: [...string]
			display_name?:   string
			compartment_id!: string
			source:          string
		}
		report: {
			time_generated: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			compartment_id?:      string
			report_definition_id: string
			state:                string
			type:                 string
			report_id!:           string
			defined_tags?: [_]: string
			mime_type:         string
			description:       string
			display_name:      string
			lifecycle_details: string
		}
		sensitive_type: {
			state:        string
			is_common:    bool
			description?: string
			freeform_tags?: [_]: string
			search_type?: string
			short_name?:  string
			defined_tags?: [_]: string
			default_masking_format_id?: string
			system_tags: [_]: string
			display_name?:       string
			name_pattern?:       string
			compartment_id!:     string
			source:              string
			parent_category_id?: string
			entity_type!:        string
			comment_pattern?:    string
			data_pattern?:       string
			time_created:        string
			time_updated:        string
		}
		audit_trail: {
			audit_trail_id!:             string
			purge_job_status:            string
			time_last_collected:         string
			state?:                      string
			time_updated:                string
			audit_profile_id:            string
			work_request_id:             string
			trail_location:              string
			status:                      string
			trail_source:                string
			audit_collection_start_time: string
			time_created:                string
			lifecycle_details:           string
			system_tags: [_]: string
			compartment_id: string
			defined_tags?: [_]: string
			description?:             string
			resume_trigger?:          int
			purge_job_details:        string
			peer_target_database_key: int
			freeform_tags?: [_]: string
			target_id:              string
			display_name?:          string
			purge_job_time:         string
			is_auto_purge_enabled?: bool
		}
		security_policy_deployment_management: {
			security_policy_id: string
			state:              string
			compartment_id?:    string
			display_name?:      string
			time_created:       string
			lifecycle_details:  string
			target_id?:         string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			time_updated: string
			system_tags: [_]: string
		}
		alert_policy_rule: {
			display_name?:    string
			key:              string
			state:            string
			time_created:     string
			alert_policy_id!: string
			expression!:      string
			description?:     string
		}
		discovery_jobs_result: {
			parent_column_keys: [...string]
			key:                        string
			estimated_data_value_count: string
			planned_action:             string
			data_type:                  string
			db_defined_child_column_keys: [...string]
			sensitive_type_id: string
			modified_attributes: [...{
				db_defined_child_column_keys: [...string]
				app_defined_child_column_keys: [...string]
			}]
			object_type:       string
			discovery_job_id!: string
			app_defined_child_column_keys: [...string]
			schema_name:         string
			sensitive_columnkey: string
			app_name:            string
			object:              string
			relation_type:       string
			sample_data_values: [...string]
			column_name:       string
			discovery_type:    string
			is_result_applied: bool
		}
		alert_policy: {
			severity!:       string
			time_updated:    string
			is_user_defined: bool
			display_name?:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			compartment_id!: string
			alert_policy_rule_details?: [...{
				expression!:   string
				description?:  string
				display_name?: string
			}]
			state:              string
			time_created:       string
			description?:       string
			lifecycle_details:  string
			alert_policy_type!: string
		}
		sensitive_data_models_sensitive_column: {
			source:  string
			object!: string
			db_defined_child_column_keys?: [...string]
			key: string
			parent_column_keys?: [...string]
			lifecycle_details: string
			status?:           string
			object_type?:      string
			time_created:      string
			column_name!:      string
			time_updated:      string
			app_defined_child_column_keys?: [...string]
			sensitive_type_id?:       string
			sensitive_data_model_id!: string
			data_type?:               string
			sample_data_values: [...string]
			schema_name!:   string
			app_name?:      string
			relation_type?: string
			column_groups: [...string]
			estimated_data_value_count: string
			state:                      string
		}
		sql_firewall_policy_management: {
			sql_firewall_policy_id?: string
			security_policy_id:      string
			defined_tags?: [_]: string
			allowed_client_programs?: [...string]
			db_user_name?: string
			system_tags: [_]: string
			allowed_client_ips?: [...string]
			violation_audit?:   string
			time_updated:       string
			display_name?:      string
			state?:             string
			description?:       string
			violation_action?:  string
			compartment_id?:    string
			lifecycle_details:  string
			enforcement_scope?: string
			time_created:       string
			target_id?:         string
			sql_level:          string
			allowed_client_os_usernames?: [...string]
			freeform_tags?: [_]: string
			status?: string
		}
		audit_trail_management: {
			lifecycle_details:      string
			is_auto_purge_enabled?: bool
			audit_profile_id:       string
			target_id?:             string
			freeform_tags?: [_]: string
			compartment_id?: string
			defined_tags?: [_]: string
			display_name?:                string
			stop_trigger?:                bool
			resume_trigger?:              bool
			audit_collection_start_time?: string
			time_last_collected:          string
			time_updated:                 string
			time_created:                 string
			state?:                       string
			work_request_id:              string
			description?:                 string
			status:                       string
			start_trigger?:               bool
			trail_location?:              string
			system_tags: [_]: string
		}
		masking_policy: {
			defined_tags?: [_]: string
			is_redo_logging_enabled?:              bool
			pre_masking_script?:                   string
			post_masking_script?:                  string
			parallel_degree?:                      string
			time_updated:                          string
			add_masking_columns_from_sdm_trigger?: int
			time_created:                          string
			generate_health_report_trigger?:       int
			compartment_id!:                       string
			display_name?:                         string
			description?:                          string
			state:                                 string
			column_source!: [...{
				column_source!:           string
				sensitive_data_model_id?: string
				target_id?:               string
			}]
			freeform_tags?: [_]: string
			is_drop_temp_tables_enabled?: bool
			recompile?:                   string
			is_refresh_stats_enabled?:    bool
		}
		masking_report_management: {
			is_redo_logging_enabled:      bool
			total_masked_schemas:         string
			masking_policy_id?:           string
			total_masked_sensitive_types: string
			total_masked_values:          string
			recompile:                    string
			compartment_id?:              string
			total_masked_objects:         string
			is_drop_temp_tables_enabled:  bool
			parallel_degree:              string
			time_masking_finished:        string
			time_masking_started:         string
			masking_work_request_id:      string
			state:                        string
			time_created:                 string
			total_masked_columns:         string
			target_id?:                   string
			is_refresh_stats_enabled:     bool
		}
		security_policy: {
			security_policy_id!: string
			state:               string
			system_tags: [_]: string
			defined_tags?: [_]: string
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
			time_created:      string
			time_updated:      string
			lifecycle_details: string
			compartment_id?:   string
		}
		set_security_assessment_baseline: {
			security_assessment_id!: string
			assessment_ids?: [...string]
		}
		set_user_assessment_baseline: {
			user_assessment_id!: string
			assessment_ids?: [...string]
		}
		sql_collection: {
			display_name?:                         string
			generate_sql_firewall_policy_trigger?: bool
			stop_trigger?:                         bool
			description?:                          string
			status?:                               string
			time_created:                          string
			defined_tags?: [_]: string
			time_last_stopped: string
			freeform_tags?: [_]: string
			sql_level?:                    string
			purge_logs_trigger?:           bool
			refresh_log_insights_trigger?: bool
			start_trigger?:                bool
			time_updated:                  string
			time_last_started:             string
			db_user_name!:                 string
			target_id!:                    string
			state:                         string
			lifecycle_details:             string
			system_tags: [_]: string
			compartment_id!: string
		}
		sql_firewall_policy: {
			db_user_name:       string
			sql_level:          string
			time_updated:       string
			compartment_id?:    string
			enforcement_scope?: string
			violation_audit?:   string
			allowed_client_ips?: [...string]
			description?: string
			freeform_tags?: [_]: string
			state:              string
			security_policy_id: string
			status?:            string
			system_tags: [_]: string
			allowed_client_programs?: [...string]
			sql_firewall_policy_id!: string
			display_name?:           string
			violation_action?:       string
			lifecycle_details:       string
			allowed_client_os_usernames?: [...string]
			defined_tags?: [_]: string
			time_created: string
		}
		data_safe_private_endpoint: {
			display_name!:   string
			compartment_id!: string
			vcn_id!:         string
			defined_tags?: [_]: string
			state:         string
			endpoint_fqdn: string
			description?:  string
			freeform_tags?: [_]: string
			nsg_ids?: [...string]
			private_endpoint_id:  string
			private_endpoint_ip?: string
			system_tags: [_]: string
			subnet_id!:   string
			time_created: string
		}
		generate_on_prem_connector_configuration: {
			on_prem_connector_id!: string
			password!:             string
		}
		masking_policy_health_report_management: {
			defined_tags: [_]: string
			description:  string
			display_name: string
			freeform_tags: [_]: string
			time_updated:       string
			id:                 string
			time_created:       string
			target_id?:         string
			state:              string
			masking_policy_id?: string
			compartment_id?:    string
		}
		unset_security_assessment_baseline: {
			target_ids?: [...string]
			security_assessment_id!: string
		}
		data_safe_configuration: {
			state:                            string
			data_safe_nat_gateway_ip_address: string
			freeform_tags: [_]: string
			url:             string
			compartment_id?: string
			global_settings: [...{
				is_paid_usage:            bool
				offline_retention_period: int
				online_retention_period:  int
			}]
			defined_tags: [_]: string
			time_enabled: string
			is_enabled!:  bool
		}
		security_policy_management: {
			display_name?: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			state:             string
			defined_tags?: [_]: string
			description?:    string
			time_created:    string
			compartment_id?: string
			system_tags: [_]: string
			time_updated: string
			target_id?:   string
		}
		target_database: {
			display_name?: string
			database_details!: [...{
				ip_addresses?: [...string]
				vm_cluster_id?:          string
				listener_port?:          int
				infrastructure_type!:    string
				db_system_id?:           string
				service_name?:           string
				autonomous_database_id?: string
				instance_id?:            string
				database_type!:          string
			}]
			associated_resource_ids: [...string]
			system_tags: [_]: string
			connection_option?: [...{
				datasafe_private_endpoint_id?: string
				on_prem_connector_id?:         string
				connection_type!:              string
			}]
			credentials?: [...{
				user_name!: string
				password!:  string
			}]
			peer_target_databases: [...{
				time_created:             string
				dataguard_association_id: string
				lifecycle_details:        string
				state:                    string
				role:                     string
				database_unique_name:     string
				tls_config: [...{
					store_password:         string
					trust_store_content:    string
					certificate_store_type: string
					key_store_content:      string
					status:                 string
				}]
				display_name: string
				database_details: [...{
					vm_cluster_id:          string
					infrastructure_type:    string
					instance_id:            string
					db_system_id:           string
					autonomous_database_id: string
					database_type:          string
					ip_addresses: [...string]
					listener_port: int
					service_name:  string
				}]
				description: string
				key:         int
			}]
			time_updated: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			tls_config?: [...{
				trust_store_content?:    string
				status!:                 string
				certificate_store_type?: string
				key_store_content?:      string
				store_password?:         string
			}]
			compartment_id!: string
			description?:    string
			time_created:    string
			state:           string
			peer_target_database_details?: [...{
				display_name?: string
				tls_config?: [...{
					status!:                 string
					certificate_store_type?: string
					key_store_content?:      string
					store_password?:         string
					trust_store_content?:    string
				}]
				database_details!: [...{
					vm_cluster_id?: string
					database_type!: string
					db_system_id?:  string
					listener_port?: int
					instance_id?:   string
					ip_addresses?: [...string]
					service_name?:           string
					infrastructure_type!:    string
					autonomous_database_id?: string
				}]
				dataguard_association_id?: string
				description?:              string
			}]
			defined_tags?: [_]: string
		}
		calculate_audit_volume_collected: {
			audit_profile_id!: string
			time_from_month!:  string
			time_to_month?:    string
			collected_audit_volumes: [...{
				archived_volume:        string
				audit_profile_id:       string
				month_in_consideration: string
				online_volume:          string
			}]
		}
		user_assessment: {
			state:                    string
			is_assessment_scheduled?: bool
			time_last_assessed:       string
			target_id!:               string
			ignored_assessment_ids: [...string]
			last_compared_baseline_id: string
			compartment_id!:           string
			time_updated:              string
			defined_tags?: [_]: string
			lifecycle_details: string
			system_tags: [_]: string
			display_name?: string
			ignored_targets: [...{
				lifecycle_state:    string
				target_id:          string
				user_assessment_id: string
			}]
			is_deviated_from_baseline: bool
			statistics:                string
			target_ids: [...string]
			type:         string
			is_baseline:  bool
			triggered_by: string
			schedule?:    string
			freeform_tags?: [_]: string
			description?:           string
			time_created:           string
			schedule_assessment_id: string
		}
		masking_policies_apply_difference_to_masking_columns: {
			sdm_masking_policy_difference_id!: string
			masking_policy_id!:                string
		}
		security_policy_deployment: {
			defined_tags?: [_]: string
			description?:      string
			lifecycle_details: string
			time_updated:      string
			state:             string
			system_tags: [_]: string
			time_created:                   string
			compartment_id?:                string
			security_policy_deployment_id!: string
			target_id:                      string
			display_name?:                  string
			freeform_tags?: [_]: string
			security_policy_id: string
		}
		compare_security_assessment: {
			comparison_security_assessment_id!: string
			security_assessment_id!:            string
		}
		set_security_assessment_baseline_management: {
			target_id!:             string
			compartment_id!:        string
			security_assessment_id: string
			assessment_ids: [...string]
		}
		calculate_audit_volume_available: {
			audit_profile_id!:            string
			audit_collection_start_time?: string
			database_unique_name?:        string
			trail_locations?: [...string]
			available_audit_volumes: [...{
				month_in_consideration: string
				trail_location:         string
				volume:                 string
				audit_profile_id:       string
			}]
		}
		security_assessment: {
			type:            string
			compartment_id!: string
			description?:    string
			ignored_targets: [...string]
			schedule_security_assessment_id: string
			system_tags: [_]: string
			target_ids: [...string]
			time_updated: string
			freeform_tags?: [_]: string
			triggered_by: string
			time_created: string
			defined_tags?: [_]: string
			is_assessment_scheduled?: bool
			ignored_assessment_ids: [...string]
			state:                     string
			time_last_assessed:        string
			last_compared_baseline_id: string
			target_id!:                string
			schedule?:                 string
			statistics: [...{
				high_risk: [...{
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
				}]
				low_risk: [...{
					targets_count:                              int
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
				}]
				medium_risk: [...{
					data_encryption_findings_count:             int
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
				}]
				pass: [...{
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
					db_configuration_findings_count:            int
				}]
				targets_count: int
				advisory: [...{
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
					user_accounts_findings_count:               int
				}]
				deferred: [...{
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
				}]
				evaluate: [...{
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
				}]
			}]
			display_name?:             string
			link:                      string
			is_baseline:               bool
			lifecycle_details:         string
			target_version:            string
			is_deviated_from_baseline: bool
		}
		compare_user_assessment: {
			comparison_user_assessment_id!: string
			user_assessment_id!:            string
		}
		unset_user_assessment_baseline_management: {
			user_assessment_id!: string
			compartment_id!:     string
		}
		sensitive_data_models_apply_discovery_job_results: {
			sensitive_data_model_id!: string
			discovery_job_id!:        string
		}
		report_definition: {
			scheduled_report_mime_type:      string
			display_name!:                   string
			parent_id!:                      string
			scheduled_report_row_limit:      int
			scheduled_report_compartment_id: string
			column_filters!: [...{
				is_enabled!: bool
				is_hidden!:  bool
				operator!:   string
				expressions!: [...string]
				field_name!: string
			}]
			compliance_standards: [...string]
			system_tags: [_]: string
			time_created:          string
			is_seeded:             bool
			scheduled_report_name: string
			column_info!: [...{
				display_name!:  string
				display_order!: int
				field_name!:    string
				is_hidden!:     bool
				data_type?:     string
			}]
			schedule: string
			summary!: [...{
				display_order!:       int
				name!:                string
				count_of?:            string
				group_by_field_name?: string
				is_hidden?:           bool
				scim_filter?:         string
			}]
			display_order: int
			freeform_tags?: [_]: string
			column_sortings!: [...{
				is_ascending!:  bool
				sorting_order!: int
				field_name!:    string
			}]
			category: string
			defined_tags?: [_]: string
			data_source:       string
			lifecycle_details: string
			scim_filter:       string
			time_updated:      string
			record_time_span:  string
			compartment_id!:   string
			description?:      string
			state:             string
		}
		audit_policy_management: {
			audit_conditions?: [...{
				enable_conditions?: [...{
					entity_names?: [...string]
					entity_selection?: string
					entity_type?:      string
					operation_status?: string
				}]
				is_data_safe_service_account_audited?: bool
				is_priv_users_managed_by_data_safe?:   bool
				is_enabled?:                           bool
				audit_policy_name?:                    string
			}]
			lifecycle_details: string
			compartment_id?:   string
			time_updated:      string
			defined_tags?: [_]: string
			time_last_provisioned: string
			target_id?:            string
			freeform_tags?: [_]: string
			retrieve_from_target_trigger?: bool
			provision_trigger?:            bool
			description?:                  string
			time_last_retrieved:           string
			display_name?:                 string
			state:                         string
			time_created:                  string
			audit_specifications: [...{
				enable_status:            string
				is_seeded_in_target:      bool
				is_enabled_for_all_users: bool
				partially_enabled_msg:    string
				audit_policy_category:    string
				audit_policy_name:        string
				is_seeded_in_data_safe:   bool
				is_created:               bool
				is_view_only:             bool
				database_policy_names: [...string]
				enabled_entities: string
			}]
			system_tags: [_]: string
			is_data_safe_service_account_excluded?: bool
		}
		database_security_config: {
			target_id:                    string
			database_security_config_id!: string
			refresh_trigger?:             int
			time_updated:                 string
			time_created:                 string
			system_tags: [_]: string
			compartment_id?: string
			description?:    string
			defined_tags?: [_]: string
			state: string
			freeform_tags?: [_]: string
			sql_firewall_config?: [...{
				exclude_job?:              string
				status?:                   string
				violation_log_auto_purge?: string
				time_status_updated:       string
			}]
			display_name?:       string
			lifecycle_details:   string
			time_last_refreshed: string
		}
		masking_policies_masking_column: {
			schema_name!:        string
			sensitive_type_id?:  string
			object!:             string
			time_created:        string
			time_updated:        string
			lifecycle_details:   string
			is_masking_enabled?: bool
			masking_formats?: [...{
				condition?:   string
				description?: string
				format_entries!: [...{
					fixed_string?:   string
					description?:    string
					start_position?: int
					end_date?:       string
					start_value?:    float
					start_date?:     string
					random_list?: [...string]
					post_processing_function?: string
					user_defined_function?:    string
					column_name?:              string
					type!:                     string
					pattern?:                  string
					grouping_columns?: [...string]
					length?:                    int
					end_value?:                 float
					sql_expression?:            string
					library_masking_format_id?: string
					regular_expression?:        string
					table_name?:                string
					start_length?:              int
					fixed_number?:              float
					replace_with?:              string
					schema_name?:               string
					end_length?:                int
				}]
			}]
			key:          string
			state:        string
			object_type?: string
			child_columns: [...string]
			masking_column_group?: string
			data_type:             string
			masking_policy_id!:    string
			column_name!:          string
		}
		unset_user_assessment_baseline: {
			target_ids?: [...string]
			user_assessment_id!: string
		}
		alert: {
			resource_name: string
			policy_id:     string
			system_tags: [_]: string
			target_names: [...string]
			target_ids: [...string]
			time_updated: string
			defined_tags?: [_]: string
			alert_policy_rule_key: string
			display_name:          string
			operation:             string
			severity:              string
			feature_details: [_]: string
			operation_time: string
			alert_id!:      string
			comment?:       string
			status?:        string
			time_created:   string
			description:    string
			freeform_tags?: [_]: string
			alert_policy_rule_name: string
			alert_type:             string
			operation_status:       string
			state:                  string
			compartment_id?:        string
		}
		sdm_masking_policy_difference: {
			defined_tags?: [_]: string
			system_tags: [_]: string
			time_created:     string
			difference_type?: string
			display_name?:    string
			freeform_tags?: [_]: string
			compartment_id!:         string
			masking_policy_id!:      string
			state:                   string
			sensitive_data_model_id: string
			time_creation_started:   string
		}
		sensitive_data_model: {
			defined_tags?: [_]: string
			schemas_for_discovery?: [...string]
			is_sample_data_collection_enabled?: bool
			time_updated:                       string
			description?:                       string
			compartment_id!:                    string
			target_id!:                         string
			app_suite_name?:                    string
			sensitive_type_ids_for_discovery?: [...string]
			time_created: string
			system_tags: [_]: string
			tables_for_discovery?: [...{
				schema_name!: string
				table_names?: [...string]
			}]
			freeform_tags?: [_]: string
			is_include_all_schemas?:                    bool
			display_name?:                              string
			state:                                      string
			is_include_all_sensitive_types?:            bool
			is_app_defined_relation_discovery_enabled?: bool
		}
		unset_security_assessment_baseline_management: {
			compartment_id!:         string
			security_assessment_id!: string
		}
		mask_data: {
			masking_policy_id!: string
			target_id!:         string
		}
		add_sdm_columns: masking_policy_id!: string
		audit_profile: {
			offline_months:            int
			change_retention_trigger?: int
			description?:              string
			audit_trails: [...{
				defined_tags: [_]: string
				display_name: string
				system_tags: [_]: string
				time_created: string
				trail_source: string
				freeform_tags: [_]: string
				time_updated:                string
				id:                          string
				target_id:                   string
				compartment_id?:             string
				lifecycle_details:           string
				peer_target_database_key:    int
				purge_job_details:           string
				description:                 string
				trail_location:              string
				audit_collection_start_time: string
				state:                       string
				audit_profile_id:            string
				is_auto_purge_enabled:       bool
				status:                      string
				time_last_collected:         string
				purge_job_time:              string
				work_request_id:             string
				purge_job_status:            string
			}]
			state:        string
			time_updated: string
			defined_tags?: [_]: string
			system_tags: [_]: string
			online_months:                        int
			audit_collected_volume:               string
			target_id:                            string
			is_paid_usage_enabled?:               bool
			is_override_global_retention_setting: bool
			freeform_tags?: [_]: string
			time_created:      string
			lifecycle_details: string
			audit_profile_id!: string
			compartment_id?:   string
			display_name?:     string
		}
		on_prem_connector: {
			system_tags: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			available_version: string
			lifecycle_details: string
			description?:      string
			display_name?:     string
			state:             string
			time_created:      string
			freeform_tags?: [_]: string
			created_version: string
		}
		target_alert_policy_association: {
			lifecycle_details: string
			compartment_id!:   string
			policy_id!:        string
			state:             string
			time_created:      string
			display_name?:     string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			description?: string
			system_tags: [_]: string
			time_updated: string
			target_id!:   string
			is_enabled!:  bool
		}
		target_database_peer_target_database: {
			dataguard_association_id?: string
			description?:              string
			role:                      string
			tls_config?: [...{
				trust_store_content?:    string
				status!:                 string
				certificate_store_type?: string
				key_store_content?:      string
				store_password?:         string
			}]
			lifecycle_details: string
			database_details!: [...{
				instance_id?:            string
				service_name?:           string
				vm_cluster_id?:          string
				infrastructure_type!:    string
				autonomous_database_id?: string
				db_system_id?:           string
				listener_port?:          int
				database_type!:          string
				ip_addresses?: [...string]
			}]
			state:                string
			key:                  int
			time_created:         string
			database_unique_name: string
			target_database_id!:  string
			display_name?:        string
		}
		audit_profile_management: {
			time_updated:                          string
			lifecycle_details:                     string
			state:                                 string
			audit_collected_volume:                string
			time_created:                          string
			display_name?:                         string
			change_retention_trigger?:             bool
			is_override_global_retention_setting?: bool
			offline_months?:                       int
			compartment_id?:                       string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			target_id?:             string
			description?:           string
			is_paid_usage_enabled?: bool
			online_months?:         int
		}
		discovery_job: {
			time_started:          string
			total_columns_scanned: string
			freeform_tags?: [_]: string
			is_app_defined_relation_discovery_enabled?: bool
			sensitive_data_model_id!:                   string
			state:                                      string
			sensitive_type_ids_for_discovery?: [...string]
			time_finished:                   string
			is_include_all_sensitive_types?: bool
			schemas_for_discovery?: [...string]
			total_modified_sensitive_columns: string
			display_name?:                    string
			is_include_all_schemas?:          bool
			target_id:                        string
			tables_for_discovery?: [...{
				table_names?: [...string]
				schema_name!: string
			}]
			total_new_sensitive_columns:     string
			compartment_id!:                 string
			total_deleted_sensitive_columns: string
			discovery_type?:                 string
			system_tags: [_]: string
			defined_tags?: [_]: string
			total_schemas_scanned:              string
			total_objects_scanned:              string
			is_sample_data_collection_enabled?: bool
		}
		audit_policy: {
			time_updated: string
			system_tags: [_]: string
			time_created:        string
			time_last_retrieved: string
			defined_tags?: [_]: string
			provision_trigger?: int
			state:              string
			compartment_id?:    string
			freeform_tags?: [_]: string
			is_data_safe_service_account_excluded: bool
			time_last_provisioned:                 string
			display_name?:                         string
			retrieve_from_target_trigger?:         int
			lifecycle_details:                     string
			audit_conditions: [...{
				is_data_safe_service_account_audited: bool
				is_priv_users_managed_by_data_safe:   bool
				audit_policy_name:                    string
				enable_conditions: [...{
					entity_names: [...string]
					entity_selection: string
					entity_type:      string
					operation_status: string
				}]
			}]
			description?: string
			target_id:    string
			audit_specifications: [...{
				audit_policy_category:    string
				audit_policy_name:        string
				is_seeded_in_data_safe:   bool
				is_seeded_in_target:      bool
				enabled_entities:         string
				is_created:               bool
				partially_enabled_msg:    string
				is_enabled_for_all_users: bool
				is_view_only:             bool
				database_policy_names: [...string]
				enable_status: string
			}]
			audit_policy_id!: string
		}
	}
	arguments: {
		set_user_assessment_baseline_management: {
			target_id!:      string
			compartment_id!: string
		}
		audit_archive_retrieval: {
			freeform_tags?: [_]: string
			description?:    string
			display_name?:   string
			start_date!:     string
			target_id!:      string
			compartment_id!: string
			end_date!:       string
			defined_tags?: [_]: string
		}
		database_security_config_management: {
			compartment_id?: string
			description?:    string
			display_name?:   string
			target_id?:      string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			refresh_trigger?: bool
			sql_firewall_config?: [...{
				violation_log_auto_purge?: string
				exclude_job?:              string
				status?:                   string
			}]
		}
		library_masking_format: {
			sensitive_type_ids?: [...string]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			description?:    string
			display_name?:   string
			compartment_id!: string
			format_entries!: [...{
				sql_expression?:           string
				start_date?:               string
				table_name?:               string
				fixed_number?:             float
				column_name?:              string
				end_value?:                float
				regular_expression?:       string
				end_length?:               int
				pattern?:                  string
				post_processing_function?: string
				replace_with?:             string
				grouping_columns?: [...string]
				random_list?: [...string]
				user_defined_function?:     string
				schema_name?:               string
				fixed_string?:              string
				library_masking_format_id?: string
				start_value?:               float
				start_length?:              int
				length?:                    int
				end_date?:                  string
				type!:                      string
				start_position?:            int
				description?:               string
			}]
		}
		report: {
			report_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id?: string
		}
		sensitive_type: {
			name_pattern?: string
			search_type?:  string
			short_name?:   string
			entity_type!:  string
			defined_tags?: [_]: string
			data_pattern?:              string
			compartment_id!:            string
			default_masking_format_id?: string
			description?:               string
			freeform_tags?: [_]: string
			display_name?:       string
			parent_category_id?: string
			comment_pattern?:    string
		}
		audit_trail: {
			defined_tags?: [_]: string
			description?:           string
			is_auto_purge_enabled?: bool
			audit_trail_id!:        string
			freeform_tags?: [_]: string
			display_name?:   string
			state?:          string
			resume_trigger?: int
		}
		security_policy_deployment_management: {
			compartment_id?: string
			description?:    string
			display_name?:   string
			freeform_tags?: [_]: string
			target_id?: string
			defined_tags?: [_]: string
		}
		alert_policy_rule: {
			alert_policy_id!: string
			expression!:      string
			description?:     string
			display_name?:    string
		}
		discovery_jobs_result: discovery_job_id!: string
		alert_policy: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			alert_policy_type!: string
			compartment_id!:    string
			description?:       string
			severity!:          string
			display_name?:      string
			alert_policy_rule_details?: [...{
				expression!:   string
				description?:  string
				display_name?: string
			}]
		}
		sensitive_data_models_sensitive_column: {
			relation_type?: string
			data_type?:     string
			parent_column_keys?: [...string]
			db_defined_child_column_keys?: [...string]
			schema_name!: string
			app_name?:    string
			status?:      string
			column_name!: string
			object!:      string
			app_defined_child_column_keys?: [...string]
			object_type?:             string
			sensitive_type_id?:       string
			sensitive_data_model_id!: string
		}
		sql_firewall_policy_management: {
			status?:                 string
			sql_firewall_policy_id?: string
			allowed_client_ips?: [...string]
			freeform_tags?: [_]: string
			description?: string
			allowed_client_os_usernames?: [...string]
			allowed_client_programs?: [...string]
			db_user_name?: string
			display_name?: string
			defined_tags?: [_]: string
			enforcement_scope?: string
			compartment_id?:    string
			state?:             string
			target_id?:         string
			violation_action?:  string
			violation_audit?:   string
		}
		audit_trail_management: {
			is_auto_purge_enabled?: bool
			trail_location?:        string
			description?:           string
			compartment_id?:        string
			display_name?:          string
			freeform_tags?: [_]: string
			audit_collection_start_time?: string
			stop_trigger?:                bool
			target_id?:                   string
			defined_tags?: [_]: string
			state?:          string
			resume_trigger?: bool
			start_trigger?:  bool
		}
		masking_policy: {
			recompile?:                      string
			is_drop_temp_tables_enabled?:    bool
			generate_health_report_trigger?: int
			column_source!: [...{
				sensitive_data_model_id?: string
				target_id?:               string
				column_source!:           string
			}]
			pre_masking_script?:                   string
			add_masking_columns_from_sdm_trigger?: int
			is_refresh_stats_enabled?:             bool
			display_name?:                         string
			post_masking_script?:                  string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			is_redo_logging_enabled?: bool
			parallel_degree?:         string
			compartment_id!:          string
		}
		masking_report_management: {
			target_id?:         string
			compartment_id?:    string
			masking_policy_id?: string
		}
		security_policy: {
			security_policy_id!: string
			description?:        string
			display_name?:       string
			freeform_tags?: [_]: string
			compartment_id?: string
			defined_tags?: [_]: string
		}
		set_security_assessment_baseline: {
			security_assessment_id!: string
			assessment_ids?: [...string]
		}
		set_user_assessment_baseline: {
			user_assessment_id!: string
			assessment_ids?: [...string]
		}
		sql_collection: {
			db_user_name!:                 string
			description?:                  string
			refresh_log_insights_trigger?: bool
			compartment_id!:               string
			defined_tags?: [_]: string
			display_name?:                         string
			generate_sql_firewall_policy_trigger?: bool
			stop_trigger?:                         bool
			purge_logs_trigger?:                   bool
			freeform_tags?: [_]: string
			target_id!:     string
			sql_level?:     string
			start_trigger?: bool
			status?:        string
		}
		sql_firewall_policy: {
			status?: string
			allowed_client_ips?: [...string]
			allowed_client_programs?: [...string]
			display_name?:     string
			violation_action?: string
			allowed_client_os_usernames?: [...string]
			enforcement_scope?:      string
			violation_audit?:        string
			description?:            string
			sql_firewall_policy_id!: string
			defined_tags?: [_]: string
			compartment_id?: string
			freeform_tags?: [_]: string
		}
		data_safe_private_endpoint: {
			private_endpoint_ip?: string
			display_name!:        string
			description?:         string
			freeform_tags?: [_]: string
			compartment_id!: string
			nsg_ids?: [...string]
			vcn_id!:    string
			subnet_id!: string
			defined_tags?: [_]: string
		}
		generate_on_prem_connector_configuration: {
			on_prem_connector_id!: string
			password!:             string
		}
		masking_policy_health_report_management: {
			masking_policy_id?: string
			compartment_id?:    string
			target_id?:         string
		}
		unset_security_assessment_baseline: {
			target_ids?: [...string]
			security_assessment_id!: string
		}
		data_safe_configuration: {
			is_enabled!:     bool
			compartment_id?: string
		}
		security_policy_management: {
			target_id?: string
			defined_tags?: [_]: string
			description?:    string
			compartment_id?: string
			display_name?:   string
			freeform_tags?: [_]: string
		}
		target_database: {
			display_name?: string
			description?:  string
			freeform_tags?: [_]: string
			tls_config?: [...{
				key_store_content?:      string
				store_password?:         string
				trust_store_content?:    string
				status!:                 string
				certificate_store_type?: string
			}]
			compartment_id!: string
			connection_option?: [...{
				datasafe_private_endpoint_id?: string
				on_prem_connector_id?:         string
				connection_type!:              string
			}]
			credentials?: [...{
				password!:  string
				user_name!: string
			}]
			database_details!: [...{
				instance_id?: string
				ip_addresses?: [...string]
				service_name?:           string
				db_system_id?:           string
				autonomous_database_id?: string
				listener_port?:          int
				vm_cluster_id?:          string
				database_type!:          string
				infrastructure_type!:    string
			}]
			defined_tags?: [_]: string
			peer_target_database_details?: [...{
				description?:  string
				display_name?: string
				tls_config?: [...{
					certificate_store_type?: string
					key_store_content?:      string
					store_password?:         string
					trust_store_content?:    string
					status!:                 string
				}]
				database_details!: [...{
					listener_port?: int
					db_system_id?:  string
					instance_id?:   string
					ip_addresses?: [...string]
					autonomous_database_id?: string
					database_type!:          string
					infrastructure_type!:    string
					service_name?:           string
					vm_cluster_id?:          string
				}]
				dataguard_association_id?: string
			}]
		}
		calculate_audit_volume_collected: {
			time_to_month?:    string
			audit_profile_id!: string
			time_from_month!:  string
		}
		user_assessment: {
			schedule?: string
			defined_tags?: [_]: string
			description?:             string
			display_name?:            string
			is_assessment_scheduled?: bool
			compartment_id!:          string
			target_id!:               string
			freeform_tags?: [_]: string
		}
		masking_policies_apply_difference_to_masking_columns: {
			sdm_masking_policy_difference_id!: string
			masking_policy_id!:                string
		}
		security_policy_deployment: {
			freeform_tags?: [_]: string
			security_policy_deployment_id!: string
			display_name?:                  string
			description?:                   string
			compartment_id?:                string
			defined_tags?: [_]: string
		}
		compare_security_assessment: {
			comparison_security_assessment_id!: string
			security_assessment_id!:            string
		}
		set_security_assessment_baseline_management: {
			target_id!:      string
			compartment_id!: string
		}
		calculate_audit_volume_available: {
			audit_collection_start_time?: string
			database_unique_name?:        string
			trail_locations?: [...string]
			audit_profile_id!: string
		}
		security_assessment: {
			display_name?:            string
			is_assessment_scheduled?: bool
			compartment_id!:          string
			description?:             string
			freeform_tags?: [_]: string
			target_id!: string
			schedule?:  string
			defined_tags?: [_]: string
		}
		compare_user_assessment: {
			comparison_user_assessment_id!: string
			user_assessment_id!:            string
		}
		unset_user_assessment_baseline_management: {
			user_assessment_id!: string
			compartment_id!:     string
		}
		sensitive_data_models_apply_discovery_job_results: {
			discovery_job_id!:        string
			sensitive_data_model_id!: string
		}
		report_definition: {
			column_info!: [...{
				display_order!: int
				field_name!:    string
				is_hidden!:     bool
				data_type?:     string
				display_name!:  string
			}]
			column_sortings!: [...{
				field_name!:    string
				is_ascending!:  bool
				sorting_order!: int
			}]
			defined_tags?: [_]: string
			display_name!:   string
			compartment_id!: string
			summary!: [...{
				name!:                string
				count_of?:            string
				group_by_field_name?: string
				is_hidden?:           bool
				scim_filter?:         string
				display_order!:       int
			}]
			parent_id!:   string
			description?: string
			freeform_tags?: [_]: string
			column_filters!: [...{
				is_hidden!: bool
				operator!:  string
				expressions!: [...string]
				field_name!: string
				is_enabled!: bool
			}]
		}
		audit_policy_management: {
			audit_conditions?: [...{
				is_enabled?:        bool
				audit_policy_name?: string
				enable_conditions?: [...{
					operation_status?: string
					entity_names?: [...string]
					entity_selection?: string
					entity_type?:      string
				}]
				is_data_safe_service_account_audited?: bool
				is_priv_users_managed_by_data_safe?:   bool
			}]
			compartment_id?:               string
			retrieve_from_target_trigger?: bool
			display_name?:                 string
			description?:                  string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			provision_trigger?:                     bool
			is_data_safe_service_account_excluded?: bool
			target_id?:                             string
		}
		database_security_config: {
			database_security_config_id!: string
			display_name?:                string
			compartment_id?:              string
			description?:                 string
			refresh_trigger?:             int
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			sql_firewall_config?: [...{
				violation_log_auto_purge?: string
				exclude_job?:              string
				status?:                   string
			}]
		}
		masking_policies_masking_column: {
			masking_column_group?: string
			sensitive_type_id?:    string
			object_type?:          string
			column_name!:          string
			is_masking_enabled?:   bool
			masking_formats?: [...{
				format_entries!: [...{
					start_date?:     string
					pattern?:        string
					description?:    string
					end_value?:      float
					start_value?:    float
					sql_expression?: string
					random_list?: [...string]
					start_position?:            int
					replace_with?:              string
					schema_name?:               string
					end_date?:                  string
					column_name?:               string
					end_length?:                int
					type!:                      string
					fixed_string?:              string
					post_processing_function?:  string
					table_name?:                string
					library_masking_format_id?: string
					fixed_number?:              float
					grouping_columns?: [...string]
					length?:                int
					user_defined_function?: string
					regular_expression?:    string
					start_length?:          int
				}]
				condition?:   string
				description?: string
			}]
			object!:            string
			masking_policy_id!: string
			schema_name!:       string
		}
		unset_user_assessment_baseline: {
			target_ids?: [...string]
			user_assessment_id!: string
		}
		alert: {
			freeform_tags?: [_]: string
			alert_id!: string
			comment?:  string
			defined_tags?: [_]: string
			status?:         string
			compartment_id?: string
		}
		sdm_masking_policy_difference: {
			masking_policy_id!: string
			difference_type?:   string
			display_name?:      string
			compartment_id!:    string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		sensitive_data_model: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
			tables_for_discovery?: [...{
				schema_name!: string
				table_names?: [...string]
			}]
			description?:                               string
			display_name?:                              string
			is_sample_data_collection_enabled?:         bool
			is_app_defined_relation_discovery_enabled?: bool
			target_id!:                                 string
			app_suite_name?:                            string
			schemas_for_discovery?: [...string]
			is_include_all_schemas?: bool
			sensitive_type_ids_for_discovery?: [...string]
			is_include_all_sensitive_types?: bool
		}
		unset_security_assessment_baseline_management: {
			security_assessment_id!: string
			compartment_id!:         string
		}
		mask_data: {
			masking_policy_id!: string
			target_id!:         string
		}
		add_sdm_columns: masking_policy_id!: string
		audit_profile: {
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			description?:              string
			is_paid_usage_enabled?:    bool
			change_retention_trigger?: int
			audit_profile_id!:         string
			compartment_id?:           string
			display_name?:             string
		}
		on_prem_connector: {
			display_name?: string
			description?:  string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		target_alert_policy_association: {
			target_id!:    string
			display_name?: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			description?:    string
			compartment_id!: string
			is_enabled!:     bool
			policy_id!:      string
		}
		target_database_peer_target_database: {
			database_details!: [...{
				vm_cluster_id?:          string
				infrastructure_type!:    string
				instance_id?:            string
				listener_port?:          int
				service_name?:           string
				database_type!:          string
				autonomous_database_id?: string
				db_system_id?:           string
				ip_addresses?: [...string]
			}]
			target_database_id!:       string
			dataguard_association_id?: string
			description?:              string
			display_name?:             string
			tls_config?: [...{
				store_password?:         string
				trust_store_content?:    string
				status!:                 string
				certificate_store_type?: string
				key_store_content?:      string
			}]
		}
		audit_profile_management: {
			defined_tags?: [_]: string
			change_retention_trigger?:             bool
			description?:                          string
			is_override_global_retention_setting?: bool
			is_paid_usage_enabled?:                bool
			freeform_tags?: [_]: string
			offline_months?: int
			target_id?:      string
			online_months?:  int
			compartment_id?: string
			display_name?:   string
		}
		discovery_job: {
			is_include_all_sensitive_types?: bool
			tables_for_discovery?: [...{
				schema_name!: string
				table_names?: [...string]
			}]
			sensitive_data_model_id!: string
			schemas_for_discovery?: [...string]
			discovery_type?: string
			freeform_tags?: [_]: string
			is_sample_data_collection_enabled?: bool
			sensitive_type_ids_for_discovery?: [...string]
			is_app_defined_relation_discovery_enabled?: bool
			compartment_id!:                            string
			defined_tags?: [_]: string
			display_name?:           string
			is_include_all_schemas?: bool
		}
		audit_policy: {
			defined_tags?: [_]: string
			display_name?:      string
			provision_trigger?: int
			freeform_tags?: [_]: string
			compartment_id?:               string
			description?:                  string
			retrieve_from_target_trigger?: int
			audit_policy_id!:              string
		}
	}
}
#data: {
	security_policy_report: security_policy_report_id!: string
	sql_firewall_policies: {
		compartment_id_in_subtree?: bool
		security_policy_id?:        string
		sql_firewall_policy_id?:    string
		access_level?:              string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:                        string
		display_name?:                          string
		state?:                                 string
		violation_action?:                      string
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
		db_user_name?:                          string
	}
	alert_policies: {
		display_name?: string
		type?:         string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id_in_subtree?:             bool
		state?:                                 string
		access_level?:                          string
		time_created_greater_than_or_equal_to?: string
		alert_policy_id?:                       string
		is_user_defined?:                       bool
		compartment_id!:                        string
		time_created_less_than?:                string
	}
	security_assessment_security_features: {
		targets_with_external_authentication?: string
		targets_with_network_encryption?:      string
		targets_with_password_authentication?: string
		targets_with_privilege_analysis?:      string
		compartment_id!:                       string
		targets_with_database_vault?:          string
		compartment_id_in_subtree?:            bool
		targets_with_unified_audit?:           string
		target_id?:                            string
		targets_with_fine_grained_audit?:      string
		targets_with_traditional_audit?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:                       string
		targets_with_global_authentication?: string
		targets_with_column_encryption?:     string
		targets_with_tablespace_encryption?: string
	}
	security_policy_report_database_view_access_entry: {
		database_view_access_entry_key!: string
		security_policy_report_id!:      string
	}
	sql_collection: sql_collection_id!: string
	audit_profiles: {
		is_paid_usage_enabled?:                bool
		target_id?:                            string
		compartment_id_in_subtree?:            bool
		access_level?:                         string
		audit_profile_id?:                     string
		is_override_global_retention_setting?: bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:                                    string
		audit_collected_volume_greater_than_or_equal_to?: string
		compartment_id!:                                  string
		state?:                                           string
	}
	database_security_configs: {
		database_security_config_id?:           string
		compartment_id!:                        string
		time_created_less_than?:                string
		target_id?:                             string
		time_created_greater_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id_in_subtree?: bool
		display_name?:              string
		state?:                     string
	}
	report_definitions: {
		compartment_id_in_subtree?: bool
		is_seeded?:                 bool
		data_source?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		category?:       string
		display_name?:   string
		state?:          string
		access_level?:   string
		compartment_id!: string
	}
	audit_profile_available_audit_volumes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		audit_profile_id!:                    string
		month_in_consideration_greater_than?: string
		month_in_consideration_less_than?:    string
		trail_location?:                      string
		work_request_id!:                     string
	}
	user_assessments: {
		time_created_less_than?: string
		access_level?:           string
		target_id?:              string
		is_baseline?:            bool
		state?:                  string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:                        string
		schedule_user_assessment_id?:           string
		type?:                                  string
		display_name?:                          string
		triggered_by?:                          string
		time_created_greater_than_or_equal_to?: string
		is_schedule_assessment?:                bool
		compartment_id_in_subtree?:             bool
	}
	security_assessment_finding: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		is_top_finding?:            bool
		references?:                string
		target_id?:                 string
		severity?:                  string
		compartment_id_in_subtree?: bool
		finding_key?:               string
		security_assessment_id!:    string
		state?:                     string
	}
	masking_policy: masking_policy_id!: string
	masking_policy_health_reports: {
		masking_policy_health_report_id?: string
		masking_policy_id?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:            string
		display_name?:              string
		state?:                     string
		target_id?:                 string
		access_level?:              string
		compartment_id_in_subtree?: bool
	}
	security_assessment_findings_change_audit_logs: {
		security_assessment_id!:                string
		severity?:                              string
		finding_key?:                           string
		time_updated_greater_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		modified_by?:                               string
		finding_title?:                             string
		time_updated_less_than?:                    string
		time_valid_until_greater_than_or_equal_to?: string
		time_valid_until_less_than?:                string
		is_risk_deferred?:                          bool
	}
	alert_policy_rule: {
		rule_key!:        string
		alert_policy_id!: string
	}
	target_databases_columns: {
		column_name_contains?: string
		datatype?: [...string]
		schema_name?: [...string]
		column_name?: [...string]
		table_name?: [...string]
		target_database_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		schema_name_contains?: string
		table_name_contains?:  string
	}
	user_assessment_user_analytics: {
		authentication_type?:                                 string
		time_last_login_greater_than_or_equal_to?:            string
		time_password_last_changed_less_than?:                string
		user_assessment_id!:                                  string
		target_id?:                                           string
		user_category?:                                       string
		user_key?:                                            string
		user_name?:                                           string
		time_password_last_changed_greater_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:                               string
		account_status?:                             string
		compartment_id_in_subtree?:                  bool
		time_last_login_less_than?:                  string
		time_user_created_less_than?:                string
		time_user_created_greater_than_or_equal_to?: string
	}
	masking_policy_masking_objects: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		masking_policy_id!: string
		object?: [...string]
		object_type?: [...string]
		schema_name?: [...string]
	}
	user_assessment_comparison: {
		comparison_user_assessment_id!: string
		user_assessment_id!:            string
	}
	audit_profile_available_audit_volume: {
		month_in_consideration_less_than?:    string
		trail_location?:                      string
		work_request_id!:                     string
		audit_profile_id!:                    string
		month_in_consideration_greater_than?: string
	}
	data_safe_configuration: compartment_id!: string
	on_prem_connectors: {
		compartment_id_in_subtree?:         bool
		display_name?:                      string
		on_prem_connector_id?:              string
		on_prem_connector_lifecycle_state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:   string
		compartment_id!: string
	}
	sdm_masking_policy_difference_difference_column: {
		difference_column_key!:            string
		sdm_masking_policy_difference_id!: string
	}
	audit_policies: {
		target_id?:       string
		access_level?:    string
		audit_policy_id?: string
		compartment_id!:  string
		display_name?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?: bool
		state?:                     string
	}
	masking_policy_masking_schemas: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		masking_policy_id!: string
		schema_name?: [...string]
	}
	security_assessment_comparison: {
		comparison_security_assessment_id!: string
		security_assessment_id!:            string
	}
	security_policy_deployment: security_policy_deployment_id!: string
	alert_analytic: {
		access_level?:              string
		scim_query?:                string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		group_by?: [...string]
		query_time_zone?: string
		time_ended?:      string
		summary_field?: [...string]
		time_started?: string
	}
	masking_policies_masking_column: {
		masking_policy_id!:  string
		masking_column_key!: string
	}
	security_assessment_finding_analytics: {
		compartment_id!: string
		is_top_finding?: bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		finding_key?:               string
		compartment_id_in_subtree?: bool
		access_level?:              string
		group_by?:                  string
		top_finding_status?:        string
		severity?:                  string
	}
	target_alert_policy_association: target_alert_policy_association_id!: string
	target_database_role: {
		authentication_type?:  string
		is_oracle_maintained?: bool
		role_name?: [...string]
		role_name_contains?: string
		target_database_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	audit_profile_collected_audit_volume: {
		month_in_consideration_less_than?:    string
		work_request_id!:                     string
		audit_profile_id!:                    string
		month_in_consideration_greater_than?: string
	}
	sensitive_data_model_sensitive_types: {
		sensitive_data_model_id!: string
		sensitive_type_id?:       string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	target_database_peer_target_database: {
		peer_target_database_id!: string
		target_database_id!:      string
	}
	user_assessment_user_access_analytics: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		user_assessment_id!: string
	}
	compatible_formats_for_sensitive_type: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		access_level?:              string
	}
	security_policies: {
		security_policy_id?: string
		state?:              string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
	}
	sensitive_data_models_sensitive_columns: {
		status?: [...string]
		time_updated_less_than?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		column_name?: [...string]
		object_type?: [...string]
		schema_name?: [...string]
		time_created_greater_than_or_equal_to?: string
		is_case_in_sensitive?:                  bool
		time_updated_greater_than_or_equal_to?: string
		object?: [...string]
		column_group?:                     string
		sensitive_column_lifecycle_state?: string
		time_created_less_than?:           string
		sensitive_data_model_id!:          string
		sensitive_type_id?: [...string]
		relation_type?: [...string]
		parent_column_key?: [...string]
		data_type?: [...string]
	}
	sql_collections: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:                          string
		compartment_id_in_subtree?:             bool
		sql_collection_id?:                     string
		target_id?:                             string
		compartment_id!:                        string
		db_user_name?:                          string
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
	}
	target_database: target_database_id!: string
	masking_analytics: {
		compartment_id_in_subtree?: bool
		group_by?:                  string
		masking_policy_id?:         string
		target_id?:                 string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	library_masking_formats: {
		access_level?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:                          string
		library_masking_format_id?:             string
		compartment_id_in_subtree?:             bool
		library_masking_format_source?:         string
		time_created_less_than?:                string
		compartment_id!:                        string
		state?:                                 string
		time_created_greater_than_or_equal_to?: string
	}
	security_policy: security_policy_id!: string
	security_policy_deployment_security_policy_entry_states: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		deployment_status?:             string
		security_policy_deployment_id!: string
		security_policy_entry_id?:      string
	}
	security_policy_report_role_grant_paths: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		granted_role!:              string
		grantee!:                   string
		security_policy_report_id!: string
	}
	sensitive_data_models: {
		sensitive_data_model_id?: string
		target_id?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:                        string
		state?:                                 string
		time_created_greater_than_or_equal_to?: string
		access_level?:                          string
		time_created_less_than?:                string
		compartment_id_in_subtree?:             bool
		display_name?:                          string
	}
	user_assessment_users: {
		time_password_last_changed_less_than?: string
		user_assessment_id!:                   string
		schema_list?: [...string]
		user_type?:                                           string
		authentication_type?:                                 string
		compartment_id_in_subtree?:                           bool
		user_category?:                                       string
		access_level?:                                        string
		time_password_last_changed_greater_than_or_equal_to?: string
		user_name?:                                           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		target_id?:                                  string
		time_user_created_less_than?:                string
		are_all_schemas_accessible?:                 bool
		time_last_login_greater_than_or_equal_to?:   string
		time_last_login_less_than?:                  string
		time_user_created_greater_than_or_equal_to?: string
		user_role?:                                  string
		account_status?:                             string
		user_key?:                                   string
		user_profile?:                               string
	}
	alerts: {
		scim_query?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		field?: [...string]
		id?: string
	}
	audit_archive_retrieval: audit_archive_retrieval_id!: string
	library_masking_format: library_masking_format_id!: string
	masking_policy_health_report: masking_policy_health_report_id!: string
	alert_policy: alert_policy_id!: string
	security_assessment_findings: {
		is_top_finding?:            bool
		security_assessment_id!:    string
		compartment_id_in_subtree?: bool
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		target_id?:    string
		severity?:     string
		state?:        string
		access_level?: string
		finding_key?:  string
		references?:   string
	}
	sensitive_data_model_sensitive_objects: {
		sensitive_data_model_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		object?: [...string]
		object_type?: [...string]
		schema_name?: [...string]
	}
	sql_collection_analytics: {
		compartment_id_in_subtree?: bool
		target_id?:                 string
		time_started?:              string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		time_ended?:     string
		access_level?:   string
		compartment_id!: string
		group_by?: [...string]
		state?: string
	}
	sql_firewall_allowed_sql: sql_firewall_allowed_sql_id!: string
	target_databases: {
		target_database_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		database_type?:             string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		associated_resource_id?:    string
		display_name?:              string
		state?:                     string
		infrastructure_type?:       string
		access_level?:              string
	}
	user_assessment_profiles: {
		inactive_account_time_greater_than_or_equal?: string
		password_verification_function?:              string
		sessions_per_user_greater_than_or_equal?:     string
		sessions_per_user_less_than?:                 string
		target_id?:                                   string
		access_level?:                                string
		user_count_less_than?:                        string
		user_assessment_id!:                          string
		inactive_account_time_less_than?:             string
		profile_name?:                                string
		user_count_greater_than_or_equal?:            string
		failed_login_attempts_greater_than_or_equal?: string
		password_lock_time_less_than?:                string
		compartment_id!:                              string
		failed_login_attempts_less_than?:             string
		password_lock_time_greater_than_or_equal?:    string
		is_user_created?:                             bool
		compartment_id_in_subtree?:                   bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	data_safe_private_endpoint: data_safe_private_endpoint_id!: string
	database_security_config: database_security_config_id!: string
	on_prem_connector: on_prem_connector_id!: string
	report_content: report_id!: string
	security_policy_report_database_table_access_entry: {
		security_policy_report_id!:       string
		database_table_access_entry_key!: string
	}
	target_databases_tables: {
		table_name_contains?: string
		target_database_id!:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		schema_name?: [...string]
		schema_name_contains?: string
		table_name?: [...string]
	}
	alert: alert_id!: string
	discovery_analytic: {
		target_id?:                 string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		group_by?:                  string
		sensitive_data_model_id?:   string
	}
	discovery_jobs_result: {
		result_key!:       string
		discovery_job_id!: string
	}
	report_definition: report_definition_id!: string
	reports: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?:               bool
		mime_type?:                               string
		report_definition_id?:                    string
		state?:                                   string
		type?:                                    string
		time_generated_less_than?:                string
		access_level?:                            string
		compartment_id!:                          string
		display_name?:                            string
		time_generated_greater_than_or_equal_to?: string
	}
	sdm_masking_policy_difference_difference_columns: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		schema_name?: [...string]
		object?: [...string]
		planned_action?: string
		column_name?: [...string]
		difference_type?:                  string
		sdm_masking_policy_difference_id!: string
		sync_status?:                      string
	}
	alert_policy_rules: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		alert_policy_id!: string
	}
	sdm_masking_policy_differences: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?: bool
		difference_access_level?:   string
		display_name?:              string
		masking_policy_id?:         string
		compartment_id!:            string
		sensitive_data_model_id?:   string
		state?:                     string
	}
	sensitive_data_model: sensitive_data_model_id!: string
	sensitive_data_models_sensitive_column: {
		sensitive_data_model_id!: string
		sensitive_column_key!:    string
	}
	target_alert_policy_associations: {
		alert_policy_id?:                    string
		compartment_id_in_subtree?:          bool
		state?:                              string
		target_alert_policy_association_id?: string
		target_id?:                          string
		time_created_less_than?:             string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:                        string
		time_created_greater_than_or_equal_to?: string
		access_level?:                          string
	}
	audit_profile: audit_profile_id!: string
	security_policy_reports: {
		compartment_id!:            string
		security_policy_report_id?: string
		compartment_id_in_subtree?: bool
		display_name?:              string
		state?:                     string
		target_id?:                 string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		access_level?: string
	}
	user_assessment: user_assessment_id!: string
	masking_reports: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		masking_policy_id?:         string
		target_id?:                 string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?: string
	}
	discovery_job: discovery_job_id!: string
	security_assessment: security_assessment_id!: string
	security_policy_deployment_security_policy_entry_state: {
		security_policy_deployment_id!:  string
		security_policy_entry_state_id!: string
	}
	sql_firewall_allowed_sqls: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		scim_query?:                string
	}
	target_database_peer_target_databases: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		target_database_id!: string
	}
	audit_policy: audit_policy_id!: string
	discovery_jobs: {
		compartment_id!:            string
		display_name?:              string
		sensitive_data_model_id?:   string
		target_id?:                 string
		discovery_job_id?:          string
		access_level?:              string
		compartment_id_in_subtree?: bool
		state?:                     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	report: report_id!: string
	target_database_roles: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		authentication_type?:  string
		is_oracle_maintained?: bool
		role_name?: [...string]
		role_name_contains?: string
		target_database_id!: string
	}
	audit_trail: audit_trail_id!: string
	audit_events: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		scim_query?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?: string
	}
	compatible_formats_for_data_type: {}
	discovery_jobs_results: {
		discovery_type?: string
		column_name?: [...string]
		discovery_job_id!: string
		schema_name?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		is_result_applied?: bool
		object?: [...string]
		planned_action?: string
	}
	masking_policy_health_report_logs: {
		message_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		masking_policy_health_report_id!: string
	}
	masking_report: masking_report_id!: string
	security_policy_report_database_table_access_entries: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		scim_query?:                string
		security_policy_report_id!: string
	}
	audit_event: {
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		scim_query?:                string
	}
	security_policy_deployments: {
		security_policy_id?:        string
		target_id?:                 string
		access_level?:              string
		compartment_id_in_subtree?: bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:                  string
		security_policy_deployment_id?: string
		state?:                         string
		compartment_id!:                string
	}
	sql_firewall_policy: sql_firewall_policy_id!: string
	audit_profile_analytic: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		group_by?: [...string]
		access_level?: string
	}
	masking_reports_masked_columns: {
		column_name?: [...string]
		masking_column_group?: [...string]
		object?: [...string]
		object_type?: [...string]
		schema_name?: [...string]
		masking_report_id!: string
		sensitive_type_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	security_assessments: {
		state?:                                 string
		access_level?:                          string
		time_created_greater_than_or_equal_to?: string
		compartment_id!:                        string
		display_name?:                          string
		time_created_less_than?:                string
		is_baseline?:                           bool
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		triggered_by?:              string
		type?:                      string
		compartment_id_in_subtree?: bool
		is_schedule_assessment?:    bool
		target_id?:                 string
		schedule_assessment_id?:    string
	}
	data_safe_private_endpoints: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
		state?:                     string
		vcn_id?:                    string
	}
	sql_firewall_allowed_sql_analytics: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		group_by?: [...string]
		scim_query?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		access_level?: string
	}
	user_assessment_profile_analytics: {
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		profile_name?:              string
		target_id?:                 string
		user_assessment_id!:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	sql_collection_log_insights: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		group_by?:          string
		sql_collection_id!: string
		time_ended!:        string
		time_started!:      string
	}
	masking_policies: {
		compartment_id!:                        string
		display_name?:                          string
		state?:                                 string
		access_level?:                          string
		masking_policy_id?:                     string
		time_created_less_than?:                string
		time_created_greater_than_or_equal_to?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		target_id?:                 string
		compartment_id_in_subtree?: bool
		sensitive_data_model_id?:   string
	}
	sdm_masking_policy_difference: sdm_masking_policy_difference_id!: string
	security_assessment_security_feature_analytics: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		target_id?:                 string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		access_level?: string
	}
	security_policy_report_database_view_access_entries: {
		security_policy_report_id!: string
		target_id?:                 string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		scim_query?: string
	}
	sql_firewall_policy_analytics: {
		time_started?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id_in_subtree?: bool
		security_policy_id?:        string
		access_level?:              string
		time_ended?:                string
		compartment_id!:            string
		group_by?: [...string]
		state?: string
	}
	sql_firewall_violation_analytics: {
		time_ended?:      string
		query_time_zone?: string
		summary_field?: [...string]
		scim_query?:     string
		compartment_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?: bool
		group_by?: [...string]
		time_started?: string
		access_level?: string
	}
	sql_firewall_violations: {
		scim_query?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
	}
	list_user_grants: {
		grant_key?:          string
		privilege_category?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		depth_level_less_than?:                int
		user_assessment_id!:                   string
		user_key!:                             string
		depth_level?:                          int
		depth_level_greater_than_or_equal_to?: int
		grant_name?:                           string
		privilege_type?:                       string
	}
	masking_analytic: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		group_by?:                  string
		masking_policy_id?:         string
		target_id?:                 string
	}
	sensitive_data_model_sensitive_schemas: {
		sensitive_data_model_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		schema_name?: [...string]
	}
	sensitive_type: sensitive_type_id!: string
	audit_trails: {
		target_id?:      string
		status?:         string
		access_level?:   string
		audit_trail_id?: string
		compartment_id!: string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?: bool
		display_name?:              string
	}
	audit_trail_analytic: {
		target_id?:                 string
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		group_by?: [...string]
	}
	discovery_analytics: {
		compartment_id_in_subtree?: bool
		group_by?:                  string
		is_common?:                 bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		sensitive_data_model_id?: string
		sensitive_type_id?:       string
		target_id?:               string
		compartment_id!:          string
	}
	audit_profile_collected_audit_volumes: {
		work_request_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		audit_profile_id!:                    string
		month_in_consideration_greater_than?: string
		month_in_consideration_less_than?:    string
	}
	target_databases_schemas: {
		schema_name_contains?: string
		target_database_id!:   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		is_oracle_maintained?: bool
		schema_name?: [...string]
	}
	sensitive_types: {
		access_level?:                          string
		state?:                                 string
		time_created_less_than?:                string
		is_common?:                             bool
		default_masking_format_id?:             string
		sensitive_type_id?:                     string
		time_created_greater_than_or_equal_to?: string
		compartment_id!:                        string
		display_name?:                          string
		compartment_id_in_subtree?:             bool
		parent_category_id?:                    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		sensitive_type_source?: string
		entity_type?:           string
	}
	audit_event_analytic: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		time_started?:              string
		query_time_zone?:           string
		scim_query?:                string
		access_level?:              string
		time_ended?:                string
		group_by?: [...string]
		summary_field?: [...string]
	}
	masking_policies_masking_columns: {
		masking_column_lifecycle_state?: string
		time_created_less_than?:         string
		time_updated_less_than?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		is_masking_enabled?: bool
		object_type?: [...string]
		is_seed_required?:  bool
		masking_policy_id!: string
		masking_column_group?: [...string]
		time_created_greater_than_or_equal_to?: string
		column_name?: [...string]
		time_updated_greater_than_or_equal_to?: string
		data_type?: [...string]
		sensitive_type_id?: string
		object?: [...string]
		schema_name?: [...string]
	}
	masking_reports_masked_column: {
		masking_report_id!: string
		object?: [...string]
		object_type?: [...string]
		schema_name?: [...string]
		sensitive_type_id?: string
		column_name?: [...string]
		masking_column_group?: [...string]
	}
	audit_archive_retrievals: {
		target_id?:                  string
		time_of_expiry?:             string
		access_level?:               string
		audit_archive_retrieval_id?: string
		display_name?:               string
		state?:                      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:            string
		compartment_id_in_subtree?: bool
	}
}

