package os_management_hub

#resource: {
	attributes: {
		lifecycle_stage_promote_software_source_management: {
			lifecycle_stage_id!: string
			software_source_id?: string
			work_request_details?: [...{
				display_name?: string
				description?:  string
			}]
		}
		software_source_change_availability_management: software_source_availabilities!: [...{
			software_source_id!:  string
			availability?:        string
			availability_at_oci?: string
		}]
		managed_instance_group: {
			system_tags: [_]: string
			time_modified:                  string
			description?:                   string
			display_name!:                  string
			is_managed_by_autonomous_linux: bool
			pending_job_count:              int
			autonomous_settings?: [...{
				is_data_collection_authorized?: bool
				scheduled_job_id:               string
			}]
			freeform_tags?: [_]: string
			state:                  string
			arch_type!:             string
			managed_instance_count: int
			software_source_ids?: [...string]
			notification_topic_id?: string
			software_sources: [...{
				software_source_type:              string
				description:                       string
				display_name:                      string
				id:                                string
				is_mandatory_for_autonomous_linux: bool
			}]
			vendor_name!:    string
			compartment_id!: string
			managed_instance_ids?: [...string]
			location?: string
			defined_tags?: [_]: string
			time_created: string
			os_family!:   string
		}
		managed_instance_update_packages_management: {
			managed_instance_id!: string
			package_names?: [...string]
			update_types?: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		management_station: {
			profile_id:       string
			hostname!:        string
			refresh_trigger?: int
			scheduled_job_id: string
			system_tags: [_]: string
			compartment_id!: string
			freeform_tags?: [_]: string
			overall_percentage: int
			description?:       string
			mirror_sync_status: [...{
				failed:   int
				queued:   int
				synced:   int
				syncing:  int
				unsynced: int
			}]
			total_mirrors: int
			mirror!: [...{
				sslcert?:   string
				directory!: string
				port!:      string
				sslport!:   string
			}]
			overall_state:   string
			mirror_capacity: int
			proxy!: [...{
				is_enabled!: bool
				forward?:    string
				hosts?: [...string]
				port?: string
			}]
			state:         string
			display_name!: string
			health: [...{
				state:       string
				description: string
			}]
			defined_tags?: [_]: string
			managed_instance_id: string
		}
		software_source_add_packages_management: {
			packages!: [...string]
			software_source_id!: string
		}
		management_station_mirror_synchronize_management: {
			management_station_id!: string
			mirror_id!:             string
		}
		event: {
			data: [...{
				operation_type:      string
				reason:              string
				status:              string
				time_first_occurred: string
				additional_details: [...{
					initiator_id: string
					vmcore: [...{
						component: string
						backtrace: string
					}]
					work_request_ids: [...string]
					exploit_cves: [...string]
				}]
				content: [...{
					size:                          int
					type:                          string
					content_availability:          string
					content_location:              string
					exploit_detection_log_content: string
					exploit_object_store_location: string
				}]
				event_fingerprint: string
				event_count:       int
			}]
			state: string
			system_details: [...{
				os_kernel_version:                string
				os_name:                          string
				os_system_version:                string
				architecture:                     string
				ksplice_effective_kernel_version: string
				os_family:                        string
				os_kernel_release:                string
			}]
			compartment_id?:   string
			event_id!:         string
			lifecycle_details: string
			freeform_tags?: [_]: string
			event_summary: string
			time_occurred: string
			resource_id:   string
			event_details: string
			system_tags: [_]: string
			time_created:                   string
			type:                           string
			is_managed_by_autonomous_linux: bool
			time_updated:                   string
			defined_tags?: [_]: string
		}
		lifecycle_stage_detach_managed_instances_management: {
			lifecycle_stage_id!: string
			managed_instance_details?: [...{
				managed_instances!: [...string]
				work_request_details?: [...{
					description?:  string
					display_name?: string
				}]
			}]
		}
		managed_instance: {
			autonomous_settings?: [...{
				is_data_collection_authorized?: bool
				scheduled_job_id:               string
			}]
			notification_topic_id?:        string
			compartment_id:                string
			enhancement_updates_available: int
			display_name:                  string
			os_family:                     string
			time_last_boot:                string
			lifecycle_environment: [...{
				display_name: string
				id:           string
			}]
			is_reboot_required:             bool
			primary_management_station_id?: string
			bug_updates_available:          int
			os_version:                     string
			tenancy_id:                     string
			managed_instance_group: [...{
				display_name: string
				id:           string
			}]
			profile:                          string
			secondary_management_station_id?: string
			is_management_station:            bool
			ksplice_effective_kernel_version: string
			managed_instance_id!:             string
			software_sources: [...{
				software_source_type:              string
				description:                       string
				display_name:                      string
				id:                                string
				is_mandatory_for_autonomous_linux: bool
			}]
			other_updates_available:        int
			work_request_count:             int
			scheduled_job_count:            int
			installed_packages:             int
			architecture:                   string
			time_last_checkin:              string
			os_kernel_version:              string
			description?:                   string
			is_managed_by_autonomous_linux: bool
			time_updated:                   string
			time_created:                   string
			installed_windows_updates:      int
			status:                         string
			security_updates_available:     int
			lifecycle_stage: [...{
				display_name: string
				id:           string
			}]
			os_name:           string
			location:          string
			updates_available: int
		}
		managed_instance_group_remove_packages_management: {
			managed_instance_group_id!: string
			package_names!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		managed_instance_group_attach_managed_instances_management: {
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_group_id!: string
			managed_instances!: [...string]
		}
		managed_instance_group_update_all_packages_management: {
			managed_instance_group_id!: string
			update_types?: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		managed_instance_group_install_packages_management: {
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_group_id!: string
			package_names!: [...string]
		}
		managed_instance_group_install_windows_updates_management: {
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_group_id!: string
			windows_update_types!: [...string]
		}
		managed_instance_attach_profile_management: {
			profile_id!:          string
			managed_instance_id!: string
		}
		managed_instance_group_attach_software_sources_management: {
			managed_instance_group_id!: string
			software_sources!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		managed_instance_group_detach_managed_instances_management: {
			managed_instance_group_id!: string
			managed_instances!: [...string]
		}
		managed_instance_group_detach_software_sources_management: {
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_group_id!: string
			software_sources!: [...string]
		}
		management_station_synchronize_mirrors_management: {
			management_station_id!: string
			software_source_list!: [...string]
		}
		scheduled_job: {
			locations?: [...string]
			is_restricted:               bool
			display_name?:               string
			is_subcompartment_included?: bool
			schedule_type!:              string
			time_last_execution:         string
			compartment_id!:             string
			time_next_execution!:        string
			lifecycle_stage_ids?: [...string]
			is_managed_by_autonomous_linux?: bool
			recurring_rule?:                 string
			description?:                    string
			time_created:                    string
			freeform_tags?: [_]: string
			managed_instance_ids?: [...string]
			time_updated: string
			defined_tags?: [_]: string
			managed_compartment_ids?: [...string]
			state: string
			system_tags: [_]: string
			managed_instance_group_ids?: [...string]
			retry_intervals?: [...int]
			operations!: [...{
				windows_update_names?: [...string]
				operation_type!: string
				manage_module_streams_details?: [...{
					remove?: [...{
						module_name!:        string
						profile_name!:       string
						stream_name!:        string
						software_source_id?: string
					}]
					disable?: [...{
						stream_name!:        string
						software_source_id?: string
						module_name!:        string
					}]
					enable?: [...{
						stream_name!:        string
						software_source_id?: string
						module_name!:        string
					}]
					install?: [...{
						module_name!:        string
						profile_name!:       string
						stream_name!:        string
						software_source_id?: string
					}]
				}]
				package_names?: [...string]
				software_source_ids?: [...string]
				switch_module_streams_details?: [...{
					stream_name!:        string
					software_source_id?: string
					module_name!:        string
				}]
			}]
			work_request_ids: [...string]
		}
		lifecycle_environment: {
			description?: string
			freeform_tags?: [_]: string
			vendor_name!:    string
			time_modified:   string
			time_created:    string
			compartment_id!: string
			os_family!:      string
			state:           string
			defined_tags?: [_]: string
			stages!: [...{
				display_name!: string
				freeform_tags?: [_]: string
				location: string
				managed_instance_ids: [...{
					id:           string
					display_name: string
				}]
				state:                    string
				lifecycle_environment_id: string
				os_family:                string
				id:                       string
				time_created:             string
				time_modified:            string
				defined_tags?: [_]: string
				rank!: int
				system_tags: [_]: string
				vendor_name: string
				arch_type:   string
				software_source_id: [...{
					id:                                string
					is_mandatory_for_autonomous_linux: bool
					software_source_type:              string
					description:                       string
					display_name:                      string
				}]
				compartment_id?: string
			}]
			managed_instance_ids: [...{
				display_name: string
				id:           string
			}]
			arch_type!:    string
			display_name!: string
			system_tags: [_]: string
			location?: string
		}
		lifecycle_stage_attach_managed_instances_management: {
			lifecycle_stage_id!: string
			managed_instance_details?: [...{
				work_request_details?: [...{
					description?:  string
					display_name?: string
				}]
				managed_instances!: [...string]
			}]
		}
		managed_instance_group_manage_module_streams_management: {
			managed_instance_group_id!: string
			disable?: [...{
				module_name!:        string
				stream_name!:        string
				software_source_id?: string
			}]
			enable?: [...{
				module_name!:        string
				stream_name!:        string
				software_source_id?: string
			}]
			install?: [...{
				module_name!:        string
				profile_name!:       string
				stream_name!:        string
				software_source_id?: string
			}]
			is_dry_run?: bool
			remove?: [...{
				module_name!:        string
				profile_name!:       string
				stream_name!:        string
				software_source_id?: string
			}]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		managed_instance_install_windows_updates_management: {
			managed_instance_id!: string
			windows_update_name?: [...string]
			windows_update_types?: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		management_station_refresh_management: management_station_id!: string
		profile: {
			lifecycle_stage_id?:        string
			managed_instance_group_id?: string
			managed_instance_group: [...{
				display_name: string
				id:           string
			}]
			profile_type!: string
			freeform_tags?: [_]: string
			state: string
			lifecycle_environment: [...{
				display_name: string
				id:           string
			}]
			display_name!:               string
			arch_type?:                  string
			os_family?:                  string
			is_service_provided_profile: bool
			time_created:                string
			registration_type?:          string
			compartment_id!:             string
			lifecycle_stage: [...{
				id:           string
				display_name: string
			}]
			vendor_name?: string
			system_tags: [_]: string
			software_source_ids?: [...string]
			software_sources: [...{
				display_name:                      string
				id:                                string
				is_mandatory_for_autonomous_linux: bool
				software_source_type:              string
				description:                       string
			}]
			is_default_profile?:    bool
			management_station_id?: string
			defined_tags?: [_]: string
			description?: string
		}
		managed_instance_detach_profile_management: managed_instance_id!: string
		software_source: {
			package_count: string
			repo_id:       string
			packages?: [...string]
			defined_tags?: [_]: string
			is_latest_content_only?:  bool
			availability_at_oci:      string
			compartment_id!:          string
			software_source_version?: string
			custom_software_source_filter?: [...{
				package_filters?: [...{
					filter_type?:          string
					package_name?:         string
					package_name_pattern?: string
					package_version?:      string
				}]
				package_group_filters?: [...{
					filter_type?: string
					package_groups?: [...string]
				}]
				module_stream_profile_filters?: [...{
					stream_name?:  string
					filter_type?:  string
					module_name?:  string
					profile_name?: string
				}]
			}]
			size:                       float
			origin_software_source_id?: string
			description?:               string
			state:                      string
			freeform_tags?: [_]: string
			software_source_type!:     string
			is_automatically_updated?: bool
			checksum_type:             string
			time_created:              string
			vendor_software_sources?: [...{
				display_name?: string
				id?:           string
			}]
			availability:                      string
			gpg_key_url:                       string
			is_mandatory_for_autonomous_linux: bool
			gpg_key_fingerprint:               string
			is_created_from_package_list?:     bool
			os_family:                         string
			is_auto_resolve_dependencies?:     bool
			arch_type:                         string
			system_tags: [_]: string
			display_name?: string
			vendor_name:   string
			gpg_key_id:    string
			url:           string
		}
	}
	arguments: {
		lifecycle_stage_promote_software_source_management: {
			lifecycle_stage_id!: string
			software_source_id?: string
			work_request_details?: [...{
				display_name?: string
				description?:  string
			}]
		}
		software_source_change_availability_management: software_source_availabilities!: [...{
			availability?:        string
			availability_at_oci?: string
			software_source_id!:  string
		}]
		managed_instance_group: {
			freeform_tags?: [_]: string
			compartment_id!: string
			managed_instance_ids?: [...string]
			notification_topic_id?: string
			software_source_ids?: [...string]
			display_name!: string
			defined_tags?: [_]: string
			os_family!:   string
			description?: string
			autonomous_settings?: [...{
				is_data_collection_authorized?: bool
			}]
			arch_type!:   string
			vendor_name!: string
			location?:    string
		}
		managed_instance_update_packages_management: {
			update_types?: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_id!: string
			package_names?: [...string]
		}
		management_station: {
			compartment_id!:  string
			display_name!:    string
			description?:     string
			refresh_trigger?: int
			mirror!: [...{
				sslcert?:   string
				directory!: string
				port!:      string
				sslport!:   string
			}]
			proxy!: [...{
				forward?: string
				hosts?: [...string]
				port?:       string
				is_enabled!: bool
			}]
			freeform_tags?: [_]: string
			hostname!: string
			defined_tags?: [_]: string
		}
		software_source_add_packages_management: {
			packages!: [...string]
			software_source_id!: string
		}
		management_station_mirror_synchronize_management: {
			mirror_id!:             string
			management_station_id!: string
		}
		event: {
			compartment_id?: string
			defined_tags?: [_]: string
			event_id!: string
			freeform_tags?: [_]: string
		}
		lifecycle_stage_detach_managed_instances_management: {
			lifecycle_stage_id!: string
			managed_instance_details?: [...{
				managed_instances!: [...string]
				work_request_details?: [...{
					description?:  string
					display_name?: string
				}]
			}]
		}
		managed_instance: {
			description?: string
			autonomous_settings?: [...{
				is_data_collection_authorized?: bool
			}]
			primary_management_station_id?:   string
			managed_instance_id!:             string
			notification_topic_id?:           string
			secondary_management_station_id?: string
		}
		managed_instance_group_remove_packages_management: {
			managed_instance_group_id!: string
			package_names!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		managed_instance_group_attach_managed_instances_management: {
			managed_instance_group_id!: string
			managed_instances!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		managed_instance_group_update_all_packages_management: {
			update_types?: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_group_id!: string
		}
		managed_instance_group_install_packages_management: {
			managed_instance_group_id!: string
			package_names!: [...string]
			work_request_details?: [...{
				display_name?: string
				description?:  string
			}]
		}
		managed_instance_group_install_windows_updates_management: {
			managed_instance_group_id!: string
			windows_update_types!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		managed_instance_attach_profile_management: {
			profile_id!:          string
			managed_instance_id!: string
		}
		managed_instance_group_attach_software_sources_management: {
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_group_id!: string
			software_sources!: [...string]
		}
		managed_instance_group_detach_managed_instances_management: {
			managed_instance_group_id!: string
			managed_instances!: [...string]
		}
		managed_instance_group_detach_software_sources_management: {
			managed_instance_group_id!: string
			software_sources!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		management_station_synchronize_mirrors_management: {
			management_station_id!: string
			software_source_list!: [...string]
		}
		scheduled_job: {
			description?: string
			managed_compartment_ids?: [...string]
			time_next_execution!:            string
			is_managed_by_autonomous_linux?: bool
			managed_instance_group_ids?: [...string]
			locations?: [...string]
			defined_tags?: [_]: string
			retry_intervals?: [...int]
			freeform_tags?: [_]: string
			schedule_type!:              string
			is_subcompartment_included?: bool
			display_name?:               string
			compartment_id!:             string
			managed_instance_ids?: [...string]
			lifecycle_stage_ids?: [...string]
			recurring_rule?: string
			operations!: [...{
				software_source_ids?: [...string]
				switch_module_streams_details?: [...{
					module_name!:        string
					stream_name!:        string
					software_source_id?: string
				}]
				windows_update_names?: [...string]
				operation_type!: string
				manage_module_streams_details?: [...{
					disable?: [...{
						software_source_id?: string
						module_name!:        string
						stream_name!:        string
					}]
					enable?: [...{
						module_name!:        string
						stream_name!:        string
						software_source_id?: string
					}]
					install?: [...{
						module_name!:        string
						profile_name!:       string
						stream_name!:        string
						software_source_id?: string
					}]
					remove?: [...{
						stream_name!:        string
						software_source_id?: string
						module_name!:        string
						profile_name!:       string
					}]
				}]
				package_names?: [...string]
			}]
		}
		lifecycle_environment: {
			os_family!:      string
			location?:       string
			compartment_id!: string
			defined_tags?: [_]: string
			vendor_name!: string
			arch_type!:   string
			stages!: [...{
				display_name!:   string
				compartment_id?: string
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
				rank!: int
			}]
			description?: string
			freeform_tags?: [_]: string
			display_name!: string
		}
		lifecycle_stage_attach_managed_instances_management: {
			lifecycle_stage_id!: string
			managed_instance_details?: [...{
				managed_instances!: [...string]
				work_request_details?: [...{
					description?:  string
					display_name?: string
				}]
			}]
		}
		managed_instance_group_manage_module_streams_management: {
			disable?: [...{
				module_name!:        string
				stream_name!:        string
				software_source_id?: string
			}]
			enable?: [...{
				module_name!:        string
				stream_name!:        string
				software_source_id?: string
			}]
			install?: [...{
				software_source_id?: string
				module_name!:        string
				profile_name!:       string
				stream_name!:        string
			}]
			is_dry_run?: bool
			remove?: [...{
				stream_name!:        string
				software_source_id?: string
				module_name!:        string
				profile_name!:       string
			}]
			work_request_details?: [...{
				display_name?: string
				description?:  string
			}]
			managed_instance_group_id!: string
		}
		managed_instance_install_windows_updates_management: {
			managed_instance_id!: string
			windows_update_name?: [...string]
			windows_update_types?: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		management_station_refresh_management: management_station_id!: string
		profile: {
			lifecycle_stage_id?: string
			profile_type!:       string
			freeform_tags?: [_]: string
			vendor_name?:        string
			is_default_profile?: bool
			software_source_ids?: [...string]
			managed_instance_group_id?: string
			arch_type?:                 string
			compartment_id!:            string
			display_name!:              string
			defined_tags?: [_]: string
			description?:           string
			management_station_id?: string
			os_family?:             string
			registration_type?:     string
		}
		managed_instance_detach_profile_management: managed_instance_id!: string
		software_source: {
			custom_software_source_filter?: [...{
				module_stream_profile_filters?: [...{
					profile_name?: string
					stream_name?:  string
					filter_type?:  string
					module_name?:  string
				}]
				package_filters?: [...{
					package_name_pattern?: string
					package_version?:      string
					filter_type?:          string
					package_name?:         string
				}]
				package_group_filters?: [...{
					package_groups?: [...string]
					filter_type?: string
				}]
			}]
			vendor_software_sources?: [...{
				display_name?: string
				id?:           string
			}]
			software_source_version?: string
			freeform_tags?: [_]: string
			software_source_type!: string
			packages?: [...string]
			is_auto_resolve_dependencies?: bool
			description?:                  string
			is_automatically_updated?:     bool
			compartment_id!:               string
			origin_software_source_id?:    string
			defined_tags?: [_]: string
			display_name?:                 string
			is_created_from_package_list?: bool
			is_latest_content_only?:       bool
		}
	}
}
#data: {
	management_station: management_station_id!: string
	scheduled_job: scheduled_job_id!: string
	software_sources: {
		display_name_not_equal_to?: [...string]
		software_source_id?:    string
		display_name_contains?: string
		vendor_name?:           string
		os_family?: [...string]
		availability?: [...string]
		availability_at_oci?: [...string]
		software_source_type?: [...string]
		is_mandatory_for_autonomous_linux?: bool
		arch_type?: [...string]
		compartment_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?: string
		state?: [...string]
		availability_anywhere?: [...string]
	}
	entitlements: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		csi?:            string
		vendor_name?:    string
	}
	lifecycle_environments: {
		lifecycle_environment_id?: string
		location_not_equal_to?: [...string]
		compartment_id?: string
		os_family?:      string
		state?:          string
		display_name?: [...string]
		display_name_contains?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		arch_type?: string
		location?: [...string]
	}
	managed_instance_group: managed_instance_group_id!: string
	managed_instance_group_available_packages: {
		compartment_id?: string
		display_name?: [...string]
		display_name_contains?:     string
		is_latest?:                 bool
		managed_instance_group_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	managed_instance_modules: {
		managed_instance_id!: string
		name?:                string
		name_contains?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	managed_instance_updatable_packages: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		advisory_name?: [...string]
		classification_type?: [...string]
		compartment_id?: string
		display_name?: [...string]
		display_name_contains?: string
		managed_instance_id!:   string
	}
	management_station_mirrors: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:          string
		display_name_contains?: string
		management_station_id!: string
		mirror_states?: [...string]
	}
	profile: profile_id!: string
	errata: {
		time_issue_date_end?:   string
		time_issue_date_start?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		advisory_type?: [...string]
		advisory_severity?: [...string]
		classification_type?: [...string]
		name?: [...string]
		os_family?:      string
		compartment_id!: string
		name_contains?:  string
	}
	events: {
		event_fingerprint?:              string
		event_summary?:                  string
		id?:                             string
		is_managed_by_autonomous_linux?: bool
		state?:                          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:         string
		time_created_less_than?: string
		resource_id?:            string
		type?: [...string]
		event_summary_contains?:                string
		time_created_greater_than_or_equal_to?: string
	}
	managed_instance_available_software_sources: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?: [...string]
		display_name_contains?: string
		managed_instance_id!:   string
	}
	managed_instance_available_windows_updates: {
		display_name?:          string
		display_name_contains?: string
		managed_instance_id!:   string
		name?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		is_installable?: string
		classification_type?: [...string]
		compartment_id?: string
	}
	software_source: software_source_id!: string
	software_source_module_stream_profile: {
		profile_name!:       string
		software_source_id!: string
		stream_name!:        string
		module_name!:        string
	}
	software_source_package_group: {
		package_group_id!:   string
		software_source_id!: string
	}
	windows_updates: {
		classification_type?: [...string]
		compartment_id!:        string
		display_name_contains?: string
		name?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	software_source_software_packages: {
		software_source_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:          string
		display_name_contains?: string
		is_latest?:             bool
	}
	software_source_vendors: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		name?:           string
	}
	lifecycle_environment: lifecycle_environment_id!: string
	managed_instance_available_packages: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		display_name?: [...string]
		display_name_contains?: string
		managed_instance_id!:   string
	}
	managed_instance_installed_packages: {
		display_name_contains?:   string
		managed_instance_id!:     string
		time_install_date_end?:   string
		time_install_date_start?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		display_name?: [...string]
	}
	managed_instances: {
		advisory_name?: [...string]
		is_managed_by_autonomous_linux?: bool
		status?: [...string]
		lifecycle_environment_not_equal_to?: string
		profile?: [...string]
		compartment_id?: string
		os_family?: [...string]
		location_not_equal_to?: [...string]
		is_profile_attached?: bool
		display_name?: [...string]
		display_name_contains?: string
		location?: [...string]
		profile_not_equal_to?: [...string]
		arch_type?: [...string]
		group_not_equal_to?:                      string
		is_attached_to_group_or_lifecycle_stage?: bool
		is_management_station?:                   bool
		lifecycle_stage?:                         string
		lifecycle_stage_not_equal_to?:            string
		managed_instance_id?:                     string
		group?:                                   string
		software_source_id?:                      string
		lifecycle_environment?:                   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	erratum: {
		name!:           string
		compartment_id!: string
	}
	lifecycle_stage: lifecycle_stage_id!: string
	managed_instance_group_modules: {
		name_contains?: string
		stream_name?:   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:            string
		managed_instance_group_id!: string
		name?:                      string
	}
	software_source_module_stream_profiles: {
		software_source_id!: string
		stream_name?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		module_name?: string
		name?:        string
	}
	software_package_software_source: {
		availability?: [...string]
		software_source_type?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		arch_type?: [...string]
		os_family?: [...string]
		software_package_name!: string
		state?: [...string]
		availability_anywhere?: [...string]
		availability_at_oci?: [...string]
		compartment_id!:        string
		display_name?:          string
		display_name_contains?: string
	}
	software_source_module_streams: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		is_latest?:            bool
		module_name?:          string
		module_name_contains?: string
		name?:                 string
		software_source_id!:   string
	}
	windows_update: windows_update_id!: string
	event: event_id!: string
	managed_instance: managed_instance_id!: string
	managed_instance_group_available_software_sources: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		display_name?: [...string]
		display_name_contains?:     string
		managed_instance_group_id!: string
	}
	managed_instance_group_installed_packages: {
		time_install_date_start?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		display_name?: [...string]
		display_name_contains?:     string
		managed_instance_group_id!: string
		time_install_date_end?:     string
	}
	software_source_package_groups: {
		group_type?: [...string]
		name?:               string
		name_contains?:      string
		software_source_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	software_source_software_package: {
		software_source_id!:    string
		software_package_name!: string
	}
	lifecycle_stages: {
		location_not_equal_to?: [...string]
		os_family?:          string
		arch_type?:          string
		lifecycle_stage_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:     string
		software_source_id?: string
		state?:              string
		display_name?: [...string]
		location?: [...string]
		display_name_contains?: string
	}
	managed_instance_groups: {
		display_name_contains?: string
		software_source_id?:    string
		state?:                 string
		arch_type?:             string
		location?: [...string]
		location_not_equal_to?: [...string]
		managed_instance_group_id?: string
		display_name?: [...string]
		os_family?:                      string
		compartment_id?:                 string
		is_managed_by_autonomous_linux?: bool
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	managed_instance_installed_windows_updates: {
		display_name?:          string
		display_name_contains?: string
		managed_instance_id!:   string
		name?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	scheduled_jobs: {
		operation_type?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:       string
		state?:              string
		schedule_type?:      string
		time_end?:           string
		lifecycle_stage_id?: string
		location?: [...string]
		managed_instance_id?:            string
		is_managed_by_autonomous_linux?: bool
		display_name_contains?:          string
		id?:                             string
		compartment_id?:                 string
		compartment_id_in_subtree?:      bool
		is_restricted?:                  bool
		location_not_equal_to?: [...string]
		managed_instance_group_id?: string
		time_start?:                string
		managed_compartment_id?:    string
	}
	managed_instance_group_available_modules: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:            string
		managed_instance_group_id!: string
		name?:                      string
		name_contains?:             string
	}
	software_source_module_stream: {
		module_name!:        string
		software_source_id!: string
		stream_name!:        string
	}
	software_packages: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		architecture?:          string
		display_name?:          string
		display_name_contains?: string
		is_latest?:             bool
		os_family?:             string
		version?:               string
	}
	managed_instance_errata: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		classification_type?: [...string]
		compartment_id?:      string
		managed_instance_id!: string
		name?: [...string]
		name_contains?: string
	}
	management_stations: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:        string
		display_name?:          string
		display_name_contains?: string
		id?:                    string
		managed_instance_id?:   string
		state?:                 string
	}
	profiles: {
		display_name_contains?: string
		registration_type?: [...string]
		profile_id?: string
		profile_type?: [...string]
		compartment_id?:     string
		os_family?:          string
		arch_type?:          string
		is_default_profile?: bool
		display_name?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		state?:                       string
		vendor_name?:                 string
		is_service_provided_profile?: bool
	}
	software_package: software_package_name!: string
}

