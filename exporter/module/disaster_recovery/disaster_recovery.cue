package disaster_recovery

#resource: {
	attributes: {
		dr_plan: {
			dr_protection_group_id!: string
			freeform_tags?: [_]: string
			state:         string
			time_updated:  string
			display_name!: string
			defined_tags?: [_]: string
			peer_dr_protection_group_id: string
			life_cycle_details:          string
			time_created:                string
			compartment_id:              string
			type!:                       string
			plan_groups: [...{
				steps: [...{
					user_defined_step: [...{
						run_as_user:     string
						script_command:  string
						function_region: string
						request_body:    string
						object_storage_script_location: [...{
							bucket:    string
							namespace: string
							object:    string
						}]
						run_on_instance_id:     string
						run_on_instance_region: string
						step_type:              string
						function_id:            string
					}]
					display_name: string
					error_mode:   string
					member_id:    string
					type:         string
					id:           string
					is_enabled:   bool
					group_id:     string
					timeout:      int
				}]
				type:             string
				display_name:     string
				id:               string
				is_pause_enabled: bool
			}]
			system_tags: [_]: string
			peer_region: string
		}
		dr_plan_execution: {
			group_executions: [...{
				group_id:     string
				time_started: string
				type:         string
				step_executions: [...{
					execution_duration_in_sec: int
					time_started:              string
					group_id:                  string
					status_details:            string
					time_ended:                string
					display_name:              string
					status:                    string
					step_id:                   string
					type:                      string
					log_location: [...{
						bucket:    string
						namespace: string
						object:    string
					}]
				}]
				execution_duration_in_sec: int
				status_details:            string
				time_ended:                string
				status:                    string
				display_name:              string
			}]
			compartment_id:              string
			peer_region:                 string
			time_ended:                  string
			time_updated:                string
			peer_dr_protection_group_id: string
			time_started:                string
			defined_tags?: [_]: string
			life_cycle_details: string
			log_location: [...{
				object:    string
				bucket:    string
				namespace: string
			}]
			state: string
			system_tags: [_]: string
			execution_duration_in_sec: int
			dr_protection_group_id:    string
			plan_execution_type:       string
			time_created:              string
			freeform_tags?: [_]: string
			execution_options!: [...{
				plan_execution_type!:   string
				are_prechecks_enabled?: bool
				are_warnings_ignored?:  bool
			}]
			plan_id!:      string
			display_name?: string
		}
		dr_protection_group: {
			peer_region:  string
			time_created: string
			system_tags: [_]: string
			disassociate_trigger?: int
			life_cycle_details:    string
			compartment_id!:       string
			state:                 string
			log_location!: [...{
				bucket!:    string
				namespace!: string
				object:     string
			}]
			defined_tags?: [_]: string
			lifecycle_sub_state: string
			peer_id:             string
			association?: [...{
				role!:        string
				peer_id?:     string
				peer_region?: string
			}]
			freeform_tags?: [_]: string
			role:          string
			time_updated:  string
			display_name!: string
			members?: [...{
				destination_capacity_reservation_id?: string
				file_system_operations?: [...{
					mount_details?: [...{
						mount_target_id?: string
					}]
					mount_point?:     string
					mount_target_id?: string
					unmount_details?: [...{
						mount_target_id?: string
					}]
					export_path?: string
				}]
				vnic_mappings?: [...{
					destination_nsg_id_list?: [...string]
					destination_primary_private_ip_address?:        string
					destination_primary_private_ip_hostname_label?: string
					destination_subnet_id?:                         string
					source_vnic_id?:                                string
				}]
				block_volume_operations?: [...{
					mount_details?: [...{
						mount_point?: string
					}]
					attachment_details?: [...{
						volume_attachment_reference_instance_id?: string
					}]
					block_volume_id?: string
				}]
				namespace?:                       string
				destination_availability_domain?: string
				backend_set_mappings?: [...{
					destination_backend_set_name?:   string
					is_backend_set_for_non_movable?: bool
					source_backend_set_name?:        string
				}]
				destination_network_load_balancer_id?:           string
				autonomous_database_standby_type_for_dr_drills?: string
				export_mappings?: [...{
					destination_mount_target_id?: string
					export_id?:                   string
				}]
				is_movable?:             bool
				is_retain_fault_domain?: bool
				vnic_mapping?: [...{
					destination_subnet_id?: string
					source_vnic_id?:        string
					destination_nsg_id_list?: [...string]
				}]
				destination_dedicated_vm_host_id?: string
				destination_load_balancer_id?:     string
				bucket?:                           string
				connection_string_type?:           string
				destination_compartment_id?:       string
				member_id!:                        string
				is_start_stop_enabled?:            bool
				member_type!:                      string
				password_vault_secret_id?:         string
			}]
		}
	}
	arguments: {
		dr_plan: {
			dr_protection_group_id!: string
			freeform_tags?: [_]: string
			display_name!: string
			type!:         string
			defined_tags?: [_]: string
		}
		dr_plan_execution: {
			freeform_tags?: [_]: string
			execution_options!: [...{
				are_prechecks_enabled?: bool
				are_warnings_ignored?:  bool
				plan_execution_type!:   string
			}]
			plan_id!: string
			defined_tags?: [_]: string
			display_name?: string
		}
		dr_protection_group: {
			defined_tags?: [_]: string
			display_name!: string
			members?: [...{
				member_type!: string
				block_volume_operations?: [...{
					attachment_details?: [...{
						volume_attachment_reference_instance_id?: string
					}]
					block_volume_id?: string
					mount_details?: [...{
						mount_point?: string
					}]
				}]
				destination_availability_domain?:      string
				destination_network_load_balancer_id?: string
				backend_set_mappings?: [...{
					destination_backend_set_name?:   string
					is_backend_set_for_non_movable?: bool
					source_backend_set_name?:        string
				}]
				member_id!:                                      string
				autonomous_database_standby_type_for_dr_drills?: string
				bucket?:                                         string
				is_movable?:                                     bool
				password_vault_secret_id?:                       string
				connection_string_type?:                         string
				export_mappings?: [...{
					destination_mount_target_id?: string
					export_id?:                   string
				}]
				destination_load_balancer_id?: string
				destination_compartment_id?:   string
				vnic_mappings?: [...{
					destination_nsg_id_list?: [...string]
					destination_primary_private_ip_address?:        string
					destination_primary_private_ip_hostname_label?: string
					destination_subnet_id?:                         string
					source_vnic_id?:                                string
				}]
				is_start_stop_enabled?: bool
				file_system_operations?: [...{
					mount_details?: [...{
						mount_target_id?: string
					}]
					mount_point?:     string
					mount_target_id?: string
					unmount_details?: [...{
						mount_target_id?: string
					}]
					export_path?: string
				}]
				is_retain_fault_domain?: bool
				namespace?:              string
				vnic_mapping?: [...{
					source_vnic_id?: string
					destination_nsg_id_list?: [...string]
					destination_subnet_id?: string
				}]
				destination_capacity_reservation_id?: string
				destination_dedicated_vm_host_id?:    string
			}]
			association?: [...{
				role!:        string
				peer_id?:     string
				peer_region?: string
			}]
			freeform_tags?: [_]: string
			disassociate_trigger?: int
			compartment_id!:       string
			log_location!: [...{
				bucket!:    string
				namespace!: string
			}]
		}
	}
}
#data: {
	dr_plan: dr_plan_id!: string
	dr_plan_execution: dr_plan_execution_id!: string
	dr_plan_executions: {
		dr_protection_group_id!: string
		state?:                  string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:         string
		dr_plan_execution_id?: string
	}
	dr_plans: {
		dr_protection_group_id!: string
		state?:                  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
		dr_plan_id?:   string
		dr_plan_type?: string
	}
	dr_protection_group: dr_protection_group_id!: string
	dr_protection_groups: {
		lifecycle_sub_state?: string
		role?:                string
		state?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:         string
		display_name?:           string
		dr_protection_group_id?: string
	}
}

