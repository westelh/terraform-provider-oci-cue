package disaster_recovery

#resource: {
	attributes: {
		dr_plan_execution: {
			peer_dr_protection_group_id: string
			plan_id!:                    string
			time_ended:                  string
			display_name?:               string
			plan_execution_type:         string
			group_executions: [...{
				execution_duration_in_sec: int
				step_executions: [...{
					log_location: [...{
						object:    string
						bucket:    string
						namespace: string
					}]
					step_id:                   string
					display_name:              string
					status_details:            string
					type:                      string
					execution_duration_in_sec: int
					time_ended:                string
					time_started:              string
					status:                    string
					group_id:                  string
				}]
				display_name:   string
				status_details: string
				time_ended:     string
				status:         string
				time_started:   string
				type:           string
				group_id:       string
			}]
			log_location: [...{
				bucket:    string
				namespace: string
				object:    string
			}]
			system_tags: [_]: string
			time_created:   string
			compartment_id: string
			time_started:   string
			peer_region:    string
			defined_tags?: [_]: string
			dr_protection_group_id:    string
			time_updated:              string
			execution_duration_in_sec: int
			life_cycle_details:        string
			state:                     string
			freeform_tags?: [_]: string
			execution_options!: [...{
				are_prechecks_enabled?: bool
				are_warnings_ignored?:  bool
				plan_execution_type!:   string
			}]
		}
		dr_protection_group: {
			role:  string
			state: string
			system_tags: [_]: string
			life_cycle_details: string
			members?: [...{
				destination_compartment_id?: string
				export_mappings?: [...{
					destination_mount_target_id?: string
					export_id?:                   string
				}]
				is_start_stop_enabled?:  bool
				is_retain_fault_domain?: bool
				vnic_mappings?: [...{
					destination_subnet_id?: string
					source_vnic_id?:        string
					destination_nsg_id_list?: [...string]
					destination_primary_private_ip_address?:        string
					destination_primary_private_ip_hostname_label?: string
				}]
				destination_load_balancer_id?:                   string
				namespace?:                                      string
				connection_string_type?:                         string
				destination_network_load_balancer_id?:           string
				autonomous_database_standby_type_for_dr_drills?: string
				is_movable?:                                     bool
				destination_dedicated_vm_host_id?:               string
				vnic_mapping?: [...{
					destination_subnet_id?: string
					source_vnic_id?:        string
					destination_nsg_id_list?: [...string]
				}]
				bucket?: string
				backend_set_mappings?: [...{
					source_backend_set_name?:        string
					destination_backend_set_name?:   string
					is_backend_set_for_non_movable?: bool
				}]
				member_type!:                     string
				destination_availability_domain?: string
				member_id!:                       string
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
				block_volume_operations?: [...{
					attachment_details?: [...{
						volume_attachment_reference_instance_id?: string
					}]
					block_volume_id?: string
					mount_details?: [...{
						mount_point?: string
					}]
				}]
				password_vault_secret_id?:            string
				destination_capacity_reservation_id?: string
			}]
			compartment_id!: string
			association?: [...{
				peer_region?: string
				role!:        string
				peer_id?:     string
			}]
			time_created: string
			time_updated: string
			peer_region:  string
			freeform_tags?: [_]: string
			disassociate_trigger?: int
			lifecycle_sub_state:   string
			defined_tags?: [_]: string
			display_name!: string
			log_location!: [...{
				namespace!: string
				object:     string
				bucket!:    string
			}]
			peer_id: string
		}
		dr_plan: {
			time_created: string
			defined_tags?: [_]: string
			peer_region: string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			time_updated:            string
			life_cycle_details:      string
			dr_protection_group_id!: string
			plan_groups: [...{
				is_pause_enabled: bool
				steps: [...{
					user_defined_step: [...{
						script_command: string
						object_storage_script_location: [...{
							object:    string
							bucket:    string
							namespace: string
						}]
						request_body:           string
						run_as_user:            string
						function_region:        string
						run_on_instance_id:     string
						step_type:              string
						run_on_instance_region: string
						function_id:            string
					}]
					type:         string
					display_name: string
					group_id:     string
					member_id:    string
					timeout:      int
					id:           string
					is_enabled:   bool
					error_mode:   string
				}]
				type:         string
				display_name: string
				id:           string
			}]
			compartment_id:              string
			peer_dr_protection_group_id: string
			display_name!:               string
			type!:                       string
			state:                       string
		}
	}
	arguments: {
		dr_plan_execution: {
			execution_options!: [...{
				plan_execution_type!:   string
				are_prechecks_enabled?: bool
				are_warnings_ignored?:  bool
			}]
			display_name?: string
			defined_tags?: [_]: string
			plan_id!: string
			freeform_tags?: [_]: string
		}
		dr_protection_group: {
			defined_tags?: [_]: string
			display_name!: string
			log_location!: [...{
				namespace!: string
				bucket!:    string
			}]
			compartment_id!: string
			association?: [...{
				peer_region?: string
				role!:        string
				peer_id?:     string
			}]
			freeform_tags?: [_]: string
			disassociate_trigger?: int
			members?: [...{
				file_system_operations?: [...{
					unmount_details?: [...{
						mount_target_id?: string
					}]
					export_path?: string
					mount_details?: [...{
						mount_target_id?: string
					}]
					mount_point?:     string
					mount_target_id?: string
				}]
				is_start_stop_enabled?:                          bool
				destination_capacity_reservation_id?:            string
				is_movable?:                                     bool
				is_retain_fault_domain?:                         bool
				destination_availability_domain?:                string
				member_type!:                                    string
				destination_dedicated_vm_host_id?:               string
				namespace?:                                      string
				destination_compartment_id?:                     string
				password_vault_secret_id?:                       string
				autonomous_database_standby_type_for_dr_drills?: string
				destination_load_balancer_id?:                   string
				member_id!:                                      string
				destination_network_load_balancer_id?:           string
				backend_set_mappings?: [...{
					is_backend_set_for_non_movable?: bool
					source_backend_set_name?:        string
					destination_backend_set_name?:   string
				}]
				block_volume_operations?: [...{
					attachment_details?: [...{
						volume_attachment_reference_instance_id?: string
					}]
					block_volume_id?: string
					mount_details?: [...{
						mount_point?: string
					}]
				}]
				vnic_mappings?: [...{
					source_vnic_id?: string
					destination_nsg_id_list?: [...string]
					destination_primary_private_ip_address?:        string
					destination_primary_private_ip_hostname_label?: string
					destination_subnet_id?:                         string
				}]
				vnic_mapping?: [...{
					destination_nsg_id_list?: [...string]
					destination_subnet_id?: string
					source_vnic_id?:        string
				}]
				connection_string_type?: string
				bucket?:                 string
				export_mappings?: [...{
					destination_mount_target_id?: string
					export_id?:                   string
				}]
			}]
		}
		dr_plan: {
			dr_protection_group_id!: string
			freeform_tags?: [_]: string
			display_name!: string
			type!:         string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	dr_protection_groups: {
		role?:  string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:         string
		display_name?:           string
		dr_protection_group_id?: string
		lifecycle_sub_state?:    string
	}
	dr_plan: dr_plan_id!: string
	dr_plan_execution: dr_plan_execution_id!: string
	dr_plan_executions: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:           string
		dr_plan_execution_id?:   string
		dr_protection_group_id!: string
	}
	dr_plans: {
		dr_plan_id?:             string
		dr_plan_type?:           string
		dr_protection_group_id!: string
		state?:                  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
	}
	dr_protection_group: dr_protection_group_id!: string
}

