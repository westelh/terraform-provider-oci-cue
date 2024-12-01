package cloud_migrations

#resource: {
	attributes: {
		target_asset: {
			recommended_spec: [...{
				hostname_label: string
				create_vnic_details: [...{
					vlan_id:          string
					display_name:     string
					private_ip:       string
					assign_public_ip: bool
					hostname_label:   string
					nsg_ids: [...string]
					subnet_id:                 string
					assign_private_dns_record: bool
					freeform_tags: [_]: string
					skip_source_dest_check: bool
					defined_tags: [_]: string
				}]
				ipxe_script:                         string
				is_pv_encryption_in_transit_enabled: bool
				agent_config: [...{
					plugins_config: [...{
						desired_state: string
						name:          string
					}]
					are_all_plugins_disabled: bool
					is_management_disabled:   bool
					is_monitoring_disabled:   bool
				}]
				source_details: [...{
					image_id:                string
					kms_key_id:              string
					source_type:             string
					boot_volume_id:          string
					boot_volume_size_in_gbs: string
					boot_volume_vpus_per_gb: string
				}]
				defined_tags: [_]: string
				availability_domain: string
				compartment_id:      string
				fault_domain:        string
				instance_options: [...{
					are_legacy_imds_endpoints_disabled: bool
				}]
				preemptible_instance_config: [...{
					preemption_action: [...{
						preserve_boot_volume: bool, type: string
					}]
				}]
				shape: string
				shape_config: [...{
					baseline_ocpu_utilization: string
					memory_in_gbs:             float
					ocpus:                     float
				}]
				display_name:            string
				capacity_reservation_id: string
				dedicated_vm_host_id:    string
				freeform_tags: [_]: string
			}]
			is_excluded_from_execution!: bool
			migration_plan_id!:          string
			ms_license?:                 string
			estimated_cost: [...{
				os_image: [...{
					total_per_hour:                 float
					total_per_hour_by_subscription: float
				}]
				storage: [...{
					total_gb_per_month_by_subscription: float
					volumes: [...{
						capacity_gb:                        float
						description:                        string
						total_gb_per_month:                 float
						total_gb_per_month_by_subscription: float
					}]
					total_gb_per_month: float
				}]
				subscription_id:                            string
				total_estimation_per_month:                 float
				total_estimation_per_month_by_subscription: float
				compute: [...{
					total_per_hour_by_subscription:     float
					memory_amount_gb:                   float
					memory_gb_per_hour:                 float
					ocpu_per_hour_by_subscription:      float
					total_per_hour:                     float
					gpu_count:                          float
					memory_gb_per_hour_by_subscription: float
					ocpu_count:                         float
					gpu_per_hour:                       float
					gpu_per_hour_by_subscription:       float
					ocpu_per_hour:                      float
				}]
				currency_code: string
			}]
			display_name:               string
			block_volumes_performance?: int
			compartment_id:             string
			time_assessed:              string
			time_created:               string
			test_spec: [...{
				create_vnic_details: [...{
					assign_public_ip: bool
					freeform_tags: [_]: string
					subnet_id:                 string
					assign_private_dns_record: bool
					display_name:              string
					nsg_ids: [...string]
					skip_source_dest_check: bool
					defined_tags: [_]: string
					private_ip:     string
					hostname_label: string
					vlan_id:        string
				}]
				display_name:            string
				capacity_reservation_id: string
				shape_config: [...{
					memory_in_gbs:             float
					ocpus:                     float
					baseline_ocpu_utilization: string
				}]
				compartment_id: string
				preemptible_instance_config: [...{
					preemption_action: [...{
						preserve_boot_volume: bool, type: string
					}]
				}]
				shape: string
				agent_config: [...{
					are_all_plugins_disabled: bool
					is_management_disabled:   bool
					is_monitoring_disabled:   bool
					plugins_config: [...{
						desired_state: string
						name:          string
					}]
				}]
				freeform_tags: [_]: string
				dedicated_vm_host_id: string
				defined_tags: [_]: string
				hostname_label: string
				instance_options: [...{
					are_legacy_imds_endpoints_disabled: bool
				}]
				availability_domain: string
				ipxe_script:         string
				source_details: [...{
					source_type:             string
					boot_volume_id:          string
					boot_volume_size_in_gbs: string
					boot_volume_vpus_per_gb: string
					image_id:                string
					kms_key_id:              string
				}]
				is_pv_encryption_in_transit_enabled: bool
				fault_domain:                        string
			}]
			migration_asset: [...{
				lifecycle_details: string
				depended_on_by: [...string]
				display_name:               string
				availability_domain:        string
				snap_shot_bucket_name:      string
				replication_compartment_id: string
				migration_id:               string
				parent_snapshot:            string
				compartment_id:             string
				source_asset_id:            string
				tenancy_id:                 string
				state:                      string
				time_updated:               string
				depends_on: [...string]
				replication_schedule_id: string
				time_created:            string
				source_asset_data: [_]: string
				type: string
				id:   string
				notifications: [...string]
				snapshots: [_]: string
			}]
			type!:                 string
			created_resource_id:   string
			preferred_shape_type!: string
			state:                 string
			user_spec!: [...{
				create_vnic_details?: [...{
					private_ip?:             string
					skip_source_dest_check?: bool
					hostname_label?:         string
					defined_tags?: [_]: string
					nsg_ids?: [...string]
					subnet_id?:        string
					assign_public_ip?: bool
					display_name?:     string
					freeform_tags?: [_]: string
					vlan_id?:                   string
					assign_private_dns_record?: bool
				}]
				defined_tags?: [_]: string
				availability_domain?:     string
				capacity_reservation_id?: string
				dedicated_vm_host_id?:    string
				agent_config?: [...{
					are_all_plugins_disabled?: bool
					is_management_disabled?:   bool
					is_monitoring_disabled?:   bool
					plugins_config?: [...{
						desired_state!: string
						name!:          string
					}]
				}]
				display_name?: string
				freeform_tags?: [_]: string
				shape?: string
				preemptible_instance_config?: [...{
					preemption_action!: [...{
						preserve_boot_volume?: bool, type!: string
					}]
				}]
				ipxe_script?:                         string
				is_pv_encryption_in_transit_enabled?: bool
				fault_domain?:                        string
				source_details?: [...{
					kms_key_id?:              string
					source_type!:             string
					boot_volume_id?:          string
					boot_volume_size_in_gbs?: string
					boot_volume_vpus_per_gb?: string
					image_id?:                string
				}]
				compartment_id?: string
				shape_config?: [...{
					baseline_ocpu_utilization?: string
					memory_in_gbs?:             float
					ocpus?:                     float
				}]
				hostname_label?: string
				instance_options?: [...{
					are_legacy_imds_endpoints_disabled?: bool
				}]
			}]
			compatibility_messages: [...{
				message:  string
				name:     string
				severity: string
			}]
			lifecycle_details: string
			time_updated:      string
		}
		migration: {
			freeform_tags?: [_]: string
			display_name!: string
			defined_tags?: [_]: string
			time_updated:             string
			compartment_id!:          string
			is_completed?:            bool
			replication_schedule_id?: string
			time_created:             string
			lifecycle_details:        string
			state:                    string
			system_tags: [_]: string
		}
		migration_asset: {
			migration_asset_depends_on?: [...string]
			display_name?:            string
			inventory_asset_id!:      string
			tenancy_id:               string
			time_updated:             string
			time_created:             string
			parent_snapshot:          string
			replication_schedule_id?: string
			snapshots: [_]: string
			availability_domain!:        string
			snap_shot_bucket_name!:      string
			replication_compartment_id!: string
			source_asset_id:             string
			notifications: [...string]
			state:             string
			lifecycle_details: string
			depended_on_by: [...string]
			migration_id!:  string
			type:           string
			compartment_id: string
		}
		migration_plan: {
			target_environments?: [...{
				fault_domain?:            string
				subnet!:                  string
				target_environment_type!: string
				target_compartment_id?:   string
				ms_license?:              string
				preferred_shape_type?:    string
				availability_domain?:     string
				dedicated_vm_host?:       string
				vcn!:                     string
			}]
			display_name!:   string
			migration_id!:   string
			compartment_id!: string
			calculated_limits: [_]: string
			time_updated:              string
			source_migration_plan_id?: string
			strategies?: [...{
				resource_type!:         string
				strategy_type!:         string
				adjustment_multiplier?: float
				metric_time_window?:    string
				metric_type?:           string
				percentile?:            string
			}]
			lifecycle_details:      string
			reference_to_rms_stack: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			defined_tags?: [_]: string
			migration_plan_stats: [...{
				time_updated: string
				total_estimated_cost: [...{
					subscription_id:                            string
					total_estimation_per_month:                 float
					total_estimation_per_month_by_subscription: float
					compute: [...{
						total_per_hour_by_subscription:     float
						gpu_per_hour:                       float
						memory_gb_per_hour:                 float
						ocpu_count:                         float
						memory_amount_gb:                   float
						memory_gb_per_hour_by_subscription: float
						ocpu_per_hour:                      float
						ocpu_per_hour_by_subscription:      float
						gpu_per_hour_by_subscription:       float
						total_per_hour:                     float
						gpu_count:                          float
					}]
					currency_code: string
					os_image: [...{
						total_per_hour:                 float
						total_per_hour_by_subscription: float
					}]
					storage: [...{
						total_gb_per_month:                 float
						total_gb_per_month_by_subscription: float
						volumes: [...{
							capacity_gb:                        float
							description:                        string
							total_gb_per_month:                 float
							total_gb_per_month_by_subscription: float
						}]
					}]
				}]
				vm_count: int
			}]
			state:        string
			time_created: string
		}
		replication_schedule: {
			time_updated:           string
			execution_recurrences!: string
			lifecycle_details:      string
			state:                  string
			compartment_id!:        string
			system_tags: [_]: string
			time_created: string
			freeform_tags?: [_]: string
			display_name!: string
			defined_tags?: [_]: string
		}
	}
	arguments: {
		target_asset: {
			migration_plan_id!:          string
			type!:                       string
			block_volumes_performance?:  int
			is_excluded_from_execution!: bool
			ms_license?:                 string
			user_spec!: [...{
				shape?: string
				instance_options?: [...{
					are_legacy_imds_endpoints_disabled?: bool
				}]
				availability_domain?: string
				defined_tags?: [_]: string
				display_name?: string
				freeform_tags?: [_]: string
				preemptible_instance_config?: [...{
					preemption_action!: [...{
						type!: string, preserve_boot_volume?: bool
					}]
				}]
				hostname_label?:                      string
				is_pv_encryption_in_transit_enabled?: bool
				capacity_reservation_id?:             string
				create_vnic_details?: [...{
					vlan_id?:                string
					skip_source_dest_check?: bool
					hostname_label?:         string
					nsg_ids?: [...string]
					display_name?: string
					freeform_tags?: [_]: string
					private_ip?: string
					subnet_id?:  string
					defined_tags?: [_]: string
					assign_private_dns_record?: bool
					assign_public_ip?:          bool
				}]
				compartment_id?: string
				source_details?: [...{
					boot_volume_vpus_per_gb?: string
					image_id?:                string
					kms_key_id?:              string
					source_type!:             string
					boot_volume_id?:          string
					boot_volume_size_in_gbs?: string
				}]
				shape_config?: [...{
					baseline_ocpu_utilization?: string
					memory_in_gbs?:             float
					ocpus?:                     float
				}]
				ipxe_script?:          string
				dedicated_vm_host_id?: string
				fault_domain?:         string
				agent_config?: [...{
					is_management_disabled?: bool
					is_monitoring_disabled?: bool
					plugins_config?: [...{
						desired_state!: string
						name!:          string
					}]
					are_all_plugins_disabled?: bool
				}]
			}]
			preferred_shape_type!: string
		}
		migration: {
			display_name!: string
			defined_tags?: [_]: string
			is_completed?:            bool
			replication_schedule_id?: string
			compartment_id!:          string
			freeform_tags?: [_]: string
		}
		migration_asset: {
			availability_domain!:   string
			snap_shot_bucket_name!: string
			migration_asset_depends_on?: [...string]
			replication_compartment_id!: string
			display_name?:               string
			replication_schedule_id?:    string
			inventory_asset_id!:         string
			migration_id!:               string
		}
		migration_plan: {
			freeform_tags?: [_]: string
			source_migration_plan_id?: string
			strategies?: [...{
				metric_type?:           string
				percentile?:            string
				resource_type!:         string
				strategy_type!:         string
				adjustment_multiplier?: float
				metric_time_window?:    string
			}]
			target_environments?: [...{
				target_compartment_id?:   string
				subnet!:                  string
				availability_domain?:     string
				fault_domain?:            string
				ms_license?:              string
				target_environment_type!: string
				dedicated_vm_host?:       string
				preferred_shape_type?:    string
				vcn!:                     string
			}]
			display_name!: string
			migration_id!: string
			defined_tags?: [_]: string
			compartment_id!: string
		}
		replication_schedule: {
			execution_recurrences!: string
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	migration: migration_id!: string
	migration_asset: migration_asset_id!: string
	migration_plan_available_shape: {
		migration_plan_id!:    string
		reserved_capacity_id?: string
		availability_domain?:  string
		compartment_id?:       string
		dvh_host_id?:          string
	}
	migration_plan_available_shapes: {
		compartment_id?:       string
		dvh_host_id?:          string
		migration_plan_id!:    string
		reserved_capacity_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
	}
	migration_assets: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:       string
		migration_asset_id?: string
		migration_id?:       string
		state?:              string
	}
	migration_plan: migration_plan_id!: string
	migration_plans: {
		compartment_id?:    string
		display_name?:      string
		migration_id?:      string
		migration_plan_id?: string
		state?:             string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	migrations: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		migration_id?:   string
		state?:          string
	}
	replication_schedule: replication_schedule_id!: string
	replication_schedules: {
		display_name?:            string
		replication_schedule_id?: string
		state?:                   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	target_asset: target_asset_id!: string
	target_assets: {
		migration_plan_id?: string
		state?:             string
		target_asset_id?:   string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?: string
	}
}

