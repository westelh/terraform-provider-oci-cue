package desktops

#resource: {
	attributes: desktop_pool: {
		description?:    string
		compartment_id!: string
		network_configuration!: [...{
			subnet_id!: string
			vcn_id!:    string
		}]
		use_dedicated_vm_host?: string
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
		device_policy!: [...{
			is_printing_enabled!: bool
			audio_mode!:          string
			cdm_mode!:            string
			clipboard_mode!:      string
			is_display_enabled!:  bool
			is_keyboard_enabled!: bool
			is_pointer_enabled!:  bool
		}]
		are_privileged_users!: bool
		standby_size!:         int
		nsg_ids?: [...string]
		display_name!: string
		private_access_details?: [...{
			subnet_id!: string
			nsg_ids?: [...string]
			private_ip?:   string
			endpoint_fqdn: string
			vcn_id:        string
		}]
		storage_size_in_gbs!:      int
		active_desktops:           int
		storage_backup_policy_id!: string
		freeform_tags?: [_]: string
		shape_config?: [...{
			memory_in_gbs?:             string
			ocpus?:                     string
			baseline_ocpu_utilization?: string
		}]
		time_created:         string
		time_stop_scheduled?: string
		contact_details!:     string
		shape_name!:          string
		state:                string
		session_lifecycle_actions?: [...{
			disconnect?: [...{
				action!:                  string
				grace_period_in_minutes?: int
			}]
			inactivity?: [...{
				grace_period_in_minutes?: int
				action!:                  string
			}]
		}]
		maximum_size!: int
		defined_tags?: [_]: string
		is_storage_enabled!:   bool
		time_start_scheduled?: string
		availability_domain!:  string
		image!: [...{
			image_id!:         string
			image_name!:       string
			operating_system?: string
		}]
	}
	arguments: desktop_pool: {
		shape_name!:   string
		standby_size!: int
		nsg_ids?: [...string]
		time_start_scheduled?: string
		freeform_tags?: [_]: string
		shape_config?: [...{
			baseline_ocpu_utilization?: string
			memory_in_gbs?:             string
			ocpus?:                     string
		}]
		storage_size_in_gbs!: int
		time_stop_scheduled?: string
		network_configuration!: [...{
			subnet_id!: string
			vcn_id!:    string
		}]
		storage_backup_policy_id!: string
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
		description?:         string
		availability_domain!: string
		contact_details!:     string
		defined_tags?: [_]: string
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
		display_name!:   string
		maximum_size!:   int
		compartment_id!: string
		device_policy!: [...{
			audio_mode!:          string
			cdm_mode!:            string
			clipboard_mode!:      string
			is_display_enabled!:  bool
			is_keyboard_enabled!: bool
			is_pointer_enabled!:  bool
			is_printing_enabled!: bool
		}]
		is_storage_enabled!: bool
		image!: [...{
			image_id!:         string
			image_name!:       string
			operating_system?: string
		}]
		use_dedicated_vm_host?: string
		private_access_details?: [...{
			nsg_ids?: [...string]
			private_ip?: string
			subnet_id!:  string
		}]
		are_privileged_users!: bool
	}
}
#data: {
	desktop_pools: {
		availability_domain?: string
		compartment_id!:      string
		display_name?:        string
		id?:                  string
		state?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	desktops: {
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
		state?:               string
	}
	desktop: desktop_id!: string
	desktop_pool: desktop_pool_id!: string
	desktop_pool_desktops: {
		id?:    string
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
	}
	desktop_pool_volumes: {
		availability_domain?: string
		compartment_id!:      string
		desktop_pool_id!:     string
		display_name?:        string
		id?:                  string
		state?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

