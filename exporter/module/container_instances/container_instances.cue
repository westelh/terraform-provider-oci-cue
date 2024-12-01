package container_instances

#resource: {
	attributes: container_instance: {
		compartment_id!: string
		fault_domain?:   string
		containers!: [...{
			availability_domain:   string
			state:                 string
			container_instance_id: string
			exit_code:             int
			time_terminated:       string
			health_checks?: [...{
				status?:              string
				interval_in_seconds?: int
				timeout_in_seconds?:  int
				headers?: [...{
					name?:  string
					value?: string
				}]
				failure_action?: string
				port?:           int
				command?: [...string]
				failure_threshold?:        int
				health_check_type!:        string
				initial_delay_in_seconds?: int
				path?:                     string
				status_details?:           string
				success_threshold?:        int
				name?:                     string
			}]
			compartment_id: string
			display_name?:  string
			security_context?: [...{
				run_as_user?:           int
				security_context_type?: string
				capabilities?: [...{
					add_capabilities?: [...string]
					drop_capabilities?: [...string]
				}]
				is_non_root_user_check_enabled?: bool
				is_root_file_system_readonly?:   bool
				run_as_group?:                   int
			}]
			system_tags: [_]: string
			time_created: string
			volume_mounts?: [...{
				mount_path!:   string
				volume_name!:  string
				is_read_only?: bool
				partition?:    int
				sub_path?:     string
			}]
			container_id:                    string
			is_resource_principal_disabled?: bool
			image_url!:                      string
			arguments?: [...string]
			command?: [...string]
			defined_tags?: [_]: string
			fault_domain:       string
			working_directory?: string
			lifecycle_details:  string
			environment_variables?: [_]: string
			freeform_tags?: [_]: string
			time_updated: string
			resource_config?: [...{
				memory_limit_in_gbs?: float
				vcpus_limit?:         float
			}]
		}]
		shape_config!: [...{
			ocpus!:                       float
			memory_in_gbs?:               float
			networking_bandwidth_in_gbps: float
			processor_description:        string
		}]
		freeform_tags?: [_]: string
		state?:               string
		availability_domain!: string
		dns_config?: [...{
			nameservers?: [...string]
			options?: [...string]
			searches?: [...string]
		}]
		defined_tags?: [_]: string
		graceful_shutdown_timeout_in_seconds?: string
		shape!:                                string
		image_pull_secrets?: [...{
			registry_endpoint!: string
			secret_type!:       string
			password?:          string
			secret_id?:         string
			username?:          string
		}]
		time_created:      string
		lifecycle_details: string
		vnics!: [...{
			vnic_id: string
			freeform_tags?: [_]: string
			is_public_ip_assigned?: bool
			display_name?:          string
			subnet_id!:             string
			nsg_ids?: [...string]
			private_ip?:             string
			skip_source_dest_check?: bool
			hostname_label?:         string
			defined_tags?: [_]: string
		}]
		container_restart_policy?: string
		display_name?:             string
		time_updated:              string
		volumes?: [...{
			name!:          string
			volume_type!:   string
			backing_store?: string
			configs?: [...{
				data?:      string
				file_name?: string
				path?:      string
			}]
		}]
		container_count: int
		system_tags: [_]: string
		volume_count: int
	}
	arguments: container_instance: {
		availability_domain!: string
		fault_domain?:        string
		volumes?: [...{
			volume_type!:   string
			backing_store?: string
			configs?: [...{
				path?:      string
				data?:      string
				file_name?: string
			}]
			name!: string
		}]
		containers!: [...{
			volume_mounts?: [...{
				volume_name!:  string
				is_read_only?: bool
				partition?:    int
				sub_path?:     string
				mount_path!:   string
			}]
			resource_config?: [...{
				vcpus_limit?:         float
				memory_limit_in_gbs?: float
			}]
			working_directory?: string
			display_name?:      string
			environment_variables?: [_]: string
			freeform_tags?: [_]: string
			health_checks?: [...{
				failure_threshold?: int
				success_threshold?: int
				headers?: [...{
					value?: string
					name?:  string
				}]
				status_details?:           string
				name?:                     string
				status?:                   string
				timeout_in_seconds?:       int
				failure_action?:           string
				initial_delay_in_seconds?: int
				health_check_type!:        string
				interval_in_seconds?:      int
				port?:                     int
				command?: [...string]
				path?: string
			}]
			is_resource_principal_disabled?: bool
			security_context?: [...{
				run_as_group?:          int
				run_as_user?:           int
				security_context_type?: string
				capabilities?: [...{
					drop_capabilities?: [...string]
					add_capabilities?: [...string]
				}]
				is_non_root_user_check_enabled?: bool
				is_root_file_system_readonly?:   bool
			}]
			image_url!: string
			arguments?: [...string]
			command?: [...string]
			defined_tags?: [_]: string
		}]
		shape!: string
		state?: string
		freeform_tags?: [_]: string
		compartment_id!: string
		display_name?:   string
		dns_config?: [...{
			searches?: [...string]
			nameservers?: [...string]
			options?: [...string]
		}]
		shape_config!: [...{
			ocpus!:         float
			memory_in_gbs?: float
		}]
		vnics!: [...{
			subnet_id!: string
			defined_tags?: [_]: string
			display_name?:   string
			hostname_label?: string
			freeform_tags?: [_]: string
			is_public_ip_assigned?: bool
			nsg_ids?: [...string]
			skip_source_dest_check?: bool
			private_ip?:             string
		}]
		defined_tags?: [_]: string
		image_pull_secrets?: [...{
			registry_endpoint!: string
			secret_type!:       string
			password?:          string
			secret_id?:         string
			username?:          string
		}]
		container_restart_policy?:             string
		graceful_shutdown_timeout_in_seconds?: string
	}
}
#data: {
	container_instance: container_instance_id!: string
	container_instance_shape: {
		availability_domain?: string
		compartment_id!:      string
	}
	container_instance_shapes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id!:      string
	}
	container_instances: {
		availability_domain?: string
		compartment_id!:      string
		display_name?:        string
		state?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

