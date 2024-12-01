package data_safe

#resource: {
	attributes: {
		report: {
			system_tags: [_]: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			type:                 string
			state:                string
			lifecycle_details:    string
			report_definition_id: string
			time_generated:       string
			report_id!:           string
			compartment_id?:      string
			mime_type:            string
			description:          string
			display_name:         string
		}
		security_policy: {
			compartment_id?: string
			defined_tags?: [_]: string
			display_name?:     string
			time_updated:      string
			description?:      string
			lifecycle_details: string
			state:             string
			system_tags: [_]: string
			security_policy_id!: string
			freeform_tags?: [_]: string
			time_created: string
		}
		calculate_audit_volume_available: {
			available_audit_volumes: [...{
				audit_profile_id:       string
				month_in_consideration: string
				trail_location:         string
				volume:                 string
			}]
			audit_profile_id!:            string
			audit_collection_start_time?: string
			database_unique_name?:        string
			trail_locations?: [...string]
		}
		data_safe_configuration: {
			freeform_tags: [_]: string
			state: string
			defined_tags: [_]: string
			time_enabled:    string
			url:             string
			is_enabled!:     bool
			compartment_id?: string
			global_settings: [...{
				is_paid_usage:            bool
				offline_retention_period: int
				online_retention_period:  int
			}]
			data_safe_nat_gateway_ip_address: string
		}
		masking_policy_health_report_management: {
			state:        string
			time_created: string
			time_updated: string
			defined_tags: [_]: string
			description:  string
			display_name: string
			freeform_tags: [_]: string
			id:                 string
			target_id?:         string
			compartment_id?:    string
			masking_policy_id?: string
		}
		set_user_assessment_baseline: {
			user_assessment_id!: string
			assessment_ids?: [...string]
		}
		user_assessment: {
			description?:              string
			schedule?:                 string
			compartment_id!:           string
			lifecycle_details:         string
			time_created:              string
			time_last_assessed:        string
			type:                      string
			target_id!:                string
			is_deviated_from_baseline: bool
			freeform_tags?: [_]: string
			ignored_assessment_ids: [...string]
			target_ids: [...string]
			ignored_targets: [...{
				lifecycle_state:    string
				target_id:          string
				user_assessment_id: string
			}]
			is_baseline:               bool
			statistics:                string
			triggered_by:              string
			time_updated:              string
			last_compared_baseline_id: string
			is_assessment_scheduled?:  bool
			system_tags: [_]: string
			display_name?: string
			defined_tags?: [_]: string
			schedule_assessment_id: string
			state:                  string
		}
		alert_policy_rule: {
			description?:     string
			display_name?:    string
			key:              string
			state:            string
			time_created:     string
			alert_policy_id!: string
			expression!:      string
		}
		audit_archive_retrieval: {
			error_info:        string
			audit_event_count: string
			target_id!:        string
			end_date!:         string
			system_tags: [_]: string
			time_completed:    string
			description?:      string
			lifecycle_details: string
			freeform_tags?: [_]: string
			display_name?:   string
			time_requested:  string
			time_of_expiry:  string
			start_date!:     string
			compartment_id!: string
			state:           string
			defined_tags?: [_]: string
		}
		report_definition: {
			column_filters!: [...{
				is_enabled!: bool
				is_hidden!:  bool
				operator!:   string
				expressions!: [...string]
				field_name!: string
			}]
			is_seeded:                  bool
			scheduled_report_row_limit: int
			lifecycle_details:          string
			compartment_id!:            string
			summary!: [...{
				is_hidden?:           bool
				scim_filter?:         string
				display_order!:       int
				name!:                string
				count_of?:            string
				group_by_field_name?: string
			}]
			defined_tags?: [_]: string
			record_time_span:                string
			scim_filter:                     string
			category:                        string
			scheduled_report_compartment_id: string
			data_source:                     string
			schedule:                        string
			scheduled_report_mime_type:      string
			compliance_standards: [...string]
			time_updated:          string
			scheduled_report_name: string
			state:                 string
			description?:          string
			display_name!:         string
			display_order:         int
			system_tags: [_]: string
			freeform_tags?: [_]: string
			column_sortings!: [...{
				field_name!:    string
				is_ascending!:  bool
				sorting_order!: int
			}]
			parent_id!: string
			column_info!: [...{
				display_name!:  string
				display_order!: int
				field_name!:    string
				is_hidden!:     bool
				data_type?:     string
			}]
			time_created: string
		}
		sql_firewall_policy_management: {
			allowed_client_ips?: [...string]
			target_id?:        string
			status?:           string
			violation_action?: string
			db_user_name?:     string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			sql_firewall_policy_id?: string
			state?:                  string
			description?:            string
			allowed_client_programs?: [...string]
			enforcement_scope?: string
			system_tags: [_]: string
			violation_audit?:   string
			time_updated:       string
			compartment_id?:    string
			display_name?:      string
			security_policy_id: string
			time_created:       string
			allowed_client_os_usernames?: [...string]
			lifecycle_details: string
			sql_level:         string
		}
		discovery_job: {
			defined_tags?: [_]: string
			time_started: string
			sensitive_type_ids_for_discovery?: [...string]
			compartment_id!: string
			system_tags: [_]: string
			is_app_defined_relation_discovery_enabled?: bool
			is_include_all_sensitive_types?:            bool
			tables_for_discovery?: [...{
				table_names?: [...string]
				schema_name!: string
			}]
			total_modified_sensitive_columns: string
			total_new_sensitive_columns:      string
			schemas_for_discovery?: [...string]
			total_objects_scanned:              string
			is_sample_data_collection_enabled?: bool
			state:                              string
			target_id:                          string
			total_columns_scanned:              string
			total_schemas_scanned:              string
			sensitive_data_model_id!:           string
			is_include_all_schemas?:            bool
			time_finished:                      string
			display_name?:                      string
			freeform_tags?: [_]: string
			total_deleted_sensitive_columns: string
			discovery_type?:                 string
		}
		masking_report_management: {
			time_masking_started:         string
			total_masked_columns:         string
			is_drop_temp_tables_enabled:  bool
			is_refresh_stats_enabled:     bool
			time_masking_finished:        string
			masking_work_request_id:      string
			total_masked_values:          string
			total_masked_schemas:         string
			time_created:                 string
			total_masked_sensitive_types: string
			state:                        string
			total_masked_objects:         string
			parallel_degree:              string
			masking_policy_id?:           string
			recompile:                    string
			target_id?:                   string
			compartment_id?:              string
			is_redo_logging_enabled:      bool
		}
		target_database: {
			tls_config?: [...{
				key_store_content?:      string
				store_password?:         string
				trust_store_content?:    string
				status!:                 string
				certificate_store_type?: string
			}]
			state:        string
			time_updated: string
			defined_tags?: [_]: string
			associated_resource_ids: [...string]
			peer_target_databases: [...{
				dataguard_association_id: string
				time_created:             string
				state:                    string
				database_details: [...{
					infrastructure_type: string
					ip_addresses: [...string]
					listener_port:          int
					instance_id:            string
					autonomous_database_id: string
					service_name:           string
					database_type:          string
					vm_cluster_id:          string
					db_system_id:           string
				}]
				description:          string
				display_name:         string
				role:                 string
				database_unique_name: string
				key:                  int
				tls_config: [...{
					status:                 string
					store_password:         string
					trust_store_content:    string
					certificate_store_type: string
					key_store_content:      string
				}]
				lifecycle_details: string
			}]
			system_tags: [_]: string
			database_details!: [...{
				db_system_id?: string
				ip_addresses?: [...string]
				autonomous_database_id?: string
				instance_id?:            string
				service_name?:           string
				database_type!:          string
				infrastructure_type!:    string
				vm_cluster_id?:          string
				listener_port?:          int
			}]
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name?:   string
			connection_option?: [...{
				connection_type!:              string
				datasafe_private_endpoint_id?: string
				on_prem_connector_id?:         string
			}]
			description?: string
			credentials?: [...{
				password!:  string
				user_name!: string
			}]
			peer_target_database_details?: [...{
				dataguard_association_id?: string
				description?:              string
				display_name?:             string
				tls_config?: [...{
					status!:                 string
					certificate_store_type?: string
					key_store_content?:      string
					store_password?:         string
					trust_store_content?:    string
				}]
				database_details!: [...{
					database_type!:          string
					listener_port?:          int
					vm_cluster_id?:          string
					autonomous_database_id?: string
					instance_id?:            string
					ip_addresses?: [...string]
					infrastructure_type!: string
					db_system_id?:        string
					service_name?:        string
				}]
			}]
			lifecycle_details: string
			time_created:      string
		}
		generate_on_prem_connector_configuration: {
			on_prem_connector_id!: string
			password!:             string
		}
		target_alert_policy_association: {
			defined_tags?: [_]: string
			target_id!:    string
			display_name?: string
			state:         string
			system_tags: [_]: string
			compartment_id!: string
			time_updated:    string
			policy_id!:      string
			freeform_tags?: [_]: string
			is_enabled!:       bool
			time_created:      string
			lifecycle_details: string
			description?:      string
		}
		mask_data: {
			target_id!:         string
			masking_policy_id!: string
		}
		audit_policy: {
			audit_specifications: [...{
				partially_enabled_msg: string
				audit_policy_category: string
				audit_policy_name:     string
				database_policy_names: [...string]
				enabled_entities:         string
				is_created:               bool
				is_seeded_in_target:      bool
				is_view_only:             bool
				enable_status:            string
				is_enabled_for_all_users: bool
				is_seeded_in_data_safe:   bool
			}]
			is_data_safe_service_account_excluded: bool
			time_last_retrieved:                   string
			display_name?:                         string
			freeform_tags?: [_]: string
			time_last_provisioned: string
			description?:          string
			defined_tags?: [_]: string
			state:            string
			target_id:        string
			time_created:     string
			audit_policy_id!: string
			system_tags: [_]: string
			provision_trigger?:            int
			lifecycle_details:             string
			retrieve_from_target_trigger?: int
			audit_conditions: [...{
				is_priv_users_managed_by_data_safe: bool
				audit_policy_name:                  string
				enable_conditions: [...{
					entity_selection: string
					entity_type:      string
					operation_status: string
					entity_names: [...string]
				}]
				is_data_safe_service_account_audited: bool
			}]
			time_updated:    string
			compartment_id?: string
		}
		audit_policy_management: {
			time_last_provisioned:         string
			compartment_id?:               string
			state:                         string
			time_created:                  string
			display_name?:                 string
			retrieve_from_target_trigger?: bool
			lifecycle_details:             string
			defined_tags?: [_]: string
			is_data_safe_service_account_excluded?: bool
			audit_specifications: [...{
				is_seeded_in_data_safe: bool
				is_seeded_in_target:    bool
				enable_status:          string
				is_view_only:           bool
				partially_enabled_msg:  string
				audit_policy_name:      string
				is_created:             bool
				database_policy_names: [...string]
				is_enabled_for_all_users: bool
				audit_policy_category:    string
				enabled_entities:         string
			}]
			freeform_tags?: [_]: string
			time_last_retrieved: string
			audit_conditions?: [...{
				audit_policy_name?: string
				enable_conditions?: [...{
					entity_names?: [...string]
					entity_selection?: string
					entity_type?:      string
					operation_status?: string
				}]
				is_data_safe_service_account_audited?: bool
				is_priv_users_managed_by_data_safe?:   bool
				is_enabled?:                           bool
			}]
			target_id?:         string
			time_updated:       string
			provision_trigger?: bool
			system_tags: [_]: string
			description?: string
		}
		audit_profile: {
			is_override_global_retention_setting: bool
			lifecycle_details:                    string
			target_id:                            string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			display_name?:          string
			is_paid_usage_enabled?: bool
			compartment_id?:        string
			system_tags: [_]: string
			change_retention_trigger?: int
			time_created:              string
			online_months:             int
			time_updated:              string
			audit_trails: [...{
				time_created: string
				description:  string
				freeform_tags: [_]: string
				purge_job_details: string
				purge_job_time:    string
				system_tags: [_]: string
				display_name:                string
				work_request_id:             string
				state:                       string
				is_auto_purge_enabled:       bool
				peer_target_database_key:    int
				audit_collection_start_time: string
				defined_tags: [_]: string
				compartment_id?:     string
				audit_profile_id:    string
				time_updated:        string
				trail_location:      string
				target_id:           string
				purge_job_status:    string
				time_last_collected: string
				status:              string
				lifecycle_details:   string
				trail_source:        string
				id:                  string
			}]
			state:                  string
			audit_profile_id!:      string
			description?:           string
			audit_collected_volume: string
			offline_months:         int
		}
		audit_trail: {
			work_request_id:   string
			state?:            string
			purge_job_status:  string
			status:            string
			trail_location:    string
			resume_trigger?:   int
			lifecycle_details: string
			time_created:      string
			description?:      string
			defined_tags?: [_]: string
			trail_source:             string
			time_updated:             string
			peer_target_database_key: int
			audit_profile_id:         string
			system_tags: [_]: string
			target_id:           string
			time_last_collected: string
			audit_trail_id!:     string
			freeform_tags?: [_]: string
			is_auto_purge_enabled?:      bool
			compartment_id:              string
			display_name?:               string
			purge_job_details:           string
			purge_job_time:              string
			audit_collection_start_time: string
		}
		alert_policy: {
			defined_tags?: [_]: string
			lifecycle_details: string
			alert_policy_rule_details?: [...{
				display_name?: string
				expression!:   string
				description?:  string
			}]
			system_tags: [_]: string
			severity!:          string
			state:              string
			time_created:       string
			display_name?:      string
			compartment_id!:    string
			is_user_defined:    bool
			time_updated:       string
			alert_policy_type!: string
			description?:       string
			freeform_tags?: [_]: string
		}
		on_prem_connector: {
			defined_tags?: [_]: string
			state:             string
			lifecycle_details: string
			system_tags: [_]: string
			time_created:    string
			compartment_id!: string
			freeform_tags?: [_]: string
			created_version:   string
			description?:      string
			available_version: string
			display_name?:     string
		}
		security_policy_management: {
			defined_tags?: [_]: string
			state:           string
			compartment_id?: string
			freeform_tags?: [_]: string
			time_created:      string
			target_id?:        string
			description?:      string
			lifecycle_details: string
			display_name?:     string
			system_tags: [_]: string
			time_updated: string
		}
		audit_profile_management: {
			offline_months?:                       int
			state:                                 string
			compartment_id?:                       string
			lifecycle_details:                     string
			time_updated:                          string
			online_months?:                        int
			audit_collected_volume:                string
			time_created:                          string
			change_retention_trigger?:             bool
			is_paid_usage_enabled?:                bool
			is_override_global_retention_setting?: bool
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			description?:  string
			display_name?: string
			target_id?:    string
		}
		masking_policy: {
			time_updated:     string
			parallel_degree?: string
			description?:     string
			display_name?:    string
			freeform_tags?: [_]: string
			post_masking_script?:            string
			generate_health_report_trigger?: int
			defined_tags?: [_]: string
			is_drop_temp_tables_enabled?: bool
			column_source!: [...{
				target_id?:               string
				column_source!:           string
				sensitive_data_model_id?: string
			}]
			time_created:                          string
			recompile?:                            string
			add_masking_columns_from_sdm_trigger?: int
			is_redo_logging_enabled?:              bool
			pre_masking_script?:                   string
			compartment_id!:                       string
			is_refresh_stats_enabled?:             bool
			state:                                 string
		}
		target_database_peer_target_database: {
			display_name?: string
			tls_config?: [...{
				certificate_store_type?: string
				key_store_content?:      string
				store_password?:         string
				trust_store_content?:    string
				status!:                 string
			}]
			time_created: string
			database_details!: [...{
				vm_cluster_id?:       string
				instance_id?:         string
				database_type!:       string
				infrastructure_type!: string
				db_system_id?:        string
				ip_addresses?: [...string]
				listener_port?:          int
				autonomous_database_id?: string
				service_name?:           string
			}]
			key:                       int
			state:                     string
			target_database_id!:       string
			dataguard_association_id?: string
			description?:              string
			database_unique_name:      string
			role:                      string
			lifecycle_details:         string
		}
		sensitive_data_models_apply_discovery_job_results: {
			discovery_job_id!:        string
			sensitive_data_model_id!: string
		}
		set_user_assessment_baseline_management: {
			user_assessment_id: string
			assessment_ids: [...string]
			target_id!:      string
			compartment_id!: string
		}
		masking_policies_apply_difference_to_masking_columns: {
			sdm_masking_policy_difference_id!: string
			masking_policy_id!:                string
		}
		library_masking_format: {
			sensitive_type_ids?: [...string]
			state: string
			format_entries!: [...{
				fixed_string?:             string
				sql_expression?:           string
				post_processing_function?: string
				end_date?:                 string
				schema_name?:              string
				random_list?: [...string]
				start_value?:               float
				end_value?:                 float
				start_position?:            int
				user_defined_function?:     string
				type!:                      string
				column_name?:               string
				start_date?:                string
				length?:                    int
				description?:               string
				library_masking_format_id?: string
				start_length?:              int
				regular_expression?:        string
				end_length?:                int
				replace_with?:              string
				table_name?:                string
				fixed_number?:              float
				grouping_columns?: [...string]
				pattern?: string
			}]
			defined_tags?: [_]: string
			time_created:  string
			time_updated:  string
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			source:          string
		}
		masking_policies_masking_column: {
			sensitive_type_id?: string
			data_type:          string
			time_updated:       string
			child_columns: [...string]
			state:                 string
			masking_policy_id!:    string
			masking_column_group?: string
			key:                   string
			time_created:          string
			masking_formats?: [...{
				format_entries!: [...{
					regular_expression?:        string
					schema_name?:               string
					description?:               string
					fixed_number?:              float
					start_date?:                string
					end_length?:                int
					post_processing_function?:  string
					table_name?:                string
					library_masking_format_id?: string
					start_length?:              int
					fixed_string?:              string
					sql_expression?:            string
					start_position?:            int
					end_value?:                 float
					pattern?:                   string
					random_list?: [...string]
					start_value?:  float
					replace_with?: string
					grouping_columns?: [...string]
					user_defined_function?: string
					end_date?:              string
					type!:                  string
					column_name?:           string
					length?:                int
				}]
				condition?:   string
				description?: string
			}]
			object_type?:        string
			object!:             string
			schema_name!:        string
			lifecycle_details:   string
			column_name!:        string
			is_masking_enabled?: bool
		}
		sensitive_data_models_sensitive_column: {
			sample_data_values: [...string]
			time_created:               string
			schema_name!:               string
			key:                        string
			lifecycle_details:          string
			source:                     string
			status?:                    string
			data_type?:                 string
			estimated_data_value_count: string
			parent_column_keys?: [...string]
			app_defined_child_column_keys?: [...string]
			db_defined_child_column_keys?: [...string]
			time_updated:   string
			column_name!:   string
			object!:        string
			relation_type?: string
			column_groups: [...string]
			state:                    string
			sensitive_type_id?:       string
			sensitive_data_model_id!: string
			app_name?:                string
			object_type?:             string
		}
		unset_user_assessment_baseline: {
			user_assessment_id!: string
			target_ids?: [...string]
		}
		database_security_config_management: {
			refresh_trigger?: bool
			description?:     string
			time_created:     string
			sql_firewall_config?: [...{
				status?:                   string
				violation_log_auto_purge?: string
				time_status_updated:       string
				exclude_job?:              string
			}]
			lifecycle_details: string
			defined_tags?: [_]: string
			display_name?:   string
			compartment_id?: string
			system_tags: [_]: string
			time_updated:        string
			target_id?:          string
			time_last_refreshed: string
			freeform_tags?: [_]: string
			state: string
		}
		sql_firewall_policy: {
			state:             string
			lifecycle_details: string
			sql_level:         string
			allowed_client_programs?: [...string]
			sql_firewall_policy_id!: string
			violation_audit?:        string
			freeform_tags?: [_]: string
			db_user_name: string
			system_tags: [_]: string
			time_updated:      string
			display_name?:     string
			compartment_id?:   string
			description?:      string
			violation_action?: string
			allowed_client_ips?: [...string]
			defined_tags?: [_]: string
			status?:            string
			enforcement_scope?: string
			security_policy_id: string
			allowed_client_os_usernames?: [...string]
			time_created: string
		}
		unset_user_assessment_baseline_management: {
			compartment_id!:     string
			user_assessment_id!: string
		}
		add_sdm_columns: masking_policy_id!: string
		calculate_audit_volume_collected: {
			time_to_month?: string
			collected_audit_volumes: [...{
				archived_volume:        string
				audit_profile_id:       string
				month_in_consideration: string
				online_volume:          string
			}]
			audit_profile_id!: string
			time_from_month!:  string
		}
		compare_user_assessment: {
			comparison_user_assessment_id!: string
			user_assessment_id!:            string
		}
		data_safe_private_endpoint: {
			defined_tags?: [_]: string
			compartment_id!: string
			freeform_tags?: [_]: string
			state:                string
			private_endpoint_ip?: string
			endpoint_fqdn:        string
			subnet_id!:           string
			nsg_ids?: [...string]
			private_endpoint_id: string
			description?:        string
			vcn_id!:             string
			system_tags: [_]: string
			time_created:  string
			display_name!: string
		}
		database_security_config: {
			system_tags: [_]: string
			compartment_id?:              string
			target_id:                    string
			time_updated:                 string
			time_last_refreshed:          string
			database_security_config_id!: string
			description?:                 string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state:             string
			time_created:      string
			refresh_trigger?:  int
			lifecycle_details: string
			sql_firewall_config?: [...{
				exclude_job?:              string
				status?:                   string
				violation_log_auto_purge?: string
				time_status_updated:       string
			}]
			display_name?: string
		}
		alert: {
			operation:             string
			status?:               string
			operation_time:        string
			policy_id:             string
			resource_name:         string
			alert_policy_rule_key: string
			description:           string
			time_updated:          string
			display_name:          string
			feature_details: [_]: string
			defined_tags?: [_]: string
			time_created:           string
			alert_policy_rule_name: string
			operation_status:       string
			severity:               string
			state:                  string
			alert_id!:              string
			freeform_tags?: [_]: string
			compartment_id?: string
			system_tags: [_]: string
			target_ids: [...string]
			alert_type: string
			target_names: [...string]
			comment?: string
		}
		sdm_masking_policy_difference: {
			difference_type?:        string
			time_created:            string
			sensitive_data_model_id: string
			system_tags: [_]: string
			display_name?:         string
			state:                 string
			time_creation_started: string
			masking_policy_id!:    string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		security_policy_deployment: {
			time_updated:    string
			compartment_id?: string
			system_tags: [_]: string
			target_id:                      string
			time_created:                   string
			security_policy_id:             string
			state:                          string
			security_policy_deployment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			description?:      string
			display_name?:     string
		}
		sensitive_type: {
			time_updated: string
			entity_type!: string
			defined_tags?: [_]: string
			is_common: bool
			state:     string
			freeform_tags?: [_]: string
			description?:               string
			parent_category_id?:        string
			source:                     string
			name_pattern?:              string
			search_type?:               string
			default_masking_format_id?: string
			comment_pattern?:           string
			system_tags: [_]: string
			time_created:    string
			compartment_id!: string
			display_name?:   string
			short_name?:     string
			data_pattern?:   string
		}
		unset_security_assessment_baseline: {
			security_assessment_id!: string
			target_ids?: [...string]
		}
		set_security_assessment_baseline_management: {
			security_assessment_id: string
			assessment_ids: [...string]
			target_id!:      string
			compartment_id!: string
		}
		set_security_assessment_baseline: {
			security_assessment_id!: string
			assessment_ids?: [...string]
		}
		unset_security_assessment_baseline_management: {
			security_assessment_id!: string
			compartment_id!:         string
		}
		discovery_jobs_result: {
			sample_data_values: [...string]
			sensitive_type_id: string
			object_type:       string
			parent_column_keys: [...string]
			relation_type: string
			schema_name:   string
			modified_attributes: [...{
				app_defined_child_column_keys: [...string]
				db_defined_child_column_keys: [...string]
			}]
			discovery_job_id!:          string
			planned_action:             string
			column_name:                string
			data_type:                  string
			discovery_type:             string
			estimated_data_value_count: string
			is_result_applied:          bool
			sensitive_columnkey:        string
			app_name:                   string
			key:                        string
			object:                     string
			app_defined_child_column_keys: [...string]
			db_defined_child_column_keys: [...string]
		}
		compare_security_assessment: {
			comparison_security_assessment_id!: string
			security_assessment_id!:            string
		}
		security_assessment: {
			target_version: string
			time_updated:   string
			display_name?:  string
			target_id!:     string
			target_ids: [...string]
			ignored_targets: [...string]
			statistics: [...{
				evaluate: [...{
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
				}]
				high_risk: [...{
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
				}]
				low_risk: [...{
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
				}]
				medium_risk: [...{
					targets_count:                              int
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
				}]
				pass: [...{
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
				}]
				targets_count: int
				advisory: [...{
					db_configuration_findings_count:            int
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
				}]
				deferred: [...{
					fine_grained_access_control_findings_count: int
					privileges_and_roles_findings_count:        int
					targets_count:                              int
					user_accounts_findings_count:               int
					auditing_findings_count:                    int
					authorization_control_findings_count:       int
					data_encryption_findings_count:             int
					db_configuration_findings_count:            int
				}]
			}]
			system_tags: [_]: string
			time_last_assessed: string
			compartment_id!:    string
			description?:       string
			freeform_tags?: [_]: string
			triggered_by:              string
			type:                      string
			is_assessment_scheduled?:  bool
			lifecycle_details:         string
			last_compared_baseline_id: string
			ignored_assessment_ids: [...string]
			schedule?:                 string
			link:                      string
			is_deviated_from_baseline: bool
			time_created:              string
			defined_tags?: [_]: string
			is_baseline:                     bool
			schedule_security_assessment_id: string
			state:                           string
		}
		security_policy_deployment_management: {
			display_name?: string
			time_updated:  string
			target_id?:    string
			state:         string
			system_tags: [_]: string
			time_created: string
			defined_tags?: [_]: string
			compartment_id?:    string
			security_policy_id: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			description?:      string
		}
		sensitive_data_model: {
			compartment_id!:                    string
			time_updated:                       string
			is_sample_data_collection_enabled?: bool
			tables_for_discovery?: [...{
				schema_name!: string
				table_names?: [...string]
			}]
			system_tags: [_]: string
			app_suite_name?: string
			defined_tags?: [_]: string
			time_created:                               string
			is_app_defined_relation_discovery_enabled?: bool
			schemas_for_discovery?: [...string]
			is_include_all_sensitive_types?: bool
			sensitive_type_ids_for_discovery?: [...string]
			state:                   string
			is_include_all_schemas?: bool
			target_id!:              string
			description?:            string
			display_name?:           string
			freeform_tags?: [_]: string
		}
		audit_trail_management: {
			audit_collection_start_time?: string
			resume_trigger?:              bool
			audit_profile_id:             string
			compartment_id?:              string
			time_created:                 string
			defined_tags?: [_]: string
			state?:              string
			start_trigger?:      bool
			time_last_collected: string
			time_updated:        string
			system_tags: [_]: string
			trail_location?:        string
			is_auto_purge_enabled?: bool
			status:                 string
			display_name?:          string
			freeform_tags?: [_]: string
			lifecycle_details: string
			stop_trigger?:     bool
			work_request_id:   string
			target_id?:        string
			description?:      string
		}
		sql_collection: {
			start_trigger?: bool
			target_id!:     string
			description?:   string
			system_tags: [_]: string
			defined_tags?: [_]: string
			generate_sql_firewall_policy_trigger?: bool
			stop_trigger?:                         bool
			compartment_id!:                       string
			time_last_started:                     string
			time_created:                          string
			refresh_log_insights_trigger?:         bool
			sql_level?:                            string
			status?:                               string
			time_last_stopped:                     string
			time_updated:                          string
			freeform_tags?: [_]: string
			display_name?:       string
			state:               string
			lifecycle_details:   string
			purge_logs_trigger?: bool
			db_user_name!:       string
		}
	}
	arguments: {
		report: {
			report_id!:      string
			compartment_id?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		security_policy: {
			freeform_tags?: [_]: string
			compartment_id?: string
			defined_tags?: [_]: string
			description?:        string
			security_policy_id!: string
			display_name?:       string
		}
		calculate_audit_volume_available: {
			audit_profile_id!:            string
			audit_collection_start_time?: string
			database_unique_name?:        string
			trail_locations?: [...string]
		}
		data_safe_configuration: {
			is_enabled!:     bool
			compartment_id?: string
		}
		masking_policy_health_report_management: {
			compartment_id?:    string
			masking_policy_id?: string
			target_id?:         string
		}
		set_user_assessment_baseline: {
			user_assessment_id!: string
			assessment_ids?: [...string]
		}
		user_assessment: {
			target_id!: string
			defined_tags?: [_]: string
			is_assessment_scheduled?: bool
			description?:             string
			freeform_tags?: [_]: string
			schedule?:       string
			compartment_id!: string
			display_name?:   string
		}
		alert_policy_rule: {
			display_name?:    string
			alert_policy_id!: string
			expression!:      string
			description?:     string
		}
		audit_archive_retrieval: {
			defined_tags?: [_]: string
			description?:    string
			start_date!:     string
			compartment_id!: string
			end_date!:       string
			freeform_tags?: [_]: string
			target_id!:    string
			display_name?: string
		}
		report_definition: {
			freeform_tags?: [_]: string
			summary!: [...{
				display_order!:       int
				name!:                string
				count_of?:            string
				group_by_field_name?: string
				is_hidden?:           bool
				scim_filter?:         string
			}]
			defined_tags?: [_]: string
			column_sortings!: [...{
				sorting_order!: int
				field_name!:    string
				is_ascending!:  bool
			}]
			description?: string
			column_filters!: [...{
				operator!: string
				expressions!: [...string]
				field_name!: string
				is_enabled!: bool
				is_hidden!:  bool
			}]
			compartment_id!: string
			parent_id!:      string
			column_info!: [...{
				display_name!:  string
				display_order!: int
				field_name!:    string
				is_hidden!:     bool
				data_type?:     string
			}]
			display_name!: string
		}
		sql_firewall_policy_management: {
			allowed_client_os_usernames?: [...string]
			enforcement_scope?: string
			violation_audit?:   string
			display_name?:      string
			allowed_client_programs?: [...string]
			status?:                 string
			state?:                  string
			description?:            string
			sql_firewall_policy_id?: string
			db_user_name?:           string
			defined_tags?: [_]: string
			target_id?:        string
			violation_action?: string
			compartment_id?:   string
			freeform_tags?: [_]: string
			allowed_client_ips?: [...string]
		}
		discovery_job: {
			schemas_for_discovery?: [...string]
			is_include_all_sensitive_types?: bool
			freeform_tags?: [_]: string
			sensitive_type_ids_for_discovery?: [...string]
			tables_for_discovery?: [...{
				schema_name!: string
				table_names?: [...string]
			}]
			display_name?:                      string
			is_sample_data_collection_enabled?: bool
			compartment_id!:                    string
			sensitive_data_model_id!:           string
			defined_tags?: [_]: string
			discovery_type?:                            string
			is_include_all_schemas?:                    bool
			is_app_defined_relation_discovery_enabled?: bool
		}
		masking_report_management: {
			compartment_id?:    string
			masking_policy_id?: string
			target_id?:         string
		}
		target_database: {
			database_details!: [...{
				listener_port?:          int
				db_system_id?:           string
				instance_id?:            string
				database_type!:          string
				vm_cluster_id?:          string
				autonomous_database_id?: string
				infrastructure_type!:    string
				ip_addresses?: [...string]
				service_name?: string
			}]
			connection_option?: [...{
				datasafe_private_endpoint_id?: string
				on_prem_connector_id?:         string
				connection_type!:              string
			}]
			defined_tags?: [_]: string
			compartment_id!: string
			display_name?:   string
			freeform_tags?: [_]: string
			tls_config?: [...{
				status!:                 string
				certificate_store_type?: string
				key_store_content?:      string
				store_password?:         string
				trust_store_content?:    string
			}]
			description?: string
			peer_target_database_details?: [...{
				description?:  string
				display_name?: string
				tls_config?: [...{
					store_password?:         string
					trust_store_content?:    string
					status!:                 string
					certificate_store_type?: string
					key_store_content?:      string
				}]
				database_details!: [...{
					service_name?:        string
					infrastructure_type!: string
					database_type!:       string
					ip_addresses?: [...string]
					listener_port?:          int
					db_system_id?:           string
					vm_cluster_id?:          string
					instance_id?:            string
					autonomous_database_id?: string
				}]
				dataguard_association_id?: string
			}]
			credentials?: [...{
				password!:  string
				user_name!: string
			}]
		}
		generate_on_prem_connector_configuration: {
			on_prem_connector_id!: string
			password!:             string
		}
		target_alert_policy_association: {
			defined_tags?: [_]: string
			description?:  string
			target_id!:    string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			is_enabled!:     bool
			policy_id!:      string
		}
		mask_data: {
			target_id!:         string
			masking_policy_id!: string
		}
		audit_policy: {
			freeform_tags?: [_]: string
			provision_trigger?:            int
			audit_policy_id!:              string
			description?:                  string
			display_name?:                 string
			retrieve_from_target_trigger?: int
			defined_tags?: [_]: string
			compartment_id?: string
		}
		audit_policy_management: {
			compartment_id?:                        string
			is_data_safe_service_account_excluded?: bool
			freeform_tags?: [_]: string
			audit_conditions?: [...{
				is_data_safe_service_account_audited?: bool
				is_priv_users_managed_by_data_safe?:   bool
				is_enabled?:                           bool
				audit_policy_name?:                    string
				enable_conditions?: [...{
					entity_names?: [...string]
					entity_selection?: string
					entity_type?:      string
					operation_status?: string
				}]
			}]
			target_id?:    string
			display_name?: string
			defined_tags?: [_]: string
			description?:                  string
			provision_trigger?:            bool
			retrieve_from_target_trigger?: bool
		}
		audit_profile: {
			description?:              string
			change_retention_trigger?: int
			freeform_tags?: [_]: string
			audit_profile_id!: string
			compartment_id?:   string
			defined_tags?: [_]: string
			display_name?:          string
			is_paid_usage_enabled?: bool
		}
		audit_trail: {
			is_auto_purge_enabled?: bool
			freeform_tags?: [_]: string
			display_name?: string
			state?:        string
			description?:  string
			defined_tags?: [_]: string
			resume_trigger?: int
			audit_trail_id!: string
		}
		alert_policy: {
			alert_policy_type!: string
			alert_policy_rule_details?: [...{
				expression!:   string
				description?:  string
				display_name?: string
			}]
			description?:  string
			severity!:     string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		on_prem_connector: {
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name?:   string
		}
		security_policy_management: {
			description?:    string
			compartment_id?: string
			display_name?:   string
			freeform_tags?: [_]: string
			target_id?: string
			defined_tags?: [_]: string
		}
		audit_profile_management: {
			is_override_global_retention_setting?: bool
			compartment_id?:                       string
			freeform_tags?: [_]: string
			description?:    string
			target_id?:      string
			offline_months?: int
			online_months?:  int
			defined_tags?: [_]: string
			display_name?:             string
			change_retention_trigger?: bool
			is_paid_usage_enabled?:    bool
		}
		masking_policy: {
			recompile?:                string
			is_redo_logging_enabled?:  bool
			is_refresh_stats_enabled?: bool
			parallel_degree?:          string
			defined_tags?: [_]: string
			add_masking_columns_from_sdm_trigger?: int
			column_source!: [...{
				target_id?:               string
				column_source!:           string
				sensitive_data_model_id?: string
			}]
			pre_masking_script?:             string
			compartment_id!:                 string
			generate_health_report_trigger?: int
			display_name?:                   string
			freeform_tags?: [_]: string
			description?:                 string
			post_masking_script?:         string
			is_drop_temp_tables_enabled?: bool
		}
		target_database_peer_target_database: {
			database_details!: [...{
				service_name?:        string
				db_system_id?:        string
				instance_id?:         string
				database_type!:       string
				infrastructure_type!: string
				ip_addresses?: [...string]
				listener_port?:          int
				vm_cluster_id?:          string
				autonomous_database_id?: string
			}]
			tls_config?: [...{
				status!:                 string
				certificate_store_type?: string
				key_store_content?:      string
				store_password?:         string
				trust_store_content?:    string
			}]
			display_name?:             string
			target_database_id!:       string
			dataguard_association_id?: string
			description?:              string
		}
		sensitive_data_models_apply_discovery_job_results: {
			discovery_job_id!:        string
			sensitive_data_model_id!: string
		}
		set_user_assessment_baseline_management: {
			compartment_id!: string
			target_id!:      string
		}
		masking_policies_apply_difference_to_masking_columns: {
			sdm_masking_policy_difference_id!: string
			masking_policy_id!:                string
		}
		library_masking_format: {
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			format_entries!: [...{
				type!:           string
				start_position?: int
				start_date?:     string
				length?:         int
				start_value?:    float
				replace_with?:   string
				table_name?:     string
				sql_expression?: string
				start_length?:   int
				grouping_columns?: [...string]
				end_length?:                int
				column_name?:               string
				pattern?:                   string
				user_defined_function?:     string
				fixed_number?:              float
				fixed_string?:              string
				regular_expression?:        string
				description?:               string
				end_value?:                 float
				end_date?:                  string
				library_masking_format_id?: string
				random_list?: [...string]
				schema_name?:              string
				post_processing_function?: string
			}]
			defined_tags?: [_]: string
			sensitive_type_ids?: [...string]
		}
		masking_policies_masking_column: {
			sensitive_type_id?:    string
			masking_policy_id!:    string
			object!:               string
			masking_column_group?: string
			column_name!:          string
			is_masking_enabled?:   bool
			masking_formats?: [...{
				description?: string
				format_entries!: [...{
					post_processing_function?: string
					length?:                   int
					description?:              string
					type!:                     string
					fixed_number?:             float
					end_length?:               int
					sql_expression?:           string
					start_value?:              float
					table_name?:               string
					user_defined_function?:    string
					end_date?:                 string
					regular_expression?:       string
					schema_name?:              string
					end_value?:                float
					grouping_columns?: [...string]
					start_position?:            int
					library_masking_format_id?: string
					start_length?:              int
					pattern?:                   string
					random_list?: [...string]
					replace_with?: string
					column_name?:  string
					fixed_string?: string
					start_date?:   string
				}]
				condition?: string
			}]
			schema_name!: string
			object_type?: string
		}
		sensitive_data_models_sensitive_column: {
			object!:            string
			relation_type?:     string
			status?:            string
			data_type?:         string
			sensitive_type_id?: string
			column_name!:       string
			db_defined_child_column_keys?: [...string]
			sensitive_data_model_id!: string
			app_defined_child_column_keys?: [...string]
			app_name?:    string
			object_type?: string
			parent_column_keys?: [...string]
			schema_name!: string
		}
		unset_user_assessment_baseline: {
			target_ids?: [...string]
			user_assessment_id!: string
		}
		database_security_config_management: {
			sql_firewall_config?: [...{
				violation_log_auto_purge?: string
				exclude_job?:              string
				status?:                   string
			}]
			defined_tags?: [_]: string
			display_name?:    string
			refresh_trigger?: bool
			compartment_id?:  string
			freeform_tags?: [_]: string
			description?: string
			target_id?:   string
		}
		sql_firewall_policy: {
			sql_firewall_policy_id!: string
			display_name?:           string
			enforcement_scope?:      string
			violation_action?:       string
			freeform_tags?: [_]: string
			violation_audit?: string
			defined_tags?: [_]: string
			status?: string
			allowed_client_os_usernames?: [...string]
			description?: string
			allowed_client_ips?: [...string]
			compartment_id?: string
			allowed_client_programs?: [...string]
		}
		unset_user_assessment_baseline_management: {
			user_assessment_id!: string
			compartment_id!:     string
		}
		add_sdm_columns: masking_policy_id!: string
		calculate_audit_volume_collected: {
			audit_profile_id!: string
			time_from_month!:  string
			time_to_month?:    string
		}
		compare_user_assessment: {
			comparison_user_assessment_id!: string
			user_assessment_id!:            string
		}
		data_safe_private_endpoint: {
			display_name!: string
			description?:  string
			nsg_ids?: [...string]
			compartment_id!: string
			subnet_id!:      string
			vcn_id!:         string
			freeform_tags?: [_]: string
			private_endpoint_ip?: string
			defined_tags?: [_]: string
		}
		database_security_config: {
			display_name?:                string
			database_security_config_id!: string
			description?:                 string
			compartment_id?:              string
			refresh_trigger?:             int
			freeform_tags?: [_]: string
			sql_firewall_config?: [...{
				exclude_job?:              string
				status?:                   string
				violation_log_auto_purge?: string
			}]
			defined_tags?: [_]: string
		}
		alert: {
			compartment_id?: string
			defined_tags?: [_]: string
			status?:   string
			alert_id!: string
			comment?:  string
			freeform_tags?: [_]: string
		}
		sdm_masking_policy_difference: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			masking_policy_id!: string
			difference_type?:   string
			display_name?:      string
			compartment_id!:    string
		}
		security_policy_deployment: {
			description?:                   string
			display_name?:                  string
			security_policy_deployment_id!: string
			freeform_tags?: [_]: string
			compartment_id?: string
			defined_tags?: [_]: string
		}
		sensitive_type: {
			short_name?:                string
			default_masking_format_id?: string
			search_type?:               string
			data_pattern?:              string
			comment_pattern?:           string
			name_pattern?:              string
			display_name?:              string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			compartment_id!:     string
			description?:        string
			parent_category_id?: string
			entity_type!:        string
		}
		unset_security_assessment_baseline: {
			security_assessment_id!: string
			target_ids?: [...string]
		}
		set_security_assessment_baseline_management: {
			compartment_id!: string
			target_id!:      string
		}
		set_security_assessment_baseline: {
			security_assessment_id!: string
			assessment_ids?: [...string]
		}
		unset_security_assessment_baseline_management: {
			security_assessment_id!: string
			compartment_id!:         string
		}
		discovery_jobs_result: discovery_job_id!: string
		compare_security_assessment: {
			comparison_security_assessment_id!: string
			security_assessment_id!:            string
		}
		security_assessment: {
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			schedule?:                string
			display_name?:            string
			is_assessment_scheduled?: bool
			compartment_id!:          string
			target_id!:               string
		}
		security_policy_deployment_management: {
			freeform_tags?: [_]: string
			compartment_id?: string
			target_id?:      string
			defined_tags?: [_]: string
			description?:  string
			display_name?: string
		}
		sensitive_data_model: {
			compartment_id!:                            string
			is_app_defined_relation_discovery_enabled?: bool
			tables_for_discovery?: [...{
				schema_name!: string
				table_names?: [...string]
			}]
			description?: string
			sensitive_type_ids_for_discovery?: [...string]
			app_suite_name?: string
			freeform_tags?: [_]: string
			target_id!:                         string
			is_include_all_sensitive_types?:    bool
			is_sample_data_collection_enabled?: bool
			schemas_for_discovery?: [...string]
			display_name?: string
			defined_tags?: [_]: string
			is_include_all_schemas?: bool
		}
		audit_trail_management: {
			freeform_tags?: [_]: string
			state?:                       string
			stop_trigger?:                bool
			trail_location?:              string
			audit_collection_start_time?: string
			compartment_id?:              string
			is_auto_purge_enabled?:       bool
			start_trigger?:               bool
			description?:                 string
			display_name?:                string
			resume_trigger?:              bool
			target_id?:                   string
			defined_tags?: [_]: string
		}
		sql_collection: {
			purge_logs_trigger?:                   bool
			sql_level?:                            string
			description?:                          string
			generate_sql_firewall_policy_trigger?: bool
			db_user_name!:                         string
			display_name?:                         string
			defined_tags?: [_]: string
			stop_trigger?:                 bool
			status?:                       string
			refresh_log_insights_trigger?: bool
			start_trigger?:                bool
			compartment_id!:               string
			target_id!:                    string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	alert_policy_rule: {
		rule_key!:        string
		alert_policy_id!: string
	}
	security_policy_report_role_grant_paths: {
		granted_role!:              string
		grantee!:                   string
		security_policy_report_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	sql_firewall_allowed_sqls: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		scim_query?:                string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		access_level?: string
	}
	target_alert_policy_associations: {
		target_id?:                             string
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
		alert_policy_id?:                       string
		compartment_id_in_subtree?:             bool
		access_level?:                          string
		state?:                                 string
		target_alert_policy_association_id?:    string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	data_safe_private_endpoints: {
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
		state?:                     string
		vcn_id?:                    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	audit_policies: {
		compartment_id!:            string
		access_level?:              string
		compartment_id_in_subtree?: bool
		display_name?:              string
		state?:                     string
		target_id?:                 string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		audit_policy_id?: string
	}
	audit_profile_available_audit_volumes: {
		month_in_consideration_greater_than?: string
		month_in_consideration_less_than?:    string
		trail_location?:                      string
		work_request_id!:                     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		audit_profile_id!: string
	}
	sdm_masking_policy_difference_difference_columns: {
		sync_status?: string
		column_name?: [...string]
		difference_type?:                  string
		sdm_masking_policy_difference_id!: string
		schema_name?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		object?: [...string]
		planned_action?: string
	}
	sdm_masking_policy_differences: {
		difference_access_level?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:              string
		masking_policy_id?:         string
		sensitive_data_model_id?:   string
		state?:                     string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
	}
	sql_firewall_allowed_sql_analytics: {
		group_by?: [...string]
		scim_query?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
	}
	audit_events: {
		compartment_id_in_subtree?: bool
		scim_query?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:   string
		compartment_id!: string
	}
	audit_profile_analytic: {
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		group_by?: [...string]
	}
	library_masking_formats: {
		compartment_id!:                        string
		compartment_id_in_subtree?:             bool
		display_name?:                          string
		access_level?:                          string
		state?:                                 string
		time_created_greater_than_or_equal_to?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		library_masking_format_id?:     string
		library_masking_format_source?: string
		time_created_less_than?:        string
	}
	sdm_masking_policy_difference_difference_column: {
		sdm_masking_policy_difference_id!: string
		difference_column_key!:            string
	}
	discovery_jobs_results: {
		object?: [...string]
		planned_action?: string
		schema_name?: [...string]
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		is_result_applied?: bool
		column_name?: [...string]
		discovery_job_id!: string
		discovery_type?:   string
	}
	on_prem_connector: on_prem_connector_id!: string
	report_definitions: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
		state?:                     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		category?:     string
		is_seeded?:    bool
		access_level?: string
		data_source?:  string
	}
	sensitive_data_models: {
		time_created_less_than?:                string
		compartment_id_in_subtree?:             bool
		compartment_id!:                        string
		display_name?:                          string
		time_created_greater_than_or_equal_to?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		state?:                   string
		target_id?:               string
		access_level?:            string
		sensitive_data_model_id?: string
	}
	masking_reports: {
		compartment_id_in_subtree?: bool
		masking_policy_id?:         string
		target_id?:                 string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:   string
		compartment_id!: string
	}
	sql_firewall_violations: {
		compartment_id_in_subtree?: bool
		scim_query?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:   string
		compartment_id!: string
	}
	target_database_peer_target_databases: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		target_database_id!: string
	}
	masking_policy_health_report: masking_policy_health_report_id!: string
	sdm_masking_policy_difference: sdm_masking_policy_difference_id!: string
	security_assessment_security_features: {
		targets_with_database_vault?:    string
		target_id?:                      string
		targets_with_column_encryption?: string
		access_level?:                   string
		targets_with_traditional_audit?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		targets_with_unified_audit?:           string
		targets_with_fine_grained_audit?:      string
		targets_with_privilege_analysis?:      string
		compartment_id_in_subtree?:            bool
		targets_with_tablespace_encryption?:   string
		compartment_id!:                       string
		targets_with_global_authentication?:   string
		targets_with_network_encryption?:      string
		targets_with_password_authentication?: string
		targets_with_external_authentication?: string
	}
	target_databases: {
		compartment_id_in_subtree?: bool
		state?:                     string
		access_level?:              string
		associated_resource_id?:    string
		database_type?:             string
		infrastructure_type?:       string
		compartment_id!:            string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		target_database_id?: string
		display_name?:       string
	}
	target_databases_schemas: {
		schema_name?: [...string]
		schema_name_contains?: string
		target_database_id!:   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		is_oracle_maintained?: bool
	}
	audit_profile_available_audit_volume: {
		audit_profile_id!:                    string
		month_in_consideration_greater_than?: string
		month_in_consideration_less_than?:    string
		trail_location?:                      string
		work_request_id!:                     string
	}
	sql_firewall_allowed_sql: sql_firewall_allowed_sql_id!: string
	target_database_roles: {
		is_oracle_maintained?: bool
		role_name?: [...string]
		role_name_contains?: string
		target_database_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		authentication_type?: string
	}
	user_assessment_user_access_analytics: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		user_assessment_id!: string
	}
	sql_firewall_violation_analytics: {
		time_started?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		access_level?: string
		summary_field?: [...string]
		time_ended?:                string
		compartment_id_in_subtree?: bool
		query_time_zone?:           string
		scim_query?:                string
		compartment_id!:            string
		group_by?: [...string]
	}
	target_database_peer_target_database: {
		peer_target_database_id!: string
		target_database_id!:      string
	}
	discovery_job: discovery_job_id!: string
	masking_reports_masked_columns: {
		column_name?: [...string]
		masking_report_id!: string
		sensitive_type_id?: string
		masking_column_group?: [...string]
		object?: [...string]
		object_type?: [...string]
		schema_name?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	report: report_id!: string
	security_assessment_finding: {
		is_top_finding?: bool
		references?:     string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		access_level?:              string
		target_id?:                 string
		finding_key?:               string
		severity?:                  string
		compartment_id_in_subtree?: bool
		security_assessment_id!:    string
		state?:                     string
	}
	sql_collection_analytics: {
		target_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		access_level?:   string
		compartment_id!: string
		group_by?: [...string]
		state?:                     string
		compartment_id_in_subtree?: bool
		time_started?:              string
		time_ended?:                string
	}
	database_security_configs: {
		target_id?:                             string
		display_name?:                          string
		time_created_greater_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?:   bool
		time_created_less_than?:      string
		access_level?:                string
		compartment_id!:              string
		database_security_config_id?: string
		state?:                       string
	}
	security_policy_deployment_security_policy_entry_state: {
		security_policy_entry_state_id!: string
		security_policy_deployment_id!:  string
	}
	security_policy_reports: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:            string
		target_id?:                 string
		state?:                     string
		access_level?:              string
		compartment_id_in_subtree?: bool
		display_name?:              string
		security_policy_report_id?: string
	}
	discovery_analytics: {
		compartment_id!:          string
		target_id?:               string
		sensitive_data_model_id?: string
		sensitive_type_id?:       string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id_in_subtree?: bool
		group_by?:                  string
		is_common?:                 bool
	}
	masking_policies: {
		time_created_greater_than_or_equal_to?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:            string
		display_name?:              string
		masking_policy_id?:         string
		state?:                     string
		time_created_less_than?:    string
		access_level?:              string
		compartment_id_in_subtree?: bool
		sensitive_data_model_id?:   string
		target_id?:                 string
	}
	security_policy_deployments: {
		compartment_id!:                string
		security_policy_deployment_id?: string
		access_level?:                  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		state?:                     string
		target_id?:                 string
		security_policy_id?:        string
		compartment_id_in_subtree?: bool
		display_name?:              string
	}
	security_policy_report_database_table_access_entry: {
		database_table_access_entry_key!: string
		security_policy_report_id!:       string
	}
	sensitive_data_model_sensitive_objects: {
		schema_name?: [...string]
		sensitive_data_model_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		object?: [...string]
		object_type?: [...string]
	}
	user_assessment_user_analytics: {
		account_status?:                             string
		time_password_last_changed_less_than?:       string
		time_user_created_greater_than_or_equal_to?: string
		user_category?:                              string
		compartment_id_in_subtree?:                  bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		user_name?:                                           string
		time_last_login_less_than?:                           string
		access_level?:                                        string
		time_last_login_greater_than_or_equal_to?:            string
		authentication_type?:                                 string
		user_key?:                                            string
		time_user_created_less_than?:                         string
		user_assessment_id!:                                  string
		target_id?:                                           string
		time_password_last_changed_greater_than_or_equal_to?: string
	}
	alert_policy_rules: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		alert_policy_id!: string
	}
	audit_event_analytic: {
		time_ended?:                string
		compartment_id_in_subtree?: bool
		scim_query?:                string
		summary_field?: [...string]
		time_started?:    string
		compartment_id!:  string
		query_time_zone?: string
		access_level?:    string
		group_by?: [...string]
	}
	audit_profile_collected_audit_volumes: {
		month_in_consideration_greater_than?: string
		month_in_consideration_less_than?:    string
		work_request_id!:                     string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		audit_profile_id!: string
	}
	compatible_formats_for_sensitive_type: {
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
	}
	discovery_jobs: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:            string
		state?:                     string
		target_id?:                 string
		access_level?:              string
		display_name?:              string
		sensitive_data_model_id?:   string
		compartment_id_in_subtree?: bool
		discovery_job_id?:          string
	}
	security_assessment_findings_change_audit_logs: {
		modified_by?:                               string
		time_valid_until_greater_than_or_equal_to?: string
		security_assessment_id!:                    string
		time_valid_until_less_than?:                string
		is_risk_deferred?:                          bool
		finding_key?:                               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		severity?:                              string
		finding_title?:                         string
		time_updated_greater_than_or_equal_to?: string
		time_updated_less_than?:                string
	}
	sensitive_data_model: sensitive_data_model_id!: string
	audit_event: {
		compartment_id_in_subtree?: bool
		scim_query?:                string
		access_level?:              string
		compartment_id!:            string
	}
	masking_policies_masking_column: {
		masking_column_key!: string
		masking_policy_id!:  string
	}
	security_assessment_finding_analytics: {
		finding_key?:               string
		compartment_id_in_subtree?: bool
		severity?:                  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:     string
		top_finding_status?: string
		access_level?:       string
		group_by?:           string
		is_top_finding?:     bool
	}
	target_database_role: {
		target_database_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		authentication_type?:  string
		is_oracle_maintained?: bool
		role_name?: [...string]
		role_name_contains?: string
	}
	masking_analytic: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		group_by?:                  string
		masking_policy_id?:         string
		target_id?:                 string
	}
	security_assessment_security_feature_analytics: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		target_id?:                 string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?: string
	}
	security_policy_report_database_view_access_entries: {
		scim_query?:                string
		security_policy_report_id!: string
		target_id?:                 string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	masking_analytics: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		group_by?:                  string
		masking_policy_id?:         string
		target_id?:                 string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	audit_profile_collected_audit_volume: {
		audit_profile_id!:                    string
		month_in_consideration_greater_than?: string
		month_in_consideration_less_than?:    string
		work_request_id!:                     string
	}
	library_masking_format: library_masking_format_id!: string
	report_content: report_id!: string
	security_assessments: {
		triggered_by?:              string
		state?:                     string
		time_created_less_than?:    string
		display_name?:              string
		type?:                      string
		compartment_id_in_subtree?: bool
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		is_baseline?:                           bool
		compartment_id!:                        string
		is_schedule_assessment?:                bool
		access_level?:                          string
		time_created_greater_than_or_equal_to?: string
		schedule_assessment_id?:                string
		target_id?:                             string
	}
	user_assessment_comparison: {
		user_assessment_id!:            string
		comparison_user_assessment_id!: string
	}
	audit_trail_analytic: {
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		group_by?: [...string]
		target_id?: string
	}
	masking_policy_health_reports: {
		display_name?:      string
		state?:             string
		target_id?:         string
		compartment_id!:    string
		masking_policy_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?:       bool
		masking_policy_health_report_id?: string
		access_level?:                    string
	}
	masking_policy_masking_objects: {
		object_type?: [...string]
		schema_name?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		masking_policy_id!: string
		object?: [...string]
	}
	sensitive_types: {
		compartment_id!:                        string
		time_created_less_than?:                string
		compartment_id_in_subtree?:             bool
		time_created_greater_than_or_equal_to?: string
		entity_type?:                           string
		sensitive_type_id?:                     string
		default_masking_format_id?:             string
		sensitive_type_source?:                 string
		access_level?:                          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		is_common?:          bool
		state?:              string
		parent_category_id?: string
		display_name?:       string
	}
	user_assessment: user_assessment_id!: string
	user_assessment_profiles: {
		sessions_per_user_less_than?:              string
		target_id?:                                string
		compartment_id!:                           string
		password_lock_time_greater_than_or_equal?: string
		access_level?:                             string
		compartment_id_in_subtree?:                bool
		sessions_per_user_greater_than_or_equal?:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		profile_name?:                                string
		password_verification_function?:              string
		user_assessment_id!:                          string
		inactive_account_time_greater_than_or_equal?: string
		failed_login_attempts_less_than?:             string
		failed_login_attempts_greater_than_or_equal?: string
		inactive_account_time_less_than?:             string
		password_lock_time_less_than?:                string
		is_user_created?:                             bool
		user_count_greater_than_or_equal?:            string
		user_count_less_than?:                        string
	}
	alert_policy: alert_policy_id!: string
	audit_profile: audit_profile_id!: string
	masking_policy: masking_policy_id!: string
	security_policy_report: security_policy_report_id!: string
	target_databases_columns: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		column_name_contains?: string
		column_name?: [...string]
		schema_name_contains?: string
		table_name?: [...string]
		table_name_contains?: string
		datatype?: [...string]
		schema_name?: [...string]
		target_database_id!: string
	}
	security_assessment_findings: {
		access_level?:              string
		security_assessment_id!:    string
		severity?:                  string
		compartment_id_in_subtree?: bool
		is_top_finding?:            bool
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		finding_key?: string
		target_id?:   string
		references?:  string
		state?:       string
	}
	audit_trail: audit_trail_id!: string
	data_safe_configuration: compartment_id!: string
	data_safe_private_endpoint: data_safe_private_endpoint_id!: string
	database_security_config: database_security_config_id!: string
	discovery_jobs_result: {
		result_key!:       string
		discovery_job_id!: string
	}
	list_user_grants: {
		depth_level_greater_than_or_equal_to?: int
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		depth_level?:           int
		user_key!:              string
		grant_name?:            string
		privilege_category?:    string
		privilege_type?:        string
		user_assessment_id!:    string
		depth_level_less_than?: int
		grant_key?:             string
	}
	security_assessment: security_assessment_id!: string
	user_assessment_profile_analytics: {
		target_id?:          string
		user_assessment_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		profile_name?:              string
	}
	alerts: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		field?: [...string]
		id?:         string
		scim_query?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		access_level?: string
	}
	audit_profiles: {
		access_level?:                         string
		is_override_global_retention_setting?: bool
		state?:                                string
		is_paid_usage_enabled?:                bool
		target_id?:                            string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		audit_profile_id?:                                string
		compartment_id_in_subtree?:                       bool
		audit_collected_volume_greater_than_or_equal_to?: string
		compartment_id!:                                  string
		display_name?:                                    string
	}
	masking_reports_masked_column: {
		object_type?: [...string]
		schema_name?: [...string]
		sensitive_type_id?: string
		column_name?: [...string]
		masking_column_group?: [...string]
		masking_report_id!: string
		object?: [...string]
	}
	report_definition: report_definition_id!: string
	security_policy_deployment_security_policy_entry_states: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		deployment_status?:             string
		security_policy_deployment_id!: string
		security_policy_entry_id?:      string
	}
	security_policy_report_database_table_access_entries: {
		scim_query?:                string
		security_policy_report_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	sql_collection_log_insights: {
		sql_collection_id!: string
		time_ended!:        string
		time_started!:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		group_by?: string
	}
	on_prem_connectors: {
		display_name?:                      string
		on_prem_connector_id?:              string
		on_prem_connector_lifecycle_state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
	}
	sensitive_data_model_sensitive_schemas: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		schema_name?: [...string]
		sensitive_data_model_id!: string
	}
	target_databases_tables: {
		schema_name?: [...string]
		schema_name_contains?: string
		table_name?: [...string]
		table_name_contains?: string
		target_database_id!:  string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	user_assessment_users: {
		time_password_last_changed_less_than?:       string
		time_user_created_less_than?:                string
		compartment_id_in_subtree?:                  bool
		authentication_type?:                        string
		user_role?:                                  string
		time_user_created_greater_than_or_equal_to?: string
		user_name?:                                  string
		access_level?:                               string
		account_status?:                             string
		schema_list?: [...string]
		target_id?:                                           string
		time_password_last_changed_greater_than_or_equal_to?: string
		user_key?:                                            string
		time_last_login_less_than?:                           string
		user_category?:                                       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		are_all_schemas_accessible?:               bool
		time_last_login_greater_than_or_equal_to?: string
		user_assessment_id!:                       string
		user_type?:                                string
		user_profile?:                             string
	}
	audit_archive_retrievals: {
		target_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:               string
		compartment_id!:             string
		time_of_expiry?:             string
		audit_archive_retrieval_id?: string
		display_name?:               string
		state?:                      string
		compartment_id_in_subtree?:  bool
	}
	audit_policy: audit_policy_id!: string
	masking_policy_masking_schemas: {
		masking_policy_id!: string
		schema_name?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	sensitive_data_model_sensitive_types: {
		sensitive_data_model_id!: string
		sensitive_type_id?:       string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	alert_policies: {
		access_level?:              string
		alert_policy_id?:           string
		state?:                     string
		type?:                      string
		compartment_id_in_subtree?: bool
		display_name?:              string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:                        string
		is_user_defined?:                       bool
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
	}
	security_policy_deployment: security_policy_deployment_id!: string
	sensitive_data_models_sensitive_column: {
		sensitive_column_key!:    string
		sensitive_data_model_id!: string
	}
	sensitive_data_models_sensitive_columns: {
		object_type?: [...string]
		sensitive_type_id?: [...string]
		sensitive_data_model_id!:               string
		time_updated_less_than?:                string
		time_updated_greater_than_or_equal_to?: string
		relation_type?: [...string]
		time_created_greater_than_or_equal_to?: string
		object?: [...string]
		parent_column_key?: [...string]
		is_case_in_sensitive?: bool
		schema_name?: [...string]
		data_type?: [...string]
		status?: [...string]
		time_created_less_than?:           string
		sensitive_column_lifecycle_state?: string
		column_group?:                     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		column_name?: [...string]
	}
	masking_report: masking_report_id!: string
	security_policy: security_policy_id!: string
	discovery_analytic: {
		group_by?:                  string
		sensitive_data_model_id?:   string
		target_id?:                 string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
	}
	security_assessment_comparison: {
		comparison_security_assessment_id!: string
		security_assessment_id!:            string
	}
	sql_firewall_policy_analytics: {
		group_by?: [...string]
		security_policy_id?: string
		access_level?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		state?:                     string
		time_started?:              string
		compartment_id_in_subtree?: bool
		compartment_id!:            string
		time_ended?:                string
	}
	alert_analytic: {
		query_time_zone?: string
		summary_field?: [...string]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		scim_query?:                string
		time_ended?:                string
		group_by?: [...string]
		time_started?: string
	}
	audit_archive_retrieval: audit_archive_retrieval_id!: string
	masking_policies_masking_columns: {
		is_seed_required?: bool
		data_type?: [...string]
		sensitive_type_id?: string
		masking_column_group?: [...string]
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		is_masking_enabled?: bool
		column_name?: [...string]
		masking_policy_id!: string
		object_type?: [...string]
		time_updated_greater_than_or_equal_to?: string
		time_created_less_than?:                string
		time_updated_less_than?:                string
		schema_name?: [...string]
		time_created_greater_than_or_equal_to?: string
		masking_column_lifecycle_state?:        string
		object?: [...string]
	}
	sql_firewall_policy: sql_firewall_policy_id!: string
	audit_trails: {
		audit_trail_id?: string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id_in_subtree?: bool
		access_level?:              string
		display_name?:              string
		status?:                    string
		target_id?:                 string
		compartment_id!:            string
	}
	masking_policy_health_report_logs: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		masking_policy_health_report_id!: string
		message_type?:                    string
	}
	reports: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		mime_type?:                               string
		compartment_id_in_subtree?:               bool
		display_name?:                            string
		time_generated_less_than?:                string
		access_level?:                            string
		compartment_id!:                          string
		time_generated_greater_than_or_equal_to?: string
		report_definition_id?:                    string
		state?:                                   string
		type?:                                    string
	}
	sql_collection: sql_collection_id!: string
	sql_firewall_policies: {
		compartment_id!:                        string
		db_user_name?:                          string
		time_created_greater_than_or_equal_to?: string
		violation_action?:                      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		state?:                     string
		sql_firewall_policy_id?:    string
		time_created_less_than?:    string
		access_level?:              string
		compartment_id_in_subtree?: bool
		display_name?:              string
		security_policy_id?:        string
	}
	compatible_formats_for_data_type: {}
	security_policies: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
		security_policy_id?:        string
	}
	target_database: target_database_id!: string
	alert: alert_id!: string
	security_policy_report_database_view_access_entry: {
		database_view_access_entry_key!: string
		security_policy_report_id!:      string
	}
	sensitive_type: sensitive_type_id!: string
	sql_collections: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?:             bool
		sql_collection_id?:                     string
		access_level?:                          string
		compartment_id!:                        string
		display_name?:                          string
		target_id?:                             string
		time_created_greater_than_or_equal_to?: string
		db_user_name?:                          string
		state?:                                 string
		time_created_less_than?:                string
	}
	target_alert_policy_association: target_alert_policy_association_id!: string
	user_assessments: {
		state?:                                 string
		compartment_id!:                        string
		triggered_by?:                          string
		target_id?:                             string
		time_created_greater_than_or_equal_to?: string
		type?:                                  string
		is_baseline?:                           bool
		access_level?:                          string
		display_name?:                          string
		time_created_less_than?:                string
		compartment_id_in_subtree?:             bool
		schedule_user_assessment_id?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		is_schedule_assessment?: bool
	}
}

