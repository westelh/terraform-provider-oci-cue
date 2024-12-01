package database

#resource: {
	attributes: {
		exascale_db_storage_vault: {
			description?: string
			state:        string
			system_tags: [_]: string
			time_zone?: string
			high_capacity_database_storage!: [...{
				total_size_in_gbs!:    int
				available_size_in_gbs: int
			}]
			time_created: string
			defined_tags?: [_]: string
			vm_cluster_count: int
			vm_cluster_ids: [...string]
			additional_flash_cache_in_percent?: int
			freeform_tags?: [_]: string
			compartment_id!:      string
			availability_domain!: string
			display_name!:        string
			lifecycle_details:    string
		}
		external_pluggable_database_operations_insights_management: {
			enable_operations_insights!:     bool
			external_database_connector_id!: string
			external_pluggable_database_id!: string
		}
		maintenance_run: {
			patch_failure_count:                     int
			maintenance_type:                        string
			is_custom_action_timeout_enabled:        bool
			patching_status:                         string
			estimated_component_patching_start_time: string
			display_name:                            string
			custom_action_timeout_in_mins:           int
			target_db_server_version:                string
			patching_end_time:                       string
			target_resource_id!:                     string
			time_scheduled!:                         string
			lifecycle_details:                       string
			time_ended:                              string
			time_started:                            string
			description:                             string
			maintenance_subtype:                     string
			current_patching_component:              string
			target_resource_type:                    string
			patching_mode?:                          string
			estimated_patching_time: [...{
				estimated_network_switches_patching_time: int
				estimated_storage_server_patching_time:   int
				total_estimated_patching_time:            int
				estimated_db_server_patching_time:        int
			}]
			patch_type!:                           string
			peer_maintenance_run_id:               string
			is_dst_file_update_enabled?:           bool
			compartment_id?:                       string
			target_storage_server_version:         string
			database_software_image_id?:           string
			current_custom_action_timeout_in_mins: int
			patch_id:                              string
			state:                                 string
			patching_start_time:                   string
		}
		application_vip: {
			hostname_label!: string
			time_assigned:   string
			subnet_id!:      string
			ip_address?:     string
			defined_tags: [_]: string
			cloud_vm_cluster_id!: string
			freeform_tags: [_]: string
			compartment_id:    string
			lifecycle_details: string
			state:             string
			db_node_id?:       string
		}
		autonomous_database: {
			byol_compute_count_limit?:      float
			remote_disaster_recovery_type?: string
			private_endpoint:               string
			compute_count?:                 float
			database_edition?:              string
			is_data_guard_enabled?:         bool
			allocated_storage_size_in_tbs:  float
			resource_pool_summary?: [...{
				is_disabled?: bool
				pool_size?:   int
			}]
			defined_tags?: [_]: string
			backup_retention_period_in_days?:             int
			dataguard_region_type:                        string
			net_services_architecture:                    string
			use_latest_available_backup_time_stamp?:      bool
			refreshable_mode?:                            string
			database_management_status?:                  string
			display_name?:                                string
			time_disaster_recovery_role_changed:          string
			local_adg_auto_failover_max_data_loss_limit?: int
			is_free_tier?:                                bool
			service_console_url:                          string
			are_primary_whitelisted_ips_used?:            bool
			compartment_id!:                              string
			standby_db: [...{
				time_data_guard_role_changed:        string
				time_disaster_recovery_role_changed: string
				availability_domain:                 string
				lag_time_in_seconds:                 int
				lifecycle_details:                   string
				state:                               string
			}]
			ncharacter_set?: string
			connection_urls: [...{
				sql_dev_web_url:                      string
				apex_url:                             string
				database_transforms_url:              string
				graph_studio_url:                     string
				machine_learning_notebook_url:        string
				machine_learning_user_management_url: string
				mongo_db_url:                         string
				ords_url:                             string
			}]
			time_maintenance_begin:      string
			data_storage_size_in_gb?:    int
			time_of_auto_refresh_start?: string
			clone_type?:                 string
			secret_id?:                  string
			is_shrink_only?:             bool
			system_tags: [_]: string
			time_until_reconnect_clone_enabled: string
			is_preview:                         bool
			in_memory_percentage?:              int
			timestamp?:                         string
			private_endpoint_label?:            string
			used_data_storage_size_in_tbs:      int
			key_history_entry: [...{
				id:                 string
				kms_key_version_id: string
				time_activated:     string
				vault_id:           string
			}]
			source?:                               string
			in_memory_area_in_gbs:                 int
			kms_key_lifecycle_details:             string
			switchover_to?:                        string
			auto_refresh_point_lag_in_seconds?:    int
			disaster_recovery_type?:               string
			time_local_data_guard_enabled:         string
			vault_id?:                             string
			memory_per_oracle_compute_unit_in_gbs: int
			admin_password?:                       string
			ocpu_count?:                           float
			is_reconnect_clone_enabled:            bool
			failed_data_recovery_in_seconds:       int
			db_name!:                              string
			cpu_core_count?:                       int
			auto_refresh_frequency_in_seconds?:    int
			peer_db_ids: [...string]
			customer_contacts?: [...{
				email?: string
			}]
			nsg_ids?: [...string]
			refreshable_status:              string
			is_replicate_automatic_backups?: bool
			license_model?:                  string
			apex_details: [...{
				apex_version: string
				ords_version: string
			}]
			time_of_last_refresh_point: string
			long_term_backup_schedule?: [...{
				time_of_backup?:           string
				is_disabled?:              bool
				repeat_cadence?:           string
				retention_period_in_days?: int
			}]
			is_mtls_connection_required?: bool
			provisionable_cpus: [...float]
			cluster_placement_group_id:     string
			autonomous_database_backup_id?: string
			key_store_wallet_name:          string
			operations_insights_status?:    string
			switchover_to_remote_peer_id?:  string
			shrink_adb_trigger?:            int
			local_standby_db: [...{
				state:                               string
				time_data_guard_role_changed:        string
				time_disaster_recovery_role_changed: string
				availability_domain:                 string
				lag_time_in_seconds:                 int
				lifecycle_details:                   string
			}]
			state?:                  string
			autonomous_database_id?: string
			time_maintenance_end:    string
			db_tools_details?: [...{
				name!:                     string
				compute_count?:            float
				is_enabled?:               bool
				max_idle_time_in_minutes?: int
			}]
			total_backup_storage_size_in_gbs:                float
			availability_domain:                             string
			db_workload?:                                    string
			used_data_storage_size_in_gbs:                   int
			is_preview_version_with_service_terms_accepted?: bool
			is_auto_scaling_for_storage_enabled?:            bool
			infrastructure_type:                             string
			rotate_key_trigger?:                             bool
			autonomous_maintenance_schedule_type?:           string
			is_refreshable_clone?:                           bool
			time_of_last_switchover:                         string
			data_safe_status?:                               string
			connection_strings: [...{
				low:    string
				medium: string
				profiles: [...{
					protocol:           string
					value:              string
					is_regional:        bool
					consumer_group:     string
					host_format:        string
					session_mode:       string
					syntax_format:      string
					display_name:       string
					tls_authentication: string
				}]
				all_connection_strings: [_]: string
				dedicated: string
				high:      string
			}]
			compute_model?:    string
			subnet_id?:        string
			time_undeleted:    string
			is_dev_tier?:      bool
			permission_level?: string
			encryption_key_history_entry: [...{
				encryption_key: [...{
					kms_key_id:                   string
					key_arn:                      string
					external_id:                  string
					vault_uri:                    string
					certificate_directory_name:   string
					okv_kms_key:                  string
					key_name:                     string
					autonomous_database_provider: string
					certificate_id:               string
					vault_id:                     string
					directory_name:               string
					service_endpoint_uri:         string
					arn_role:                     string
					okv_uri:                      string
				}]
				time_activated: string
			}]
			key_store_id: string
			encryption_key?: [...{
				external_id?:                  string
				autonomous_database_provider?: string
				okv_kms_key?:                  string
				certificate_id?:               string
				okv_uri?:                      string
				certificate_directory_name?:   string
				vault_id?:                     string
				service_endpoint_uri?:         string
				key_arn?:                      string
				vault_uri?:                    string
				key_name?:                     string
				directory_name?:               string
				arn_role?:                     string
				kms_key_id?:                   string
			}]
			resource_pool_leader_id?: string
			time_of_last_failover:    string
			character_set?:           string
			security_attributes?: [_]: string
			private_endpoint_ip?:         string
			is_access_control_enabled?:   bool
			local_disaster_recovery_type: string
			open_mode?:                   string
			is_remote_data_guard_enabled: bool
			backup_config: [...{
				manual_backup_type:        string
				manual_backup_bucket_name: string
			}]
			autonomous_container_database_id?:            string
			db_version?:                                  string
			time_of_last_refresh:                         string
			is_dedicated?:                                bool
			time_reclamation_of_free_autonomous_database: string
			source_id?:                                   string
			whitelisted_ips?: [...string]
			subscription_id?:         string
			time_created:             string
			secret_version_number?:   int
			is_auto_scaling_enabled?: bool
			available_upgrade_versions: [...string]
			time_of_next_refresh:          string
			time_of_joining_resource_pool: string
			scheduled_operations?: [...{
				scheduled_start_time?: string
				scheduled_stop_time?:  string
				day_of_week!: [...{
					name!: string
				}]
			}]
			disaster_recovery_region_type:    string
			next_long_term_backup_time_stamp: string
			kms_key_version_id:               string
			remote_disaster_recovery_configuration: [...{
				disaster_recovery_type:             string
				is_replicate_automatic_backups:     bool
				is_snapshot_standby:                bool
				time_snapshot_standby_enabled_till: string
			}]
			role: string
			standby_whitelisted_ips?: [...string]
			lifecycle_details:                         string
			kms_key_id?:                               string
			time_deletion_of_free_autonomous_database: string
			max_cpu_core_count?:                       int
			time_data_guard_role_changed:              string
			supported_regions_to_clone_to: [...string]
			public_endpoint:              string
			data_storage_size_in_tbs?:    int
			is_local_data_guard_enabled?: bool
			public_connection_urls: [...{
				graph_studio_url:                     string
				machine_learning_notebook_url:        string
				machine_learning_user_management_url: string
				mongo_db_url:                         string
				ords_url:                             string
				sql_dev_web_url:                      string
				apex_url:                             string
				database_transforms_url:              string
			}]
			freeform_tags?: [_]: string
			actual_used_data_storage_size_in_tbs: float
		}
		autonomous_database_saas_admin_user: {
			password?:                     string
			secret_id?:                    string
			secret_version_number?:        int
			time_saas_admin_user_enabled?: string
			autonomous_database_id!:       string
			access_type?:                  string
			duration?:                     int
		}
		database_upgrade: {
			ncharacter_set:             string
			db_workload:                string
			kms_key_id:                 string
			vm_cluster_id:              string
			database_software_image_id: string
			db_home_id:                 string
			db_backup_config: [...{
				backup_destination_details: [...{
					id:             string
					internet_proxy: string
					type:           string
					vpc_password:   string
					vpc_user:       string
					dbrs_policy_id: string
				}]
				recovery_window_in_days:   int
				run_immediate_full_backup: bool
				auto_backup_enabled:       bool
				auto_backup_window:        string
				auto_full_backup_day:      string
				auto_full_backup_window:   string
				backup_deletion_policy:    string
			}]
			freeform_tags: [_]: string
			key_store_id:                                     string
			pdb_name:                                         string
			key_store_wallet_name:                            string
			source_database_point_in_time_recovery_timestamp: string
			compartment_id:                                   string
			last_backup_duration_in_seconds:                  int
			is_cdb:                                           bool
			db_system_id:                                     string
			database_upgrade_source_details?: [...{
				database_software_image_id?: string
				db_version?:                 string
				options?:                    string
				source?:                     string
			}]
			character_set: string
			time_created:  string
			vault_id:      string
			defined_tags: [_]: string
			connection_strings: [...{
				all_connection_strings: [_]: string
				cdb_default:    string
				cdb_ip_default: string
			}]
			database_id!:                 string
			lifecycle_details:            string
			sid_prefix:                   string
			db_name:                      string
			kms_key_version_id:           string
			action!:                      string
			last_backup_timestamp:        string
			last_failed_backup_timestamp: string
			db_unique_name:               string
			state:                        string
		}
		external_non_container_database: {
			db_unique_name:   string
			time_zone:        string
			compartment_id!:  string
			database_edition: string
			state:            string
			display_name!:    string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			character_set: string
			db_packs:      string
			operations_insights_config: [...{
				operations_insights_connector_id: string
				operations_insights_status:       string
			}]
			database_configuration: string
			lifecycle_details:      string
			ncharacter_set:         string
			stack_monitoring_config: [...{
				stack_monitoring_connector_id: string
				stack_monitoring_status:       string
			}]
			db_id:            string
			database_version: string
			time_created:     string
			database_management_config: [...{
				database_management_connection_id: string
				database_management_status:        string
				license_model:                     string
			}]
		}
		external_pluggable_database_management: {
			external_pluggable_database_id!: string
			enable_management!:              bool
			external_database_connector_id!: string
		}
		exadata_infrastructure_compute: {
			cloud_control_plane_server1: string
			max_data_storage_in_tbs:     float
			memory_size_in_gbs:          int
			gateway:                     string
			ntp_server: [...string]
			csi_number:                 string
			max_db_node_storage_in_gbs: int
			compartment_id:             string
			storage_count:              int
			infini_band_network_cidr:   string
			shape:                      string
			time_zone:                  string
			additional_compute_count:   int
			compute_count:              int
			monthly_db_server_version:  string
			create_async:               bool
			dns_server: [...string]
			additional_compute_system_model_compute_managed_resource?: string
			corporate_proxy:                                           string
			admin_network_cidr:                                        string
			additional_storage_count:                                  int
			cpus_enabled:                                              int
			data_storage_size_in_tbs:                                  float
			lifecycle_details:                                         string
			max_cpu_count:                                             int
			db_server_version:                                         string
			time_created:                                              string
			maintenance_window: [...{
				lead_time_in_weeks: int
				weeks_of_month: [...int]
				preference:                    string
				custom_action_timeout_in_mins: int
				days_of_week: [...{
					name: string
				}]
				is_custom_action_timeout_enabled: bool
				patching_mode:                    string
				hours_of_day: [...int]
				is_monthly_patching_enabled?: bool
				months: [...{
					name: string
				}]
			}]
			netmask:                       string
			storage_server_version:        string
			is_cps_offline_report_enabled: bool
			db_node_storage_size_in_gbs:   int
			display_name:                  string
			defined_tags: [_]: string
			maintenance_slo_status:                             string
			additional_compute_count_compute_managed_resource?: int
			exadata_infrastructure_id!:                         string
			cloud_control_plane_server2:                        string
			activation_file?:                                   string
			additional_compute_system_model:                    string
			freeform_tags: [_]: string
			activated_storage_count: int
			state:                   string
			contacts: [...{
				email:                    string
				is_primary:               bool
				name:                     string
				is_contact_mos_validated: bool
				phone_number:             string
			}]
			max_memory_in_gbs: int
		}
		cloud_vm_cluster: {
			system_tags: [_]: string
			cloud_automation_update_details?: [...{
				is_early_adoption_enabled?: bool
				is_freeze_period_enabled?:  bool
				apply_update_time_preference?: [...{
					apply_update_preferred_end_time?:   string
					apply_update_preferred_start_time?: string
				}]
				freeze_period?: [...{
					freeze_period_end_time?:   string
					freeze_period_start_time?: string
				}]
			}]
			ssh_public_keys!: [...string]
			state:                       string
			private_zone_id?:            string
			cpu_core_count!:             int
			is_local_backup_enabled?:    bool
			scan_listener_port_tcp_ssl?: int
			license_model?:              string
			subscription_id?:            string
			cluster_name?:               string
			hostname!:                   string
			lifecycle_details:           string
			compartment_id!:             string
			security_attributes?: [_]: string
			node_count: int
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
			time_zone?:      string
			disk_redundancy: string
			ocpu_count?:     float
			system_version?: string
			file_system_configuration_details?: [...{
				file_system_size_gb?: int
				mount_point?:         string
			}]
			db_servers?: [...string]
			backup_subnet_id!: string
			gi_version!:       string
			backup_network_nsg_ids?: [...string]
			shape:                            string
			db_node_storage_size_in_gbs?:     int
			listener_port:                    string
			is_sparse_diskgroup_enabled?:     bool
			scan_dns_record_id:               string
			availability_domain:              string
			time_created:                     string
			cloud_exadata_infrastructure_id!: string
			zone_id:                          string
			vip_ids: [...string]
			scan_listener_port_tcp?: int
			storage_size_in_gbs:     int
			iorm_config_cache: [...{
				state: string
				db_plans: [...{
					share:             int
					db_name:           string
					flash_cache_limit: string
				}]
				lifecycle_details: string
				objective:         string
			}]
			freeform_tags?: [_]: string
			scan_dns_name: string
			display_name!: string
			nsg_ids?: [...string]
			domain?:                  string
			data_storage_percentage?: int
			create_async?:            *false | bool
			defined_tags?: [_]: string
			scan_ip_ids: [...string]
			subnet_id!:                   string
			last_update_history_entry_id: string
			memory_size_in_gbs?:          int
			data_storage_size_in_tbs?:    float
		}
		db_node: {
			time_maintenance_window_end: string
			backup_vnic_id:              string
			memory_size_in_gbs:          int
			software_storage_size_in_gb: int
			backup_vnic2id:              string
			vnic2id:                     string
			lifecycle_details:           string
			backup_ip_id:                string
			db_system_id:                string
			db_node_storage_size_in_gbs: int
			additional_details:          string
			fault_domain:                string
			freeform_tags?: [_]: string
			state:                string
			hostname:             string
			maintenance_type:     string
			db_server_id:         string
			total_cpu_core_count: int
			db_node_id!:          string
			cpu_core_count:       int
			time_created:         string
			defined_tags?: [_]: string
			time_maintenance_window_start: string
			vnic_id:                       string
			host_ip_id:                    string
		}
		external_non_container_database_operations_insights_management: {
			external_non_container_database_id!: string
			enable_operations_insights!:         bool
			external_database_connector_id!:     string
		}
		exadb_vm_cluster: {
			defined_tags?: [_]: string
			private_zone_id?: string
			domain?:          string
			grid_image_type:  string
			freeform_tags?: [_]: string
			security_attributes?: [_]: string
			shape!:            string
			backup_subnet_id!: string
			scan_dns_name:     string
			data_collection_options?: [...{
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
				is_diagnostics_events_enabled?: bool
			}]
			system_version?:         string
			lifecycle_details:       string
			scan_dns_record_id:      string
			display_name!:           string
			scan_listener_port_tcp?: int
			scan_ip_ids: [...string]
			hostname!:                    string
			last_update_history_entry_id: string
			time_created:                 string
			gi_version:                   string
			ssh_public_keys!: [...string]
			time_zone?: string
			nsg_ids?: [...string]
			scan_listener_port_tcp_ssl?: int
			backup_network_nsg_ids?: [...string]
			system_tags: [_]: string
			compartment_id!: string
			iorm_config_cache: [...{
				db_plans: [...{
					db_name:           string
					flash_cache_limit: string
					share:             int
				}]
				lifecycle_details: string
				objective:         string
				state:             string
			}]
			node_resource?: [...{
				node_id:       string
				node_hostname: string
				state:         string
				node_name!:    string
			}]
			availability_domain!: string
			license_model?:       string
			vip_ids: [...string]
			grid_image_id!: string
			subnet_id!:     string
			node_config!: [...{
				snapshot_file_system_storage_size_gbs_per_node: int
				total_file_system_storage_size_gbs_per_node:    int
				enabled_ecpu_count_per_node!:                   int
				total_ecpu_count_per_node!:                     int
				vm_file_system_storage_size_gbs_per_node!:      int
				memory_size_in_gbs_per_node:                    int
			}]
			cluster_name?:                 string
			zone_id:                       string
			exascale_db_storage_vault_id!: string
			state:                         string
			listener_port:                 string
		}
		autonomous_container_database_dataguard_association_operation: {
			autonomous_container_database_id!:                       string
			operation!:                                              string
			autonomous_container_database_dataguard_association_id!: string
		}
		autonomous_database_wallet: {
			generate_type?:          *"SINGLE" | string
			is_regional?:            bool
			content:                 string
			autonomous_database_id!: string
			password!:               string
			base64_encode_content?:  *false | bool
		}
		autonomous_vm_cluster_ords_certificate_management: {
			ca_bundle_id?:                string
			certificate_authority_id?:    string
			certificate_id?:              string
			autonomous_vm_cluster_id!:    string
			certificate_generation_type!: string
		}
		cloud_vm_cluster_iorm_config: {
			db_plans!: [...{
				share!:            int
				flash_cache_limit: string
				db_name!:          string
			}]
			cloud_vm_cluster_id!: string
			objective?:           string
			lifecycle_details:    string
			state:                string
		}
		cloud_database_management: {
			management_type!:      string
			role?:                 string
			database_id!:          string
			ssl_secret_id?:        string
			enable_management!:    bool
			port?:                 int
			private_end_point_id!: string
			credentialdetails!: [...{
				user_name!:          string
				password_secret_id!: string
			}]
			protocol?:     string
			service_name!: string
		}
		autonomous_container_database: {
			key_store_wallet_name:       string
			is_dst_file_update_enabled?: bool
			vault_id?:                   string
			lifecycle_details:           string
			list_one_off_patches: [...string]
			time_created:                                     string
			peer_autonomous_container_database_display_name?: string
			total_cpus:                                       int
			cloud_autonomous_vm_cluster_id?:                  string
			provisioned_cpus:                                 float
			display_name!:                                    string
			time_snapshot_standby_revert:                     string
			compute_model:                                    string
			peer_autonomous_container_database_backup_config?: [...{
				backup_destination_details?: [...{
					type!:           string
					id?:             string
					internet_proxy?: string
					vpc_password?:   string
					vpc_user?:       string
				}]
				recovery_window_in_days?: int
			}]
			db_split_threshold?:                               int
			net_services_architecture?:                        string
			largest_provisionable_autonomous_database_in_cpus: float
			db_version?:                                       string
			patch_model!:                                      string
			memory_per_oracle_compute_unit_in_gbs:             int
			db_unique_name?:                                   string
			protection_mode?:                                  string
			peer_db_unique_name?:                              string
			peer_autonomous_exadata_infrastructure_id?:        string
			reserved_cpus:                                     float
			compartment_id?:                                   string
			maintenance_window: [...{
				skip_ru: [...bool]
				days_of_week: [...{
					name: string
				}]
				is_monthly_patching_enabled:   bool
				custom_action_timeout_in_mins: int
				hours_of_day: [...int]
				lead_time_in_weeks: int
				months: [...{
					name: string
				}]
				patching_mode: string
				weeks_of_month: [...int]
				is_custom_action_timeout_enabled: bool
				preference:                       string
			}]
			key_store_id?:                  string
			reclaimable_cpus:               float
			state:                          string
			rotate_key_trigger?:            bool
			patch_id:                       string
			peer_autonomous_vm_cluster_id?: string
			freeform_tags?: [_]: string
			database_software_image_id?:                        string
			fast_start_fail_over_lag_limit_in_seconds?:         int
			db_name?:                                           string
			service_level_agreement_type?:                      string
			peer_cloud_autonomous_vm_cluster_id?:               string
			peer_autonomous_container_database_compartment_id?: string
			key_history_entry: [...{
				id:                 string
				kms_key_version_id: string
				time_activated:     string
				vault_id:           string
			}]
			infrastructure_type:            string
			is_automatic_failover_enabled?: bool
			available_cpus:                 float
			availability_domain:            string
			maintenance_window_details?: [...{
				days_of_week?: [...{
					name!: string
				}]
				lead_time_in_weeks?: int
				weeks_of_month?: [...int]
				is_monthly_patching_enabled?: bool
				months?: [...{
					name!: string
				}]
				patching_mode?:                 string
				custom_action_timeout_in_mins?: int
				preference?:                    string
				skip_ru?: [...bool]
				hours_of_day?: [...int]
				is_custom_action_timeout_enabled?: bool
			}]
			next_maintenance_run_id: string
			backup_config?: [...{
				backup_destination_details?: [...{
					id?:             string
					internet_proxy?: string
					vpc_password?:   string
					vpc_user?:       string
					type!:           string
				}]
				recovery_window_in_days?: int
			}]
			vm_failover_reservation?:  int
			version_preference?:       string
			autonomous_vm_cluster_id?: string
			distribution_affinity?:    string
			defined_tags?: [_]: string
			last_maintenance_run_id:               string
			autonomous_exadata_infrastructure_id?: string
			kms_key_id?:                           string
			time_of_last_backup:                   string
			role:                                  string
			standby_maintenance_buffer_in_days?:   int
			dst_file_version:                      string
			provisionable_cpus: [...float]
		}
		autonomous_container_database_dataguard_association: {
			autonomous_container_database_dataguard_association_id?:     string
			role:                                                        string
			time_created:                                                string
			peer_lifecycle_state:                                        string
			peer_autonomous_container_database_dataguard_association_id: string
			time_last_role_changed:                                      string
			peer_cloud_autonomous_vm_cluster_id?:                        string
			standby_maintenance_buffer_in_days?:                         int
			lifecycle_details:                                           string
			peer_autonomous_container_database_id:                       string
			peer_autonomous_container_database_backup_config?: [...{
				backup_destination_details?: [...{
					internet_proxy?: string
					vpc_password?:   string
					vpc_user?:       string
					type!:           string
					dbrs_policy_id?: string
					id?:             string
				}]
				recovery_window_in_days?: int
			}]
			peer_autonomous_container_database_compartment_id?: string
			peer_autonomous_vm_cluster_id?:                     string
			apply_lag:                                          string
			autonomous_container_database_id!:                  string
			is_automatic_failover_enabled?:                     bool
			state:                                              string
			fast_start_fail_over_lag_limit_in_seconds?:         int
			time_last_synced:                                   string
			apply_rate:                                         string
			peer_role:                                          string
			protection_mode!:                                   string
			peer_db_unique_name?:                               string
			peer_autonomous_container_database_display_name!:   string
			transport_lag:                                      string
		}
		autonomous_database_software_image: {
			database_version: string
			release_update:   string
			state:            string
			time_created:     string
			defined_tags?: [_]: string
			autonomous_dsi_one_off_patches: [...string]
			lifecycle_details:   string
			display_name!:       string
			image_shape_family!: string
			compartment_id!:     string
			source_cdb_id!:      string
			freeform_tags?: [_]: string
		}
		backup: {
			vault_id:              string
			database_size_in_gbs:  float
			time_started:          string
			version:               string
			lifecycle_details:     string
			kms_key_id:            string
			type:                  string
			shape:                 string
			availability_domain:   string
			time_ended:            string
			display_name!:         string
			key_store_id:          string
			key_store_wallet_name: string
			compartment_id:        string
			database_edition:      string
			database_id!:          string
			state:                 string
			kms_key_version_id:    string
		}
		data_guard_association: {
			database_software_image_id?:      string
			peer_data_guard_association_id:   string
			peer_vm_cluster_id?:              string
			subnet_id?:                       string
			storage_volume_performance_mode?: string
			database_id!:                     string
			db_system_security_attributes?: [_]: string
			time_created: string
			db_system_defined_tags?: [_]: string
			private_ip?: string
			state:       string
			apply_lag:   string
			backup_network_nsg_ids?: [...string]
			domain?:                       string
			database_admin_password!:      string
			apply_rate:                    string
			node_count?:                   int
			transport_type!:               string
			is_active_data_guard_enabled?: bool
			cpu_core_count?:               int
			peer_role:                     string
			peer_db_system_id?:            string
			database_freeform_tags?: [_]: string
			fault_domains?: [...string]
			peer_db_home_id?: string
			database_defined_tags?: [_]: string
			peer_database_id: string
			nsg_ids?: [...string]
			db_system_freeform_tags?: [_]: string
			protection_mode!:                  string
			creation_type!:                    string
			availability_domain?:              string
			delete_standby_db_home_on_delete!: string
			display_name?:                     string
			peer_sid_prefix?:                  string
			hostname?:                         string
			lifecycle_details:                 string
			time_zone?:                        string
			role:                              string
			shape?:                            string
			license_model?:                    string
			create_async?:                     *false | bool
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
			peer_db_unique_name?: string
		}
		db_systems_upgrade: {
			point_in_time_data_disk_clone_timestamp: string
			scan_ip_ids: [...string]
			defined_tags: [_]: string
			scan_dns_record_id: string
			fault_domains: [...string]
			version: string
			ssh_public_keys: [...string]
			hostname:        string
			new_gi_version?: string
			freeform_tags: [_]: string
			kms_key_id:              string
			last_maintenance_run_id: string
			domain:                  string
			maintenance_window: [...{
				months: [...{
					name: string
				}]
				preference: string
				weeks_of_month: [...int]
				days_of_week: [...{
					name: string
				}]
				hours_of_day: [...int]
				lead_time_in_weeks: int
			}]
			nsg_ids: [...string]
			disk_redundancy:                    string
			compartment_id:                     string
			snapshot_retention_period_in_days?: int
			sparse_diskgroup:                   bool
			backup_network_nsg_ids: [...string]
			license_model:               string
			scan_dns_name:               string
			backup_subnet_id:            string
			time_created:                string
			subnet_id:                   string
			db_system_id!:               string
			display_name:                string
			reco_storage_size_in_gb:     int
			listener_port:               int
			database_edition:            string
			next_maintenance_run_id:     string
			state:                       string
			zone_id:                     string
			lifecycle_details:           string
			last_patch_history_entry_id: string
			time_zone:                   string
			db_system_options: [...{
				storage_management: string
			}]
			action!:                 string
			cluster_name:            string
			data_storage_size_in_gb: int
			data_storage_percentage: int
			iorm_config_cache: [...{
				db_plans: [...{
					share:             int
					db_name:           string
					flash_cache_limit: string
				}]
				lifecycle_details: string
				objective:         string
				state:             string
			}]
			new_os_version?:                           string
			is_snapshot_retention_days_force_updated?: bool
			node_count:                                int
			source_db_system_id:                       string
			vip_ids: [...string]
			shape:               string
			cpu_core_count:      int
			availability_domain: string
		}
		db_node_console_connection: {
			fingerprint: string
			db_node_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			service_host_key_fingerprint: string
			state:                        string
			public_key!:                  string
			compartment_id:               string
			connection_string:            string
			lifecycle_details:            string
		}
		externalcontainerdatabases_stack_monitoring: {
			external_database_connector_id!: string
			enable_stack_monitoring!:        bool
			external_container_database_id!: string
		}
		pluggable_database: {
			container_database_id!: string
			tde_wallet_password?:   string
			open_mode:              string
			lifecycle_details:      string
			defined_tags?: [_]: string
			refresh_trigger?:                   int
			container_database_admin_password?: string
			pdb_admin_password?:                string
			is_restricted:                      bool
			pdb_node_level_details: [...{
				open_mode: string
				node_name: string
			}]
			refreshable_clone_config: [...{
				is_refreshable_clone: bool
			}]
			freeform_tags?: [_]: string
			pdb_creation_type_details?: [...{
				refreshable_clone_details?: [...{
					is_refreshable_clone?: bool
				}]
				source_container_database_admin_password?: string
				creation_type!:                            string
				source_pluggable_database_id!:             string
				dblink_user_password?:                     string
				dblink_username?:                          string
				is_thin_clone?:                            bool
			}]
			state: string
			pluggable_database_management_config: [...{
				management_status: string
			}]
			rotate_key_trigger?: int
			compartment_id:      string
			connection_strings: [...{
				all_connection_strings: [_]: string
				pdb_default:    string
				pdb_ip_default: string
			}]
			time_created:                        string
			kms_key_version_id?:                 string
			pdb_name!:                           string
			should_pdb_admin_account_be_locked?: bool
			should_create_pdb_backup?:           bool
			convert_to_regular_trigger?:         int
		}
		cloud_autonomous_vm_cluster: {
			lifecycle_details:                      string
			memory_per_oracle_compute_unit_in_gbs?: int
			state:                                  string
			cpu_core_count:                         int
			time_created:                           string
			cpu_core_count_per_node?:               int
			display_name!:                          string
			data_storage_size_in_tbs:               float
			time_database_ssl_certificate_expires:  string
			provisioned_cpus:                       float
			compute_model?:                         string
			license_model?:                         string
			max_acds_lowest_scaled_value:           int
			reclaimable_cpus:                       float
			cloud_exadata_infrastructure_id!:       string
			availability_domain:                    string
			memory_size_in_gbs:                     int
			available_cpus:                         float
			ocpus_lowest_scaled_value:              int
			autonomous_data_storage_size_in_tbs?:   float
			security_attributes?: [_]: string
			db_servers?: [...string]
			description?:                               string
			total_autonomous_data_storage_in_tbs:       float
			reserved_cpus:                              float
			exadata_storage_in_tbs_lowest_scaled_value: float
			db_node_storage_size_in_gbs:                int
			ocpu_count:                                 float
			cluster_time_zone?:                         string
			maintenance_window: [...{
				preference: string
				days_of_week: [...{
					name: string
				}]
				hours_of_day: [...int]
				lead_time_in_weeks: int
				weeks_of_month: [...int]
				custom_action_timeout_in_mins: int
				is_monthly_patching_enabled:   bool
				months: [...{
					name: string
				}]
				patching_mode:                    string
				is_custom_action_timeout_enabled: bool
				skip_ru: [...bool]
			}]
			next_maintenance_run_id: string
			defined_tags?: [_]: string
			time_updated?: string
			shape:         string
			maintenance_window_details?: [...{
				custom_action_timeout_in_mins?:    int
				is_custom_action_timeout_enabled?: bool
				skip_ru?: [...bool]
				days_of_week?: [...{
					name!: string
				}]
				hours_of_day?: [...int]
				is_monthly_patching_enabled?: bool
				patching_mode?:               string
				preference?:                  string
				weeks_of_month?: [...int]
				lead_time_in_weeks?: int
				months?: [...{
					name!: string
				}]
			}]
			available_autonomous_data_storage_size_in_tbs: float
			cpu_percentage:                                float
			freeform_tags?: [_]: string
			is_mtls_enabled_vm_cluster?:                      bool
			data_storage_size_in_gb:                          float
			total_container_databases?:                       int
			compartment_id!:                                  string
			total_cpus:                                       float
			scan_listener_port_non_tls?:                      int
			provisionable_autonomous_container_databases:     int
			node_count:                                       int
			available_container_databases:                    int
			non_provisionable_autonomous_container_databases: int
			time_ords_certificate_expires:                    string
			hostname:                                         string
			autonomous_data_storage_percentage:               float
			subnet_id!:                                       string
			provisioned_autonomous_container_databases:       int
			last_maintenance_run_id:                          string
			scan_listener_port_tls?:                          int
			domain:                                           string
			last_update_history_entry_id:                     string
			nsg_ids?: [...string]
		}
		database_software_image: {
			database_version?:        string
			source_db_home_id?:       string
			display_name!:            string
			compartment_id!:          string
			included_patches_summary: string
			database_software_image_included_patches: [...string]
			lifecycle_details:    string
			is_upgrade_supported: bool
			state:                string
			ls_inventory?:        string
			patch_set?:           string
			defined_tags?: [_]: string
			time_created: string
			database_software_image_one_off_patches?: [...string]
			image_shape_family?: string
			freeform_tags?: [_]: string
			image_type?: string
		}
		external_container_database: {
			ncharacter_set:    string
			display_name!:     string
			database_edition:  string
			state:             string
			db_unique_name:    string
			lifecycle_details: string
			freeform_tags?: [_]: string
			time_zone:        string
			compartment_id!:  string
			db_id:            string
			database_version: string
			stack_monitoring_config: [...{
				stack_monitoring_status:       string
				stack_monitoring_connector_id: string
			}]
			defined_tags?: [_]: string
			database_configuration: string
			time_created:           string
			database_management_config: [...{
				database_management_connection_id: string
				database_management_status:        string
				license_model:                     string
			}]
			db_packs:      string
			character_set: string
		}
		autonomous_vm_cluster: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			db_servers?: [...string]
			provisionable_autonomous_container_databases:  int
			time_created:                                  string
			available_data_storage_size_in_tbs:            float
			exadata_storage_in_tbs_lowest_scaled_value:    float
			available_autonomous_data_storage_size_in_tbs: float
			is_local_backup_enabled?:                      bool
			last_maintenance_run_id:                       string
			maintenance_window_details?: [...{
				hours_of_day?: [...int]
				weeks_of_month?: [...int]
				days_of_week?: [...{
					name!: string
				}]
				months?: [...{
					name!: string
				}]
				lead_time_in_weeks?: int
				preference?:         string
				skip_ru?: [...bool]
				custom_action_timeout_in_mins?:    int
				patching_mode?:                    string
				is_monthly_patching_enabled?:      bool
				is_custom_action_timeout_enabled?: bool
			}]
			autonomous_data_storage_size_in_tbs?:             float
			data_storage_size_in_tbs:                         float
			memory_size_in_gbs:                               int
			time_zone?:                                       string
			next_maintenance_run_id:                          string
			vm_cluster_network_id!:                           string
			autonomous_data_storage_percentage:               float
			ocpus_enabled:                                    float
			time_ords_certificate_expires:                    string
			reserved_cpus:                                    float
			available_container_databases:                    int
			cpus_enabled:                                     int
			provisioned_cpus:                                 float
			license_model?:                                   string
			compartment_id!:                                  string
			non_provisionable_autonomous_container_databases: int
			available_cpus:                                   int
			compute_model?:                                   string
			total_autonomous_data_storage_in_tbs:             float
			node_count:                                       int
			is_mtls_enabled?:                                 bool
			cpu_percentage:                                   float
			scan_listener_port_tls?:                          int
			data_storage_size_in_gb:                          float
			total_container_databases?:                       int
			max_acds_lowest_scaled_value:                     int
			time_database_ssl_certificate_expires:            string
			scan_listener_port_non_tls?:                      int
			exadata_infrastructure_id!:                       string
			db_node_storage_size_in_gbs:                      int
			reclaimable_cpus:                                 int
			memory_per_oracle_compute_unit_in_gbs?:           int
			cpus_lowest_scaled_value:                         int
			maintenance_window: [...{
				hours_of_day: [...int]
				patching_mode?:                    string
				preference:                        string
				custom_action_timeout_in_mins?:    int
				is_custom_action_timeout_enabled?: bool
				weeks_of_month: [...int]
				is_monthly_patching_enabled?: bool
				lead_time_in_weeks:           int
				months: [...{
					name: string
				}]
				skip_ru: [...bool]
				days_of_week: [...{
					name: string
				}]
			}]
			provisioned_autonomous_container_databases: int
			state:                                      string
			lifecycle_details:                          string
			display_name!:                              string
			cpu_core_count_per_node?:                   int
		}
		backup_destination: {
			state:                   string
			local_mount_point_path?: string
			nfs_mount_type:          string
			display_name!:           string
			type!:                   string
			vpc_users?: [...string]
			lifecycle_details: string
			nfs_server: [...string]
			freeform_tags?: [_]: string
			connection_string?: string
			defined_tags?: [_]: string
			associated_databases: [...{
				db_name: string
				id:      string
			}]
			time_created: string
			mount_type_details?: [...{
				nfs_server?: [...string]
				nfs_server_export?:      string
				mount_type!:             string
				local_mount_point_path?: string
			}]
			compartment_id!:   string
			nfs_server_export: string
		}
		autonomous_exadata_infrastructure: {
			time_created: string
			freeform_tags?: [_]: string
			next_maintenance_run_id: string
			zone_id:                 string
			nsg_ids?: [...string]
			lifecycle_details:    string
			compartment_id!:      string
			availability_domain!: string
			domain?:              string
			shape!:               string
			subnet_id!:           string
			maintenance_window_details?: [...{
				is_custom_action_timeout_enabled?: bool
				lead_time_in_weeks?:               int
				preference?:                       string
				days_of_week?: [...{
					name!: string
				}]
				months?: [...{
					name!: string
				}]
				skip_ru?: [...bool]
				weeks_of_month?: [...int]
				hours_of_day?: [...int]
				is_monthly_patching_enabled?:   bool
				patching_mode?:                 string
				custom_action_timeout_in_mins?: int
			}]
			defined_tags?: [_]: string
			state:          string
			display_name?:  string
			license_model?: string
			hostname:       string
			scan_dns_name:  string
			create_async?:  *false | bool
			maintenance_window: [...{
				is_monthly_patching_enabled: bool
				preference:                  string
				hours_of_day: [...int]
				skip_ru: [...bool]
				weeks_of_month: [...int]
				custom_action_timeout_in_mins:    int
				is_custom_action_timeout_enabled: bool
				days_of_week: [...{
					name: string
				}]
				months: [...{
					name: string
				}]
				lead_time_in_weeks: int
				patching_mode:      string
			}]
			last_maintenance_run_id: string
		}
		externalnoncontainerdatabases_stack_monitoring: {
			external_database_connector_id!:     string
			external_non_container_database_id!: string
			enable_stack_monitoring!:            bool
		}
		pluggable_database_pluggabledatabasemanagements_management: {
			lifecycle_details: string
			time_created:      string
			protocol?:         string
			pluggable_database_management_config: [...{
				management_status:                   string
				enable_pluggabledatabasemanagement!: bool
			}]
			is_restricted:                       bool
			enable_pluggabledatabasemanagement!: bool
			port?:                               int
			ssl_secret_id?:                      string
			credential_details!: [...{
				password_secret_id!: string
				user_name!:          string
			}]
			connection_strings: [...{
				all_connection_strings: [_]: string
				pdb_default:                         string
				pdb_ip_default:                      string
				enable_pluggabledatabasemanagement!: bool
			}]
			pdb_name:               string
			state:                  string
			pluggable_database_id!: string
			role?:                  string
			service_name!:          string
			private_end_point_id!:  string
			compartment_id:         string
			freeform_tags: [_]: string
			container_database_id: string
			open_mode:             string
			defined_tags: [_]: string
		}
		oneoff_patch: {
			size_in_kbs:                    float
			release_update!:                string
			sha256sum:                      string
			time_of_expiration:             string
			time_updated:                   string
			download_oneoff_patch_trigger?: int
			lifecycle_details:              string
			display_name!:                  string
			compartment_id!:                string
			time_created:                   string
			db_version!:                    string
			defined_tags?: [_]: string
			state: string
			freeform_tags?: [_]: string
			one_off_patches?: [...string]
		}
		pluggable_databases_local_clone: {
			pdb_admin_password?: string
			pluggable_database_management_config: [...{
				management_status: string
			}]
			pluggable_database_id!:              string
			should_pdb_admin_account_be_locked?: bool
			container_database_id:               string
			open_mode:                           string
			time_created:                        string
			target_tde_wallet_password?:         string
			lifecycle_details:                   string
			state:                               string
			is_restricted:                       bool
			pdb_node_level_details: [...{
				node_name: string
				open_mode: string
			}]
			connection_strings: [...{
				pdb_ip_default: string
				all_connection_strings: [_]: string
				pdb_default: string
			}]
			defined_tags: [_]: string
			cloned_pdb_name!: string
			refreshable_clone_config: [...{
				is_refreshable_clone: bool
			}]
			compartment_id: string
			freeform_tags: [_]: string
			pdb_name: string
		}
		pluggable_databases_remote_clone: {
			should_pdb_admin_account_be_locked?: bool
			source_container_db_admin_password!: string
			pluggable_database_id!:              string
			target_container_database_id!:       string
			compartment_id:                      string
			pluggable_database_management_config: [...{
				management_status: string
			}]
			freeform_tags: [_]: string
			cloned_pdb_name!: string
			is_restricted:    bool
			open_mode:        string
			refreshable_clone_config: [...{
				is_refreshable_clone: bool
			}]
			container_database_id:       string
			target_tde_wallet_password?: string
			pdb_admin_password?:         string
			pdb_name:                    string
			lifecycle_details:           string
			state:                       string
			time_created:                string
			defined_tags: [_]: string
			connection_strings: [...{
				all_connection_strings: [_]: string
				pdb_default:    string
				pdb_ip_default: string
			}]
			pdb_node_level_details: [...{
				node_name: string
				open_mode: string
			}]
		}
		db_system: {
			display_name?:     string
			lifecycle_details: string
			private_ip?:       string
			node_count?:       int
			maintenance_window_details?: [...{
				is_custom_action_timeout_enabled?: bool
				custom_action_timeout_in_mins?:    int
				lead_time_in_weeks?:               int
				skip_ru?: [...bool]
				days_of_week?: [...{
					name?: string
				}]
				is_monthly_patching_enabled?: bool
				months?: [...{
					name?: string
				}]
				preference?: string
				hours_of_day?: [...int]
				patching_mode?: string
				weeks_of_month?: [...int]
			}]
			data_storage_percentage?: int
			vip_ids: [...string]
			version:   string
			hostname!: string
			db_system_options?: [...{
				storage_management?: string
			}]
			zone_id:      string
			time_created: string
			maintenance_window: [...{
				custom_action_timeout_in_mins: int
				hours_of_day: [...int]
				is_monthly_patching_enabled: bool
				months: [...{
					name: string
				}]
				lead_time_in_weeks:               int
				preference:                       string
				is_custom_action_timeout_enabled: bool
				patching_mode:                    string
				weeks_of_month: [...int]
				days_of_week: [...{
					name: string
				}]
				skip_ru: [...bool]
			}]
			availability_domain!: string
			domain?:              string
			source_db_system_id?: string
			iorm_config_cache: [...{
				db_system_id: string
				db_plans: [...{
					db_name:           string
					flash_cache_limit: string
					share:             int
				}]
				lifecycle_details: string
				objective:         string
				state:             string
			}]
			source?: string
			nsg_ids?: [...string]
			reco_storage_size_in_gb?: int
			scan_ip_ids: [...string]
			os_version:                       string
			kms_key_version_id?:              string
			storage_volume_performance_mode?: string
			state:                            string
			db_home!: [...{
				db_home_location:  string
				time_created:      string
				lifecycle_details: string
				database!: [...{
					freeform_tags?: [_]: string
					time_created:    string
					admin_password!: string
					defined_tags?: [_]: string
					pdb_name?:                              string
					tde_wallet_password?:                   string
					db_domain?:                             string
					db_workload?:                           string
					character_set?:                         string
					vault_id?:                              string
					lifecycle_details:                      string
					time_stamp_for_point_in_time_recovery?: string
					backup_id?:                             string
					database_id?:                           string
					id:                                     string
					state:                                  string
					backup_tde_password?:                   string
					kms_key_id?:                            string
					db_backup_config?: [...{
						backup_deletion_policy?: string
						backup_destination_details?: [...{
							dbrs_policy_id?: string
							id?:             string
							type?:           string
						}]
						recovery_window_in_days?:   int
						run_immediate_full_backup?: bool
						auto_backup_enabled?:       bool
						auto_backup_window?:        string
						auto_full_backup_day?:      *"SUNDAY" | string
						auto_full_backup_window?:   string
					}]
					pluggable_databases?: [...string]
					database_software_image_id?: string
					db_unique_name?:             string
					kms_key_version_id?:         string
					ncharacter_set?:             string
					connection_strings: [...{
						cdb_default:    string
						cdb_ip_default: string
						all_connection_strings: [_]: string
					}]
					db_name?: string
				}]
				db_version?:                 string
				last_patch_history_entry_id: string
				create_async?:               *false | bool
				database_software_image_id?: string
				display_name?:               string
				freeform_tags?: [_]: string
				defined_tags?: [_]: string
				id:                           string
				state:                        string
				is_unified_auditing_enabled?: bool
			}]
			fault_domains?: [...string]
			defined_tags?: [_]: string
			database_edition?:           string
			disk_redundancy?:            string
			last_patch_history_entry_id: string
			compartment_id!:             string
			shape!:                      string
			cpu_core_count?:             int
			kms_key_id?:                 string
			backup_subnet_id?:           string
			subnet_id!:                  string
			backup_network_nsg_ids?: [...string]
			sparse_diskgroup?: bool
			time_zone?:        string
			ssh_public_keys!: [...string]
			last_maintenance_run_id: string
			data_collection_options?: [...{
				is_incident_logs_enabled?:      bool
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
			}]
			license_model?: string
			security_attributes?: [_]: string
			cluster_name?:                           string
			next_maintenance_run_id:                 string
			data_storage_size_in_gb?:                int
			memory_size_in_gbs:                      int
			scan_dns_name:                           string
			listener_port:                           int
			scan_dns_record_id:                      string
			point_in_time_data_disk_clone_timestamp: string
			freeform_tags?: [_]: string
		}
		exadata_iorm_config: {
			state: string
			db_plans!: [...{
				db_name!:          string
				share!:            int
				flash_cache_limit: string
			}]
			db_system_id!:     string
			objective?:        string
			lifecycle_details: string
		}
		migration: {
			db_system_id!: string
			additional_migrations: [...{
				cloud_vm_cluster_id:             string
				db_system_id:                    string
				cloud_exadata_infrastructure_id: string
			}]
			cloud_exadata_infrastructure_id: string
			cloud_vm_cluster_id:             string
		}
		key_store: {
			state:         string
			display_name!: string
			freeform_tags?: [_]: string
			associated_databases: [...{
				db_name: string
				id:      string
			}]
			defined_tags?: [_]: string
			confirm_details_trigger?: int
			time_created:             string
			lifecycle_details:        string
			compartment_id!:          string
			type_details!: [...{
				secret_id!:      string
				type!:           string
				vault_id!:       string
				admin_username!: string
				connection_ips!: [...string]
			}]
		}
		vm_cluster_add_virtual_machine: {
			compartment_id: string
			state:          string
			defined_tags: [_]: string
			is_local_backup_enabled:     bool
			db_node_storage_size_in_gbs: int
			vm_cluster_network_id:       string
			is_sparse_diskgroup_enabled: bool
			ocpus_enabled:               float
			time_zone:                   string
			gi_version:                  string
			db_servers!: [...{
				db_server_id!: string
			}]
			freeform_tags: [_]: string
			exadata_infrastructure_id: string
			file_system_configuration_details: [...{
				mount_point:         string
				file_system_size_gb: int
			}]
			ssh_public_keys: [...string]
			vm_cluster_id!:           string
			memory_size_in_gbs:       int
			data_storage_size_in_tbs: float
			license_model:            string
			cpus_enabled:             int
			availability_domain:      string
			lifecycle_details:        string
			time_created:             string
			data_collection_options: [...{
				is_diagnostics_events_enabled: bool
				is_health_monitoring_enabled:  bool
				is_incident_logs_enabled:      bool
			}]
			data_storage_size_in_gb: float
			cloud_automation_update_details: [...{
				is_early_adoption_enabled: bool
				is_freeze_period_enabled:  bool
				apply_update_time_preference: [...{
					apply_update_preferred_end_time:   string
					apply_update_preferred_start_time: string
				}]
				freeze_period: [...{
					freeze_period_end_time:   string
					freeze_period_start_time: string
				}]
			}]
			last_patch_history_entry_id: string
			system_version:              string
			shape:                       string
			display_name:                string
		}
		vm_cluster_network: {
			defined_tags?: [_]: string
			ntp?: [...string]
			validate_vm_cluster_network?: *false | bool
			state:                        string
			vm_cluster_id:                string
			freeform_tags?: [_]: string
			action?:                    string
			display_name!:              string
			exadata_infrastructure_id!: string
			lifecycle_details:          string
			dns?: [...string]
			dr_scans?: [...{
				scan_listener_port_tcp!: int
				hostname!:               string
				ips!: [...string]
			}]
			compartment_id!: string
			time_created:    string
			scans!: [...{
				ips!: [...string]
				port?:                       int
				scan_listener_port_tcp?:     int
				scan_listener_port_tcp_ssl?: int
				hostname!:                   string
			}]
			vm_networks!: [...{
				gateway?:      string
				netmask?:      string
				vlan_id?:      string
				network_type!: string
				nodes!: [...{
					state?:        string
					vip?:          string
					vip_hostname?: string
					hostname!:     string
					ip!:           string
					db_server_id?: string
				}]
				domain_name?: string
			}]
		}
		vm_cluster_remove_virtual_machine: {
			data_storage_size_in_tbs:    float
			exadata_infrastructure_id:   string
			cpus_enabled:                int
			vm_cluster_network_id:       string
			compartment_id:              string
			memory_size_in_gbs:          int
			state:                       string
			lifecycle_details:           string
			shape:                       string
			last_patch_history_entry_id: string
			file_system_configuration_details: [...{
				mount_point:         string
				file_system_size_gb: int
			}]
			db_servers!: [...{
				db_server_id!: string
			}]
			vm_cluster_id!:          string
			is_local_backup_enabled: bool
			freeform_tags: [_]: string
			data_collection_options: [...{
				is_diagnostics_events_enabled: bool
				is_health_monitoring_enabled:  bool
				is_incident_logs_enabled:      bool
			}]
			db_node_storage_size_in_gbs: int
			system_version:              string
			cloud_automation_update_details: [...{
				freeze_period: [...{
					freeze_period_start_time: string
					freeze_period_end_time:   string
				}]
				is_early_adoption_enabled: bool
				is_freeze_period_enabled:  bool
				apply_update_time_preference: [...{
					apply_update_preferred_end_time:   string
					apply_update_preferred_start_time: string
				}]
			}]
			is_sparse_diskgroup_enabled: bool
			gi_version:                  string
			availability_domain:         string
			time_created:                string
			display_name:                string
			time_zone:                   string
			license_model:               string
			ssh_public_keys: [...string]
			defined_tags: [_]: string
		}
		database: {
			db_backup_config: [...{
				auto_backup_enabled:     bool
				auto_backup_window:      string
				auto_full_backup_day:    string
				auto_full_backup_window: string
				backup_deletion_policy:  string
				backup_destination_details: [...{
					type:           string
					vpc_user?:      string
					dbrs_policy_id: string
					id:             string
				}]
				recovery_window_in_days:   int
				run_immediate_full_backup: bool
			}]
			db_home_id!: string
			database!: [...{
				admin_password!: string
				db_workload?:    string
				vault_id?:       string
				defined_tags?: [_]: string
				db_unique_name?:      string
				backup_id?:           string
				backup_tde_password?: string
				kms_key_id?:          string
				sid_prefix?:          string
				tde_wallet_password?: string
				db_backup_config?: [...{
					auto_full_backup_day?:    *"SUNDAY" | string
					auto_full_backup_window?: string
					backup_deletion_policy?:  string
					backup_destination_details?: [...{
						type?:           string
						vpc_user?:       string
						dbrs_policy_id?: string
						id?:             string
					}]
					recovery_window_in_days?:   int
					run_immediate_full_backup?: bool
					auto_backup_enabled?:       bool
					auto_backup_window?:        string
				}]
				kms_key_version_id?: string
				character_set?:      string
				pdb_name?:           string
				db_name!:            string
				ncharacter_set?:     string
				pluggable_databases?: [...string]
				database_software_image_id?: string
				freeform_tags?: [_]: string
			}]
			time_created:                    string
			kms_key_id?:                     string
			sid_prefix:                      string
			last_backup_duration_in_seconds: int
			lifecycle_details:               string
			connection_strings: [...{
				cdb_default:    string
				cdb_ip_default: string
				all_connection_strings: [_]: string
			}]
			key_store_wallet_name:                            string
			source_database_point_in_time_recovery_timestamp: string
			defined_tags: [_]: string
			kms_key_migration?: bool
			state:              string
			ncharacter_set:     string
			freeform_tags: [_]: string
			is_cdb:                bool
			db_unique_name:        string
			kms_key_rotation?:     int
			last_backup_timestamp: string
			db_version?:           string
			compartment_id:        string
			database_management_config: [...{
				management_status: string
				management_type:   string
			}]
			db_name:                      string
			db_system_id:                 string
			key_store_id?:                string
			character_set:                string
			db_workload:                  string
			vm_cluster_id:                string
			last_failed_backup_timestamp: string
			kms_key_version_id?:          string
			vault_id?:                    string
			source!:                      string
			pdb_name:                     string
			database_software_image_id:   string
		}
		exadata_infrastructure: {
			additional_storage_count?:      int
			max_db_node_storage_in_gbs:     int
			max_cpu_count:                  int
			additional_compute_count:       int
			activation_file?:               string
			db_server_version:              string
			corporate_proxy?:               string
			is_cps_offline_report_enabled?: bool
			memory_size_in_gbs:             int
			contacts?: [...{
				phone_number?:             string
				email!:                    string
				is_primary!:               bool
				name!:                     string
				is_contact_mos_validated?: bool
			}]
			gateway!:          string
			time_created:      string
			lifecycle_details: string
			compute_count?:    int
			maintenance_window?: [...{
				lead_time_in_weeks?: int
				weeks_of_month?: [...int]
				months?: [...{
					name!: string
				}]
				is_monthly_patching_enabled?: bool
				hours_of_day?: [...int]
				is_custom_action_timeout_enabled?: bool
				custom_action_timeout_in_mins?:    int
				patching_mode?:                    string
				preference?:                       string
				skip_ru?: [...bool]
				days_of_week?: [...{
					name!: string
				}]
			}]
			time_zone!:    string
			display_name!: string
			ntp_server!: [...string]
			freeform_tags?: [_]: string
			cpus_enabled:                 int
			rack_serial_number:           string
			cloud_control_plane_server1!: string
			infini_band_network_cidr!:    string
			max_memory_in_gbs:            int
			cloud_control_plane_server2!: string
			storage_server_version:       string
			storage_count?:               int
			is_multi_rack_deployment?:    bool
			max_data_storage_in_tbs:      float
			compartment_id!:              string
			netmask!:                     string
			data_storage_size_in_tbs:     float
			monthly_db_server_version:    string
			shape!:                       string
			defined_tags?: [_]: string
			additional_compute_system_model: string
			defined_file_system_configurations: [...{
				is_resizable:        bool
				min_size_gb:         int
				mount_point:         string
				is_backup_partition: bool
			}]
			db_node_storage_size_in_gbs: int
			dns_server!: [...string]
			csi_number:                     string
			availability_domain:            string
			multi_rack_configuration_file?: string
			network_bonding_mode_details?: [...{
				backup_network_bonding_mode?: string
				client_network_bonding_mode?: string
				dr_network_bonding_mode?:     string
			}]
			admin_network_cidr!:     string
			maintenance_slo_status:  string
			state:                   string
			activated_storage_count: int
			create_async?:           *false | bool
		}
		external_container_database_management: {
			external_database_connector_id!: string
			enable_management!:              bool
			license_model?:                  string
			external_container_database_id!: string
		}
		autonomous_container_database_dataguard_role_change: {
			autonomous_container_database_dataguard_association_id!: string
			role!:                                                   string
			connection_strings_type?:                                string
			autonomous_container_database_id!:                       string
		}
		exadata_infrastructure_storage: {
			exadata_infrastructure_id?: string
			infini_band_network_cidr!:  string
			ntp_server!: [...string]
			shape!: string
			maintenance_window?: [...{
				preference!: string
				days_of_week?: [...{
					name!: string
				}]
				hours_of_day?: [...int]
				lead_time_in_weeks?: int
				months?: [...{
					name!: string
				}]
				weeks_of_month?: [...int]
			}]
			gateway!: string
			netmask!: string
			contacts?: [...{
				name!:                     string
				is_contact_mos_validated?: bool
				phone_number?:             string
				email!:                    string
				is_primary!:               bool
			}]
			data_storage_size_in_tbs: float
			compute_count?:           int
			lifecycle_details:        string
			dns_server!: [...string]
			storage_count?:              int
			max_memory_in_gbs:           int
			compartment_id!:             string
			state:                       string
			max_db_node_storage_in_gbs:  int
			db_node_storage_size_in_gbs: int
			max_cpu_count:               int
			defined_tags?: [_]: string
			time_zone!:                   string
			maintenance_slo_status:       string
			admin_network_cidr!:          string
			time_created:                 string
			cloud_control_plane_server2!: string
			display_name!:                string
			max_data_storage_in_tbs:      float
			freeform_tags?: [_]: string
			csi_number:                   string
			memory_size_in_gbs:           int
			cpus_enabled:                 int
			cloud_control_plane_server1!: string
			activated_storage_count:      int
			additional_storage_count:     int
			corporate_proxy?:             string
			activation_file?:             string
		}
		autonomous_database_backup: {
			is_long_term_backup?:      bool
			retention_period_in_days?: int
			db_version:                string
			time_ended:                string
			backup_destination_details?: [...{
				type!:           string
				id?:             string
				internet_proxy?: string
				vpc_password?:   string
				vpc_user?:       string
			}]
			compartment_id:          string
			kms_key_id:              string
			state:                   string
			display_name?:           string
			time_started:            string
			time_available_till:     string
			autonomous_database_id!: string
			kms_key_version_id:      string
			is_automatic:            bool
			is_restorable:           bool
			size_in_tbs:             float
			database_size_in_tbs:    float
			type:                    string
			vault_id:                string
			key_store_id:            string
			key_store_wallet_name:   string
			lifecycle_details:       string
		}
		autonomous_vm_cluster_ssl_certificate_management: {
			certificate_id?:              string
			autonomous_vm_cluster_id!:    string
			certificate_generation_type!: string
			ca_bundle_id?:                string
			certificate_authority_id?:    string
		}
		external_database_connector: {
			compartment_id:    string
			connection_status: string
			connection_credentials!: [...{
				ssl_secret_id?:   string
				username?:        string
				credential_name?: string
				credential_type?: string
				password?:        string
				role?:            string
			}]
			freeform_tags?: [_]: string
			state: string
			defined_tags?: [_]: string
			connector_type?:       string
			external_database_id!: string
			lifecycle_details:     string
			time_created:          string
			connection_string!: [...{
				protocol!: string
				service!:  string
				hostname!: string
				port!:     int
			}]
			display_name!:                       string
			time_connection_status_last_updated: string
			connector_agent_id!:                 string
		}
		db_node_console_history: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id:    string
			lifecycle_details: string
			state:             string
			time_created:      string
			db_node_id!:       string
			display_name!:     string
		}
		external_non_container_database_management: {
			external_database_connector_id!:     string
			external_non_container_database_id!: string
			enable_management!:                  bool
			license_model?:                      string
		}
		vm_cluster: {
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
			state: string
			ssh_public_keys!: [...string]
			vm_cluster_network_id!:     string
			time_zone?:                 string
			exadata_infrastructure_id!: string
			ocpus_enabled:              float
			time_created:               string
			display_name!:              string
			gi_version!:                string
			lifecycle_details:          string
			cpus_enabled:               int
			freeform_tags?: [_]: string
			cpu_core_count!:              int
			ocpu_count?:                  float
			system_version?:              string
			last_patch_history_entry_id:  string
			is_local_backup_enabled?:     bool
			is_sparse_diskgroup_enabled?: bool
			shape:                        string
			db_servers?: [...string]
			file_system_configuration_details?: [...{
				file_system_size_gb?: int
				mount_point?:         string
			}]
			license_model?:               string
			data_storage_size_in_tbs?:    float
			compartment_id!:              string
			db_node_storage_size_in_gbs?: int
			availability_domain:          string
			cloud_automation_update_details?: [...{
				apply_update_time_preference?: [...{
					apply_update_preferred_end_time?:   string
					apply_update_preferred_start_time?: string
				}]
				freeze_period?: [...{
					freeze_period_start_time?: string
					freeze_period_end_time?:   string
				}]
				is_early_adoption_enabled?: bool
				is_freeze_period_enabled?:  bool
			}]
			data_storage_size_in_gb?: float
			defined_tags?: [_]: string
			memory_size_in_gbs?: int
		}
		autonomous_database_regional_wallet_management: {
			time_rotated:   string
			grace_period?:  int
			should_rotate?: *false | bool
			state:          string
		}
		backup_cancel_management: {
			backup_id!:             string
			cancel_backup_trigger?: int
		}
		cloud_exadata_infrastructure: {
			shape!:                      string
			cpu_count:                   int
			last_maintenance_run_id:     string
			cluster_placement_group_id?: string
			compute_count?:              int
			customer_contacts?: [...{
				email?: string
			}]
			max_data_storage_in_tbs:     float
			db_node_storage_size_in_gbs: int
			monthly_db_server_version:   string
			memory_size_in_gbs:          int
			time_created:                string
			maintenance_window?: [...{
				skip_ru?: [...bool]
				weeks_of_month?: [...int]
				months?: [...{
					name!: string
				}]
				lead_time_in_weeks?:            int
				patching_mode?:                 string
				custom_action_timeout_in_mins?: int
				is_monthly_patching_enabled?:   bool
				hours_of_day?: [...int]
				is_custom_action_timeout_enabled?: bool
				preference?:                       string
				days_of_week?: [...{
					name!: string
				}]
			}]
			db_server_version:      string
			lifecycle_details:      string
			storage_server_version: string
			state:                  string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			activated_storage_count:       int
			available_storage_size_in_gbs: int
			data_storage_size_in_tbs:      float
			max_db_node_storage_in_gbs:    int
			total_storage_size_in_gbs:     int
			display_name!:                 string
			additional_storage_count:      int
			defined_file_system_configurations: [...{
				is_backup_partition: bool
				is_resizable:        bool
				min_size_gb:         int
				mount_point:         string
			}]
			storage_count?:    int
			max_cpu_count:     int
			max_memory_in_gbs: int
			system_tags: [_]: string
			subscription_id?:               string
			monthly_storage_server_version: string
			next_maintenance_run_id:        string
			availability_domain!:           string
			compartment_id!:                string
		}
		external_pluggable_database: {
			stack_monitoring_config: [...{
				stack_monitoring_connector_id: string
				stack_monitoring_status:       string
			}]
			db_unique_name:    string
			lifecycle_details: string
			state:             string
			time_created:      string
			database_version:  string
			db_packs:          string
			defined_tags?: [_]: string
			time_zone:      string
			ncharacter_set: string
			database_management_config: [...{
				database_management_connection_id: string
				database_management_status:        string
				license_model:                     string
			}]
			operations_insights_config: [...{
				operations_insights_connector_id: string
				operations_insights_status:       string
			}]
			compartment_id!:                 string
			database_edition:                string
			character_set:                   string
			external_container_database_id!: string
			database_configuration:          string
			source_id?:                      string
			display_name!:                   string
			freeform_tags?: [_]: string
			db_id: string
		}
		autonomous_database_instance_wallet_management: {
			state:                   string
			time_rotated:            string
			autonomous_database_id!: string
			grace_period?:           int
			should_rotate?:          *false | bool
		}
		db_home: {
			source?:       string
			time_created:  string
			db_version?:   string
			db_system_id?: string
			freeform_tags?: [_]: string
			database?: [...{
				character_set?: string
				backup_id?:     string
				pluggable_databases?: [...string]
				pdb_name?:                   string
				tde_wallet_password?:        string
				state:                       string
				db_name?:                    string
				database_software_image_id?: string
				backup_tde_password?:        string
				kms_key_id?:                 string
				lifecycle_details:           string
				key_store_id?:               string
				defined_tags?: [_]: string
				db_workload?: string
				freeform_tags?: [_]: string
				admin_password!:     string
				time_created:        string
				kms_key_version_id?: string
				db_backup_config?: [...{
					backup_deletion_policy?: string
					backup_destination_details?: [...{
						dbrs_policy_id?: string
						id?:             string
						type?:           string
					}]
					recovery_window_in_days?:   int
					run_immediate_full_backup?: bool
					auto_backup_enabled?:       bool
					auto_backup_window?:        string
					auto_full_backup_day?:      *"SUNDAY" | string
					auto_full_backup_window?:   string
				}]
				sid_prefix:      string
				ncharacter_set?: string
				connection_strings: [...{
					all_connection_strings: [_]: string
					cdb_default:    string
					cdb_ip_default: string
				}]
				id: string
				one_off_patches: [...string]
				time_stamp_for_point_in_time_recovery?: string
				vault_id?:                              string
				database_id?:                           string
				db_unique_name:                         string
			}]
			enable_database_delete?:     bool
			vm_cluster_id?:              string
			lifecycle_details:           string
			display_name?:               string
			is_desupported_version?:     bool
			state:                       string
			last_patch_history_entry_id: string
			database_software_image_id?: string
			db_home_location:            string
			defined_tags?: [_]: string
			compartment_id:               string
			kms_key_id?:                  string
			is_unified_auditing_enabled?: bool
			kms_key_version_id?:          string
		}
		externalpluggabledatabases_stack_monitoring: {
			external_database_connector_id!: string
			external_pluggable_database_id!: string
			enable_stack_monitoring!:        bool
		}
	}
	arguments: {
		exascale_db_storage_vault: {
			additional_flash_cache_in_percent?: int
			time_zone?:                         string
			high_capacity_database_storage!: [...{
				total_size_in_gbs!: int
			}]
			display_name!:   string
			compartment_id!: string
			description?:    string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			availability_domain!: string
		}
		external_pluggable_database_operations_insights_management: {
			external_database_connector_id!: string
			external_pluggable_database_id!: string
			enable_operations_insights!:     bool
		}
		maintenance_run: {
			patching_mode?:              string
			patch_type!:                 string
			target_resource_id!:         string
			compartment_id?:             string
			is_dst_file_update_enabled?: bool
			time_scheduled!:             string
			database_software_image_id?: string
		}
		application_vip: {
			db_node_id?:          string
			hostname_label!:      string
			subnet_id!:           string
			ip_address?:          string
			cloud_vm_cluster_id!: string
		}
		autonomous_database: {
			ocpu_count?:       float
			database_edition?: string
			scheduled_operations?: [...{
				day_of_week!: [...{
					name!: string
				}]
				scheduled_start_time?: string
				scheduled_stop_time?:  string
			}]
			ncharacter_set?:             string
			license_model?:              string
			open_mode?:                  string
			disaster_recovery_type?:     string
			operations_insights_status?: string
			max_cpu_core_count?:         int
			autonomous_database_id?:     string
			refreshable_mode?:           string
			long_term_backup_schedule?: [...{
				is_disabled?:              bool
				repeat_cadence?:           string
				retention_period_in_days?: int
				time_of_backup?:           string
			}]
			local_adg_auto_failover_max_data_loss_limit?: int
			source?:                                      string
			is_dedicated?:                                bool
			time_of_auto_refresh_start?:                  string
			nsg_ids?: [...string]
			private_endpoint_ip?:         string
			timestamp?:                   string
			in_memory_percentage?:        int
			vault_id?:                    string
			data_storage_size_in_gb?:     int
			is_local_data_guard_enabled?: bool
			state?:                       string
			cpu_core_count?:              int
			character_set?:               string
			is_data_guard_enabled?:       bool
			db_version?:                  string
			is_shrink_only?:              bool
			compartment_id!:              string
			standby_whitelisted_ips?: [...string]
			switchover_to?:                    string
			are_primary_whitelisted_ips_used?: bool
			encryption_key?: [...{
				key_arn?:                      string
				okv_kms_key?:                  string
				service_endpoint_uri?:         string
				autonomous_database_provider?: string
				arn_role?:                     string
				okv_uri?:                      string
				certificate_id?:               string
				directory_name?:               string
				kms_key_id?:                   string
				certificate_directory_name?:   string
				vault_id?:                     string
				vault_uri?:                    string
				external_id?:                  string
				key_name?:                     string
			}]
			is_auto_scaling_for_storage_enabled?: bool
			source_id?:                           string
			resource_pool_summary?: [...{
				is_disabled?: bool
				pool_size?:   int
			}]
			is_mtls_connection_required?:                    bool
			database_management_status?:                     string
			is_dev_tier?:                                    bool
			admin_password?:                                 string
			is_replicate_automatic_backups?:                 bool
			subnet_id?:                                      string
			is_preview_version_with_service_terms_accepted?: bool
			data_storage_size_in_tbs?:                       int
			resource_pool_leader_id?:                        string
			compute_model?:                                  string
			auto_refresh_point_lag_in_seconds?:              int
			subscription_id?:                                string
			secret_id?:                                      string
			autonomous_database_backup_id?:                  string
			backup_retention_period_in_days?:                int
			shrink_adb_trigger?:                             int
			permission_level?:                               string
			rotate_key_trigger?:                             bool
			db_tools_details?: [...{
				name!:                     string
				compute_count?:            float
				is_enabled?:               bool
				max_idle_time_in_minutes?: int
			}]
			is_free_tier?:           bool
			private_endpoint_label?: string
			secret_version_number?:  int
			kms_key_id?:             string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			byol_compute_count_limit?:      float
			display_name?:                  string
			is_refreshable_clone?:          bool
			remote_disaster_recovery_type?: string
			customer_contacts?: [...{
				email?: string
			}]
			is_access_control_enabled?:              bool
			switchover_to_remote_peer_id?:           string
			autonomous_maintenance_schedule_type?:   string
			db_workload?:                            string
			compute_count?:                          float
			clone_type?:                             string
			autonomous_container_database_id?:       string
			data_safe_status?:                       string
			use_latest_available_backup_time_stamp?: bool
			auto_refresh_frequency_in_seconds?:      int
			whitelisted_ips?: [...string]
			db_name!: string
			security_attributes?: [_]: string
			is_auto_scaling_enabled?: bool
		}
		autonomous_database_saas_admin_user: {
			time_saas_admin_user_enabled?: string
			autonomous_database_id!:       string
			access_type?:                  string
			duration?:                     int
			password?:                     string
			secret_id?:                    string
			secret_version_number?:        int
		}
		database_upgrade: {
			database_id!: string
			database_upgrade_source_details?: [...{
				database_software_image_id?: string
				db_version?:                 string
				options?:                    string
				source?:                     string
			}]
			action!: string
		}
		external_non_container_database: {
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		external_pluggable_database_management: {
			external_database_connector_id!: string
			external_pluggable_database_id!: string
			enable_management!:              bool
		}
		exadata_infrastructure_compute: {
			activation_file?:                                          string
			additional_compute_system_model_compute_managed_resource?: string
			exadata_infrastructure_id!:                                string
			additional_compute_count_compute_managed_resource?:        int
		}
		cloud_vm_cluster: {
			nsg_ids?: [...string]
			is_local_backup_enabled?: bool
			memory_size_in_gbs?:      int
			backup_network_nsg_ids?: [...string]
			ssh_public_keys!: [...string]
			system_version?: string
			defined_tags?: [_]: string
			hostname!:                    string
			backup_subnet_id!:            string
			db_node_storage_size_in_gbs?: int
			subscription_id?:             string
			cluster_name?:                string
			subnet_id!:                   string
			data_collection_options?: [...{
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
				is_diagnostics_events_enabled?: bool
			}]
			data_storage_size_in_tbs?: float
			compartment_id!:           string
			time_zone?:                string
			security_attributes?: [_]: string
			db_servers?: [...string]
			cloud_automation_update_details?: [...{
				is_early_adoption_enabled?: bool
				is_freeze_period_enabled?:  bool
				apply_update_time_preference?: [...{
					apply_update_preferred_end_time?:   string
					apply_update_preferred_start_time?: string
				}]
				freeze_period?: [...{
					freeze_period_end_time?:   string
					freeze_period_start_time?: string
				}]
			}]
			freeform_tags?: [_]: string
			private_zone_id?:                 string
			data_storage_percentage?:         int
			create_async?:                    *false | bool
			cloud_exadata_infrastructure_id!: string
			display_name!:                    string
			scan_listener_port_tcp_ssl?:      int
			domain?:                          string
			ocpu_count?:                      float
			file_system_configuration_details?: [...{
				file_system_size_gb?: int
				mount_point?:         string
			}]
			gi_version!:                  string
			scan_listener_port_tcp?:      int
			cpu_core_count!:              int
			license_model?:               string
			is_sparse_diskgroup_enabled?: bool
		}
		db_node: {
			db_node_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
		}
		external_non_container_database_operations_insights_management: {
			external_non_container_database_id!: string
			enable_operations_insights!:         bool
			external_database_connector_id!:     string
		}
		exadb_vm_cluster: {
			node_resource?: [...{
				node_name!: string
			}]
			defined_tags?: [_]: string
			private_zone_id?:              string
			scan_listener_port_tcp_ssl?:   int
			exascale_db_storage_vault_id!: string
			display_name!:                 string
			data_collection_options?: [...{
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
				is_diagnostics_events_enabled?: bool
			}]
			system_version?: string
			security_attributes?: [_]: string
			backup_network_nsg_ids?: [...string]
			grid_image_id!:       string
			time_zone?:           string
			shape!:               string
			availability_domain!: string
			domain?:              string
			ssh_public_keys!: [...string]
			node_config!: [...{
				enabled_ecpu_count_per_node!:              int
				total_ecpu_count_per_node!:                int
				vm_file_system_storage_size_gbs_per_node!: int
			}]
			compartment_id!: string
			hostname!:       string
			freeform_tags?: [_]: string
			cluster_name?:  string
			license_model?: string
			nsg_ids?: [...string]
			scan_listener_port_tcp?: int
			backup_subnet_id!:       string
			subnet_id!:              string
		}
		autonomous_container_database_dataguard_association_operation: {
			operation!:                                              string
			autonomous_container_database_dataguard_association_id!: string
			autonomous_container_database_id!:                       string
		}
		autonomous_database_wallet: {
			generate_type?:          *"SINGLE" | string
			is_regional?:            bool
			autonomous_database_id!: string
			password!:               string
			base64_encode_content?:  *false | bool
		}
		autonomous_vm_cluster_ords_certificate_management: {
			certificate_generation_type!: string
			ca_bundle_id?:                string
			certificate_authority_id?:    string
			certificate_id?:              string
			autonomous_vm_cluster_id!:    string
		}
		cloud_vm_cluster_iorm_config: {
			db_plans!: [...{
				db_name!: string
				share!:   int
			}]
			cloud_vm_cluster_id!: string
			objective?:           string
		}
		cloud_database_management: {
			private_end_point_id!: string
			protocol?:             string
			role?:                 string
			service_name!:         string
			port?:                 int
			ssl_secret_id?:        string
			management_type!:      string
			database_id!:          string
			enable_management!:    bool
			credentialdetails!: [...{
				password_secret_id!: string
				user_name!:          string
			}]
		}
		autonomous_container_database: {
			is_dst_file_update_enabled?:           bool
			autonomous_exadata_infrastructure_id?: string
			compartment_id?:                       string
			peer_cloud_autonomous_vm_cluster_id?:  string
			defined_tags?: [_]: string
			fast_start_fail_over_lag_limit_in_seconds?:       int
			protection_mode?:                                 string
			peer_autonomous_container_database_display_name?: string
			kms_key_id?:                                      string
			peer_autonomous_container_database_backup_config?: [...{
				backup_destination_details?: [...{
					type!:           string
					id?:             string
					internet_proxy?: string
					vpc_password?:   string
					vpc_user?:       string
				}]
				recovery_window_in_days?: int
			}]
			vault_id?:                           string
			standby_maintenance_buffer_in_days?: int
			db_name?:                            string
			is_automatic_failover_enabled?:      bool
			distribution_affinity?:              string
			rotate_key_trigger?:                 bool
			backup_config?: [...{
				backup_destination_details?: [...{
					vpc_password?:   string
					vpc_user?:       string
					type!:           string
					id?:             string
					internet_proxy?: string
				}]
				recovery_window_in_days?: int
			}]
			peer_autonomous_vm_cluster_id?:  string
			key_store_id?:                   string
			display_name!:                   string
			service_level_agreement_type?:   string
			db_unique_name?:                 string
			cloud_autonomous_vm_cluster_id?: string
			net_services_architecture?:      string
			freeform_tags?: [_]: string
			database_software_image_id?:                string
			version_preference?:                        string
			peer_db_unique_name?:                       string
			peer_autonomous_exadata_infrastructure_id?: string
			db_split_threshold?:                        int
			maintenance_window_details?: [...{
				skip_ru?: [...bool]
				custom_action_timeout_in_mins?: int
				hours_of_day?: [...int]
				months?: [...{
					name!: string
				}]
				patching_mode?:                    string
				is_custom_action_timeout_enabled?: bool
				is_monthly_patching_enabled?:      bool
				weeks_of_month?: [...int]
				days_of_week?: [...{
					name!: string
				}]
				lead_time_in_weeks?: int
				preference?:         string
			}]
			db_version?:                                        string
			vm_failover_reservation?:                           int
			patch_model!:                                       string
			peer_autonomous_container_database_compartment_id?: string
			autonomous_vm_cluster_id?:                          string
		}
		autonomous_container_database_dataguard_association: {
			standby_maintenance_buffer_in_days?:                int
			autonomous_container_database_id!:                  string
			is_automatic_failover_enabled?:                     bool
			peer_cloud_autonomous_vm_cluster_id?:               string
			peer_autonomous_container_database_compartment_id?: string
			protection_mode!:                                   string
			peer_autonomous_container_database_backup_config?: [...{
				recovery_window_in_days?: int
				backup_destination_details?: [...{
					vpc_password?:   string
					vpc_user?:       string
					type!:           string
					dbrs_policy_id?: string
					id?:             string
					internet_proxy?: string
				}]
			}]
			autonomous_container_database_dataguard_association_id?: string
			peer_autonomous_vm_cluster_id?:                          string
			peer_db_unique_name?:                                    string
			fast_start_fail_over_lag_limit_in_seconds?:              int
			peer_autonomous_container_database_display_name!:        string
		}
		autonomous_database_software_image: {
			compartment_id!:     string
			display_name!:       string
			image_shape_family!: string
			source_cdb_id!:      string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		backup: {
			database_id!:  string
			display_name!: string
		}
		data_guard_association: {
			domain?:             string
			peer_vm_cluster_id?: string
			display_name?:       string
			peer_db_system_id?:  string
			database_id!:        string
			db_system_security_attributes?: [_]: string
			db_system_defined_tags?: [_]: string
			peer_db_unique_name?:              string
			time_zone?:                        string
			delete_standby_db_home_on_delete!: string
			is_active_data_guard_enabled?:     bool
			protection_mode!:                  string
			database_software_image_id?:       string
			database_defined_tags?: [_]: string
			fault_domains?: [...string]
			database_admin_password!: string
			cpu_core_count?:          int
			nsg_ids?: [...string]
			create_async?: *false | bool
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
			creation_type!:                   string
			availability_domain?:             string
			peer_sid_prefix?:                 string
			license_model?:                   string
			subnet_id?:                       string
			storage_volume_performance_mode?: string
			database_freeform_tags?: [_]: string
			hostname?:       string
			node_count?:     int
			shape?:          string
			transport_type!: string
			backup_network_nsg_ids?: [...string]
			peer_db_home_id?: string
			private_ip?:      string
			db_system_freeform_tags?: [_]: string
		}
		db_systems_upgrade: {
			is_snapshot_retention_days_force_updated?: bool
			new_gi_version?:                           string
			snapshot_retention_period_in_days?:        int
			new_os_version?:                           string
			action!:                                   string
			db_system_id!:                             string
		}
		db_node_console_connection: {
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			db_node_id!: string
			public_key!: string
		}
		externalcontainerdatabases_stack_monitoring: {
			external_container_database_id!: string
			external_database_connector_id!: string
			enable_stack_monitoring!:        bool
		}
		pluggable_database: {
			kms_key_version_id?: string
			pdb_name!:           string
			freeform_tags?: [_]: string
			pdb_creation_type_details?: [...{
				source_container_database_admin_password?: string
				creation_type!:                            string
				source_pluggable_database_id!:             string
				dblink_user_password?:                     string
				dblink_username?:                          string
				is_thin_clone?:                            bool
				refreshable_clone_details?: [...{
					is_refreshable_clone?: bool
				}]
			}]
			pdb_admin_password?:    string
			container_database_id!: string
			refresh_trigger?:       int
			rotate_key_trigger?:    int
			tde_wallet_password?:   string
			defined_tags?: [_]: string
			should_create_pdb_backup?:           bool
			convert_to_regular_trigger?:         int
			container_database_admin_password?:  string
			should_pdb_admin_account_be_locked?: bool
		}
		cloud_autonomous_vm_cluster: {
			cpu_core_count_per_node?: int
			db_servers?: [...string]
			memory_per_oracle_compute_unit_in_gbs?: int
			subnet_id!:                             string
			maintenance_window_details?: [...{
				is_monthly_patching_enabled?: bool
				patching_mode?:               string
				preference?:                  string
				days_of_week?: [...{
					name!: string
				}]
				lead_time_in_weeks?:            int
				custom_action_timeout_in_mins?: int
				hours_of_day?: [...int]
				is_custom_action_timeout_enabled?: bool
				weeks_of_month?: [...int]
				months?: [...{
					name!: string
				}]
				skip_ru?: [...bool]
			}]
			autonomous_data_storage_size_in_tbs?: float
			time_updated?:                        string
			security_attributes?: [_]: string
			display_name!:                    string
			cloud_exadata_infrastructure_id!: string
			freeform_tags?: [_]: string
			description?:                string
			is_mtls_enabled_vm_cluster?: bool
			cluster_time_zone?:          string
			scan_listener_port_tls?:     int
			nsg_ids?: [...string]
			total_container_databases?:  int
			scan_listener_port_non_tls?: int
			license_model?:              string
			compute_model?:              string
			defined_tags?: [_]: string
			compartment_id!: string
		}
		database_software_image: {
			display_name!:     string
			database_version?: string
			patch_set?:        string
			database_software_image_one_off_patches?: [...string]
			image_shape_family?: string
			defined_tags?: [_]: string
			source_db_home_id?: string
			compartment_id!:    string
			freeform_tags?: [_]: string
			ls_inventory?: string
			image_type?:   string
		}
		external_container_database: {
			defined_tags?: [_]: string
			display_name!: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		autonomous_vm_cluster: {
			freeform_tags?: [_]: string
			is_local_backup_enabled?: bool
			scan_listener_port_tls?:  int
			db_servers?: [...string]
			maintenance_window_details?: [...{
				lead_time_in_weeks?: int
				preference?:         string
				hours_of_day?: [...int]
				weeks_of_month?: [...int]
				days_of_week?: [...{
					name!: string
				}]
				is_monthly_patching_enabled?: bool
				months?: [...{
					name!: string
				}]
				skip_ru?: [...bool]
				custom_action_timeout_in_mins?:    int
				is_custom_action_timeout_enabled?: bool
				patching_mode?:                    string
			}]
			time_zone?:                             string
			is_mtls_enabled?:                       bool
			license_model?:                         string
			compartment_id!:                        string
			cpu_core_count_per_node?:               int
			exadata_infrastructure_id!:             string
			memory_per_oracle_compute_unit_in_gbs?: int
			total_container_databases?:             int
			autonomous_data_storage_size_in_tbs?:   float
			defined_tags?: [_]: string
			compute_model?:              string
			vm_cluster_network_id!:      string
			scan_listener_port_non_tls?: int
			display_name!:               string
		}
		backup_destination: {
			local_mount_point_path?: string
			freeform_tags?: [_]: string
			connection_string?: string
			defined_tags?: [_]: string
			compartment_id!: string
			vpc_users?: [...string]
			display_name!: string
			type!:         string
			mount_type_details?: [...{
				mount_type!:             string
				local_mount_point_path?: string
				nfs_server?: [...string]
				nfs_server_export?: string
			}]
		}
		autonomous_exadata_infrastructure: {
			domain?:       string
			shape!:        string
			display_name?: string
			freeform_tags?: [_]: string
			subnet_id!:           string
			license_model?:       string
			create_async?:        *false | bool
			availability_domain!: string
			compartment_id!:      string
			nsg_ids?: [...string]
			defined_tags?: [_]: string
			maintenance_window_details?: [...{
				skip_ru?: [...bool]
				days_of_week?: [...{
					name!: string
				}]
				is_monthly_patching_enabled?: bool
				lead_time_in_weeks?:          int
				preference?:                  string
				months?: [...{
					name!: string
				}]
				custom_action_timeout_in_mins?: int
				patching_mode?:                 string
				weeks_of_month?: [...int]
				hours_of_day?: [...int]
				is_custom_action_timeout_enabled?: bool
			}]
		}
		externalnoncontainerdatabases_stack_monitoring: {
			enable_stack_monitoring!:            bool
			external_database_connector_id!:     string
			external_non_container_database_id!: string
		}
		pluggable_database_pluggabledatabasemanagements_management: {
			credential_details!: [...{
				password_secret_id!: string
				user_name!:          string
			}]
			protocol?:                           string
			pluggable_database_id!:              string
			port?:                               int
			service_name!:                       string
			ssl_secret_id?:                      string
			private_end_point_id!:               string
			role?:                               string
			enable_pluggabledatabasemanagement!: bool
		}
		oneoff_patch: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			one_off_patches?: [...string]
			compartment_id!:                string
			release_update!:                string
			download_oneoff_patch_trigger?: int
			db_version!:                    string
			display_name!:                  string
		}
		pluggable_databases_local_clone: {
			pluggable_database_id!:              string
			should_pdb_admin_account_be_locked?: bool
			pdb_admin_password?:                 string
			target_tde_wallet_password?:         string
			cloned_pdb_name!:                    string
		}
		pluggable_databases_remote_clone: {
			pluggable_database_id!:              string
			target_container_database_id!:       string
			target_tde_wallet_password?:         string
			cloned_pdb_name!:                    string
			pdb_admin_password?:                 string
			should_pdb_admin_account_be_locked?: bool
			source_container_db_admin_password!: string
		}
		db_system: {
			defined_tags?: [_]: string
			cpu_core_count?:   int
			sparse_diskgroup?: bool
			maintenance_window_details?: [...{
				months?: [...{
					name?: string
				}]
				hours_of_day?: [...int]
				lead_time_in_weeks?: int
				skip_ru?: [...bool]
				days_of_week?: [...{
					name?: string
				}]
				is_monthly_patching_enabled?:   bool
				custom_action_timeout_in_mins?: int
				patching_mode?:                 string
				weeks_of_month?: [...int]
				is_custom_action_timeout_enabled?: bool
				preference?:                       string
			}]
			license_model?:           string
			data_storage_size_in_gb?: int
			time_zone?:               string
			db_system_options?: [...{
				storage_management?: string
			}]
			fault_domains?: [...string]
			shape!:            string
			node_count?:       int
			database_edition?: string
			security_attributes?: [_]: string
			data_collection_options?: [...{
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
				is_diagnostics_events_enabled?: bool
			}]
			freeform_tags?: [_]: string
			subnet_id!:      string
			display_name?:   string
			compartment_id!: string
			backup_network_nsg_ids?: [...string]
			nsg_ids?: [...string]
			disk_redundancy?:                 string
			kms_key_version_id?:              string
			storage_volume_performance_mode?: string
			source_db_system_id?:             string
			private_ip?:                      string
			domain?:                          string
			db_home!: [...{
				database!: [...{
					db_domain?:   string
					db_workload?: string
					kms_key_id?:  string
					pluggable_databases?: [...string]
					database_id?:         string
					backup_tde_password?: string
					vault_id?:            string
					admin_password!:      string
					pdb_name?:            string
					freeform_tags?: [_]: string
					tde_wallet_password?: string
					backup_id?:           string
					db_unique_name?:      string
					defined_tags?: [_]: string
					db_name?:                    string
					database_software_image_id?: string
					character_set?:              string
					kms_key_version_id?:         string
					ncharacter_set?:             string
					db_backup_config?: [...{
						recovery_window_in_days?:   int
						run_immediate_full_backup?: bool
						auto_backup_enabled?:       bool
						auto_backup_window?:        string
						auto_full_backup_day?:      *"SUNDAY" | string
						auto_full_backup_window?:   string
						backup_deletion_policy?:    string
						backup_destination_details?: [...{
							type?:           string
							dbrs_policy_id?: string
							id?:             string
						}]
					}]
					time_stamp_for_point_in_time_recovery?: string
				}]
				display_name?: string
				freeform_tags?: [_]: string
				create_async?: *false | bool
				defined_tags?: [_]: string
				db_version?:                  string
				database_software_image_id?:  string
				is_unified_auditing_enabled?: bool
			}]
			ssh_public_keys!: [...string]
			backup_subnet_id?:        string
			kms_key_id?:              string
			source?:                  string
			availability_domain!:     string
			hostname!:                string
			cluster_name?:            string
			data_storage_percentage?: int
			reco_storage_size_in_gb?: int
		}
		exadata_iorm_config: {
			db_plans!: [...{
				db_name!: string
				share!:   int
			}]
			db_system_id!: string
			objective?:    string
		}
		migration: db_system_id!: string
		key_store: {
			defined_tags?: [_]: string
			confirm_details_trigger?: int
			compartment_id!:          string
			type_details!: [...{
				secret_id!:      string
				type!:           string
				vault_id!:       string
				admin_username!: string
				connection_ips!: [...string]
			}]
			display_name!: string
			freeform_tags?: [_]: string
		}
		vm_cluster_add_virtual_machine: {
			vm_cluster_id!: string
			db_servers!: [...{
				db_server_id!: string
			}]
		}
		vm_cluster_network: {
			dns?: [...string]
			freeform_tags?: [_]: string
			action?: string
			defined_tags?: [_]: string
			ntp?: [...string]
			dr_scans?: [...{
				hostname!: string
				ips!: [...string]
				scan_listener_port_tcp!: int
			}]
			compartment_id!:            string
			exadata_infrastructure_id!: string
			display_name!:              string
			scans!: [...{
				hostname!: string
				ips!: [...string]
				port?:                       int
				scan_listener_port_tcp?:     int
				scan_listener_port_tcp_ssl?: int
			}]
			vm_networks!: [...{
				gateway?:      string
				netmask?:      string
				vlan_id?:      string
				network_type!: string
				nodes!: [...{
					vip?:          string
					vip_hostname?: string
					hostname!:     string
					ip!:           string
					db_server_id?: string
					state?:        string
				}]
				domain_name?: string
			}]
			validate_vm_cluster_network?: *false | bool
		}
		vm_cluster_remove_virtual_machine: {
			db_servers!: [...{
				db_server_id!: string
			}]
			vm_cluster_id!: string
		}
		database: {
			kms_key_version_id?: string
			kms_key_id?:         string
			kms_key_rotation?:   int
			vault_id?:           string
			database!: [...{
				sid_prefix?:          string
				tde_wallet_password?: string
				kms_key_id?:          string
				ncharacter_set?:      string
				db_unique_name?:      string
				character_set?:       string
				pluggable_databases?: [...string]
				backup_tde_password?: string
				freeform_tags?: [_]: string
				backup_id?: string
				db_backup_config?: [...{
					auto_full_backup_window?: string
					backup_deletion_policy?:  string
					backup_destination_details?: [...{
						id?:             string
						type?:           string
						vpc_user?:       string
						dbrs_policy_id?: string
					}]
					recovery_window_in_days?:   int
					run_immediate_full_backup?: bool
					auto_backup_enabled?:       bool
					auto_backup_window?:        string
					auto_full_backup_day?:      *"SUNDAY" | string
				}]
				defined_tags?: [_]: string
				database_software_image_id?: string
				pdb_name?:                   string
				vault_id?:                   string
				db_workload?:                string
				kms_key_version_id?:         string
				admin_password!:             string
				db_name!:                    string
			}]
			db_home_id!:        string
			source!:            string
			kms_key_migration?: bool
			db_version?:        string
			key_store_id?:      string
		}
		exadata_infrastructure: {
			admin_network_cidr!: string
			time_zone!:          string
			ntp_server!: [...string]
			dns_server!: [...string]
			infini_band_network_cidr!: string
			create_async?:             *false | bool
			contacts?: [...{
				email!:                    string
				is_primary!:               bool
				name!:                     string
				is_contact_mos_validated?: bool
				phone_number?:             string
			}]
			shape!:                         string
			is_cps_offline_report_enabled?: bool
			freeform_tags?: [_]: string
			multi_rack_configuration_file?: string
			netmask!:                       string
			gateway!:                       string
			network_bonding_mode_details?: [...{
				dr_network_bonding_mode?:     string
				backup_network_bonding_mode?: string
				client_network_bonding_mode?: string
			}]
			cloud_control_plane_server1!: string
			display_name!:                string
			maintenance_window?: [...{
				is_monthly_patching_enabled?: bool
				lead_time_in_weeks?:          int
				weeks_of_month?: [...int]
				custom_action_timeout_in_mins?: int
				preference?:                    string
				skip_ru?: [...bool]
				is_custom_action_timeout_enabled?: bool
				months?: [...{
					name!: string
				}]
				patching_mode?: string
				days_of_week?: [...{
					name!: string
				}]
				hours_of_day?: [...int]
			}]
			cloud_control_plane_server2!: string
			activation_file?:             string
			additional_storage_count?:    int
			compartment_id!:              string
			compute_count?:               int
			storage_count?:               int
			is_multi_rack_deployment?:    bool
			defined_tags?: [_]: string
			corporate_proxy?: string
		}
		external_container_database_management: {
			external_database_connector_id!: string
			enable_management!:              bool
			license_model?:                  string
			external_container_database_id!: string
		}
		autonomous_container_database_dataguard_role_change: {
			autonomous_container_database_id!:                       string
			autonomous_container_database_dataguard_association_id!: string
			role!:                                                   string
			connection_strings_type?:                                string
		}
		exadata_infrastructure_storage: {
			admin_network_cidr!: string
			ntp_server!: [...string]
			activation_file?: string
			freeform_tags?: [_]: string
			time_zone!:                 string
			compartment_id!:            string
			exadata_infrastructure_id?: string
			storage_count?:             int
			defined_tags?: [_]: string
			netmask!:                     string
			cloud_control_plane_server1!: string
			contacts?: [...{
				name!:                     string
				is_contact_mos_validated?: bool
				phone_number?:             string
				email!:                    string
				is_primary!:               bool
			}]
			infini_band_network_cidr!: string
			corporate_proxy?:          string
			shape!:                    string
			dns_server!: [...string]
			gateway!:                     string
			compute_count?:               int
			cloud_control_plane_server2!: string
			display_name!:                string
			maintenance_window?: [...{
				preference!: string
				days_of_week?: [...{
					name!: string
				}]
				hours_of_day?: [...int]
				lead_time_in_weeks?: int
				months?: [...{
					name!: string
				}]
				weeks_of_month?: [...int]
			}]
		}
		autonomous_database_backup: {
			backup_destination_details?: [...{
				internet_proxy?: string
				vpc_password?:   string
				vpc_user?:       string
				type!:           string
				id?:             string
			}]
			autonomous_database_id!:   string
			is_long_term_backup?:      bool
			retention_period_in_days?: int
			display_name?:             string
		}
		autonomous_vm_cluster_ssl_certificate_management: {
			certificate_generation_type!: string
			ca_bundle_id?:                string
			certificate_authority_id?:    string
			certificate_id?:              string
			autonomous_vm_cluster_id!:    string
		}
		external_database_connector: {
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			connector_type?:       string
			display_name!:         string
			external_database_id!: string
			connection_credentials!: [...{
				ssl_secret_id?:   string
				username?:        string
				credential_name?: string
				credential_type?: string
				password?:        string
				role?:            string
			}]
			connector_agent_id!: string
			connection_string!: [...{
				port!:     int
				protocol!: string
				service!:  string
				hostname!: string
			}]
		}
		db_node_console_history: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			db_node_id!:   string
			display_name!: string
		}
		external_non_container_database_management: {
			external_database_connector_id!:     string
			external_non_container_database_id!: string
			enable_management!:                  bool
			license_model?:                      string
		}
		vm_cluster: {
			ocpu_count?:                  float
			is_sparse_diskgroup_enabled?: bool
			gi_version!:                  string
			data_storage_size_in_gb?:     float
			is_local_backup_enabled?:     bool
			freeform_tags?: [_]: string
			cloud_automation_update_details?: [...{
				is_freeze_period_enabled?: bool
				apply_update_time_preference?: [...{
					apply_update_preferred_end_time?:   string
					apply_update_preferred_start_time?: string
				}]
				freeze_period?: [...{
					freeze_period_end_time?:   string
					freeze_period_start_time?: string
				}]
				is_early_adoption_enabled?: bool
			}]
			defined_tags?: [_]: string
			data_storage_size_in_tbs?:    float
			compartment_id!:              string
			db_node_storage_size_in_gbs?: int
			display_name!:                string
			vm_cluster_network_id!:       string
			file_system_configuration_details?: [...{
				file_system_size_gb?: int
				mount_point?:         string
			}]
			time_zone?:                 string
			memory_size_in_gbs?:        int
			exadata_infrastructure_id!: string
			db_servers?: [...string]
			cpu_core_count!: int
			system_version?: string
			ssh_public_keys!: [...string]
			license_model?: string
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
		}
		autonomous_database_regional_wallet_management: {
			grace_period?:  int
			should_rotate?: *false | bool
		}
		backup_cancel_management: {
			backup_id!:             string
			cancel_backup_trigger?: int
		}
		cloud_exadata_infrastructure: {
			storage_count?: int
			customer_contacts?: [...{
				email?: string
			}]
			defined_tags?: [_]: string
			display_name!:    string
			subscription_id?: string
			maintenance_window?: [...{
				months?: [...{
					name!: string
				}]
				skip_ru?: [...bool]
				custom_action_timeout_in_mins?: int
				days_of_week?: [...{
					name!: string
				}]
				lead_time_in_weeks?: int
				patching_mode?:      string
				hours_of_day?: [...int]
				is_custom_action_timeout_enabled?: bool
				weeks_of_month?: [...int]
				is_monthly_patching_enabled?: bool
				preference?:                  string
			}]
			cluster_placement_group_id?: string
			freeform_tags?: [_]: string
			compute_count?:       int
			shape!:               string
			availability_domain!: string
			compartment_id!:      string
		}
		external_pluggable_database: {
			source_id?:      string
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			external_container_database_id!: string
		}
		autonomous_database_instance_wallet_management: {
			grace_period?:           int
			should_rotate?:          *false | bool
			autonomous_database_id!: string
		}
		db_home: {
			is_unified_auditing_enabled?: bool
			database_software_image_id?:  string
			defined_tags?: [_]: string
			enable_database_delete?: bool
			db_system_id?:           string
			kms_key_version_id?:     string
			database?: [...{
				pluggable_databases?: [...string]
				pdb_name?:                   string
				ncharacter_set?:             string
				backup_tde_password?:        string
				backup_id?:                  string
				vault_id?:                   string
				db_workload?:                string
				db_name?:                    string
				database_software_image_id?: string
				kms_key_id?:                 string
				kms_key_version_id?:         string
				defined_tags?: [_]: string
				database_id?:                           string
				admin_password!:                        string
				character_set?:                         string
				tde_wallet_password?:                   string
				key_store_id?:                          string
				time_stamp_for_point_in_time_recovery?: string
				db_backup_config?: [...{
					auto_backup_enabled?:     bool
					auto_backup_window?:      string
					auto_full_backup_day?:    *"SUNDAY" | string
					auto_full_backup_window?: string
					backup_deletion_policy?:  string
					backup_destination_details?: [...{
						id?:             string
						type?:           string
						dbrs_policy_id?: string
					}]
					recovery_window_in_days?:   int
					run_immediate_full_backup?: bool
				}]
				freeform_tags?: [_]: string
			}]
			db_version?: string
			kms_key_id?: string
			source?:     string
			freeform_tags?: [_]: string
			vm_cluster_id?:          string
			display_name?:           string
			is_desupported_version?: bool
		}
		externalpluggabledatabases_stack_monitoring: {
			enable_stack_monitoring!:        bool
			external_database_connector_id!: string
			external_pluggable_database_id!: string
		}
	}
}
#data: {
	cloud_autonomous_vm_cluster: cloud_autonomous_vm_cluster_id!: string
	autonomous_database_instance_wallet_management: autonomous_database_id!: string
	autonomous_database_dataguard_association: {
		autonomous_database_dataguard_association_id!: string
		autonomous_database_id!:                       string
	}
	autonomous_database_wallet: {
		generate_type?:          *"SINGLE" | string
		password!:               string
		autonomous_database_id!: string
		base64_encode_content?:  *false | bool
	}
	cloud_vm_cluster_iorm_config: cloud_vm_cluster_id!: string
	data_guard_association: {
		database_id!:               string
		data_guard_association_id!: string
	}
	data_guard_associations: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		database_id!: string
	}
	db_node_console_connection: {
		id!:         string
		db_node_id!: string
	}
	exadata_infrastructure: exadata_infrastructure_id!: string
	external_database_connector: external_database_connector_id!: string
	pluggable_database: pluggable_database_id!: string
	autonomous_database_backups: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		autonomous_database_id?: string
		compartment_id?:         string
		display_name?:           string
		state?:                  string
		type?:                   string
	}
	autonomous_vm_cluster_resource_usage: autonomous_vm_cluster_id!: string
	database: database_id!: string
	db_system_shapes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id!:      string
	}
	db_versions: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:                       string
		db_system_id?:                         string
		db_system_shape?:                      string
		is_database_software_image_supported?: bool
		is_upgrade_supported?:                 bool
		storage_management?:                   string
	}
	vm_cluster_recommended_network: {
		scan_listener_port_tcp_ssl?: int
		display_name!:               string
		freeform_tags?: [_]: string
		db_servers?: [...string]
		scan_listener_port_tcp?: int
		compartment_id!:         string
		defined_tags?: [_]: string
		exadata_infrastructure_id!: string
		ntp?: [...string]
		dr_scan_listener_port_tcp?: int
		dns?: [...string]
		networks!: [...{
			gateway!:      string
			netmask!:      string
			network_type!: string
			prefix!:       string
			vlan_id!:      string
			cidr!:         string
			domain!:       string
		}]
	}
	db_system_compute_performances: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		db_system_shape?: string
	}
	exadata_iorm_config: db_system_id!: string
	database_software_images: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:       string
		display_name?:         string
		image_shape_family?:   string
		image_type?:           string
		is_upgrade_supported?: bool
		state?:                string
	}
	databases: {
		compartment_id!: string
		db_home_id?:     string
		db_name?:        string
		state?:          string
		system_id?:      string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	db_system_patch_history_entries: {
		db_system_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	autonomous_database_dataguard_associations: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		autonomous_database_id!: string
	}
	autonomous_database_software_images: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:     string
		display_name?:       string
		image_shape_family!: string
	}
	autonomous_db_preview_versions: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	cloud_autonomous_vm_cluster_resource_usage: cloud_autonomous_vm_cluster_id!: string
	database_software_image: database_software_image_id!: string
	key_store: key_store_id!: string
	vm_cluster_updates: {
		state?:         string
		update_type?:   string
		vm_cluster_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	autonomous_databases: {
		is_free_tier?: bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:                     string
		db_workload?:                      string
		compartment_id!:                   string
		lifecycle_state_not_equal_to?:     string
		state?:                            string
		is_data_guard_enabled?:            bool
		is_resource_pool_leader?:          bool
		autonomous_container_database_id?: string
		db_version?:                       string
		resource_pool_leader_id?:          string
		infrastructure_type?:              string
		is_refreshable_clone?:             bool
	}
	backup_destinations: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		type?:           string
	}
	db_node_console_history_content: {
		console_history_id!: string
		db_node_id!:         string
	}
	gi_versions: {
		availability_domain?: string
		compartment_id!:      string
		shape?:               string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	vm_cluster_patches: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		vm_cluster_id!: string
	}
	database_upgrade_history_entries: {
		state?:          string
		upgrade_action?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		database_id!: string
	}
	db_systems_upgrade_history_entries: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		db_system_id!:   string
		state?:          string
		upgrade_action?: string
	}
	vm_cluster_network_download_config_file: {
		base64_encode_content?:     *false | bool
		exadata_infrastructure_id!: string
		vm_cluster_network_id!:     string
	}
	autonomous_container_database_dataguard_associations: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		autonomous_container_database_id!: string
	}
	autonomous_container_patches: {
		compartment_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		autonomous_container_database_id!: string
		autonomous_patch_type?:            string
	}
	db_servers: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:            string
		display_name?:              string
		exadata_infrastructure_id!: string
		state?:                     string
	}
	db_systems_upgrade_history_entry: {
		db_system_id!:             string
		upgrade_history_entry_id!: string
	}
	vm_cluster_patch_history_entry: {
		patch_history_entry_id!: string
		vm_cluster_id!:          string
	}
	autonomous_db_versions: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		db_workload?:    string
	}
	autonomous_vm_cluster: autonomous_vm_cluster_id!: string
	cloud_autonomous_vm_clusters: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain?:             string
		cloud_exadata_infrastructure_id?: string
	}
	database_pdb_conversion_history_entries: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		database_id!:           string
		pdb_conversion_action?: string
	}
	external_non_container_database: external_non_container_database_id!: string
	autonomous_container_database: autonomous_container_database_id!: string
	autonomous_container_database_versions: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:    string
		service_component!: string
	}
	db_node_console_connections: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		db_node_id!: string
	}
	maintenance_run_history: maintenance_run_history_id!: string
	vm_cluster_patch: {
		patch_id!:      string
		vm_cluster_id!: string
	}
	autonomous_vm_cluster_acd_resource_usages: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		autonomous_vm_cluster_id!: string
		compartment_id?:           string
	}
	db_node_console_histories: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		db_node_id!:   string
		display_name?: string
		state?:        string
	}
	external_container_databases: {
		display_name?: string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	external_database_connectors: {
		external_database_id!: string
		state?:                string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
	autonomous_database_peers: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		autonomous_database_id!: string
	}
	autonomous_database_regional_wallet_management: {}
	db_home_patches: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		db_home_id!: string
	}
	db_server: {
		db_server_id!:              string
		exadata_infrastructure_id!: string
	}
	autonomous_database_refreshable_clones: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		autonomous_database_id!: string
	}
	backup_destination: backup_destination_id!: string
	db_home_patch_history_entries: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		db_home_id!: string
	}
	exadata_infrastructures: {
		display_name?: string
		state?:        string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	flex_components: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		name?:           string
	}
	exascale_db_storage_vault: exascale_db_storage_vault_id!: string
	vm_cluster_patch_history_entries: {
		vm_cluster_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	database_upgrade_history_entry: {
		upgrade_history_entry_id!: string
		database_id!:              string
	}
	exascale_db_storage_vaults: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	external_pluggable_database: external_pluggable_database_id!: string
	maintenance_run: maintenance_run_id!: string
	oneoff_patch: oneoff_patch_id!: string
	vm_cluster_update_history_entry: {
		vm_cluster_id!:           string
		update_history_entry_id!: string
	}
	db_system_storage_performances: {
		storage_management!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		shape_type?: string
	}
	autonomous_container_databases: {
		compartment_id!:               string
		display_name?:                 string
		service_level_agreement_type?: string
		state?:                        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		autonomous_exadata_infrastructure_id?: string
		availability_domain?:                  string
		infrastructure_type?:                  string
		autonomous_vm_cluster_id?:             string
		cloud_autonomous_vm_cluster_id?:       string
	}
	autonomous_database_software_image: autonomous_database_software_image_id!: string
	autonomous_exadata_infrastructure_ocpu: autonomous_exadata_infrastructure_id!: string
	autonomous_virtual_machines: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		autonomous_vm_cluster_id!: string
		compartment_id!:           string
		state?:                    string
	}
	exadb_vm_cluster_updates: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		exadb_vm_cluster_id!: string
		update_type?:         string
		version?:             string
	}
	autonomous_databases_clones: {
		autonomous_database_id!: string
		clone_type?:             string
		compartment_id!:         string
		display_name?:           string
		state?:                  string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	system_versions: {
		shape!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		gi_version!:     string
	}
	external_container_database: external_container_database_id!: string
	oneoff_patches: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	vm_clusters: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:            string
		display_name?:              string
		exadata_infrastructure_id?: string
	}
	autonomous_container_database_resource_usage: autonomous_container_database_id!: string
	db_systems: {
		backup_id?:      string
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
	}
	exadb_vm_cluster_update: {
		exadb_vm_cluster_id!: string
		update_id!:           string
	}
	external_non_container_databases: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	vm_cluster_networks: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:            string
		display_name?:              string
		exadata_infrastructure_id!: string
		state?:                     string
	}
	key_stores: {
		compartment_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	vm_cluster: vm_cluster_id!: string
	autonomous_exadata_infrastructure: autonomous_exadata_infrastructure_id!: string
	autonomous_vm_clusters: {
		exadata_infrastructure_id?: string
		state?:                     string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
	db_system_patches: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		db_system_id!: string
	}
	exadb_vm_cluster: exadb_vm_cluster_id!: string
	infrastructure_target_version: {
		compartment_id!:       string
		target_resource_id?:   string
		target_resource_type?: string
	}
	external_pluggable_databases: {
		display_name?:                   string
		external_container_database_id?: string
		state?:                          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	autonomous_container_database_dataguard_association: {
		autonomous_container_database_dataguard_association_id!: string
		autonomous_container_database_id!:                       string
	}
	autonomous_database: autonomous_database_id!: string
	cloud_exadata_infrastructures: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		cluster_placement_group_id?: string
		compartment_id!:             string
		display_name?:               string
		state?:                      string
	}
	db_home: db_home_id!: string
	exadb_vm_clusters: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:               string
		display_name?:                 string
		exascale_db_storage_vault_id?: string
		state?:                        string
	}
	gi_version_minor_versions: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain?:            string
		compartment_id?:                 string
		is_gi_version_for_provisioning?: bool
		shape?:                          string
		shape_family?:                   string
		version!:                        string
	}
	autonomous_exadata_infrastructure_shapes: {
		compartment_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain!: string
	}
	autonomous_virtual_machine: autonomous_virtual_machine_id!: string
	cloud_exadata_infrastructure_un_allocated_resource: {
		cloud_exadata_infrastructure_id!: string
		db_servers?: [...string]
	}
	database_pdb_conversion_history_entry: {
		database_id!:                     string
		pdb_conversion_history_entry_id!: string
	}
	db_node: db_node_id!: string
	cloud_autonomous_vm_cluster_acd_resource_usages: {
		cloud_autonomous_vm_cluster_id!: string
		compartment_id?:                 string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	cloud_exadata_infrastructure: cloud_exadata_infrastructure_id!: string
	maintenance_run_histories: {
		availability_domain?:  string
		compartment_id!:       string
		maintenance_type?:     string
		state?:                string
		target_resource_id?:   string
		target_resource_type?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	autonomous_database_character_sets: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		character_set_type?: string
		is_dedicated?:       bool
		is_shared?:          bool
	}
	exadb_vm_cluster_update_history_entry: {
		exadb_vm_cluster_id!:     string
		update_history_entry_id!: string
	}
	vm_cluster_update: {
		update_id!:     string
		vm_cluster_id!: string
	}
	cloud_vm_cluster: cloud_vm_cluster_id!: string
	db_nodes: {
		db_server_id?:  string
		db_system_id?:  string
		state?:         string
		vm_cluster_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	exadata_infrastructure_download_config_file: {
		exadata_infrastructure_id!: string
		base64_encode_content?:     *false | bool
	}
	exadb_vm_cluster_update_history_entries: {
		update_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		exadb_vm_cluster_id!: string
	}
	exadata_infrastructure_un_allocated_resource: {
		db_servers?: [...string]
		exadata_infrastructure_id!: string
	}
	pluggable_databases: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		database_id?:    string
		pdb_name?:       string
		state?:          string
	}
	vm_cluster_network: {
		vm_cluster_network_id!:     string
		exadata_infrastructure_id!: string
	}
	application_vip: application_vip_id!: string
	autonomous_database_backup: autonomous_database_backup_id!: string
	backups: {
		database_id?:  string
		shape_family?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
	}
	cloud_vm_clusters: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		cloud_exadata_infrastructure_id?: string
		compartment_id!:                  string
		display_name?:                    string
	}
	db_node_console_history: {
		console_history_id!: string
		db_node_id!:         string
	}
	vm_cluster_update_history_entries: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		state?:         string
		update_type?:   string
		vm_cluster_id!: string
	}
	application_vips: {
		cloud_vm_cluster_id!: string
		compartment_id!:      string
		state?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	autonomous_patch: autonomous_patch_id!: string
	db_homes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		db_system_id?:   string
		state?:          string
		vm_cluster_id?:  string
		backup_id?:      string
		db_version?:     string
		display_name?:   string
	}
	autonomous_exadata_infrastructures: {
		availability_domain?: string
		compartment_id!:      string
		display_name?:        string
		state?:               string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	maintenance_runs: {
		compartment_id!:       string
		target_resource_id?:   string
		target_resource_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		state?:               string
		maintenance_subtype?: string
		maintenance_type?:    string
	}
}

