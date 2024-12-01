package osmanagement

#resource: {
	attributes: {
		managed_instance_management: {
			updates_available: int
			os_kernel_version: string
			os_version:        string
			status:            string
			description:       string
			managed_instance_groups?: [...{
				display_name?: string
				id?:           string
			}]
			parent_software_source?: [...{
				id?:   string
				name?: string
			}]
			child_software_sources?: [...{
				id?:   string
				name?: string
			}]
			last_checkin:         string
			compartment_id:       string
			display_name:         string
			os_name:              string
			managed_instance_id!: string
			last_boot:            string
		}
		software_source: {
			defined_tags?: [_]: string
			associated_managed_instances: [...{
				display_name: string
				id:           string
			}]
			state:           string
			repo_type:       string
			compartment_id!: string
			checksum_type?:  string
			freeform_tags?: [_]: string
			gpg_key_url:         string
			packages:            int
			description?:        string
			maintainer_email?:   string
			maintainer_phone?:   string
			gpg_key_fingerprint: string
			status:              string
			url:                 string
			parent_id?:          string
			display_name!:       string
			maintainer_name?:    string
			parent_name:         string
			arch_type!:          string
			gpg_key_id:          string
		}
		managed_instance: {
			managed_instance_id!:          string
			enhancement_updates_available: int
			child_software_sources: [...{
				id:   string
				name: string
			}]
			other_updates_available:          int
			bug_updates_available:            int
			os_name:                          string
			description:                      string
			scheduled_job_count:              int
			ksplice_effective_kernel_version: string
			work_request_count:               int
			managed_instance_groups: [...{
				display_name: string
				id:           string
			}]
			os_family:              string
			notification_topic_id?: string
			display_name:           string
			os_version:             string
			updates_available:      int
			os_kernel_version:      string
			parent_software_source: [...{
				name: string
				id:   string
			}]
			autonomous: [...{
				is_auto_update_enabled: bool
			}]
			compartment_id:                 string
			is_reboot_required:             bool
			status:                         string
			last_boot:                      string
			last_checkin:                   string
			security_updates_available:     int
			is_data_collection_authorized?: bool
		}
		managed_instance_group: {
			os_family?: string
			managed_instances: [...{
				display_name: string
				id:           string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			description?:  string
			display_name!: string
			freeform_tags?: [_]: string
			managed_instance_ids?: [...string]
			state:                  string
			managed_instance_count: int
		}
	}
	arguments: {
		managed_instance_management: {
			managed_instance_id!: string
			managed_instance_groups?: [...{
				display_name?: string
				id?:           string
			}]
			parent_software_source?: [...{
				name?: string
				id?:   string
			}]
			child_software_sources?: [...{
				name?: string
				id?:   string
			}]
		}
		software_source: {
			checksum_type?: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			display_name!:     string
			description?:      string
			maintainer_phone?: string
			maintainer_name?:  string
			parent_id?:        string
			arch_type!:        string
			compartment_id!:   string
			maintainer_email?: string
		}
		managed_instance: {
			managed_instance_id!:           string
			is_data_collection_authorized?: bool
			notification_topic_id?:         string
		}
		managed_instance_group: {
			defined_tags?: [_]: string
			description?: string
			os_family?:   string
			freeform_tags?: [_]: string
			managed_instance_ids?: [...string]
			compartment_id!: string
			display_name!:   string
		}
	}
}
#data: {
	software_sources: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	managed_instance: managed_instance_id!: string
	managed_instance_event_report: {
		latest_timestamp_greater_than_or_equal_to?: string
		latest_timestamp_less_than?:                string
		managed_instance_id!:                       string
		compartment_id!:                            string
	}
	managed_instance_group: managed_instance_group_id!: string
	managed_instance_groups: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		os_family?:      string
		state?:          string
	}
	software_source: software_source_id!: string
	software_source_module_stream_profile: {
		profile_name!:       string
		software_source_id!: string
		stream_name!:        string
		module_name!:        string
	}
	software_source_stream_profiles: {
		compartment_id?:     string
		module_name?:        string
		profile_name?:       string
		software_source_id!: string
		stream_name?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	managed_instance_module_streams: {
		managed_instance_id!: string
		module_name?:         string
		stream_name?:         string
		stream_status?:       string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
	}
	managed_instance_stream_profiles: {
		module_name?:    string
		profile_name?:   string
		profile_status?: string
		stream_name?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:      string
		managed_instance_id!: string
	}
	managed_instances: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		os_family?:      string
	}
	software_source_module_stream: {
		module_name!:        string
		software_source_id!: string
		stream_name!:        string
	}
}

