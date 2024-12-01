package os_management_hub

#resource: {
	attributes: {
		management_station_refresh_management: management_station_id!: string
		management_station_synchronize_mirrors_management: {
			software_source_list!: [...string]
			management_station_id!: string
		}
		profile: {
			managed_instance_group: [...{
				id:           string
				display_name: string
			}]
			compartment_id!:    string
			profile_type!:      string
			registration_type?: string
			software_sources: [...{
				display_name:                      string
				id:                                string
				is_mandatory_for_autonomous_linux: bool
				software_source_type:              string
				description:                       string
			}]
			software_source_ids?: [...string]
			lifecycle_stage: [...{
				display_name: string
				id:           string
			}]
			lifecycle_environment: [...{
				display_name: string
				id:           string
			}]
			state:               string
			lifecycle_stage_id?: string
			os_family?:          string
			system_tags: [_]: string
			display_name!:              string
			managed_instance_group_id?: string
			time_created:               string
			description?:               string
			management_station_id?:     string
			arch_type?:                 string
			freeform_tags?: [_]: string
			is_service_provided_profile: bool
			defined_tags?: [_]: string
			is_default_profile?: bool
			vendor_name?:        string
		}
		software_source: {
			software_source_version?:          string
			repo_id:                           string
			arch_type:                         string
			is_latest_content_only?:           bool
			compartment_id!:                   string
			availability:                      string
			url:                               string
			is_created_from_package_list?:     bool
			package_count:                     string
			state:                             string
			gpg_key_url:                       string
			is_mandatory_for_autonomous_linux: bool
			display_name?:                     string
			description?:                      string
			vendor_name:                       string
			software_source_type!:             string
			custom_software_source_filter?: [...{
				module_stream_profile_filters?: [...{
					filter_type?:  string
					module_name?:  string
					profile_name?: string
					stream_name?:  string
				}]
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
			}]
			availability_at_oci: string
			vendor_software_sources?: [...{
				display_name?: string
				id?:           string
			}]
			gpg_key_id: string
			packages?: [...string]
			freeform_tags?: [_]: string
			checksum_type:                 string
			is_auto_resolve_dependencies?: bool
			gpg_key_fingerprint:           string
			time_created:                  string
			size:                          float
			os_family:                     string
			defined_tags?: [_]: string
			is_automatically_updated?:  bool
			origin_software_source_id?: string
			system_tags: [_]: string
		}
		software_source_add_packages_management: {
			packages!: [...string]
			software_source_id!: string
		}
		managed_instance_group_install_packages_management: {
			package_names!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_group_id!: string
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
		management_station: {
			mirror_sync_status: [...{
				queued:   int
				synced:   int
				syncing:  int
				unsynced: int
				failed:   int
			}]
			state:        string
			description?: string
			health: [...{
				description: string
				state:       string
			}]
			refresh_trigger?: int
			system_tags: [_]: string
			mirror!: [...{
				directory!: string
				port!:      string
				sslport!:   string
				sslcert?:   string
			}]
			display_name!:       string
			managed_instance_id: string
			overall_state:       string
			freeform_tags?: [_]: string
			total_mirrors:   int
			mirror_capacity: int
			proxy!: [...{
				is_enabled!: bool
				forward?:    string
				hosts?: [...string]
				port?: string
			}]
			overall_percentage: int
			compartment_id!:    string
			defined_tags?: [_]: string
			scheduled_job_id: string
			hostname!:        string
			profile_id:       string
		}
		event: {
			type:                           string
			is_managed_by_autonomous_linux: bool
			time_created:                   string
			lifecycle_details:              string
			defined_tags?: [_]: string
			data: [...{
				operation_type:      string
				reason:              string
				status:              string
				time_first_occurred: string
				additional_details: [...{
					exploit_cves: [...string]
					initiator_id: string
					vmcore: [...{
						backtrace: string
						component: string
					}]
					work_request_ids: [...string]
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
			freeform_tags?: [_]: string
			resource_id:   string
			state:         string
			time_occurred: string
			time_updated:  string
			event_details: string
			system_tags: [_]: string
			event_summary: string
			system_details: [...{
				os_name:                          string
				os_system_version:                string
				architecture:                     string
				ksplice_effective_kernel_version: string
				os_family:                        string
				os_kernel_release:                string
				os_kernel_version:                string
			}]
			compartment_id?: string
			event_id!:       string
		}
		managed_instance_group_attach_managed_instances_management: {
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_group_id!: string
			managed_instances!: [...string]
		}
		managed_instance_group_attach_software_sources_management: {
			work_request_details?: [...{
				display_name?: string
				description?:  string
			}]
			managed_instance_group_id!: string
			software_sources!: [...string]
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
		lifecycle_environment: {
			compartment_id!: string
			defined_tags?: [_]: string
			arch_type!:   string
			description?: string
			system_tags: [_]: string
			time_modified: string
			stages!: [...{
				time_created:  string
				time_modified: string
				rank!:         int
				location:      string
				state:         string
				software_source_id: [...{
					description:                       string
					display_name:                      string
					id:                                string
					is_mandatory_for_autonomous_linux: bool
					software_source_type:              string
				}]
				managed_instance_ids: [...{
					display_name: string
					id:           string
				}]
				os_family:                string
				id:                       string
				lifecycle_environment_id: string
				display_name!:            string
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
				arch_type:   string
				vendor_name: string
				system_tags: [_]: string
				compartment_id?: string
			}]
			os_family!:    string
			vendor_name!:  string
			display_name!: string
			managed_instance_ids: [...{
				id:           string
				display_name: string
			}]
			freeform_tags?: [_]: string
			location?:    string
			state:        string
			time_created: string
		}
		managed_instance_detach_profile_management: managed_instance_id!: string
		managed_instance_group_remove_packages_management: {
			package_names!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_group_id!: string
		}
		lifecycle_stage_promote_software_source_management: {
			lifecycle_stage_id!: string
			software_source_id?: string
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		managed_instance_group_detach_software_sources_management: {
			managed_instance_group_id!: string
			software_sources!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
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
		managed_instance_update_packages_management: {
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_id!: string
			package_names?: [...string]
			update_types?: [...string]
		}
		software_source_change_availability_management: software_source_availabilities!: [...{
			availability_at_oci?: string
			software_source_id!:  string
			availability?:        string
		}]
		managed_instance_group_detach_managed_instances_management: {
			managed_instance_group_id!: string
			managed_instances!: [...string]
		}
		managed_instance_attach_profile_management: {
			managed_instance_id!: string
			profile_id!:          string
		}
		managed_instance_group_update_all_packages_management: {
			managed_instance_group_id!: string
			update_types?: [...string]
			work_request_details?: [...{
				display_name?: string
				description?:  string
			}]
		}
		scheduled_job: {
			operations!: [...{
				windows_update_names?: [...string]
				operation_type!: string
				manage_module_streams_details?: [...{
					install?: [...{
						module_name!:        string
						profile_name!:       string
						stream_name!:        string
						software_source_id?: string
					}]
					remove?: [...{
						software_source_id?: string
						module_name!:        string
						profile_name!:       string
						stream_name!:        string
					}]
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
				}]
				package_names?: [...string]
				software_source_ids?: [...string]
				switch_module_streams_details?: [...{
					module_name!:        string
					stream_name!:        string
					software_source_id?: string
				}]
			}]
			retry_intervals?: [...int]
			locations?: [...string]
			system_tags: [_]: string
			time_created: string
			work_request_ids: [...string]
			time_updated: string
			description?: string
			state:        string
			managed_compartment_ids?: [...string]
			recurring_rule?: string
			managed_instance_group_ids?: [...string]
			time_last_execution: string
			defined_tags?: [_]: string
			display_name?: string
			is_restricted: bool
			managed_instance_ids?: [...string]
			is_managed_by_autonomous_linux?: bool
			lifecycle_stage_ids?: [...string]
			schedule_type!:       string
			time_next_execution!: string
			freeform_tags?: [_]: string
			is_subcompartment_included?: bool
			compartment_id!:             string
		}
		managed_instance: {
			location:                   string
			security_updates_available: int
			tenancy_id:                 string
			is_management_station:      bool
			managed_instance_group: [...{
				display_name: string
				id:           string
			}]
			os_kernel_version: string
			time_created:      string
			autonomous_settings?: [...{
				is_data_collection_authorized?: bool
				scheduled_job_id:               string
			}]
			software_sources: [...{
				id:                                string
				is_mandatory_for_autonomous_linux: bool
				software_source_type:              string
				description:                       string
				display_name:                      string
			}]
			updates_available:                int
			profile:                          string
			time_last_checkin:                string
			os_name:                          string
			enhancement_updates_available:    int
			scheduled_job_count:              int
			managed_instance_id!:             string
			bug_updates_available:            int
			time_last_boot:                   string
			os_family:                        string
			compartment_id:                   string
			display_name:                     string
			description?:                     string
			ksplice_effective_kernel_version: string
			lifecycle_environment: [...{
				id:           string
				display_name: string
			}]
			work_request_count:               int
			secondary_management_station_id?: string
			primary_management_station_id?:   string
			installed_windows_updates:        int
			installed_packages:               int
			time_updated:                     string
			is_managed_by_autonomous_linux:   bool
			os_version:                       string
			lifecycle_stage: [...{
				id:           string
				display_name: string
			}]
			notification_topic_id?:  string
			is_reboot_required:      bool
			status:                  string
			architecture:            string
			other_updates_available: int
		}
		managed_instance_group_manage_module_streams_management: {
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
			managed_instance_group_id!: string
			disable?: [...{
				module_name!:        string
				stream_name!:        string
				software_source_id?: string
			}]
			enable?: [...{
				stream_name!:        string
				software_source_id?: string
				module_name!:        string
			}]
			install?: [...{
				software_source_id?: string
				module_name!:        string
				profile_name!:       string
				stream_name!:        string
			}]
		}
		management_station_mirror_synchronize_management: {
			management_station_id!: string
			mirror_id!:             string
		}
		managed_instance_group: {
			time_modified: string
			arch_type!:    string
			system_tags: [_]: string
			state: string
			defined_tags?: [_]: string
			software_sources: [...{
				is_mandatory_for_autonomous_linux: bool
				software_source_type:              string
				description:                       string
				display_name:                      string
				id:                                string
			}]
			location?:       string
			display_name!:   string
			os_family!:      string
			compartment_id!: string
			description?:    string
			managed_instance_ids?: [...string]
			vendor_name!:           string
			notification_topic_id?: string
			autonomous_settings?: [...{
				is_data_collection_authorized?: bool
				scheduled_job_id:               string
			}]
			software_source_ids?: [...string]
			managed_instance_count: int
			pending_job_count:      int
			freeform_tags?: [_]: string
			is_managed_by_autonomous_linux: bool
			time_created:                   string
		}
	}
	arguments: {
		management_station_refresh_management: management_station_id!: string
		management_station_synchronize_mirrors_management: {
			management_station_id!: string
			software_source_list!: [...string]
		}
		profile: {
			display_name!: string
			freeform_tags?: [_]: string
			compartment_id!:        string
			is_default_profile?:    bool
			os_family?:             string
			lifecycle_stage_id?:    string
			management_station_id?: string
			software_source_ids?: [...string]
			arch_type?:                 string
			vendor_name?:               string
			managed_instance_group_id?: string
			profile_type!:              string
			description?:               string
			registration_type?:         string
			defined_tags?: [_]: string
		}
		software_source: {
			is_auto_resolve_dependencies?: bool
			display_name?:                 string
			compartment_id!:               string
			description?:                  string
			software_source_version?:      string
			software_source_type!:         string
			custom_software_source_filter?: [...{
				module_stream_profile_filters?: [...{
					filter_type?:  string
					module_name?:  string
					profile_name?: string
					stream_name?:  string
				}]
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
			}]
			vendor_software_sources?: [...{
				display_name?: string
				id?:           string
			}]
			defined_tags?: [_]: string
			origin_software_source_id?:    string
			is_created_from_package_list?: bool
			is_latest_content_only?:       bool
			packages?: [...string]
			freeform_tags?: [_]: string
			is_automatically_updated?: bool
		}
		software_source_add_packages_management: {
			packages!: [...string]
			software_source_id!: string
		}
		managed_instance_group_install_packages_management: {
			managed_instance_group_id!: string
			package_names!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
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
		management_station: {
			proxy!: [...{
				hosts?: [...string]
				port?:       string
				is_enabled!: bool
				forward?:    string
			}]
			freeform_tags?: [_]: string
			refresh_trigger?: int
			display_name!:    string
			hostname!:        string
			description?:     string
			compartment_id!:  string
			mirror!: [...{
				sslcert?:   string
				directory!: string
				port!:      string
				sslport!:   string
			}]
			defined_tags?: [_]: string
		}
		event: {
			compartment_id?: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			event_id!: string
		}
		managed_instance_group_attach_managed_instances_management: {
			managed_instance_group_id!: string
			managed_instances!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		managed_instance_group_attach_software_sources_management: {
			managed_instance_group_id!: string
			software_sources!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		managed_instance_install_windows_updates_management: {
			windows_update_types?: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			managed_instance_id!: string
			windows_update_name?: [...string]
		}
		lifecycle_environment: {
			location?: string
			defined_tags?: [_]: string
			description?: string
			arch_type!:   string
			vendor_name!: string
			os_family!:   string
			freeform_tags?: [_]: string
			display_name!: string
			stages!: [...{
				freeform_tags?: [_]: string
				compartment_id?: string
				display_name!:   string
				rank!:           int
				defined_tags?: [_]: string
			}]
			compartment_id!: string
		}
		managed_instance_detach_profile_management: managed_instance_id!: string
		managed_instance_group_remove_packages_management: {
			managed_instance_group_id!: string
			package_names!: [...string]
			work_request_details?: [...{
				display_name?: string
				description?:  string
			}]
		}
		lifecycle_stage_promote_software_source_management: {
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
			lifecycle_stage_id!: string
			software_source_id?: string
		}
		managed_instance_group_detach_software_sources_management: {
			managed_instance_group_id!: string
			software_sources!: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
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
		managed_instance_update_packages_management: {
			managed_instance_id!: string
			package_names?: [...string]
			update_types?: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		software_source_change_availability_management: software_source_availabilities!: [...{
			software_source_id!:  string
			availability?:        string
			availability_at_oci?: string
		}]
		managed_instance_group_detach_managed_instances_management: {
			managed_instance_group_id!: string
			managed_instances!: [...string]
		}
		managed_instance_attach_profile_management: {
			managed_instance_id!: string
			profile_id!:          string
		}
		managed_instance_group_update_all_packages_management: {
			managed_instance_group_id!: string
			update_types?: [...string]
			work_request_details?: [...{
				description?:  string
				display_name?: string
			}]
		}
		scheduled_job: {
			retry_intervals?: [...int]
			recurring_rule?: string
			freeform_tags?: [_]: string
			schedule_type!:              string
			compartment_id!:             string
			display_name?:               string
			is_subcompartment_included?: bool
			operations!: [...{
				manage_module_streams_details?: [...{
					disable?: [...{
						stream_name!:        string
						software_source_id?: string
						module_name!:        string
					}]
					enable?: [...{
						module_name!:        string
						stream_name!:        string
						software_source_id?: string
					}]
					install?: [...{
						stream_name!:        string
						software_source_id?: string
						module_name!:        string
						profile_name!:       string
					}]
					remove?: [...{
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
				windows_update_names?: [...string]
				operation_type!: string
			}]
			description?:                    string
			is_managed_by_autonomous_linux?: bool
			lifecycle_stage_ids?: [...string]
			locations?: [...string]
			managed_instance_group_ids?: [...string]
			time_next_execution!: string
			managed_instance_ids?: [...string]
			defined_tags?: [_]: string
			managed_compartment_ids?: [...string]
		}
		managed_instance: {
			notification_topic_id?:           string
			description?:                     string
			secondary_management_station_id?: string
			primary_management_station_id?:   string
			autonomous_settings?: [...{
				is_data_collection_authorized?: bool
			}]
			managed_instance_id!: string
		}
		managed_instance_group_manage_module_streams_management: {
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
			managed_instance_group_id!: string
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
		}
		management_station_mirror_synchronize_management: {
			management_station_id!: string
			mirror_id!:             string
		}
		managed_instance_group: {
			display_name!: string
			os_family!:    string
			defined_tags?: [_]: string
			vendor_name!: string
			autonomous_settings?: [...{
				is_data_collection_authorized?: bool
			}]
			arch_type!:             string
			notification_topic_id?: string
			description?:           string
			managed_instance_ids?: [...string]
			location?: string
			software_source_ids?: [...string]
			compartment_id!: string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	lifecycle_stage: lifecycle_stage_id!: string
	managed_instance_errata: {
		name_contains?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		classification_type?: [...string]
		compartment_id?:      string
		managed_instance_id!: string
		name?: [...string]
	}
	events: {
		event_summary_contains?: string
		id?:                     string
		resource_id?:            string
		type?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		is_managed_by_autonomous_linux?:        bool
		time_created_less_than?:                string
		state?:                                 string
		time_created_greater_than_or_equal_to?: string
		compartment_id?:                        string
		event_fingerprint?:                     string
		event_summary?:                         string
	}
	managed_instance_group_available_software_sources: {
		compartment_id?: string
		display_name?: [...string]
		display_name_contains?:     string
		managed_instance_group_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	scheduled_jobs: {
		compartment_id?:                 string
		state?:                          string
		display_name_contains?:          string
		compartment_id_in_subtree?:      bool
		is_managed_by_autonomous_linux?: bool
		location?: [...string]
		time_start?:          string
		managed_instance_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		location_not_equal_to?: [...string]
		managed_compartment_id?:    string
		lifecycle_stage_id?:        string
		operation_type?:            string
		display_name?:              string
		time_end?:                  string
		id?:                        string
		is_restricted?:             bool
		managed_instance_group_id?: string
		schedule_type?:             string
	}
	windows_updates: {
		display_name_contains?: string
		name?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		classification_type?: [...string]
		compartment_id!: string
	}
	entitlements: {
		compartment_id!: string
		csi?:            string
		vendor_name?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	managed_instance_group_installed_packages: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		display_name?: [...string]
		display_name_contains?:     string
		managed_instance_group_id!: string
		time_install_date_end?:     string
		time_install_date_start?:   string
	}
	managed_instance_updatable_packages: {
		managed_instance_id!: string
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
	}
	management_station: management_station_id!: string
	management_station_mirrors: {
		display_name_contains?: string
		management_station_id!: string
		mirror_states?: [...string]
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?: string
	}
	scheduled_job: scheduled_job_id!: string
	software_packages: {
		architecture?:          string
		display_name?:          string
		display_name_contains?: string
		is_latest?:             bool
		os_family?:             string
		version?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	erratum: {
		name!:           string
		compartment_id!: string
	}
	managed_instance_groups: {
		arch_type?:                      string
		compartment_id?:                 string
		is_managed_by_autonomous_linux?: bool
		location_not_equal_to?: [...string]
		managed_instance_group_id?: string
		display_name?: [...string]
		display_name_contains?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		state?: string
		location?: [...string]
		os_family?:          string
		software_source_id?: string
	}
	managed_instance_installed_packages: {
		display_name?: [...string]
		display_name_contains?:   string
		managed_instance_id!:     string
		time_install_date_end?:   string
		time_install_date_start?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
	}
	managed_instance_modules: {
		name_contains?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?:      string
		managed_instance_id!: string
		name?:                string
	}
	software_package: software_package_name!: string
	software_source: software_source_id!: string
	software_source_module_stream: {
		stream_name!:        string
		software_source_id!: string
		module_name!:        string
	}
	software_source_module_stream_profile: {
		profile_name!:       string
		software_source_id!: string
		stream_name!:        string
		module_name!:        string
	}
	software_source_module_streams: {
		software_source_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		is_latest?:            bool
		module_name?:          string
		module_name_contains?: string
		name?:                 string
	}
	software_source_package_group: {
		package_group_id!:   string
		software_source_id!: string
	}
	software_source_software_package: {
		software_package_name!: string
		software_source_id!:    string
	}
	windows_update: windows_update_id!: string
	errata: {
		advisory_type?: [...string]
		name_contains?: string
		os_family?:     string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		advisory_severity?: [...string]
		time_issue_date_end?: string
		classification_type?: [...string]
		time_issue_date_start?: string
		compartment_id!:        string
		name?: [...string]
	}
	lifecycle_stages: {
		state?:                 string
		compartment_id?:        string
		display_name_contains?: string
		location_not_equal_to?: [...string]
		arch_type?:          string
		lifecycle_stage_id?: string
		location?: [...string]
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?: [...string]
		software_source_id?: string
		os_family?:          string
	}
	managed_instance: managed_instance_id!: string
	managed_instance_available_packages: {
		display_name_contains?: string
		managed_instance_id!:   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		display_name?: [...string]
	}
	software_source_package_groups: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		group_type?: [...string]
		name?:               string
		name_contains?:      string
		software_source_id!: string
	}
	software_source_software_packages: {
		display_name_contains?: string
		is_latest?:             bool
		software_source_id!:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
	}
	software_sources: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability?: [...string]
		software_source_type?: [...string]
		availability_anywhere?: [...string]
		compartment_id?: string
		display_name_not_equal_to?: [...string]
		state?: [...string]
		arch_type?: [...string]
		vendor_name?:                       string
		display_name_contains?:             string
		is_mandatory_for_autonomous_linux?: bool
		os_family?: [...string]
		software_source_id?: string
		availability_at_oci?: [...string]
		display_name?: string
	}
	managed_instance_available_software_sources: {
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
	managed_instance_group: managed_instance_group_id!: string
	profile: profile_id!: string
	software_source_vendors: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
	}
	event: event_id!: string
	lifecycle_environment: lifecycle_environment_id!: string
	lifecycle_environments: {
		compartment_id?:           string
		lifecycle_environment_id?: string
		location?: [...string]
		location_not_equal_to?: [...string]
		state?:     string
		arch_type?: string
		display_name?: [...string]
		os_family?:             string
		display_name_contains?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	managed_instance_available_windows_updates: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		classification_type?: [...string]
		display_name?:          string
		managed_instance_id!:   string
		compartment_id?:        string
		display_name_contains?: string
		is_installable?:        string
		name?: [...string]
	}
	managed_instance_installed_windows_updates: {
		name?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:        string
		display_name?:          string
		display_name_contains?: string
		managed_instance_id!:   string
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
	software_source_module_stream_profiles: {
		name?:               string
		software_source_id!: string
		stream_name?:        string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		module_name?: string
	}
	managed_instance_group_available_modules: {
		name?:          string
		name_contains?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?:            string
		managed_instance_group_id!: string
	}
	managed_instance_group_available_packages: {
		is_latest?:                 bool
		managed_instance_group_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?: [...string]
		display_name_contains?: string
	}
	managed_instance_group_modules: {
		name?:          string
		name_contains?: string
		stream_name?:   string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?:            string
		managed_instance_group_id!: string
	}
	managed_instances: {
		arch_type?: [...string]
		is_managed_by_autonomous_linux?: bool
		location?: [...string]
		advisory_name?: [...string]
		group?:                 string
		software_source_id?:    string
		display_name_contains?: string
		profile?: [...string]
		is_profile_attached?: bool
		lifecycle_stage?:     string
		profile_not_equal_to?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		location_not_equal_to?: [...string]
		lifecycle_environment_not_equal_to?: string
		os_family?: [...string]
		display_name?: [...string]
		group_not_equal_to?:    string
		lifecycle_environment?: string
		compartment_id?:        string
		managed_instance_id?:   string
		status?: [...string]
		lifecycle_stage_not_equal_to?:            string
		is_attached_to_group_or_lifecycle_stage?: bool
		is_management_station?:                   bool
	}
	profiles: {
		registration_type?: [...string]
		state?:          string
		compartment_id?: string
		display_name?: [...string]
		os_family?:             string
		display_name_contains?: string
		is_default_profile?:    bool
		profile_type?: [...string]
		profile_id?:                  string
		is_service_provided_profile?: bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		vendor_name?: string
		arch_type?:   string
	}
	software_package_software_source: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability?: [...string]
		display_name_contains?: string
		software_source_type?: [...string]
		arch_type?: [...string]
		state?: [...string]
		software_package_name!: string
		availability_anywhere?: [...string]
		availability_at_oci?: [...string]
		compartment_id!: string
		display_name?:   string
		os_family?: [...string]
	}
}

