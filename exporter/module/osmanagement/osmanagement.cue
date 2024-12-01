package osmanagement

#resource: {
	attributes: {
		managed_instance: {
			managed_instance_groups: [...{
				display_name: string
				id:           string
			}]
			other_updates_available: int
			autonomous: [...{
				is_auto_update_enabled: bool
			}]
			description:                      string
			is_reboot_required:               bool
			bug_updates_available:            int
			enhancement_updates_available:    int
			scheduled_job_count:              int
			is_data_collection_authorized?:   bool
			last_boot:                        string
			os_name:                          string
			last_checkin:                     string
			os_kernel_version:                string
			managed_instance_id!:             string
			os_version:                       string
			work_request_count:               int
			ksplice_effective_kernel_version: string
			display_name:                     string
			notification_topic_id?:           string
			child_software_sources: [...{
				id:   string
				name: string
			}]
			compartment_id:             string
			os_family:                  string
			security_updates_available: int
			status:                     string
			parent_software_source: [...{
				id:   string
				name: string
			}]
			updates_available: int
		}
		managed_instance_group: {
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			os_family?: string
			managed_instance_ids?: [...string]
			managed_instances: [...{
				display_name: string
				id:           string
			}]
			compartment_id!:        string
			display_name!:          string
			state:                  string
			managed_instance_count: int
		}
		managed_instance_management: {
			status:            string
			display_name:      string
			os_kernel_version: string
			updates_available: int
			child_software_sources?: [...{
				id?:   string
				name?: string
			}]
			os_name:              string
			managed_instance_id!: string
			last_checkin:         string
			parent_software_source?: [...{
				name?: string
				id?:   string
			}]
			description: string
			managed_instance_groups?: [...{
				display_name?: string
				id?:           string
			}]
			os_version:     string
			last_boot:      string
			compartment_id: string
		}
		software_source: {
			defined_tags?: [_]: string
			gpg_key_id:        string
			checksum_type?:    string
			repo_type:         string
			status:            string
			arch_type!:        string
			maintainer_phone?: string
			gpg_key_url:       string
			state:             string
			parent_id?:        string
			associated_managed_instances: [...{
				id:           string
				display_name: string
			}]
			compartment_id!:     string
			description?:        string
			gpg_key_fingerprint: string
			display_name!:       string
			freeform_tags?: [_]: string
			packages:          int
			maintainer_email?: string
			maintainer_name?:  string
			parent_name:       string
			url:               string
		}
	}
	arguments: {
		managed_instance: {
			managed_instance_id!:           string
			notification_topic_id?:         string
			is_data_collection_authorized?: bool
		}
		managed_instance_group: {
			description?: string
			freeform_tags?: [_]: string
			os_family?: string
			managed_instance_ids?: [...string]
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
		}
		managed_instance_management: {
			child_software_sources?: [...{
				id?:   string
				name?: string
			}]
			managed_instance_groups?: [...{
				display_name?: string
				id?:           string
			}]
			parent_software_source?: [...{
				id?:   string
				name?: string
			}]
			managed_instance_id!: string
		}
		software_source: {
			maintainer_email?: string
			maintainer_name?:  string
			display_name!:     string
			maintainer_phone?: string
			arch_type!:        string
			compartment_id!:   string
			checksum_type?:    string
			description?:      string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			parent_id?: string
		}
	}
}
#data: {
	software_source_module_stream: {
		software_source_id!: string
		stream_name!:        string
		module_name!:        string
	}
	software_source_module_stream_profile: {
		module_name!:        string
		profile_name!:       string
		software_source_id!: string
		stream_name!:        string
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
	software_sources: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	managed_instance_group: managed_instance_group_id!: string
	managed_instance_module_streams: {
		stream_name?:   string
		stream_status?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?:      string
		managed_instance_id!: string
		module_name?:         string
	}
	managed_instance_stream_profiles: {
		compartment_id?:      string
		managed_instance_id!: string
		module_name?:         string
		profile_name?:        string
		profile_status?:      string
		stream_name?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	managed_instances: {
		display_name?: string
		os_family?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	managed_instance: managed_instance_id!: string
	managed_instance_event_report: {
		compartment_id!:                            string
		latest_timestamp_greater_than_or_equal_to?: string
		latest_timestamp_less_than?:                string
		managed_instance_id!:                       string
	}
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
}

