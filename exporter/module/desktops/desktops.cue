package desktops

#resource: {
	attributes: desktop_pool: {
		time_start_scheduled?: string
		network_configuration!: [...{
			vcn_id!:    string
			subnet_id!: string
		}]
		defined_tags?: [_]: string
		session_lifecycle_actions?: [...{
			disconnect?: [...{
				action!:                  string
				grace_period_in_minutes?: int
			}]
			inactivity?: [...{
				action!:                  string
				grace_period_in_minutes?: int
			}]
		}]
		freeform_tags?: [_]: string
		availability_policy!: [...{
			start_schedule?: [...{
				cron_expression!: string
				timezone!:        string
			}]
			stop_schedule?: [...{
				timezone!:        string
				cron_expression!: string
			}]
		}]
		time_created:    string
		compartment_id!: string
		private_access_details?: [...{
			subnet_id!: string
			nsg_ids?: [...string]
			private_ip?:   string
			endpoint_fqdn: string
			vcn_id:        string
		}]
		device_policy!: [...{
			is_keyboard_enabled!: bool
			is_pointer_enabled!:  bool
			is_printing_enabled!: bool
			audio_mode!:          string
			cdm_mode!:            string
			clipboard_mode!:      string
			is_display_enabled!:  bool
		}]
		display_name!:             string
		storage_backup_policy_id!: string
		state:                     string
		use_dedicated_vm_host?:    string
		nsg_ids?: [...string]
		shape_config?: [...{
			ocpus?:                     string
			baseline_ocpu_utilization?: string
			memory_in_gbs?:             string
		}]
		standby_size!:         int
		time_stop_scheduled?:  string
		availability_domain!:  string
		shape_name!:           string
		contact_details!:      string
		storage_size_in_gbs!:  int
		are_privileged_users!: bool
		active_desktops:       int
		maximum_size!:         int
		description?:          string
		image!: [...{
			operating_system?: string
			image_id!:         string
			image_name!:       string
		}]
		is_storage_enabled!: bool
	}
	arguments: desktop_pool: {
		compartment_id!: string
		image!: [...{
			operating_system?: string
			image_id!:         string
			image_name!:       string
		}]
		shape_name!: string
		defined_tags?: [_]: string
		are_privileged_users!: bool
		maximum_size!:         int
		availability_domain!:  string
		availability_policy!: [...{
			start_schedule?: [...{
				cron_expression!: string
				timezone!:        string
			}]
			stop_schedule?: [...{
				cron_expression!: string
				timezone!:        string
			}]
		}]
		nsg_ids?: [...string]
		use_dedicated_vm_host?: string
		shape_config?: [...{
			ocpus?:                     string
			baseline_ocpu_utilization?: string
			memory_in_gbs?:             string
		}]
		standby_size!: int
		device_policy!: [...{
			is_keyboard_enabled!: bool
			is_pointer_enabled!:  bool
			is_printing_enabled!: bool
			audio_mode!:          string
			cdm_mode!:            string
			clipboard_mode!:      string
			is_display_enabled!:  bool
		}]
		description?:              string
		contact_details!:          string
		storage_backup_policy_id!: string
		freeform_tags?: [_]: string
		private_access_details?: [...{
			private_ip?: string
			subnet_id!:  string
			nsg_ids?: [...string]
		}]
		time_stop_scheduled?: string
		network_configuration!: [...{
			subnet_id!: string
			vcn_id!:    string
		}]
		time_start_scheduled?: string
		storage_size_in_gbs!:  int
		display_name!:         string
		session_lifecycle_actions?: [...{
			disconnect?: [...{
				grace_period_in_minutes?: int
				action!:                  string
			}]
			inactivity?: [...{
				grace_period_in_minutes?: int
				action!:                  string
			}]
		}]
		is_storage_enabled!: bool
	}
}
#data: {
	desktop_pools: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain?: string
	}
	desktops: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
		desktop_pool_id?:     string
		display_name?:        string
		id?:                  string
	}
	desktop: desktop_id!: string
	desktop_pool: desktop_pool_id!: string
	desktop_pool_desktops: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id!:      string
		desktop_pool_id!:     string
		display_name?:        string
		id?:                  string
		state?:               string
	}
	desktop_pool_volumes: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
		desktop_pool_id!:     string
		display_name?:        string
		id?:                  string
	}
}

