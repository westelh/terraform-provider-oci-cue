package database

#resource: {
	attributes: {
		autonomous_exadata_infrastructure: {
			last_maintenance_run_id: string
			next_maintenance_run_id: string
			state:                   string
			compartment_id!:         string
			hostname:                string
			lifecycle_details:       string
			domain?:                 string
			availability_domain!:    string
			time_created:            string
			license_model?:          string
			maintenance_window_details?: [...{
				custom_action_timeout_in_mins?: int
				skip_ru?: [...bool]
				weeks_of_month?: [...int]
				is_custom_action_timeout_enabled?: bool
				lead_time_in_weeks?:               int
				patching_mode?:                    string
				preference?:                       string
				days_of_week?: [...{
					name!: string
				}]
				hours_of_day?: [...int]
				is_monthly_patching_enabled?: bool
				months?: [...{
					name!: string
				}]
			}]
			shape!:        string
			create_async?: *false | bool
			defined_tags?: [_]: string
			subnet_id!: string
			zone_id:    string
			maintenance_window: [...{
				custom_action_timeout_in_mins: int
				days_of_week: [...{
					name: string
				}]
				is_monthly_patching_enabled:      bool
				patching_mode:                    string
				is_custom_action_timeout_enabled: bool
				lead_time_in_weeks:               int
				months: [...{
					name: string
				}]
				preference: string
				hours_of_day: [...int]
				weeks_of_month: [...int]
				skip_ru: [...bool]
			}]
			display_name?: string
			freeform_tags?: [_]: string
			scan_dns_name: string
			nsg_ids?: [...string]
		}
		autonomous_vm_cluster_ords_certificate_management: {
			certificate_id?:              string
			autonomous_vm_cluster_id!:    string
			certificate_generation_type!: string
			ca_bundle_id?:                string
			certificate_authority_id?:    string
		}
		cloud_vm_cluster_iorm_config: {
			lifecycle_details: string
			state:             string
			db_plans!: [...{
				db_name!:          string
				share!:            int
				flash_cache_limit: string
			}]
			cloud_vm_cluster_id!: string
			objective?:           string
		}
		exadata_iorm_config: {
			db_plans!: [...{
				flash_cache_limit: string
				db_name!:          string
				share!:            int
			}]
			db_system_id!:     string
			objective?:        string
			lifecycle_details: string
			state:             string
		}
		autonomous_container_database_dataguard_association_operation: {
			operation!:                                              string
			autonomous_container_database_dataguard_association_id!: string
			autonomous_container_database_id!:                       string
		}
		autonomous_database_backup: {
			time_ended:                string
			display_name?:             string
			is_restorable:             bool
			key_store_id:              string
			kms_key_id:                string
			is_long_term_backup?:      bool
			time_available_till:       string
			compartment_id:            string
			type:                      string
			vault_id:                  string
			autonomous_database_id!:   string
			retention_period_in_days?: int
			database_size_in_tbs:      float
			lifecycle_details:         string
			time_started:              string
			db_version:                string
			backup_destination_details?: [...{
				type!:           string
				id?:             string
				internet_proxy?: string
				vpc_password?:   string
				vpc_user?:       string
			}]
			size_in_tbs:           float
			state:                 string
			kms_key_version_id:    string
			is_automatic:          bool
			key_store_wallet_name: string
		}
		autonomous_database_saas_admin_user: {
			access_type?:                  string
			duration?:                     int
			password?:                     string
			secret_id?:                    string
			secret_version_number?:        int
			time_saas_admin_user_enabled?: string
			autonomous_database_id!:       string
		}
		external_pluggable_database_management: {
			external_database_connector_id!: string
			external_pluggable_database_id!: string
			enable_management!:              bool
		}
		migration: {
			cloud_vm_cluster_id: string
			db_system_id!:       string
			additional_migrations: [...{
				cloud_exadata_infrastructure_id: string
				cloud_vm_cluster_id:             string
				db_system_id:                    string
			}]
			cloud_exadata_infrastructure_id: string
		}
		autonomous_vm_cluster: {
			defined_tags?: [_]: string
			memory_size_in_gbs: int
			freeform_tags?: [_]: string
			scan_listener_port_tls?:                          int
			next_maintenance_run_id:                          string
			cpus_lowest_scaled_value:                         int
			reserved_cpus:                                    float
			time_ords_certificate_expires:                    string
			time_created:                                     string
			reclaimable_cpus:                                 int
			max_acds_lowest_scaled_value:                     int
			cpus_enabled:                                     int
			lifecycle_details:                                string
			non_provisionable_autonomous_container_databases: int
			available_container_databases:                    int
			total_container_databases?:                       int
			available_cpus:                                   int
			exadata_infrastructure_id!:                       string
			data_storage_size_in_tbs:                         float
			last_maintenance_run_id:                          string
			provisioned_autonomous_container_databases:       int
			compute_model?:                                   string
			db_servers?: [...string]
			exadata_storage_in_tbs_lowest_scaled_value:   float
			autonomous_data_storage_percentage:           float
			provisionable_autonomous_container_databases: int
			node_count:                                   int
			db_node_storage_size_in_gbs:                  int
			vm_cluster_network_id!:                       string
			is_mtls_enabled?:                             bool
			maintenance_window_details?: [...{
				custom_action_timeout_in_mins?:    int
				is_custom_action_timeout_enabled?: bool
				preference?:                       string
				skip_ru?: [...bool]
				days_of_week?: [...{
					name!: string
				}]
				hours_of_day?: [...int]
				months?: [...{
					name!: string
				}]
				patching_mode?: string
				weeks_of_month?: [...int]
				lead_time_in_weeks?:          int
				is_monthly_patching_enabled?: bool
			}]
			memory_per_oracle_compute_unit_in_gbs?:        int
			ocpus_enabled:                                 float
			data_storage_size_in_gb:                       float
			compartment_id!:                               string
			available_data_storage_size_in_tbs:            float
			cpu_percentage:                                float
			state:                                         string
			time_database_ssl_certificate_expires:         string
			total_autonomous_data_storage_in_tbs:          float
			license_model?:                                string
			provisioned_cpus:                              float
			available_autonomous_data_storage_size_in_tbs: float
			autonomous_data_storage_size_in_tbs?:          float
			maintenance_window: [...{
				patching_mode?: string
				skip_ru: [...bool]
				custom_action_timeout_in_mins?: int
				days_of_week: [...{
					name: string
				}]
				is_custom_action_timeout_enabled?: bool
				months: [...{
					name: string
				}]
				hours_of_day: [...int]
				is_monthly_patching_enabled?: bool
				preference:                   string
				lead_time_in_weeks:           int
				weeks_of_month: [...int]
			}]
			cpu_core_count_per_node?:    int
			scan_listener_port_non_tls?: int
			time_zone?:                  string
			is_local_backup_enabled?:    bool
			display_name!:               string
		}
		autonomous_vm_cluster_ssl_certificate_management: {
			certificate_authority_id?:    string
			certificate_id?:              string
			autonomous_vm_cluster_id!:    string
			certificate_generation_type!: string
			ca_bundle_id?:                string
		}
		vm_cluster: {
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
			data_storage_size_in_gb?:  float
			data_storage_size_in_tbs?: float
			ocpu_count?:               float
			compartment_id!:           string
			memory_size_in_gbs?:       int
			state:                     string
			db_servers?: [...string]
			vm_cluster_network_id!:      string
			lifecycle_details:           string
			display_name!:               string
			gi_version!:                 string
			shape:                       string
			last_patch_history_entry_id: string
			license_model?:              string
			time_zone?:                  string
			ocpus_enabled:               float
			is_local_backup_enabled?:    bool
			defined_tags?: [_]: string
			time_created:                 string
			db_node_storage_size_in_gbs?: int
			cpus_enabled:                 int
			is_sparse_diskgroup_enabled?: bool
			system_version?:              string
			ssh_public_keys!: [...string]
			file_system_configuration_details?: [...{
				mount_point?:         string
				file_system_size_gb?: int
			}]
			exadata_infrastructure_id!: string
			cloud_automation_update_details?: [...{
				apply_update_time_preference?: [...{
					apply_update_preferred_end_time?:   string
					apply_update_preferred_start_time?: string
				}]
				freeze_period?: [...{
					freeze_period_end_time?:   string
					freeze_period_start_time?: string
				}]
				is_early_adoption_enabled?: bool
				is_freeze_period_enabled?:  bool
			}]
			availability_domain: string
			freeform_tags?: [_]: string
			cpu_core_count!: int
		}
		backup_destination: {
			mount_type_details?: [...{
				nfs_server_export?:      string
				mount_type!:             string
				local_mount_point_path?: string
				nfs_server?: [...string]
			}]
			time_created: string
			freeform_tags?: [_]: string
			nfs_mount_type: string
			nfs_server: [...string]
			associated_databases: [...{
				db_name: string
				id:      string
			}]
			lifecycle_details:       string
			state:                   string
			local_mount_point_path?: string
			compartment_id!:         string
			display_name!:           string
			vpc_users?: [...string]
			nfs_server_export:  string
			type!:              string
			connection_string?: string
			defined_tags?: [_]: string
		}
		cloud_autonomous_vm_cluster: {
			license_model?:                                string
			available_autonomous_data_storage_size_in_tbs: float
			scan_listener_port_tls?:                       int
			db_servers?: [...string]
			cluster_time_zone?:                     string
			provisioned_cpus:                       float
			max_acds_lowest_scaled_value:           int
			scan_listener_port_non_tls?:            int
			cpu_core_count:                         int
			memory_per_oracle_compute_unit_in_gbs?: int
			cloud_exadata_infrastructure_id!:       string
			cpu_core_count_per_node?:               int
			ocpu_count:                             float
			is_mtls_enabled_vm_cluster?:            bool
			compute_model?:                         string
			data_storage_size_in_tbs:               float
			nsg_ids?: [...string]
			total_cpus: float
			freeform_tags?: [_]: string
			memory_size_in_gbs:          int
			db_node_storage_size_in_gbs: int
			defined_tags?: [_]: string
			maintenance_window_details?: [...{
				weeks_of_month?: [...int]
				skip_ru?: [...bool]
				custom_action_timeout_in_mins?: int
				days_of_week?: [...{
					name!: string
				}]
				hours_of_day?: [...int]
				is_custom_action_timeout_enabled?: bool
				patching_mode?:                    string
				is_monthly_patching_enabled?:      bool
				lead_time_in_weeks?:               int
				preference?:                       string
				months?: [...{
					name!: string
				}]
			}]
			node_count:                    int
			cpu_percentage:                float
			available_cpus:                float
			hostname:                      string
			lifecycle_details:             string
			time_ords_certificate_expires: string
			security_attributes?: [_]: string
			maintenance_window: [...{
				lead_time_in_weeks: int
				months: [...{
					name: string
				}]
				patching_mode: string
				hours_of_day: [...int]
				is_custom_action_timeout_enabled: bool
				is_monthly_patching_enabled:      bool
				preference:                       string
				weeks_of_month: [...int]
				skip_ru: [...bool]
				custom_action_timeout_in_mins: int
				days_of_week: [...{
					name: string
				}]
			}]
			exadata_storage_in_tbs_lowest_scaled_value:       float
			reserved_cpus:                                    float
			total_autonomous_data_storage_in_tbs:             float
			available_container_databases:                    int
			time_created:                                     string
			non_provisionable_autonomous_container_databases: int
			provisionable_autonomous_container_databases:     int
			domain:                                           string
			provisioned_autonomous_container_databases:       int
			display_name!:                                    string
			reclaimable_cpus:                                 float
			data_storage_size_in_gb:                          float
			last_update_history_entry_id:                     string
			state:                                            string
			time_updated?:                                    string
			time_database_ssl_certificate_expires:            string
			compartment_id!:                                  string
			subnet_id!:                                       string
			total_container_databases?:                       int
			ocpus_lowest_scaled_value:                        int
			autonomous_data_storage_size_in_tbs?:             float
			last_maintenance_run_id:                          string
			autonomous_data_storage_percentage:               float
			availability_domain:                              string
			next_maintenance_run_id:                          string
			shape:                                            string
			description?:                                     string
		}
		database: {
			key_store_wallet_name: string
			pdb_name:              string
			kms_key_migration?:    bool
			connection_strings: [...{
				all_connection_strings: [_]: string
				cdb_default:    string
				cdb_ip_default: string
			}]
			db_version?:                                      string
			compartment_id:                                   string
			db_system_id:                                     string
			database_software_image_id:                       string
			db_unique_name:                                   string
			db_home_id!:                                      string
			is_cdb:                                           bool
			ncharacter_set:                                   string
			last_backup_timestamp:                            string
			source_database_point_in_time_recovery_timestamp: string
			freeform_tags: [_]: string
			character_set:                string
			lifecycle_details:            string
			source!:                      string
			kms_key_version_id?:          string
			last_failed_backup_timestamp: string
			kms_key_id?:                  string
			time_created:                 string
			vault_id?:                    string
			database!: [...{
				kms_key_version_id?: string
				freeform_tags?: [_]: string
				kms_key_id?:                 string
				pdb_name?:                   string
				db_name!:                    string
				character_set?:              string
				database_software_image_id?: string
				pluggable_databases?: [...string]
				tde_wallet_password?: string
				db_unique_name?:      string
				backup_tde_password?: string
				sid_prefix?:          string
				ncharacter_set?:      string
				admin_password!:      string
				db_workload?:         string
				vault_id?:            string
				backup_id?:           string
				db_backup_config?: [...{
					auto_full_backup_day?:    *"SUNDAY" | string
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
				}]
				defined_tags?: [_]: string
			}]
			db_name:                         string
			db_workload:                     string
			last_backup_duration_in_seconds: int
			database_management_config: [...{
				management_type:   string
				management_status: string
			}]
			state: string
			defined_tags: [_]: string
			key_store_id?:     string
			kms_key_rotation?: int
			vm_cluster_id:     string
			sid_prefix:        string
			db_backup_config: [...{
				auto_full_backup_window: string
				backup_deletion_policy:  string
				backup_destination_details: [...{
					dbrs_policy_id: string
					id:             string
					type:           string
					vpc_user?:      string
				}]
				recovery_window_in_days:   int
				run_immediate_full_backup: bool
				auto_backup_enabled:       bool
				auto_backup_window:        string
				auto_full_backup_day:      string
			}]
		}
		exadata_infrastructure: {
			db_server_version:              string
			shape!:                         string
			create_async?:                  *false | bool
			display_name!:                  string
			infini_band_network_cidr!:      string
			multi_rack_configuration_file?: string
			lifecycle_details:              string
			dns_server!: [...string]
			defined_tags?: [_]: string
			ntp_server!: [...string]
			corporate_proxy?:           string
			activation_file?:           string
			compute_count?:             int
			max_db_node_storage_in_gbs: int
			max_memory_in_gbs:          int
			maintenance_window?: [...{
				is_monthly_patching_enabled?: bool
				preference?:                  string
				lead_time_in_weeks?:          int
				months?: [...{
					name!: string
				}]
				skip_ru?: [...bool]
				weeks_of_month?: [...int]
				custom_action_timeout_in_mins?: int
				hours_of_day?: [...int]
				is_custom_action_timeout_enabled?: bool
				days_of_week?: [...{
					name!: string
				}]
				patching_mode?: string
			}]
			additional_compute_system_model: string
			availability_domain:             string
			cloud_control_plane_server1!:    string
			netmask!:                        string
			rack_serial_number:              string
			additional_compute_count:        int
			additional_storage_count?:       int
			network_bonding_mode_details?: [...{
				backup_network_bonding_mode?: string
				client_network_bonding_mode?: string
				dr_network_bonding_mode?:     string
			}]
			db_node_storage_size_in_gbs: int
			max_data_storage_in_tbs:     float
			activated_storage_count:     int
			state:                       string
			storage_server_version:      string
			data_storage_size_in_tbs:    float
			time_created:                string
			defined_file_system_configurations: [...{
				min_size_gb:         int
				mount_point:         string
				is_backup_partition: bool
				is_resizable:        bool
			}]
			admin_network_cidr!: string
			freeform_tags?: [_]: string
			storage_count?: int
			contacts?: [...{
				phone_number?:             string
				email!:                    string
				is_primary!:               bool
				name!:                     string
				is_contact_mos_validated?: bool
			}]
			max_cpu_count:                  int
			monthly_db_server_version:      string
			csi_number:                     string
			maintenance_slo_status:         string
			gateway!:                       string
			time_zone!:                     string
			cloud_control_plane_server2!:   string
			compartment_id!:                string
			memory_size_in_gbs:             int
			cpus_enabled:                   int
			is_cps_offline_report_enabled?: bool
			is_multi_rack_deployment?:      bool
		}
		exadb_vm_cluster: {
			domain?:         string
			zone_id:         string
			grid_image_type: string
			display_name!:   string
			vip_ids: [...string]
			subnet_id!: string
			iorm_config_cache: [...{
				lifecycle_details: string
				objective:         string
				state:             string
				db_plans: [...{
					db_name:           string
					flash_cache_limit: string
					share:             int
				}]
			}]
			scan_dns_name:        string
			time_created:         string
			availability_domain!: string
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
			scan_listener_port_tcp?:     int
			scan_listener_port_tcp_ssl?: int
			hostname!:                   string
			cluster_name?:               string
			lifecycle_details:           string
			shape!:                      string
			node_config!: [...{
				total_ecpu_count_per_node!:                     int
				vm_file_system_storage_size_gbs_per_node!:      int
				memory_size_in_gbs_per_node:                    int
				snapshot_file_system_storage_size_gbs_per_node: int
				total_file_system_storage_size_gbs_per_node:    int
				enabled_ecpu_count_per_node!:                   int
			}]
			backup_network_nsg_ids?: [...string]
			nsg_ids?: [...string]
			backup_subnet_id!:             string
			exascale_db_storage_vault_id!: string
			gi_version:                    string
			scan_dns_record_id:            string
			license_model?:                string
			listener_port:                 string
			defined_tags?: [_]: string
			security_attributes?: [_]: string
			freeform_tags?: [_]: string
			state: string
			scan_ip_ids: [...string]
			ssh_public_keys!: [...string]
			compartment_id!:              string
			private_zone_id?:             string
			last_update_history_entry_id: string
			system_version?:              string
			system_tags: [_]: string
			node_resource?: [...{
				state:         string
				node_name!:    string
				node_id:       string
				node_hostname: string
			}]
			grid_image_id!: string
			time_zone?:     string
		}
		vm_cluster_add_virtual_machine: {
			ocpus_enabled:            float
			state:                    string
			gi_version:               string
			time_zone:                string
			data_storage_size_in_tbs: float
			ssh_public_keys: [...string]
			is_sparse_diskgroup_enabled: bool
			file_system_configuration_details: [...{
				mount_point:         string
				file_system_size_gb: int
			}]
			last_patch_history_entry_id: string
			freeform_tags: [_]: string
			lifecycle_details:       string
			is_local_backup_enabled: bool
			availability_domain:     string
			data_storage_size_in_gb: float
			license_model:           string
			vm_cluster_network_id:   string
			display_name:            string
			vm_cluster_id!:          string
			db_servers!: [...{
				db_server_id!: string
			}]
			system_version:              string
			db_node_storage_size_in_gbs: int
			shape:                       string
			cloud_automation_update_details: [...{
				apply_update_time_preference: [...{
					apply_update_preferred_start_time: string
					apply_update_preferred_end_time:   string
				}]
				freeze_period: [...{
					freeze_period_end_time:   string
					freeze_period_start_time: string
				}]
				is_early_adoption_enabled: bool
				is_freeze_period_enabled:  bool
			}]
			defined_tags: [_]: string
			memory_size_in_gbs: int
			cpus_enabled:       int
			data_collection_options: [...{
				is_incident_logs_enabled:      bool
				is_diagnostics_events_enabled: bool
				is_health_monitoring_enabled:  bool
			}]
			compartment_id:            string
			exadata_infrastructure_id: string
			time_created:              string
		}
		exadata_infrastructure_compute: {
			maintenance_window: [...{
				custom_action_timeout_in_mins: int
				days_of_week: [...{
					name: string
				}]
				is_monthly_patching_enabled?:     bool
				is_custom_action_timeout_enabled: bool
				lead_time_in_weeks:               int
				weeks_of_month: [...int]
				preference: string
				hours_of_day: [...int]
				months: [...{
					name: string
				}]
				patching_mode: string
			}]
			display_name:             string
			data_storage_size_in_tbs: float
			infini_band_network_cidr: string
			time_zone:                string
			shape:                    string
			contacts: [...{
				email:                    string
				is_primary:               bool
				name:                     string
				is_contact_mos_validated: bool
				phone_number:             string
			}]
			gateway:            string
			storage_count:      int
			memory_size_in_gbs: int
			compute_count:      int
			dns_server: [...string]
			corporate_proxy: string
			freeform_tags: [_]: string
			cloud_control_plane_server2:                        string
			create_async:                                       bool
			maintenance_slo_status:                             string
			max_cpu_count:                                      int
			state:                                              string
			time_created:                                       string
			storage_server_version:                             string
			additional_compute_count:                           int
			netmask:                                            string
			cpus_enabled:                                       int
			additional_compute_count_compute_managed_resource?: int
			admin_network_cidr:                                 string
			additional_storage_count:                           int
			defined_tags: [_]: string
			lifecycle_details:                                         string
			max_memory_in_gbs:                                         int
			additional_compute_system_model_compute_managed_resource?: string
			max_db_node_storage_in_gbs:                                int
			csi_number:                                                string
			is_cps_offline_report_enabled:                             bool
			exadata_infrastructure_id!:                                string
			activated_storage_count:                                   int
			activation_file?:                                          string
			additional_compute_system_model:                           string
			db_server_version:                                         string
			monthly_db_server_version:                                 string
			max_data_storage_in_tbs:                                   float
			cloud_control_plane_server1:                               string
			compartment_id:                                            string
			ntp_server: [...string]
			db_node_storage_size_in_gbs: int
		}
		autonomous_container_database: {
			key_store_id?:           string
			kms_key_id?:             string
			next_maintenance_run_id: string
			maintenance_window: [...{
				days_of_week: [...{
					name: string
				}]
				preference: string
				skip_ru: [...bool]
				custom_action_timeout_in_mins: int
				hours_of_day: [...int]
				is_monthly_patching_enabled:      bool
				is_custom_action_timeout_enabled: bool
				months: [...{
					name: string
				}]
				weeks_of_month: [...int]
				lead_time_in_weeks: int
				patching_mode:      string
			}]
			peer_autonomous_vm_cluster_id?: string
			defined_tags?: [_]: string
			time_snapshot_standby_revert:          string
			last_maintenance_run_id:               string
			autonomous_exadata_infrastructure_id?: string
			provisioned_cpus:                      float
			maintenance_window_details?: [...{
				is_custom_action_timeout_enabled?: bool
				custom_action_timeout_in_mins?:    int
				preference?:                       string
				skip_ru?: [...bool]
				hours_of_day?: [...int]
				is_monthly_patching_enabled?: bool
				weeks_of_month?: [...int]
				days_of_week?: [...{
					name!: string
				}]
				months?: [...{
					name!: string
				}]
				patching_mode?:      string
				lead_time_in_weeks?: int
			}]
			infrastructure_type:                                string
			reclaimable_cpus:                                   float
			peer_autonomous_container_database_compartment_id?: string
			patch_id:                                           string
			list_one_off_patches: [...string]
			db_name?:                                   string
			dst_file_version:                           string
			rotate_key_trigger?:                        bool
			protection_mode?:                           string
			is_automatic_failover_enabled?:             bool
			is_dst_file_update_enabled?:                bool
			peer_autonomous_exadata_infrastructure_id?: string
			memory_per_oracle_compute_unit_in_gbs:      int
			net_services_architecture?:                 string
			compartment_id?:                            string
			display_name!:                              string
			provisionable_cpus: [...float]
			distribution_affinity?: string
			freeform_tags?: [_]: string
			key_store_wallet_name:                      string
			standby_maintenance_buffer_in_days?:        int
			fast_start_fail_over_lag_limit_in_seconds?: int
			state:                                      string
			reserved_cpus:                              float
			time_created:                               string
			vault_id?:                                  string
			available_cpus:                             float
			autonomous_vm_cluster_id?:                  string
			db_split_threshold?:                        int
			vm_failover_reservation?:                   int
			service_level_agreement_type?:              string
			patch_model!:                               string
			database_software_image_id?:                string
			peer_cloud_autonomous_vm_cluster_id?:       string
			time_of_last_backup:                        string
			key_history_entry: [...{
				time_activated:     string
				vault_id:           string
				id:                 string
				kms_key_version_id: string
			}]
			compute_model:       string
			lifecycle_details:   string
			version_preference?: string
			peer_autonomous_container_database_backup_config?: [...{
				recovery_window_in_days?: int
				backup_destination_details?: [...{
					vpc_user?:       string
					type!:           string
					id?:             string
					internet_proxy?: string
					vpc_password?:   string
				}]
			}]
			availability_domain:             string
			cloud_autonomous_vm_cluster_id?: string
			total_cpus:                      int
			db_unique_name?:                 string
			db_version?:                     string
			role:                            string
			backup_config?: [...{
				backup_destination_details?: [...{
					vpc_user?:       string
					type!:           string
					id?:             string
					internet_proxy?: string
					vpc_password?:   string
				}]
				recovery_window_in_days?: int
			}]
			peer_autonomous_container_database_display_name?:  string
			largest_provisionable_autonomous_database_in_cpus: float
			peer_db_unique_name?:                              string
		}
		cloud_exadata_infrastructure: {
			max_memory_in_gbs:              int
			monthly_db_server_version:      string
			subscription_id?:               string
			shape!:                         string
			total_storage_size_in_gbs:      int
			cpu_count:                      int
			data_storage_size_in_tbs:       float
			db_server_version:              string
			monthly_storage_server_version: string
			cluster_placement_group_id?:    string
			next_maintenance_run_id:        string
			customer_contacts?: [...{
				email?: string
			}]
			state:                       string
			db_node_storage_size_in_gbs: int
			defined_file_system_configurations: [...{
				is_resizable:        bool
				min_size_gb:         int
				mount_point:         string
				is_backup_partition: bool
			}]
			activated_storage_count:    int
			memory_size_in_gbs:         int
			max_cpu_count:              int
			max_db_node_storage_in_gbs: int
			additional_storage_count:   int
			availability_domain!:       string
			storage_server_version:     string
			lifecycle_details:          string
			defined_tags?: [_]: string
			maintenance_window?: [...{
				patching_mode?:                    string
				preference?:                       string
				is_custom_action_timeout_enabled?: bool
				is_monthly_patching_enabled?:      bool
				days_of_week?: [...{
					name!: string
				}]
				hours_of_day?: [...int]
				months?: [...{
					name!: string
				}]
				skip_ru?: [...bool]
				weeks_of_month?: [...int]
				lead_time_in_weeks?:            int
				custom_action_timeout_in_mins?: int
			}]
			time_created: string
			freeform_tags?: [_]: string
			available_storage_size_in_gbs: int
			display_name!:                 string
			max_data_storage_in_tbs:       float
			system_tags: [_]: string
			compartment_id!:         string
			last_maintenance_run_id: string
			compute_count?:          int
			storage_count?:          int
		}
		db_system: {
			availability_domain!: string
			database_edition?:    string
			lifecycle_details:    string
			nsg_ids?: [...string]
			backup_network_nsg_ids?: [...string]
			subnet_id!:                              string
			point_in_time_data_disk_clone_timestamp: string
			state:                                   string
			db_system_options?: [...{
				storage_management?: string
			}]
			cluster_name?:     string
			sparse_diskgroup?: bool
			freeform_tags?: [_]: string
			source_db_system_id?:     string
			time_zone?:               string
			compartment_id!:          string
			listener_port:            int
			backup_subnet_id?:        string
			data_storage_percentage?: int
			data_storage_size_in_gb?: int
			license_model?:           string
			scan_dns_record_id:       string
			display_name?:            string
			scan_ip_ids: [...string]
			security_attributes?: [_]: string
			private_ip?: string
			iorm_config_cache: [...{
				state:        string
				db_system_id: string
				db_plans: [...{
					db_name:           string
					flash_cache_limit: string
					share:             int
				}]
				lifecycle_details: string
				objective:         string
			}]
			disk_redundancy?: string
			maintenance_window: [...{
				is_custom_action_timeout_enabled: bool
				patching_mode:                    string
				is_monthly_patching_enabled:      bool
				preference:                       string
				hours_of_day: [...int]
				days_of_week: [...{
					name: string
				}]
				months: [...{
					name: string
				}]
				skip_ru: [...bool]
				custom_action_timeout_in_mins: int
				weeks_of_month: [...int]
				lead_time_in_weeks: int
			}]
			maintenance_window_details?: [...{
				hours_of_day?: [...int]
				is_custom_action_timeout_enabled?: bool
				is_monthly_patching_enabled?:      bool
				skip_ru?: [...bool]
				months?: [...{
					name?: string
				}]
				weeks_of_month?: [...int]
				lead_time_in_weeks?:            int
				patching_mode?:                 string
				custom_action_timeout_in_mins?: int
				days_of_week?: [...{
					name?: string
				}]
				preference?: string
			}]
			defined_tags?: [_]: string
			version:     string
			node_count?: int
			fault_domains?: [...string]
			shape!: string
			data_collection_options?: [...{
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
				is_diagnostics_events_enabled?: bool
			}]
			time_created:                     string
			last_patch_history_entry_id:      string
			reco_storage_size_in_gb?:         int
			domain?:                          string
			storage_volume_performance_mode?: string
			vip_ids: [...string]
			next_maintenance_run_id: string
			zone_id:                 string
			ssh_public_keys!: [...string]
			kms_key_version_id?:     string
			last_maintenance_run_id: string
			source?:                 string
			scan_dns_name:           string
			os_version:              string
			cpu_core_count?:         int
			kms_key_id?:             string
			db_home!: [...{
				last_patch_history_entry_id: string
				database!: [...{
					kms_key_version_id?:         string
					state:                       string
					kms_key_id?:                 string
					lifecycle_details:           string
					backup_id?:                  string
					pdb_name?:                   string
					vault_id?:                   string
					db_domain?:                  string
					db_workload?:                string
					time_created:                string
					db_name?:                    string
					tde_wallet_password?:        string
					character_set?:              string
					database_id?:                string
					database_software_image_id?: string
					connection_strings: [...{
						all_connection_strings: [_]: string
						cdb_default:    string
						cdb_ip_default: string
					}]
					defined_tags?: [_]: string
					time_stamp_for_point_in_time_recovery?: string
					ncharacter_set?:                        string
					id:                                     string
					freeform_tags?: [_]: string
					db_unique_name?: string
					admin_password!: string
					db_backup_config?: [...{
						run_immediate_full_backup?: bool
						auto_backup_enabled?:       bool
						auto_backup_window?:        string
						auto_full_backup_day?:      *"SUNDAY" | string
						auto_full_backup_window?:   string
						backup_deletion_policy?:    string
						backup_destination_details?: [...{
							dbrs_policy_id?: string
							id?:             string
							type?:           string
						}]
						recovery_window_in_days?: int
					}]
					pluggable_databases?: [...string]
					backup_tde_password?: string
				}]
				defined_tags?: [_]: string
				create_async?:     *false | bool
				state:             string
				id:                string
				lifecycle_details: string
				db_home_location:  string
				time_created:      string
				db_version?:       string
				display_name?:     string
				freeform_tags?: [_]: string
				is_unified_auditing_enabled?: bool
				database_software_image_id?:  string
			}]
			hostname!:          string
			memory_size_in_gbs: int
		}
		externalcontainerdatabases_stack_monitoring: {
			enable_stack_monitoring!:        bool
			external_container_database_id!: string
			external_database_connector_id!: string
		}
		autonomous_container_database_dataguard_role_change: {
			role!:                                                   string
			connection_strings_type?:                                string
			autonomous_container_database_id!:                       string
			autonomous_container_database_dataguard_association_id!: string
		}
		externalnoncontainerdatabases_stack_monitoring: {
			external_database_connector_id!:     string
			external_non_container_database_id!: string
			enable_stack_monitoring!:            bool
		}
		external_non_container_database_management: {
			license_model?:                      string
			external_database_connector_id!:     string
			external_non_container_database_id!: string
			enable_management!:                  bool
		}
		backup_cancel_management: {
			backup_id!:             string
			cancel_backup_trigger?: int
		}
		cloud_database_management: {
			credentialdetails!: [...{
				user_name!:          string
				password_secret_id!: string
			}]
			protocol?:             string
			ssl_secret_id?:        string
			database_id!:          string
			enable_management!:    bool
			service_name!:         string
			port?:                 int
			management_type!:      string
			role?:                 string
			private_end_point_id!: string
		}
		exascale_db_storage_vault: {
			state: string
			vm_cluster_ids: [...string]
			defined_tags?: [_]: string
			availability_domain!: string
			high_capacity_database_storage!: [...{
				total_size_in_gbs!:    int
				available_size_in_gbs: int
			}]
			freeform_tags?: [_]: string
			description?: string
			system_tags: [_]: string
			additional_flash_cache_in_percent?: int
			time_zone?:                         string
			vm_cluster_count:                   int
			lifecycle_details:                  string
			time_created:                       string
			compartment_id!:                    string
			display_name!:                      string
		}
		pluggable_database: {
			refreshable_clone_config: [...{
				is_refreshable_clone: bool
			}]
			container_database_id!: string
			rotate_key_trigger?:    int
			pdb_node_level_details: [...{
				node_name: string
				open_mode: string
			}]
			convert_to_regular_trigger?: int
			lifecycle_details:           string
			pluggable_database_management_config: [...{
				management_status: string
			}]
			pdb_name!:                           string
			should_create_pdb_backup?:           bool
			should_pdb_admin_account_be_locked?: bool
			is_restricted:                       bool
			defined_tags?: [_]: string
			tde_wallet_password?: string
			kms_key_version_id?:  string
			time_created:         string
			compartment_id:       string
			connection_strings: [...{
				all_connection_strings: [_]: string
				pdb_default:    string
				pdb_ip_default: string
			}]
			state: string
			freeform_tags?: [_]: string
			pdb_creation_type_details?: [...{
				is_thin_clone?: bool
				refreshable_clone_details?: [...{
					is_refreshable_clone?: bool
				}]
				source_container_database_admin_password?: string
				creation_type!:                            string
				source_pluggable_database_id!:             string
				dblink_user_password?:                     string
				dblink_username?:                          string
			}]
			container_database_admin_password?: string
			open_mode:                          string
			pdb_admin_password?:                string
			refresh_trigger?:                   int
		}
		vm_cluster_remove_virtual_machine: {
			lifecycle_details: string
			freeform_tags: [_]: string
			system_version:          string
			time_created:            string
			is_local_backup_enabled: bool
			display_name:            string
			gi_version:              string
			data_collection_options: [...{
				is_diagnostics_events_enabled: bool
				is_health_monitoring_enabled:  bool
				is_incident_logs_enabled:      bool
			}]
			cloud_automation_update_details: [...{
				is_freeze_period_enabled: bool
				apply_update_time_preference: [...{
					apply_update_preferred_end_time:   string
					apply_update_preferred_start_time: string
				}]
				freeze_period: [...{
					freeze_period_end_time:   string
					freeze_period_start_time: string
				}]
				is_early_adoption_enabled: bool
			}]
			defined_tags: [_]: string
			data_storage_size_in_tbs:    float
			vm_cluster_network_id:       string
			availability_domain:         string
			is_sparse_diskgroup_enabled: bool
			state:                       string
			last_patch_history_entry_id: string
			ssh_public_keys: [...string]
			db_servers!: [...{
				db_server_id!: string
			}]
			exadata_infrastructure_id:   string
			compartment_id:              string
			cpus_enabled:                int
			memory_size_in_gbs:          int
			vm_cluster_id!:              string
			time_zone:                   string
			license_model:               string
			db_node_storage_size_in_gbs: int
			file_system_configuration_details: [...{
				file_system_size_gb: int
				mount_point:         string
			}]
			shape: string
		}
		application_vip: {
			time_assigned:  string
			ip_address?:    string
			compartment_id: string
			defined_tags: [_]: string
			freeform_tags: [_]: string
			hostname_label!:      string
			subnet_id!:           string
			lifecycle_details:    string
			state:                string
			cloud_vm_cluster_id!: string
			db_node_id?:          string
		}
		autonomous_database_software_image: {
			freeform_tags?: [_]: string
			autonomous_dsi_one_off_patches: [...string]
			image_shape_family!: string
			lifecycle_details:   string
			release_update:      string
			time_created:        string
			compartment_id!:     string
			display_name!:       string
			defined_tags?: [_]: string
			database_version: string
			state:            string
			source_cdb_id!:   string
		}
		autonomous_database_wallet: {
			base64_encode_content?:  *false | bool
			generate_type?:          *"SINGLE" | string
			is_regional?:            bool
			content:                 string
			autonomous_database_id!: string
			password!:               string
		}
		external_non_container_database_operations_insights_management: {
			enable_operations_insights!:         bool
			external_database_connector_id!:     string
			external_non_container_database_id!: string
		}
		db_node_console_connection: {
			service_host_key_fingerprint: string
			freeform_tags?: [_]: string
			connection_string: string
			db_node_id!:       string
			lifecycle_details: string
			state:             string
			public_key!:       string
			defined_tags?: [_]: string
			compartment_id: string
			fingerprint:    string
		}
		external_non_container_database: {
			stack_monitoring_config: [...{
				stack_monitoring_connector_id: string
				stack_monitoring_status:       string
			}]
			compartment_id!:  string
			database_edition: string
			ncharacter_set:   string
			defined_tags?: [_]: string
			database_management_config: [...{
				license_model:                     string
				database_management_connection_id: string
				database_management_status:        string
			}]
			state:         string
			time_created:  string
			db_id:         string
			character_set: string
			operations_insights_config: [...{
				operations_insights_status:       string
				operations_insights_connector_id: string
			}]
			display_name!:          string
			database_version:       string
			db_packs:               string
			db_unique_name:         string
			database_configuration: string
			lifecycle_details:      string
			time_zone:              string
			freeform_tags?: [_]: string
		}
		external_pluggable_database: {
			time_created: string
			operations_insights_config: [...{
				operations_insights_connector_id: string
				operations_insights_status:       string
			}]
			freeform_tags?: [_]: string
			database_management_config: [...{
				license_model:                     string
				database_management_connection_id: string
				database_management_status:        string
			}]
			db_packs:         string
			database_edition: string
			stack_monitoring_config: [...{
				stack_monitoring_connector_id: string
				stack_monitoring_status:       string
			}]
			display_name!:     string
			character_set:     string
			lifecycle_details: string
			ncharacter_set:    string
			database_version:  string
			defined_tags?: [_]: string
			state:                           string
			external_container_database_id!: string
			database_configuration:          string
			db_unique_name:                  string
			compartment_id!:                 string
			db_id:                           string
			time_zone:                       string
			source_id?:                      string
		}
		vm_cluster_network: {
			validate_vm_cluster_network?: *false | bool
			compartment_id!:              string
			ntp?: [...string]
			freeform_tags?: [_]: string
			vm_cluster_id: string
			display_name!: string
			time_created:  string
			vm_networks!: [...{
				netmask?:      string
				vlan_id?:      string
				network_type!: string
				nodes!: [...{
					hostname!:     string
					ip!:           string
					db_server_id?: string
					state?:        string
					vip?:          string
					vip_hostname?: string
				}]
				domain_name?: string
				gateway?:     string
			}]
			dns?: [...string]
			dr_scans?: [...{
				hostname!: string
				ips!: [...string]
				scan_listener_port_tcp!: int
			}]
			exadata_infrastructure_id!: string
			scans!: [...{
				ips!: [...string]
				port?:                       int
				scan_listener_port_tcp?:     int
				scan_listener_port_tcp_ssl?: int
				hostname!:                   string
			}]
			defined_tags?: [_]: string
			state:             string
			lifecycle_details: string
			action?:           string
		}
		db_systems_upgrade: {
			time_created:                              string
			reco_storage_size_in_gb:                   int
			last_patch_history_entry_id:               string
			is_snapshot_retention_days_force_updated?: bool
			hostname:                                  string
			shape:                                     string
			database_edition:                          string
			nsg_ids: [...string]
			scan_ip_ids: [...string]
			next_maintenance_run_id: string
			cpu_core_count:          int
			availability_domain:     string
			last_maintenance_run_id: string
			fault_domains: [...string]
			state: string
			ssh_public_keys: [...string]
			lifecycle_details:                  string
			version:                            string
			domain:                             string
			snapshot_retention_period_in_days?: int
			backup_network_nsg_ids: [...string]
			data_storage_percentage: int
			defined_tags: [_]: string
			new_gi_version?:    string
			scan_dns_record_id: string
			vip_ids: [...string]
			iorm_config_cache: [...{
				lifecycle_details: string
				objective:         string
				state:             string
				db_plans: [...{
					db_name:           string
					flash_cache_limit: string
					share:             int
				}]
			}]
			display_name:            string
			disk_redundancy:         string
			source_db_system_id:     string
			data_storage_size_in_gb: int
			maintenance_window: [...{
				weeks_of_month: [...int]
				days_of_week: [...{
					name: string
				}]
				hours_of_day: [...int]
				lead_time_in_weeks: int
				months: [...{
					name: string
				}]
				preference: string
			}]
			cluster_name:   string
			listener_port:  int
			compartment_id: string
			db_system_options: [...{
				storage_management: string
			}]
			sparse_diskgroup: bool
			action!:          string
			freeform_tags: [_]: string
			scan_dns_name:                           string
			subnet_id:                               string
			db_system_id!:                           string
			license_model:                           string
			node_count:                              int
			zone_id:                                 string
			backup_subnet_id:                        string
			point_in_time_data_disk_clone_timestamp: string
			kms_key_id:                              string
			time_zone:                               string
			new_os_version?:                         string
		}
		exadata_infrastructure_storage: {
			max_db_node_storage_in_gbs: int
			defined_tags?: [_]: string
			storage_count?:               int
			additional_storage_count:     int
			cloud_control_plane_server1!: string
			csi_number:                   string
			compute_count?:               int
			compartment_id!:              string
			memory_size_in_gbs:           int
			max_data_storage_in_tbs:      float
			max_memory_in_gbs:            int
			netmask!:                     string
			freeform_tags?: [_]: string
			data_storage_size_in_tbs: float
			contacts?: [...{
				phone_number?:             string
				email!:                    string
				is_primary!:               bool
				name!:                     string
				is_contact_mos_validated?: bool
			}]
			corporate_proxy?:             string
			cpus_enabled:                 int
			max_cpu_count:                int
			gateway!:                     string
			activated_storage_count:      int
			activation_file?:             string
			time_created:                 string
			display_name!:                string
			db_node_storage_size_in_gbs:  int
			state:                        string
			shape!:                       string
			lifecycle_details:            string
			cloud_control_plane_server2!: string
			maintenance_slo_status:       string
			exadata_infrastructure_id?:   string
			infini_band_network_cidr!:    string
			time_zone!:                   string
			admin_network_cidr!:          string
			dns_server!: [...string]
			maintenance_window?: [...{
				months?: [...{
					name!: string
				}]
				weeks_of_month?: [...int]
				preference!: string
				days_of_week?: [...{
					name!: string
				}]
				hours_of_day?: [...int]
				lead_time_in_weeks?: int
			}]
			ntp_server!: [...string]
		}
		autonomous_database_regional_wallet_management: {
			should_rotate?: *false | bool
			state:          string
			time_rotated:   string
			grace_period?:  int
		}
		backup: {
			kms_key_version_id:    string
			availability_domain:   string
			key_store_id:          string
			kms_key_id:            string
			type:                  string
			database_id!:          string
			vault_id:              string
			display_name!:         string
			state:                 string
			time_ended:            string
			lifecycle_details:     string
			version:               string
			compartment_id:        string
			time_started:          string
			database_size_in_gbs:  float
			shape:                 string
			key_store_wallet_name: string
			database_edition:      string
		}
		pluggable_database_pluggabledatabasemanagements_management: {
			pluggable_database_id!: string
			compartment_id:         string
			defined_tags: [_]: string
			is_restricted:                       bool
			enable_pluggabledatabasemanagement!: bool
			private_end_point_id!:               string
			freeform_tags: [_]: string
			protocol?:             string
			service_name!:         string
			container_database_id: string
			port?:                 int
			role?:                 string
			connection_strings: [...{
				enable_pluggabledatabasemanagement!: bool
				all_connection_strings: [_]: string
				pdb_default:    string
				pdb_ip_default: string
			}]
			pluggable_database_management_config: [...{
				enable_pluggabledatabasemanagement!: bool
				management_status:                   string
			}]
			credential_details!: [...{
				password_secret_id!: string
				user_name!:          string
			}]
			ssl_secret_id?:    string
			state:             string
			lifecycle_details: string
			open_mode:         string
			pdb_name:          string
			time_created:      string
		}
		autonomous_database: {
			is_replicate_automatic_backups?: bool
			provisionable_cpus: [...float]
			secret_version_number?: int
			whitelisted_ips?: [...string]
			backup_retention_period_in_days?: int
			database_edition?:                string
			db_tools_details?: [...{
				name!:                     string
				compute_count?:            float
				is_enabled?:               bool
				max_idle_time_in_minutes?: int
			}]
			allocated_storage_size_in_tbs: float
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
			standby_db: [...{
				state:                               string
				time_data_guard_role_changed:        string
				time_disaster_recovery_role_changed: string
				availability_domain:                 string
				lag_time_in_seconds:                 int
				lifecycle_details:                   string
			}]
			kms_key_id?:                         string
			data_storage_size_in_gb?:            int
			license_model?:                      string
			compartment_id!:                     string
			is_mtls_connection_required?:        bool
			time_disaster_recovery_role_changed: string
			time_created:                        string
			db_version?:                         string
			data_storage_size_in_tbs?:           int
			key_history_entry: [...{
				vault_id:           string
				id:                 string
				kms_key_version_id: string
				time_activated:     string
			}]
			display_name?: string
			encryption_key_history_entry: [...{
				encryption_key: [...{
					service_endpoint_uri:         string
					directory_name:               string
					key_arn:                      string
					okv_uri:                      string
					okv_kms_key:                  string
					arn_role:                     string
					external_id:                  string
					kms_key_id:                   string
					key_name:                     string
					vault_id:                     string
					certificate_id:               string
					vault_uri:                    string
					autonomous_database_provider: string
					certificate_directory_name:   string
				}]
				time_activated: string
			}]
			used_data_storage_size_in_gbs:             int
			database_management_status?:               string
			in_memory_area_in_gbs:                     int
			use_latest_available_backup_time_stamp?:   bool
			actual_used_data_storage_size_in_tbs:      float
			is_shrink_only?:                           bool
			time_deletion_of_free_autonomous_database: string
			ocpu_count?:                               float
			is_refreshable_clone?:                     bool
			freeform_tags?: [_]: string
			time_undeleted:                   string
			rotate_key_trigger?:              bool
			time_data_guard_role_changed:     string
			open_mode?:                       string
			time_of_next_refresh:             string
			data_safe_status?:                string
			is_access_control_enabled?:       bool
			refreshable_status:               string
			next_long_term_backup_time_stamp: string
			source?:                          string
			admin_password?:                  string
			remote_disaster_recovery_configuration: [...{
				time_snapshot_standby_enabled_till: string
				disaster_recovery_type:             string
				is_replicate_automatic_backups:     bool
				is_snapshot_standby:                bool
			}]
			lifecycle_details:              string
			autonomous_database_backup_id?: string
			net_services_architecture:      string
			switchover_to_remote_peer_id?:  string
			time_of_joining_resource_pool:  string
			switchover_to?:                 string
			kms_key_version_id:             string
			disaster_recovery_type?:        string
			cluster_placement_group_id:     string
			connection_strings: [...{
				dedicated: string
				high:      string
				low:       string
				medium:    string
				profiles: [...{
					value:              string
					host_format:        string
					session_mode:       string
					display_name:       string
					syntax_format:      string
					tls_authentication: string
					consumer_group:     string
					is_regional:        bool
					protocol:           string
				}]
				all_connection_strings: [_]: string
			}]
			autonomous_maintenance_schedule_type?: string
			remote_disaster_recovery_type?:        string
			secret_id?:                            string
			key_store_id:                          string
			connection_urls: [...{
				mongo_db_url:                         string
				ords_url:                             string
				sql_dev_web_url:                      string
				apex_url:                             string
				database_transforms_url:              string
				graph_studio_url:                     string
				machine_learning_notebook_url:        string
				machine_learning_user_management_url: string
			}]
			security_attributes?: [_]: string
			total_backup_storage_size_in_gbs:     float
			private_endpoint_ip?:                 string
			private_endpoint_label?:              string
			is_auto_scaling_for_storage_enabled?: bool
			infrastructure_type:                  string
			subnet_id?:                           string
			resource_pool_summary?: [...{
				is_disabled?: bool
				pool_size?:   int
			}]
			db_name!: string
			customer_contacts?: [...{
				email?: string
			}]
			time_maintenance_begin: string
			ncharacter_set?:        string
			available_upgrade_versions: [...string]
			autonomous_database_id?:      string
			character_set?:               string
			local_disaster_recovery_type: string
			key_store_wallet_name:        string
			scheduled_operations?: [...{
				day_of_week!: [...{
					name!: string
				}]
				scheduled_start_time?: string
				scheduled_stop_time?:  string
			}]
			time_of_last_refresh_point:                      string
			kms_key_lifecycle_details:                       string
			availability_domain:                             string
			local_adg_auto_failover_max_data_loss_limit?:    int
			is_data_guard_enabled?:                          bool
			memory_per_oracle_compute_unit_in_gbs:           int
			resource_pool_leader_id?:                        string
			is_auto_scaling_enabled?:                        bool
			dataguard_region_type:                           string
			is_preview_version_with_service_terms_accepted?: bool
			autonomous_container_database_id?:               string
			are_primary_whitelisted_ips_used?:               bool
			nsg_ids?: [...string]
			local_standby_db: [...{
				state:                               string
				time_data_guard_role_changed:        string
				time_disaster_recovery_role_changed: string
				availability_domain:                 string
				lag_time_in_seconds:                 int
				lifecycle_details:                   string
			}]
			is_dedicated?:               bool
			public_endpoint:             string
			operations_insights_status?: string
			long_term_backup_schedule?: [...{
				time_of_backup?:           string
				is_disabled?:              bool
				repeat_cadence?:           string
				retention_period_in_days?: int
			}]
			is_preview:                         bool
			auto_refresh_frequency_in_seconds?: int
			max_cpu_core_count?:                int
			auto_refresh_point_lag_in_seconds?: int
			shrink_adb_trigger?:                int
			service_console_url:                string
			time_local_data_guard_enabled:      string
			disaster_recovery_region_type:      string
			is_reconnect_clone_enabled:         bool
			system_tags: [_]: string
			cpu_core_count?:             int
			time_of_auto_refresh_start?: string
			private_endpoint:            string
			peer_db_ids: [...string]
			compute_count?: float
			state?:         string
			vault_id?:      string
			apex_details: [...{
				apex_version: string
				ords_version: string
			}]
			backup_config: [...{
				manual_backup_bucket_name: string
				manual_backup_type:        string
			}]
			time_until_reconnect_clone_enabled: string
			is_free_tier?:                      bool
			time_of_last_switchover:            string
			db_workload?:                       string
			clone_type?:                        string
			supported_regions_to_clone_to: [...string]
			time_of_last_failover:     string
			byol_compute_count_limit?: float
			timestamp?:                string
			refreshable_mode?:         string
			role:                      string
			in_memory_percentage?:     int
			standby_whitelisted_ips?: [...string]
			used_data_storage_size_in_tbs: int
			is_dev_tier?:                  bool
			source_id?:                    string
			encryption_key?: [...{
				kms_key_id?:                   string
				key_name?:                     string
				vault_id?:                     string
				autonomous_database_provider?: string
				directory_name?:               string
				okv_kms_key?:                  string
				vault_uri?:                    string
				certificate_id?:               string
				okv_uri?:                      string
				service_endpoint_uri?:         string
				arn_role?:                     string
				key_arn?:                      string
				certificate_directory_name?:   string
				external_id?:                  string
			}]
			is_remote_data_guard_enabled:                 bool
			time_of_last_refresh:                         string
			subscription_id?:                             string
			time_reclamation_of_free_autonomous_database: string
			permission_level?:                            string
			defined_tags?: [_]: string
			is_local_data_guard_enabled?:    bool
			time_maintenance_end:            string
			failed_data_recovery_in_seconds: int
			compute_model?:                  string
		}
		external_container_database: {
			database_edition: string
			display_name!:    string
			stack_monitoring_config: [...{
				stack_monitoring_connector_id: string
				stack_monitoring_status:       string
			}]
			database_version: string
			defined_tags?: [_]: string
			time_created:           string
			db_unique_name:         string
			database_configuration: string
			db_id:                  string
			time_zone:              string
			character_set:          string
			state:                  string
			freeform_tags?: [_]: string
			db_packs:          string
			lifecycle_details: string
			ncharacter_set:    string
			compartment_id!:   string
			database_management_config: [...{
				database_management_connection_id: string
				database_management_status:        string
				license_model:                     string
			}]
		}
		external_database_connector: {
			time_created: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			connection_status: string
			defined_tags?: [_]: string
			state:         string
			display_name!: string
			connection_string!: [...{
				service!:  string
				hostname!: string
				port!:     int
				protocol!: string
			}]
			compartment_id: string
			connection_credentials!: [...{
				password?:        string
				role?:            string
				ssl_secret_id?:   string
				username?:        string
				credential_name?: string
				credential_type?: string
			}]
			external_database_id!:               string
			time_connection_status_last_updated: string
			connector_agent_id!:                 string
			connector_type?:                     string
		}
		autonomous_container_database_dataguard_association: {
			transport_lag:                                           string
			protection_mode!:                                        string
			peer_autonomous_container_database_id:                   string
			role:                                                    string
			apply_lag:                                               string
			time_created:                                            string
			time_last_synced:                                        string
			autonomous_container_database_dataguard_association_id?: string
			peer_lifecycle_state:                                    string
			peer_db_unique_name?:                                    string
			is_automatic_failover_enabled?:                          bool
			peer_autonomous_container_database_compartment_id?:      string
			peer_cloud_autonomous_vm_cluster_id?:                    string
			fast_start_fail_over_lag_limit_in_seconds?:              int
			peer_autonomous_vm_cluster_id?:                          string
			peer_autonomous_container_database_display_name!:        string
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
			autonomous_container_database_id!:                           string
			lifecycle_details:                                           string
			state:                                                       string
			standby_maintenance_buffer_in_days?:                         int
			time_last_role_changed:                                      string
			apply_rate:                                                  string
			peer_autonomous_container_database_dataguard_association_id: string
			peer_role:                                                   string
		}
		database_upgrade: {
			db_name:                                          string
			database_software_image_id:                       string
			db_home_id:                                       string
			source_database_point_in_time_recovery_timestamp: string
			kms_key_version_id:                               string
			key_store_id:                                     string
			vault_id:                                         string
			db_backup_config: [...{
				auto_full_backup_day:    string
				auto_full_backup_window: string
				backup_deletion_policy:  string
				backup_destination_details: [...{
					type:           string
					vpc_password:   string
					vpc_user:       string
					dbrs_policy_id: string
					id:             string
					internet_proxy: string
				}]
				recovery_window_in_days:   int
				run_immediate_full_backup: bool
				auto_backup_enabled:       bool
				auto_backup_window:        string
			}]
			key_store_wallet_name: string
			pdb_name:              string
			db_workload:           string
			time_created:          string
			state:                 string
			connection_strings: [...{
				all_connection_strings: [_]: string
				cdb_default:    string
				cdb_ip_default: string
			}]
			last_backup_duration_in_seconds: int
			last_backup_timestamp:           string
			lifecycle_details:               string
			kms_key_id:                      string
			db_unique_name:                  string
			character_set:                   string
			db_system_id:                    string
			compartment_id:                  string
			defined_tags: [_]: string
			ncharacter_set: string
			database_upgrade_source_details?: [...{
				database_software_image_id?: string
				db_version?:                 string
				options?:                    string
				source?:                     string
			}]
			vm_cluster_id:                string
			action!:                      string
			last_failed_backup_timestamp: string
			is_cdb:                       bool
			freeform_tags: [_]: string
			sid_prefix:   string
			database_id!: string
		}
		maintenance_run: {
			estimated_component_patching_start_time: string
			compartment_id?:                         string
			patch_failure_count:                     int
			maintenance_type:                        string
			is_dst_file_update_enabled?:             bool
			patching_end_time:                       string
			patch_type!:                             string
			display_name:                            string
			is_custom_action_timeout_enabled:        bool
			time_scheduled!:                         string
			maintenance_subtype:                     string
			target_resource_type:                    string
			patching_start_time:                     string
			target_db_server_version:                string
			estimated_patching_time: [...{
				estimated_db_server_patching_time:        int
				estimated_network_switches_patching_time: int
				estimated_storage_server_patching_time:   int
				total_estimated_patching_time:            int
			}]
			description:                           string
			time_started:                          string
			peer_maintenance_run_id:               string
			patching_status:                       string
			target_resource_id!:                   string
			time_ended:                            string
			lifecycle_details:                     string
			current_patching_component:            string
			state:                                 string
			database_software_image_id?:           string
			current_custom_action_timeout_in_mins: int
			target_storage_server_version:         string
			patching_mode?:                        string
			custom_action_timeout_in_mins:         int
			patch_id:                              string
		}
		autonomous_database_instance_wallet_management: {
			grace_period?:           int
			should_rotate?:          *false | bool
			state:                   string
			time_rotated:            string
			autonomous_database_id!: string
		}
		externalpluggabledatabases_stack_monitoring: {
			external_pluggable_database_id!: string
			enable_stack_monitoring!:        bool
			external_database_connector_id!: string
		}
		pluggable_databases_remote_clone: {
			defined_tags: [_]: string
			time_created: string
			pluggable_database_management_config: [...{
				management_status: string
			}]
			compartment_id:                      string
			target_container_database_id!:       string
			pdb_admin_password?:                 string
			should_pdb_admin_account_be_locked?: bool
			connection_strings: [...{
				all_connection_strings: [_]: string
				pdb_default:    string
				pdb_ip_default: string
			}]
			target_tde_wallet_password?: string
			container_database_id:       string
			freeform_tags: [_]: string
			is_restricted: bool
			refreshable_clone_config: [...{
				is_refreshable_clone: bool
			}]
			cloned_pdb_name!: string
			pdb_node_level_details: [...{
				node_name: string
				open_mode: string
			}]
			pluggable_database_id!:              string
			pdb_name:                            string
			state:                               string
			source_container_db_admin_password!: string
			lifecycle_details:                   string
			open_mode:                           string
		}
		cloud_vm_cluster: {
			shape: string
			ssh_public_keys!: [...string]
			db_servers?: [...string]
			iorm_config_cache: [...{
				objective: string
				state:     string
				db_plans: [...{
					db_name:           string
					flash_cache_limit: string
					share:             int
				}]
				lifecycle_details: string
			}]
			listener_port:       string
			memory_size_in_gbs?: int
			scan_ip_ids: [...string]
			cpu_core_count!: int
			state:           string
			cloud_automation_update_details?: [...{
				freeze_period?: [...{
					freeze_period_end_time?:   string
					freeze_period_start_time?: string
				}]
				is_early_adoption_enabled?: bool
				is_freeze_period_enabled?:  bool
				apply_update_time_preference?: [...{
					apply_update_preferred_end_time?:   string
					apply_update_preferred_start_time?: string
				}]
			}]
			private_zone_id?:         string
			is_local_backup_enabled?: bool
			lifecycle_details:        string
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
			security_attributes?: [_]: string
			create_async?:               *false | bool
			scan_listener_port_tcp_ssl?: int
			backup_network_nsg_ids?: [...string]
			file_system_configuration_details?: [...{
				mount_point?:         string
				file_system_size_gb?: int
			}]
			vip_ids: [...string]
			availability_domain:          string
			cluster_name?:                string
			ocpu_count?:                  float
			license_model?:               string
			scan_listener_port_tcp?:      int
			time_zone?:                   string
			data_storage_percentage?:     int
			node_count:                   int
			subscription_id?:             string
			gi_version!:                  string
			disk_redundancy:              string
			scan_dns_record_id:           string
			domain?:                      string
			scan_dns_name:                string
			zone_id:                      string
			is_sparse_diskgroup_enabled?: bool
			subnet_id!:                   string
			db_node_storage_size_in_gbs?: int
			freeform_tags?: [_]: string
			cloud_exadata_infrastructure_id!: string
			last_update_history_entry_id:     string
			backup_subnet_id!:                string
			system_tags: [_]: string
			system_version?: string
			compartment_id!: string
			hostname!:       string
			time_created:    string
			nsg_ids?: [...string]
			data_storage_size_in_tbs?: float
			defined_tags?: [_]: string
			display_name!:       string
			storage_size_in_gbs: int
		}
		db_home: {
			is_desupported_version?:      bool
			kms_key_id?:                  string
			kms_key_version_id?:          string
			is_unified_auditing_enabled?: bool
			state:                        string
			defined_tags?: [_]: string
			db_system_id?:    string
			db_home_location: string
			database?: [...{
				database_id?:                string
				sid_prefix:                  string
				db_unique_name:              string
				db_workload?:                string
				database_software_image_id?: string
				vault_id?:                   string
				id:                          string
				state:                       string
				character_set?:              string
				admin_password!:             string
				pluggable_databases?: [...string]
				backup_tde_password?: string
				ncharacter_set?:      string
				key_store_id?:        string
				backup_id?:           string
				db_backup_config?: [...{
					auto_full_backup_window?: string
					backup_deletion_policy?:  string
					backup_destination_details?: [...{
						id?:             string
						type?:           string
						dbrs_policy_id?: string
					}]
					recovery_window_in_days?:   int
					run_immediate_full_backup?: bool
					auto_backup_enabled?:       bool
					auto_backup_window?:        string
					auto_full_backup_day?:      *"SUNDAY" | string
				}]
				kms_key_version_id?: string
				freeform_tags?: [_]: string
				db_name?:             string
				tde_wallet_password?: string
				lifecycle_details:    string
				connection_strings: [...{
					cdb_default:    string
					cdb_ip_default: string
					all_connection_strings: [_]: string
				}]
				defined_tags?: [_]: string
				one_off_patches: [...string]
				kms_key_id?:                            string
				time_created:                           string
				pdb_name?:                              string
				time_stamp_for_point_in_time_recovery?: string
			}]
			display_name?:               string
			lifecycle_details:           string
			database_software_image_id?: string
			db_version?:                 string
			freeform_tags?: [_]: string
			source?:                     string
			time_created:                string
			last_patch_history_entry_id: string
			enable_database_delete?:     bool
			vm_cluster_id?:              string
			compartment_id:              string
		}
		db_node: {
			hostname:          string
			lifecycle_details: string
			freeform_tags?: [_]: string
			vnic2id:                       string
			db_node_storage_size_in_gbs:   int
			db_server_id:                  string
			time_maintenance_window_start: string
			cpu_core_count:                int
			total_cpu_core_count:          int
			vnic_id:                       string
			fault_domain:                  string
			db_node_id!:                   string
			state:                         string
			defined_tags?: [_]: string
			host_ip_id:                  string
			db_system_id:                string
			time_maintenance_window_end: string
			backup_vnic2id:              string
			time_created:                string
			memory_size_in_gbs:          int
			backup_vnic_id:              string
			maintenance_type:            string
			backup_ip_id:                string
			software_storage_size_in_gb: int
			additional_details:          string
		}
		db_node_console_history: {
			freeform_tags?: [_]: string
			compartment_id:    string
			lifecycle_details: string
			state:             string
			time_created:      string
			db_node_id!:       string
			display_name!:     string
			defined_tags?: [_]: string
		}
		key_store: {
			freeform_tags?: [_]: string
			lifecycle_details: string
			state:             string
			time_created:      string
			compartment_id!:   string
			display_name!:     string
			associated_databases: [...{
				db_name: string
				id:      string
			}]
			confirm_details_trigger?: int
			type_details!: [...{
				type!:           string
				vault_id!:       string
				admin_username!: string
				connection_ips!: [...string]
				secret_id!: string
			}]
			defined_tags?: [_]: string
		}
		oneoff_patch: {
			time_of_expiration: string
			compartment_id!:    string
			freeform_tags?: [_]: string
			lifecycle_details: string
			time_created:      string
			size_in_kbs:       float
			sha256sum:         string
			state:             string
			display_name!:     string
			release_update!:   string
			defined_tags?: [_]: string
			download_oneoff_patch_trigger?: int
			time_updated:                   string
			db_version!:                    string
			one_off_patches?: [...string]
		}
		pluggable_databases_local_clone: {
			pluggable_database_management_config: [...{
				management_status: string
			}]
			defined_tags: [_]: string
			pdb_admin_password?:                 string
			should_pdb_admin_account_be_locked?: bool
			pdb_node_level_details: [...{
				node_name: string
				open_mode: string
			}]
			open_mode: string
			pdb_name:  string
			refreshable_clone_config: [...{
				is_refreshable_clone: bool
			}]
			is_restricted:  bool
			time_created:   string
			compartment_id: string
			freeform_tags: [_]: string
			target_tde_wallet_password?: string
			lifecycle_details:           string
			connection_strings: [...{
				pdb_ip_default: string
				all_connection_strings: [_]: string
				pdb_default: string
			}]
			pluggable_database_id!: string
			state:                  string
			cloned_pdb_name!:       string
			container_database_id:  string
		}
		data_guard_association: {
			peer_role:                   string
			database_admin_password!:    string
			database_software_image_id?: string
			database_defined_tags?: [_]: string
			peer_db_system_id?:            string
			hostname?:                     string
			apply_lag:                     string
			domain?:                       string
			peer_vm_cluster_id?:           string
			creation_type!:                string
			is_active_data_guard_enabled?: bool
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
			protection_mode!: string
			fault_domains?: [...string]
			peer_db_home_id?:                 string
			peer_database_id:                 string
			role:                             string
			subnet_id?:                       string
			peer_sid_prefix?:                 string
			display_name?:                    string
			peer_db_unique_name?:             string
			time_created:                     string
			availability_domain?:             string
			license_model?:                   string
			storage_volume_performance_mode?: string
			db_system_freeform_tags?: [_]: string
			private_ip?:                       string
			peer_data_guard_association_id:    string
			node_count?:                       int
			delete_standby_db_home_on_delete!: string
			create_async?:                     *false | bool
			db_system_defined_tags?: [_]: string
			shape?: string
			nsg_ids?: [...string]
			cpu_core_count?:   int
			lifecycle_details: string
			transport_type!:   string
			database_freeform_tags?: [_]: string
			database_id!: string
			backup_network_nsg_ids?: [...string]
			state:      string
			time_zone?: string
			apply_rate: string
			db_system_security_attributes?: [_]: string
		}
		database_software_image: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name!:            string
			included_patches_summary: string
			compartment_id!:          string
			image_type?:              string
			source_db_home_id?:       string
			is_upgrade_supported:     bool
			patch_set?:               string
			time_created:             string
			image_shape_family?:      string
			database_software_image_included_patches: [...string]
			lifecycle_details: string
			database_version?: string
			ls_inventory?:     string
			database_software_image_one_off_patches?: [...string]
			state: string
		}
		external_container_database_management: {
			external_container_database_id!: string
			external_database_connector_id!: string
			enable_management!:              bool
			license_model?:                  string
		}
		external_pluggable_database_operations_insights_management: {
			external_database_connector_id!: string
			external_pluggable_database_id!: string
			enable_operations_insights!:     bool
		}
	}
	arguments: {
		autonomous_exadata_infrastructure: {
			availability_domain!: string
			subnet_id!:           string
			display_name?:        string
			license_model?:       string
			create_async?:        *false | bool
			domain?:              string
			nsg_ids?: [...string]
			defined_tags?: [_]: string
			compartment_id!: string
			shape!:          string
			freeform_tags?: [_]: string
			maintenance_window_details?: [...{
				lead_time_in_weeks?: int
				hours_of_day?: [...int]
				is_custom_action_timeout_enabled?: bool
				patching_mode?:                    string
				preference?:                       string
				is_monthly_patching_enabled?:      bool
				months?: [...{
					name!: string
				}]
				days_of_week?: [...{
					name!: string
				}]
				skip_ru?: [...bool]
				weeks_of_month?: [...int]
				custom_action_timeout_in_mins?: int
			}]
		}
		autonomous_vm_cluster_ords_certificate_management: {
			autonomous_vm_cluster_id!:    string
			certificate_generation_type!: string
			ca_bundle_id?:                string
			certificate_authority_id?:    string
			certificate_id?:              string
		}
		cloud_vm_cluster_iorm_config: {
			db_plans!: [...{
				share!:   int
				db_name!: string
			}]
			cloud_vm_cluster_id!: string
			objective?:           string
		}
		exadata_iorm_config: {
			db_plans!: [...{
				db_name!: string
				share!:   int
			}]
			db_system_id!: string
			objective?:    string
		}
		autonomous_container_database_dataguard_association_operation: {
			autonomous_container_database_dataguard_association_id!: string
			autonomous_container_database_id!:                       string
			operation!:                                              string
		}
		autonomous_database_backup: {
			autonomous_database_id!:   string
			retention_period_in_days?: int
			display_name?:             string
			is_long_term_backup?:      bool
			backup_destination_details?: [...{
				vpc_user?:       string
				type!:           string
				id?:             string
				internet_proxy?: string
				vpc_password?:   string
			}]
		}
		autonomous_database_saas_admin_user: {
			duration?:                     int
			password?:                     string
			secret_id?:                    string
			secret_version_number?:        int
			time_saas_admin_user_enabled?: string
			autonomous_database_id!:       string
			access_type?:                  string
		}
		external_pluggable_database_management: {
			external_database_connector_id!: string
			external_pluggable_database_id!: string
			enable_management!:              bool
		}
		migration: db_system_id!: string
		autonomous_vm_cluster: {
			total_container_databases?:             int
			scan_listener_port_tls?:                int
			memory_per_oracle_compute_unit_in_gbs?: int
			scan_listener_port_non_tls?:            int
			compartment_id!:                        string
			is_local_backup_enabled?:               bool
			is_mtls_enabled?:                       bool
			freeform_tags?: [_]: string
			license_model?:                       string
			vm_cluster_network_id!:               string
			autonomous_data_storage_size_in_tbs?: float
			defined_tags?: [_]: string
			maintenance_window_details?: [...{
				preference?: string
				skip_ru?: [...bool]
				weeks_of_month?: [...int]
				hours_of_day?: [...int]
				lead_time_in_weeks?:               int
				patching_mode?:                    string
				custom_action_timeout_in_mins?:    int
				is_custom_action_timeout_enabled?: bool
				is_monthly_patching_enabled?:      bool
				days_of_week?: [...{
					name!: string
				}]
				months?: [...{
					name!: string
				}]
			}]
			exadata_infrastructure_id!: string
			time_zone?:                 string
			display_name!:              string
			compute_model?:             string
			cpu_core_count_per_node?:   int
			db_servers?: [...string]
		}
		autonomous_vm_cluster_ssl_certificate_management: {
			autonomous_vm_cluster_id!:    string
			certificate_generation_type!: string
			ca_bundle_id?:                string
			certificate_authority_id?:    string
			certificate_id?:              string
		}
		vm_cluster: {
			gi_version!: string
			defined_tags?: [_]: string
			system_version?:     string
			memory_size_in_gbs?: int
			cloud_automation_update_details?: [...{
				apply_update_time_preference?: [...{
					apply_update_preferred_end_time?:   string
					apply_update_preferred_start_time?: string
				}]
				freeze_period?: [...{
					freeze_period_end_time?:   string
					freeze_period_start_time?: string
				}]
				is_early_adoption_enabled?: bool
				is_freeze_period_enabled?:  bool
			}]
			display_name!:                string
			is_sparse_diskgroup_enabled?: bool
			is_local_backup_enabled?:     bool
			db_servers?: [...string]
			ssh_public_keys!: [...string]
			ocpu_count?: float
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
			data_storage_size_in_gb?:  float
			data_storage_size_in_tbs?: float
			vm_cluster_network_id!:    string
			file_system_configuration_details?: [...{
				file_system_size_gb?: int
				mount_point?:         string
			}]
			license_model?:             string
			time_zone?:                 string
			compartment_id!:            string
			exadata_infrastructure_id!: string
			freeform_tags?: [_]: string
			cpu_core_count!:              int
			db_node_storage_size_in_gbs?: int
		}
		backup_destination: {
			type!:                   string
			local_mount_point_path?: string
			compartment_id!:         string
			display_name!:           string
			vpc_users?: [...string]
			freeform_tags?: [_]: string
			connection_string?: string
			mount_type_details?: [...{
				nfs_server?: [...string]
				nfs_server_export?:      string
				mount_type!:             string
				local_mount_point_path?: string
			}]
			defined_tags?: [_]: string
		}
		cloud_autonomous_vm_cluster: {
			defined_tags?: [_]: string
			description?: string
			db_servers?: [...string]
			subnet_id!:         string
			cluster_time_zone?: string
			display_name!:      string
			compute_model?:     string
			nsg_ids?: [...string]
			memory_per_oracle_compute_unit_in_gbs?: int
			cloud_exadata_infrastructure_id!:       string
			is_mtls_enabled_vm_cluster?:            bool
			scan_listener_port_tls?:                int
			time_updated?:                          string
			maintenance_window_details?: [...{
				patching_mode?: string
				skip_ru?: [...bool]
				hours_of_day?: [...int]
				is_custom_action_timeout_enabled?: bool
				months?: [...{
					name!: string
				}]
				weeks_of_month?: [...int]
				lead_time_in_weeks?: int
				days_of_week?: [...{
					name!: string
				}]
				is_monthly_patching_enabled?:   bool
				preference?:                    string
				custom_action_timeout_in_mins?: int
			}]
			security_attributes?: [_]: string
			compartment_id!:                      string
			cpu_core_count_per_node?:             int
			autonomous_data_storage_size_in_tbs?: float
			scan_listener_port_non_tls?:          int
			license_model?:                       string
			total_container_databases?:           int
			freeform_tags?: [_]: string
		}
		database: {
			db_home_id!:        string
			kms_key_migration?: bool
			vault_id?:          string
			database!: [...{
				admin_password!: string
				pluggable_databases?: [...string]
				pdb_name?:                   string
				character_set?:              string
				database_software_image_id?: string
				db_unique_name?:             string
				defined_tags?: [_]: string
				kms_key_id?:          string
				sid_prefix?:          string
				backup_id?:           string
				tde_wallet_password?: string
				db_workload?:         string
				ncharacter_set?:      string
				db_name!:             string
				db_backup_config?: [...{
					recovery_window_in_days?:   int
					run_immediate_full_backup?: bool
					auto_backup_enabled?:       bool
					auto_backup_window?:        string
					auto_full_backup_day?:      *"SUNDAY" | string
					auto_full_backup_window?:   string
					backup_deletion_policy?:    string
					backup_destination_details?: [...{
						id?:             string
						type?:           string
						vpc_user?:       string
						dbrs_policy_id?: string
					}]
				}]
				kms_key_version_id?:  string
				backup_tde_password?: string
				freeform_tags?: [_]: string
				vault_id?: string
			}]
			key_store_id?:       string
			kms_key_id?:         string
			kms_key_version_id?: string
			kms_key_rotation?:   int
			db_version?:         string
			source!:             string
		}
		exadata_infrastructure: {
			freeform_tags?: [_]: string
			maintenance_window?: [...{
				is_monthly_patching_enabled?: bool
				patching_mode?:               string
				preference?:                  string
				weeks_of_month?: [...int]
				custom_action_timeout_in_mins?: int
				days_of_week?: [...{
					name!: string
				}]
				hours_of_day?: [...int]
				skip_ru?: [...bool]
				is_custom_action_timeout_enabled?: bool
				lead_time_in_weeks?:               int
				months?: [...{
					name!: string
				}]
			}]
			is_cps_offline_report_enabled?: bool
			corporate_proxy?:               string
			compartment_id!:                string
			admin_network_cidr!:            string
			netmask!:                       string
			multi_rack_configuration_file?: string
			shape!:                         string
			time_zone!:                     string
			create_async?:                  *false | bool
			contacts?: [...{
				is_primary!:               bool
				name!:                     string
				is_contact_mos_validated?: bool
				phone_number?:             string
				email!:                    string
			}]
			is_multi_rack_deployment?: bool
			defined_tags?: [_]: string
			ntp_server!: [...string]
			display_name!:             string
			infini_band_network_cidr!: string
			additional_storage_count?: int
			dns_server!: [...string]
			gateway!: string
			network_bonding_mode_details?: [...{
				backup_network_bonding_mode?: string
				client_network_bonding_mode?: string
				dr_network_bonding_mode?:     string
			}]
			compute_count?:               int
			cloud_control_plane_server2!: string
			storage_count?:               int
			cloud_control_plane_server1!: string
			activation_file?:             string
		}
		exadb_vm_cluster: {
			compartment_id!: string
			subnet_id!:      string
			freeform_tags?: [_]: string
			scan_listener_port_tcp_ssl?: int
			defined_tags?: [_]: string
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
			domain?:                       string
			time_zone?:                    string
			exascale_db_storage_vault_id!: string
			license_model?:                string
			node_config!: [...{
				enabled_ecpu_count_per_node!:              int
				total_ecpu_count_per_node!:                int
				vm_file_system_storage_size_gbs_per_node!: int
			}]
			backup_network_nsg_ids?: [...string]
			nsg_ids?: [...string]
			display_name!: string
			hostname!:     string
			ssh_public_keys!: [...string]
			availability_domain!:    string
			cluster_name?:           string
			private_zone_id?:        string
			scan_listener_port_tcp?: int
			grid_image_id!:          string
			node_resource?: [...{
				node_name!: string
			}]
			security_attributes?: [_]: string
			shape!:            string
			system_version?:   string
			backup_subnet_id!: string
		}
		vm_cluster_add_virtual_machine: {
			vm_cluster_id!: string
			db_servers!: [...{
				db_server_id!: string
			}]
		}
		exadata_infrastructure_compute: {
			exadata_infrastructure_id!:                                string
			activation_file?:                                          string
			additional_compute_count_compute_managed_resource?:        int
			additional_compute_system_model_compute_managed_resource?: string
		}
		autonomous_container_database: {
			service_level_agreement_type?: string
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
			db_name?:    string
			db_version?: string
			maintenance_window_details?: [...{
				custom_action_timeout_in_mins?: int
				days_of_week?: [...{
					name!: string
				}]
				is_monthly_patching_enabled?: bool
				weeks_of_month?: [...int]
				lead_time_in_weeks?: int
				months?: [...{
					name!: string
				}]
				preference?: string
				skip_ru?: [...bool]
				hours_of_day?: [...int]
				patching_mode?:                    string
				is_custom_action_timeout_enabled?: bool
			}]
			peer_autonomous_vm_cluster_id?:             string
			autonomous_vm_cluster_id?:                  string
			fast_start_fail_over_lag_limit_in_seconds?: int
			peer_autonomous_container_database_backup_config?: [...{
				backup_destination_details?: [...{
					vpc_password?:   string
					vpc_user?:       string
					type!:           string
					id?:             string
					internet_proxy?: string
				}]
				recovery_window_in_days?: int
			}]
			patch_model!:                                       string
			key_store_id?:                                      string
			protection_mode?:                                   string
			peer_cloud_autonomous_vm_cluster_id?:               string
			peer_db_unique_name?:                               string
			version_preference?:                                string
			display_name!:                                      string
			autonomous_exadata_infrastructure_id?:              string
			kms_key_id?:                                        string
			net_services_architecture?:                         string
			vm_failover_reservation?:                           int
			database_software_image_id?:                        string
			compartment_id?:                                    string
			is_dst_file_update_enabled?:                        bool
			peer_autonomous_container_database_compartment_id?: string
			freeform_tags?: [_]: string
			db_split_threshold?:                 int
			cloud_autonomous_vm_cluster_id?:     string
			distribution_affinity?:              string
			standby_maintenance_buffer_in_days?: int
			db_unique_name?:                     string
			defined_tags?: [_]: string
			peer_autonomous_exadata_infrastructure_id?:       string
			vault_id?:                                        string
			is_automatic_failover_enabled?:                   bool
			peer_autonomous_container_database_display_name?: string
			rotate_key_trigger?:                              bool
		}
		cloud_exadata_infrastructure: {
			cluster_placement_group_id?: string
			defined_tags?: [_]: string
			maintenance_window?: [...{
				custom_action_timeout_in_mins?: int
				days_of_week?: [...{
					name!: string
				}]
				weeks_of_month?: [...int]
				lead_time_in_weeks?: int
				patching_mode?:      string
				preference?:         string
				hours_of_day?: [...int]
				months?: [...{
					name!: string
				}]
				skip_ru?: [...bool]
				is_custom_action_timeout_enabled?: bool
				is_monthly_patching_enabled?:      bool
			}]
			customer_contacts?: [...{
				email?: string
			}]
			subscription_id?: string
			freeform_tags?: [_]: string
			storage_count?:       int
			display_name!:        string
			availability_domain!: string
			compute_count?:       int
			compartment_id!:      string
			shape!:               string
		}
		db_system: {
			compartment_id!: string
			fault_domains?: [...string]
			freeform_tags?: [_]: string
			disk_redundancy?:  string
			source?:           string
			time_zone?:        string
			backup_subnet_id?: string
			db_home!: [...{
				db_version?:   string
				create_async?: *false | bool
				defined_tags?: [_]: string
				display_name?:                string
				is_unified_auditing_enabled?: bool
				database_software_image_id?:  string
				freeform_tags?: [_]: string
				database!: [...{
					db_unique_name?: string
					defined_tags?: [_]: string
					kms_key_id?:          string
					tde_wallet_password?: string
					backup_id?:           string
					pdb_name?:            string
					db_domain?:           string
					database_id?:         string
					freeform_tags?: [_]: string
					admin_password!:             string
					backup_tde_password?:        string
					character_set?:              string
					database_software_image_id?: string
					kms_key_version_id?:         string
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
					db_name?: string
					pluggable_databases?: [...string]
					time_stamp_for_point_in_time_recovery?: string
					ncharacter_set?:                        string
					vault_id?:                              string
					db_workload?:                           string
				}]
			}]
			data_storage_percentage?: int
			kms_key_version_id?:      string
			kms_key_id?:              string
			security_attributes?: [_]: string
			data_storage_size_in_gb?: int
			cluster_name?:            string
			display_name?:            string
			defined_tags?: [_]: string
			availability_domain!: string
			nsg_ids?: [...string]
			subnet_id!:               string
			hostname!:                string
			reco_storage_size_in_gb?: int
			domain?:                  string
			maintenance_window_details?: [...{
				days_of_week?: [...{
					name?: string
				}]
				weeks_of_month?: [...int]
				hours_of_day?: [...int]
				is_monthly_patching_enabled?:   bool
				lead_time_in_weeks?:            int
				custom_action_timeout_in_mins?: int
				months?: [...{
					name?: string
				}]
				preference?:                       string
				is_custom_action_timeout_enabled?: bool
				patching_mode?:                    string
				skip_ru?: [...bool]
			}]
			db_system_options?: [...{
				storage_management?: string
			}]
			sparse_diskgroup?: bool
			node_count?:       int
			cpu_core_count?:   int
			database_edition?: string
			shape!:            string
			backup_network_nsg_ids?: [...string]
			storage_volume_performance_mode?: string
			private_ip?:                      string
			license_model?:                   string
			source_db_system_id?:             string
			ssh_public_keys!: [...string]
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
		}
		externalcontainerdatabases_stack_monitoring: {
			enable_stack_monitoring!:        bool
			external_container_database_id!: string
			external_database_connector_id!: string
		}
		autonomous_container_database_dataguard_role_change: {
			autonomous_container_database_id!:                       string
			autonomous_container_database_dataguard_association_id!: string
			role!:                                                   string
			connection_strings_type?:                                string
		}
		externalnoncontainerdatabases_stack_monitoring: {
			external_non_container_database_id!: string
			enable_stack_monitoring!:            bool
			external_database_connector_id!:     string
		}
		external_non_container_database_management: {
			enable_management!:                  bool
			license_model?:                      string
			external_database_connector_id!:     string
			external_non_container_database_id!: string
		}
		backup_cancel_management: {
			backup_id!:             string
			cancel_backup_trigger?: int
		}
		cloud_database_management: {
			protocol?:             string
			port?:                 int
			ssl_secret_id?:        string
			role?:                 string
			private_end_point_id!: string
			credentialdetails!: [...{
				user_name!:          string
				password_secret_id!: string
			}]
			database_id!:       string
			management_type!:   string
			enable_management!: bool
			service_name!:      string
		}
		exascale_db_storage_vault: {
			compartment_id!:      string
			display_name!:        string
			time_zone?:           string
			availability_domain!: string
			defined_tags?: [_]: string
			description?: string
			high_capacity_database_storage!: [...{
				total_size_in_gbs!: int
			}]
			freeform_tags?: [_]: string
			additional_flash_cache_in_percent?: int
		}
		pluggable_database: {
			container_database_id!:             string
			container_database_admin_password?: string
			rotate_key_trigger?:                int
			defined_tags?: [_]: string
			tde_wallet_password?:                string
			should_pdb_admin_account_be_locked?: bool
			pdb_name!:                           string
			pdb_admin_password?:                 string
			freeform_tags?: [_]: string
			pdb_creation_type_details?: [...{
				dblink_user_password?: string
				dblink_username?:      string
				is_thin_clone?:        bool
				refreshable_clone_details?: [...{
					is_refreshable_clone?: bool
				}]
				source_container_database_admin_password?: string
				creation_type!:                            string
				source_pluggable_database_id!:             string
			}]
			should_create_pdb_backup?:   bool
			convert_to_regular_trigger?: int
			kms_key_version_id?:         string
			refresh_trigger?:            int
		}
		vm_cluster_remove_virtual_machine: {
			vm_cluster_id!: string
			db_servers!: [...{
				db_server_id!: string
			}]
		}
		application_vip: {
			hostname_label!:      string
			subnet_id!:           string
			cloud_vm_cluster_id!: string
			db_node_id?:          string
			ip_address?:          string
		}
		autonomous_database_software_image: {
			source_cdb_id!:      string
			image_shape_family!: string
			display_name!:       string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		autonomous_database_wallet: {
			password!:               string
			base64_encode_content?:  *false | bool
			generate_type?:          *"SINGLE" | string
			is_regional?:            bool
			autonomous_database_id!: string
		}
		external_non_container_database_operations_insights_management: {
			external_non_container_database_id!: string
			enable_operations_insights!:         bool
			external_database_connector_id!:     string
		}
		db_node_console_connection: {
			defined_tags?: [_]: string
			db_node_id!: string
			freeform_tags?: [_]: string
			public_key!: string
		}
		external_non_container_database: {
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		external_pluggable_database: {
			compartment_id!: string
			freeform_tags?: [_]: string
			display_name!: string
			defined_tags?: [_]: string
			external_container_database_id!: string
			source_id?:                      string
		}
		vm_cluster_network: {
			dr_scans?: [...{
				hostname!: string
				ips!: [...string]
				scan_listener_port_tcp!: int
			}]
			defined_tags?: [_]: string
			action?:                      string
			display_name!:                string
			validate_vm_cluster_network?: *false | bool
			compartment_id!:              string
			scans!: [...{
				scan_listener_port_tcp_ssl?: int
				hostname!:                   string
				ips!: [...string]
				port?:                   int
				scan_listener_port_tcp?: int
			}]
			dns?: [...string]
			ntp?: [...string]
			vm_networks!: [...{
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
				gateway?:     string
				netmask?:     string
				vlan_id?:     string
			}]
			exadata_infrastructure_id!: string
			freeform_tags?: [_]: string
		}
		db_systems_upgrade: {
			action!:                                   string
			new_os_version?:                           string
			db_system_id!:                             string
			is_snapshot_retention_days_force_updated?: bool
			snapshot_retention_period_in_days?:        int
			new_gi_version?:                           string
		}
		exadata_infrastructure_storage: {
			corporate_proxy?: string
			ntp_server!: [...string]
			compartment_id!:              string
			time_zone!:                   string
			display_name!:                string
			cloud_control_plane_server1!: string
			shape!:                       string
			storage_count?:               int
			freeform_tags?: [_]: string
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
			exadata_infrastructure_id?: string
			compute_count?:             int
			contacts?: [...{
				is_primary!:               bool
				name!:                     string
				is_contact_mos_validated?: bool
				phone_number?:             string
				email!:                    string
			}]
			gateway!:                     string
			netmask!:                     string
			activation_file?:             string
			cloud_control_plane_server2!: string
			infini_band_network_cidr!:    string
			dns_server!: [...string]
			defined_tags?: [_]: string
			admin_network_cidr!: string
		}
		autonomous_database_regional_wallet_management: {
			grace_period?:  int
			should_rotate?: *false | bool
		}
		backup: {
			display_name!: string
			database_id!:  string
		}
		pluggable_database_pluggabledatabasemanagements_management: {
			pluggable_database_id!: string
			protocol?:              string
			credential_details!: [...{
				password_secret_id!: string
				user_name!:          string
			}]
			role?:                               string
			enable_pluggabledatabasemanagement!: bool
			port?:                               int
			ssl_secret_id?:                      string
			private_end_point_id!:               string
			service_name!:                       string
		}
		autonomous_database: {
			compute_model?: string
			resource_pool_summary?: [...{
				is_disabled?: bool
				pool_size?:   int
			}]
			switchover_to_remote_peer_id?: string
			security_attributes?: [_]: string
			is_preview_version_with_service_terms_accepted?: bool
			data_storage_size_in_gb?:                        int
			time_of_auto_refresh_start?:                     string
			private_endpoint_ip?:                            string
			timestamp?:                                      string
			secret_id?:                                      string
			in_memory_percentage?:                           int
			compute_count?:                                  float
			is_dev_tier?:                                    bool
			vault_id?:                                       string
			max_cpu_core_count?:                             int
			data_safe_status?:                               string
			customer_contacts?: [...{
				email?: string
			}]
			is_local_data_guard_enabled?:      bool
			are_primary_whitelisted_ips_used?: bool
			encryption_key?: [...{
				okv_uri?:                      string
				kms_key_id?:                   string
				service_endpoint_uri?:         string
				arn_role?:                     string
				key_name?:                     string
				okv_kms_key?:                  string
				certificate_id?:               string
				autonomous_database_provider?: string
				key_arn?:                      string
				directory_name?:               string
				vault_id?:                     string
				certificate_directory_name?:   string
				external_id?:                  string
				vault_uri?:                    string
			}]
			clone_type?:                           string
			is_free_tier?:                         bool
			private_endpoint_label?:               string
			kms_key_id?:                           string
			autonomous_maintenance_schedule_type?: string
			is_mtls_connection_required?:          bool
			refreshable_mode?:                     string
			auto_refresh_point_lag_in_seconds?:    int
			database_edition?:                     string
			operations_insights_status?:           string
			long_term_backup_schedule?: [...{
				retention_period_in_days?: int
				time_of_backup?:           string
				is_disabled?:              bool
				repeat_cadence?:           string
			}]
			shrink_adb_trigger?:                     int
			is_auto_scaling_for_storage_enabled?:    bool
			ncharacter_set?:                         string
			use_latest_available_backup_time_stamp?: bool
			nsg_ids?: [...string]
			permission_level?:              string
			cpu_core_count?:                int
			db_workload?:                   string
			db_version?:                    string
			byol_compute_count_limit?:      float
			source?:                        string
			remote_disaster_recovery_type?: string
			is_dedicated?:                  bool
			whitelisted_ips?: [...string]
			is_shrink_only?:                bool
			autonomous_database_backup_id?: string
			rotate_key_trigger?:            bool
			db_tools_details?: [...{
				max_idle_time_in_minutes?: int
				name!:                     string
				compute_count?:            float
				is_enabled?:               bool
			}]
			standby_whitelisted_ips?: [...string]
			db_name!:                          string
			autonomous_container_database_id?: string
			license_model?:                    string
			disaster_recovery_type?:           string
			freeform_tags?: [_]: string
			admin_password?:                    string
			data_storage_size_in_tbs?:          int
			ocpu_count?:                        float
			resource_pool_leader_id?:           string
			auto_refresh_frequency_in_seconds?: int
			subnet_id?:                         string
			autonomous_database_id?:            string
			source_id?:                         string
			secret_version_number?:             int
			defined_tags?: [_]: string
			character_set?:                               string
			display_name?:                                string
			local_adg_auto_failover_max_data_loss_limit?: int
			subscription_id?:                             string
			switchover_to?:                               string
			open_mode?:                                   string
			state?:                                       string
			compartment_id!:                              string
			is_auto_scaling_enabled?:                     bool
			backup_retention_period_in_days?:             int
			is_access_control_enabled?:                   bool
			scheduled_operations?: [...{
				day_of_week!: [...{
					name!: string
				}]
				scheduled_start_time?: string
				scheduled_stop_time?:  string
			}]
			is_refreshable_clone?:           bool
			is_replicate_automatic_backups?: bool
			database_management_status?:     string
			is_data_guard_enabled?:          bool
		}
		external_container_database: {
			compartment_id!: string
			freeform_tags?: [_]: string
			display_name!: string
			defined_tags?: [_]: string
		}
		external_database_connector: {
			connection_string!: [...{
				port!:     int
				protocol!: string
				service!:  string
				hostname!: string
			}]
			connection_credentials!: [...{
				password?:        string
				role?:            string
				ssl_secret_id?:   string
				username?:        string
				credential_name?: string
				credential_type?: string
			}]
			connector_agent_id!:   string
			external_database_id!: string
			connector_type?:       string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name!: string
		}
		autonomous_container_database_dataguard_association: {
			peer_db_unique_name?:                             string
			peer_autonomous_container_database_display_name!: string
			peer_autonomous_container_database_backup_config?: [...{
				backup_destination_details?: [...{
					type!:           string
					dbrs_policy_id?: string
					id?:             string
					internet_proxy?: string
					vpc_password?:   string
					vpc_user?:       string
				}]
				recovery_window_in_days?: int
			}]
			protection_mode!:                                        string
			fast_start_fail_over_lag_limit_in_seconds?:              int
			autonomous_container_database_dataguard_association_id?: string
			peer_autonomous_vm_cluster_id?:                          string
			standby_maintenance_buffer_in_days?:                     int
			peer_autonomous_container_database_compartment_id?:      string
			autonomous_container_database_id!:                       string
			is_automatic_failover_enabled?:                          bool
			peer_cloud_autonomous_vm_cluster_id?:                    string
		}
		database_upgrade: {
			database_id!: string
			database_upgrade_source_details?: [...{
				options?:                    string
				source?:                     string
				database_software_image_id?: string
				db_version?:                 string
			}]
			action!: string
		}
		maintenance_run: {
			compartment_id?:             string
			patching_mode?:              string
			target_resource_id!:         string
			time_scheduled!:             string
			is_dst_file_update_enabled?: bool
			database_software_image_id?: string
			patch_type!:                 string
		}
		autonomous_database_instance_wallet_management: {
			grace_period?:           int
			should_rotate?:          *false | bool
			autonomous_database_id!: string
		}
		externalpluggabledatabases_stack_monitoring: {
			enable_stack_monitoring!:        bool
			external_database_connector_id!: string
			external_pluggable_database_id!: string
		}
		pluggable_databases_remote_clone: {
			cloned_pdb_name!:                    string
			source_container_db_admin_password!: string
			should_pdb_admin_account_be_locked?: bool
			pluggable_database_id!:              string
			pdb_admin_password?:                 string
			target_tde_wallet_password?:         string
			target_container_database_id!:       string
		}
		cloud_vm_cluster: {
			is_local_backup_enabled?: bool
			db_servers?: [...string]
			defined_tags?: [_]: string
			memory_size_in_gbs?: int
			ssh_public_keys!: [...string]
			create_async?:               *false | bool
			subscription_id?:            string
			gi_version!:                 string
			scan_listener_port_tcp_ssl?: int
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
			system_version?:              string
			is_sparse_diskgroup_enabled?: bool
			hostname!:                    string
			nsg_ids?: [...string]
			file_system_configuration_details?: [...{
				file_system_size_gb?: int
				mount_point?:         string
			}]
			data_storage_percentage?: int
			compartment_id!:          string
			private_zone_id?:         string
			backup_subnet_id!:        string
			subnet_id!:               string
			cluster_name?:            string
			freeform_tags?: [_]: string
			cpu_core_count!:                  int
			cloud_exadata_infrastructure_id!: string
			scan_listener_port_tcp?:          int
			display_name!:                    string
			ocpu_count?:                      float
			security_attributes?: [_]: string
			license_model?: string
			data_collection_options?: [...{
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
				is_incident_logs_enabled?:      bool
			}]
			backup_network_nsg_ids?: [...string]
			time_zone?:                   string
			domain?:                      string
			data_storage_size_in_tbs?:    float
			db_node_storage_size_in_gbs?: int
		}
		db_home: {
			display_name?:       string
			kms_key_version_id?: string
			freeform_tags?: [_]: string
			source?:                     string
			database_software_image_id?: string
			is_desupported_version?:     bool
			enable_database_delete?:     bool
			defined_tags?: [_]: string
			db_version?:                  string
			vm_cluster_id?:               string
			db_system_id?:                string
			is_unified_auditing_enabled?: bool
			kms_key_id?:                  string
			database?: [...{
				database_id?:                string
				db_name?:                    string
				database_software_image_id?: string
				pdb_name?:                   string
				kms_key_id?:                 string
				kms_key_version_id?:         string
				freeform_tags?: [_]: string
				backup_tde_password?: string
				db_workload?:         string
				pluggable_databases?: [...string]
				db_backup_config?: [...{
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
					backup_deletion_policy?:    string
				}]
				ncharacter_set?:                        string
				vault_id?:                              string
				time_stamp_for_point_in_time_recovery?: string
				tde_wallet_password?:                   string
				defined_tags?: [_]: string
				character_set?:  string
				key_store_id?:   string
				admin_password!: string
				backup_id?:      string
			}]
		}
		db_node: {
			db_node_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
		}
		db_node_console_history: {
			db_node_id!:   string
			display_name!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		key_store: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name!:            string
			confirm_details_trigger?: int
			compartment_id!:          string
			type_details!: [...{
				admin_username!: string
				connection_ips!: [...string]
				secret_id!: string
				type!:      string
				vault_id!:  string
			}]
		}
		oneoff_patch: {
			release_update!: string
			freeform_tags?: [_]: string
			db_version!: string
			one_off_patches?: [...string]
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			download_oneoff_patch_trigger?: int
		}
		pluggable_databases_local_clone: {
			cloned_pdb_name!:                    string
			pluggable_database_id!:              string
			pdb_admin_password?:                 string
			should_pdb_admin_account_be_locked?: bool
			target_tde_wallet_password?:         string
		}
		data_guard_association: {
			database_id!: string
			db_system_defined_tags?: [_]: string
			db_system_security_attributes?: [_]: string
			time_zone?:                       string
			peer_db_home_id?:                 string
			storage_volume_performance_mode?: string
			subnet_id?:                       string
			backup_network_nsg_ids?: [...string]
			display_name?:    string
			protection_mode!: string
			nsg_ids?: [...string]
			database_software_image_id?:       string
			creation_type!:                    string
			delete_standby_db_home_on_delete!: string
			create_async?:                     *false | bool
			database_freeform_tags?: [_]: string
			private_ip?:                   string
			peer_db_system_id?:            string
			is_active_data_guard_enabled?: bool
			fault_domains?: [...string]
			hostname?: string
			data_collection_options?: [...{
				is_incident_logs_enabled?:      bool
				is_diagnostics_events_enabled?: bool
				is_health_monitoring_enabled?:  bool
			}]
			peer_vm_cluster_id?: string
			domain?:             string
			database_defined_tags?: [_]: string
			peer_sid_prefix?:     string
			peer_db_unique_name?: string
			license_model?:       string
			shape?:               string
			db_system_freeform_tags?: [_]: string
			availability_domain?:     string
			database_admin_password!: string
			cpu_core_count?:          int
			transport_type!:          string
			node_count?:              int
		}
		database_software_image: {
			ls_inventory?:   string
			compartment_id!: string
			database_software_image_one_off_patches?: [...string]
			patch_set?: string
			defined_tags?: [_]: string
			image_shape_family?: string
			source_db_home_id?:  string
			freeform_tags?: [_]: string
			database_version?: string
			image_type?:       string
			display_name!:     string
		}
		external_container_database_management: {
			external_container_database_id!: string
			external_database_connector_id!: string
			enable_management!:              bool
			license_model?:                  string
		}
		external_pluggable_database_operations_insights_management: {
			external_database_connector_id!: string
			external_pluggable_database_id!: string
			enable_operations_insights!:     bool
		}
	}
}
#data: {
	autonomous_vm_clusters: {
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
	backup_destinations: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		type?:           string
	}
	data_guard_associations: {
		database_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	key_stores: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	vm_cluster_recommended_network: {
		dr_scan_listener_port_tcp?: int
		networks!: [...{
			network_type!: string
			prefix!:       string
			vlan_id!:      string
			cidr!:         string
			domain!:       string
			gateway!:      string
			netmask!:      string
		}]
		defined_tags?: [_]: string
		compartment_id!: string
		ntp?: [...string]
		scan_listener_port_tcp?: int
		db_servers?: [...string]
		exadata_infrastructure_id!: string
		freeform_tags?: [_]: string
		scan_listener_port_tcp_ssl?: int
		display_name!:               string
		dns?: [...string]
	}
	autonomous_container_database_dataguard_associations: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		autonomous_container_database_id!: string
	}
	autonomous_container_database_resource_usage: autonomous_container_database_id!: string
	autonomous_database_peers: {
		autonomous_database_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	vm_cluster_update_history_entries: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		state?:         string
		update_type?:   string
		vm_cluster_id!: string
	}
	autonomous_container_patches: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		autonomous_container_database_id!: string
		autonomous_patch_type?:            string
		compartment_id!:                   string
	}
	db_home_patches: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		db_home_id!: string
	}
	external_database_connector: external_database_connector_id!: string
	autonomous_database_backup: autonomous_database_backup_id!: string
	db_homes: {
		db_system_id?:  string
		state?:         string
		vm_cluster_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		db_version?:     string
		display_name?:   string
		backup_id?:      string
	}
	exadata_infrastructures: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	external_container_database: external_container_database_id!: string
	autonomous_container_database: autonomous_container_database_id!: string
	database_upgrade_history_entry: {
		upgrade_history_entry_id!: string
		database_id!:              string
	}
	db_home: db_home_id!: string
	db_node_console_connections: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		db_node_id!: string
	}
	external_pluggable_database: external_pluggable_database_id!: string
	autonomous_exadata_infrastructures: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id!:      string
		display_name?:        string
	}
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
	db_node: db_node_id!: string
	maintenance_runs: {
		target_resource_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		maintenance_subtype?:  string
		maintenance_type?:     string
		target_resource_type?: string
		availability_domain?:  string
		compartment_id!:       string
		state?:                string
	}
	autonomous_patch: autonomous_patch_id!: string
	autonomous_vm_cluster_resource_usage: autonomous_vm_cluster_id!: string
	flex_components: {
		name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	maintenance_run_histories: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?:  string
		compartment_id!:       string
		maintenance_type?:     string
		state?:                string
		target_resource_id?:   string
		target_resource_type?: string
	}
	oneoff_patch: oneoff_patch_id!: string
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
	autonomous_database_dataguard_association: {
		autonomous_database_id!:                       string
		autonomous_database_dataguard_association_id!: string
	}
	autonomous_database_refreshable_clones: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		autonomous_database_id!: string
	}
	cloud_exadata_infrastructure_un_allocated_resource: {
		cloud_exadata_infrastructure_id!: string
		db_servers?: [...string]
	}
	exadb_vm_clusters: {
		display_name?:                 string
		exascale_db_storage_vault_id?: string
		state?:                        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	cloud_exadata_infrastructure: cloud_exadata_infrastructure_id!: string
	system_versions: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		gi_version!:     string
		shape!:          string
	}
	cloud_vm_clusters: {
		display_name?: string
		state?:        string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		cloud_exadata_infrastructure_id?: string
		compartment_id!:                  string
	}
	db_nodes: {
		compartment_id!: string
		db_server_id?:   string
		db_system_id?:   string
		state?:          string
		vm_cluster_id?:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	application_vip: application_vip_id!: string
	autonomous_container_databases: {
		autonomous_vm_cluster_id?:     string
		availability_domain?:          string
		compartment_id!:               string
		service_level_agreement_type?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		cloud_autonomous_vm_cluster_id?:       string
		display_name?:                         string
		state?:                                string
		autonomous_exadata_infrastructure_id?: string
		infrastructure_type?:                  string
	}
	autonomous_vm_cluster: autonomous_vm_cluster_id!: string
	db_systems_upgrade_history_entries: {
		db_system_id!:   string
		state?:          string
		upgrade_action?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	vm_cluster: vm_cluster_id!: string
	database_software_images: {
		compartment_id!:       string
		display_name?:         string
		image_shape_family?:   string
		image_type?:           string
		is_upgrade_supported?: bool
		state?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	db_systems_upgrade_history_entry: {
		db_system_id!:             string
		upgrade_history_entry_id!: string
	}
	vm_cluster_network: {
		vm_cluster_network_id!:     string
		exadata_infrastructure_id!: string
	}
	autonomous_exadata_infrastructure_ocpu: autonomous_exadata_infrastructure_id!: string
	database: database_id!: string
	databases: {
		system_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		db_home_id?:     string
		db_name?:        string
		state?:          string
	}
	db_home_patch_history_entries: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		db_home_id!: string
	}
	exadb_vm_cluster_update_history_entry: {
		update_history_entry_id!: string
		exadb_vm_cluster_id!:     string
	}
	autonomous_database_instance_wallet_management: autonomous_database_id!: string
	autonomous_database_regional_wallet_management: {}
	autonomous_db_preview_versions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	vm_cluster_patch_history_entries: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		vm_cluster_id!: string
	}
	external_pluggable_databases: {
		external_container_database_id?: string
		state?:                          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
	}
	autonomous_virtual_machine: autonomous_virtual_machine_id!: string
	db_system_shapes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
	}
	exadb_vm_cluster_update_history_entries: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		exadb_vm_cluster_id!: string
		update_type?:         string
	}
	vm_cluster_patch_history_entry: {
		patch_history_entry_id!: string
		vm_cluster_id!:          string
	}
	autonomous_container_database_versions: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:    string
		service_component!: string
	}
	autonomous_databases_clones: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		autonomous_database_id!: string
		clone_type?:             string
	}
	autonomous_exadata_infrastructure_shapes: {
		compartment_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain!: string
	}
	vm_cluster_update: {
		update_id!:     string
		vm_cluster_id!: string
	}
	autonomous_database_software_images: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:     string
		display_name?:       string
		image_shape_family!: string
		state?:              string
	}
	pluggable_database: pluggable_database_id!: string
	vm_cluster_network_download_config_file: {
		vm_cluster_network_id!:     string
		base64_encode_content?:     *false | bool
		exadata_infrastructure_id!: string
	}
	db_node_console_connection: {
		db_node_id!: string
		id!:         string
	}
	exascale_db_storage_vault: exascale_db_storage_vault_id!: string
	oneoff_patches: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	vm_cluster_patches: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		vm_cluster_id!: string
	}
	autonomous_database_character_sets: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		character_set_type?: string
		is_dedicated?:       bool
		is_shared?:          bool
	}
	autonomous_db_versions: {
		compartment_id!: string
		db_workload?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	cloud_autonomous_vm_cluster: cloud_autonomous_vm_cluster_id!: string
	autonomous_vm_cluster_acd_resource_usages: {
		autonomous_vm_cluster_id!: string
		compartment_id?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	db_systems: {
		availability_domain?: string
		backup_id?:           string
		compartment_id!:      string
		display_name?:        string
		state?:               string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	exadb_vm_cluster_updates: {
		update_type?: string
		version?:     string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		exadb_vm_cluster_id!: string
	}
	exascale_db_storage_vaults: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	key_store: key_store_id!: string
	autonomous_database_wallet: {
		base64_encode_content?:  *false | bool
		generate_type?:          *"SINGLE" | string
		password!:               string
		autonomous_database_id!: string
	}
	backups: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		database_id?:    string
		shape_family?:   string
	}
	cloud_autonomous_vm_cluster_resource_usage: cloud_autonomous_vm_cluster_id!: string
	vm_cluster_patch: {
		patch_id!:      string
		vm_cluster_id!: string
	}
	autonomous_database_dataguard_associations: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		autonomous_database_id!: string
	}
	cloud_autonomous_vm_cluster_acd_resource_usages: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		cloud_autonomous_vm_cluster_id!: string
		compartment_id?:                 string
	}
	gi_versions: {
		compartment_id!: string
		shape?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
	}
	autonomous_databases: {
		display_name?:                     string
		is_resource_pool_leader?:          bool
		infrastructure_type?:              string
		autonomous_container_database_id?: string
		lifecycle_state_not_equal_to?:     string
		compartment_id!:                   string
		is_refreshable_clone?:             bool
		db_version?:                       string
		is_data_guard_enabled?:            bool
		resource_pool_leader_id?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		is_free_tier?: bool
		state?:        string
		db_workload?:  string
	}
	cloud_vm_cluster: cloud_vm_cluster_id!: string
	db_node_console_history_content: {
		console_history_id!: string
		db_node_id!:         string
	}
	cloud_autonomous_vm_clusters: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?:             string
		cloud_exadata_infrastructure_id?: string
	}
	exadata_infrastructure: exadata_infrastructure_id!: string
	exadb_vm_cluster: exadb_vm_cluster_id!: string
	application_vips: {
		cloud_vm_cluster_id!: string
		compartment_id!:      string
		state?:               string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	autonomous_container_database_dataguard_association: {
		autonomous_container_database_id!:                       string
		autonomous_container_database_dataguard_association_id!: string
	}
	backup_destination: backup_destination_id!: string
	db_versions: {
		db_system_shape?:                      string
		is_database_software_image_supported?: bool
		is_upgrade_supported?:                 bool
		storage_management?:                   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		db_system_id?:   string
	}
	exadata_infrastructure_download_config_file: {
		base64_encode_content?:     *false | bool
		exadata_infrastructure_id!: string
	}
	exadb_vm_cluster_update: {
		update_id!:           string
		exadb_vm_cluster_id!: string
	}
	db_node_console_history: {
		console_history_id!: string
		db_node_id!:         string
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
	db_system_patch_history_entries: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		db_system_id!: string
	}
	autonomous_virtual_machines: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		autonomous_vm_cluster_id!: string
		compartment_id!:           string
	}
	database_pdb_conversion_history_entry: {
		pdb_conversion_history_entry_id!: string
		database_id!:                     string
	}
	db_node_console_histories: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		db_node_id!:   string
		display_name?: string
	}
	database_pdb_conversion_history_entries: {
		database_id!:           string
		pdb_conversion_action?: string
		state?:                 string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	external_non_container_database: external_non_container_database_id!: string
	vm_cluster_update_history_entry: {
		update_history_entry_id!: string
		vm_cluster_id!:           string
	}
	vm_clusters: {
		exadata_infrastructure_id?: string
		state?:                     string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
	}
	autonomous_database_backups: {
		display_name?: string
		state?:        string
		type?:         string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		autonomous_database_id?: string
		compartment_id?:         string
	}
	autonomous_database_software_image: autonomous_database_software_image_id!: string
	autonomous_exadata_infrastructure: autonomous_exadata_infrastructure_id!: string
	maintenance_run_history: maintenance_run_history_id!: string
	cloud_vm_cluster_iorm_config: cloud_vm_cluster_id!: string
	exadata_iorm_config: db_system_id!: string
	external_container_databases: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	database_software_image: database_software_image_id!: string
	exadata_infrastructure_un_allocated_resource: {
		db_servers?: [...string]
		exadata_infrastructure_id!: string
	}
	external_non_container_databases: {
		display_name?: string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	db_system_storage_performances: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		shape_type?:         string
		storage_management!: string
	}
	autonomous_database: autonomous_database_id!: string
	db_server: {
		db_server_id!:              string
		exadata_infrastructure_id!: string
	}
	db_system_compute_performances: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		db_system_shape?: string
	}
	pluggable_databases: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		database_id?:    string
		pdb_name?:       string
		state?:          string
	}
	data_guard_association: {
		database_id!:               string
		data_guard_association_id!: string
	}
	external_database_connectors: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:       string
		display_name?:         string
		external_database_id!: string
		state?:                string
	}
	maintenance_run: maintenance_run_id!: string
	infrastructure_target_version: {
		compartment_id!:       string
		target_resource_id?:   string
		target_resource_type?: string
	}
	vm_cluster_updates: {
		update_type?:   string
		vm_cluster_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		state?: string
	}
	database_upgrade_history_entries: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		database_id!:    string
		state?:          string
		upgrade_action?: string
	}
	db_system_patches: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		db_system_id!: string
	}
	gi_version_minor_versions: {
		shape_family?: string
		version!:      string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain?:            string
		compartment_id?:                 string
		is_gi_version_for_provisioning?: bool
		shape?:                          string
	}
}

