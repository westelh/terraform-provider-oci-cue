package container_instances

#resource: {
	attributes: container_instance: {
		time_created:                          string
		lifecycle_details:                     string
		volume_count:                          int
		compartment_id!:                       string
		container_restart_policy?:             string
		graceful_shutdown_timeout_in_seconds?: string
		system_tags: [_]: string
		state?: string
		containers!: [...{
			arguments?: [...string]
			health_checks?: [...{
				failure_threshold?: int
				port?:              int
				status?:            string
				success_threshold?: int
				headers?: [...{
					name?:  string
					value?: string
				}]
				status_details?:    string
				health_check_type!: string
				name?:              string
				command?: [...string]
				failure_action?:           string
				path?:                     string
				timeout_in_seconds?:       int
				interval_in_seconds?:      int
				initial_delay_in_seconds?: int
			}]
			is_resource_principal_disabled?: bool
			container_id:                    string
			working_directory?:              string
			availability_domain:             string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_updated:   string
			compartment_id: string
			volume_mounts?: [...{
				volume_name!:  string
				is_read_only?: bool
				partition?:    int
				sub_path?:     string
				mount_path!:   string
			}]
			security_context?: [...{
				capabilities?: [...{
					add_capabilities?: [...string]
					drop_capabilities?: [...string]
				}]
				is_non_root_user_check_enabled?: bool
				is_root_file_system_readonly?:   bool
				run_as_group?:                   int
				run_as_user?:                    int
				security_context_type?:          string
			}]
			container_instance_id: string
			state:                 string
			time_created:          string
			fault_domain:          string
			resource_config?: [...{
				memory_limit_in_gbs?: float
				vcpus_limit?:         float
			}]
			time_terminated: string
			command?: [...string]
			display_name?: string
			environment_variables?: [_]: string
			lifecycle_details: string
			image_url!:        string
			defined_tags?: [_]: string
			exit_code: int
		}]
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
		container_count: int
		shape_config!: [...{
			memory_in_gbs?:               float
			networking_bandwidth_in_gbps: float
			processor_description:        string
			ocpus!:                       float
		}]
		fault_domain?: string
		vnics!: [...{
			subnet_id!: string
			freeform_tags?: [_]: string
			hostname_label?: string
			defined_tags?: [_]: string
			nsg_ids?: [...string]
			skip_source_dest_check?: bool
			display_name?:           string
			private_ip?:             string
			is_public_ip_assigned?:  bool
			vnic_id:                 string
		}]
		time_updated:         string
		availability_domain!: string
		image_pull_secrets?: [...{
			registry_endpoint!: string
			secret_type!:       string
			password?:          string
			secret_id?:         string
			username?:          string
		}]
		volumes?: [...{
			backing_store?: string
			configs?: [...{
				data?:      string
				file_name?: string
				path?:      string
			}]
			name!:        string
			volume_type!: string
		}]
		display_name?: string
		shape!:        string
		dns_config?: [...{
			options?: [...string]
			searches?: [...string]
			nameservers?: [...string]
		}]
	}
	arguments: container_instance: {
		container_restart_policy?: string
		state?:                    string
		shape_config!: [...{
			ocpus!:         float
			memory_in_gbs?: float
		}]
		vnics!: [...{
			subnet_id!: string
			freeform_tags?: [_]: string
			hostname_label?:         string
			skip_source_dest_check?: bool
			nsg_ids?: [...string]
			display_name?: string
			private_ip?:   string
			defined_tags?: [_]: string
			is_public_ip_assigned?: bool
		}]
		defined_tags?: [_]: string
		fault_domain?:                         string
		graceful_shutdown_timeout_in_seconds?: string
		shape!:                                string
		display_name?:                         string
		freeform_tags?: [_]: string
		image_pull_secrets?: [...{
			password?:          string
			secret_id?:         string
			username?:          string
			registry_endpoint!: string
			secret_type!:       string
		}]
		availability_domain!: string
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
		dns_config?: [...{
			nameservers?: [...string]
			options?: [...string]
			searches?: [...string]
		}]
		containers!: [...{
			health_checks?: [...{
				timeout_in_seconds?: int
				command?: [...string]
				path?:              string
				status_details?:    string
				failure_threshold?: int
				headers?: [...{
					name?:  string
					value?: string
				}]
				port?:                     int
				failure_action?:           string
				success_threshold?:        int
				health_check_type!:        string
				initial_delay_in_seconds?: int
				name?:                     string
				interval_in_seconds?:      int
				status?:                   string
			}]
			image_url!: string
			defined_tags?: [_]: string
			environment_variables?: [_]: string
			freeform_tags?: [_]: string
			volume_mounts?: [...{
				sub_path?:     string
				mount_path!:   string
				volume_name!:  string
				is_read_only?: bool
				partition?:    int
			}]
			display_name?: string
			security_context?: [...{
				is_non_root_user_check_enabled?: bool
				is_root_file_system_readonly?:   bool
				run_as_group?:                   int
				run_as_user?:                    int
				security_context_type?:          string
				capabilities?: [...{
					drop_capabilities?: [...string]
					add_capabilities?: [...string]
				}]
			}]
			command?: [...string]
			working_directory?: string
			arguments?: [...string]
			resource_config?: [...{
				memory_limit_in_gbs?: float
				vcpus_limit?:         float
			}]
			is_resource_principal_disabled?: bool
		}]
		compartment_id!: string
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
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
	}
	container_instances: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id!:      string
		display_name?:        string
		state?:               string
	}
}

