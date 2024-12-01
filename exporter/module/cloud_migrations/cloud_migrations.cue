package cloud_migrations

#resource: {
	attributes: {
		migration: {
			freeform_tags?: [_]: string
			replication_schedule_id?: string
			compartment_id!:          string
			time_updated:             string
			display_name!:            string
			defined_tags?: [_]: string
			lifecycle_details: string
			state:             string
			is_completed?:     bool
			system_tags: [_]: string
			time_created: string
		}
		migration_asset: {
			time_updated:    string
			source_asset_id: string
			compartment_id:  string
			parent_snapshot: string
			migration_asset_depends_on?: [...string]
			migration_id!: string
			depended_on_by: [...string]
			notifications: [...string]
			replication_compartment_id!: string
			type:                        string
			availability_domain!:        string
			inventory_asset_id!:         string
			display_name?:               string
			tenancy_id:                  string
			lifecycle_details:           string
			snap_shot_bucket_name!:      string
			replication_schedule_id?:    string
			state:                       string
			time_created:                string
			snapshots: [_]: string
		}
		migration_plan: {
			time_created:           string
			compartment_id!:        string
			reference_to_rms_stack: string
			system_tags: [_]: string
			state:                     string
			source_migration_plan_id?: string
			target_environments?: [...{
				availability_domain?:     string
				dedicated_vm_host?:       string
				target_compartment_id?:   string
				subnet!:                  string
				target_environment_type!: string
				preferred_shape_type?:    string
				vcn!:                     string
				fault_domain?:            string
				ms_license?:              string
			}]
			time_updated: string
			migration_plan_stats: [...{
				time_updated: string
				total_estimated_cost: [...{
					total_estimation_per_month_by_subscription: float
					compute: [...{
						memory_amount_gb:                   float
						memory_gb_per_hour:                 float
						gpu_per_hour_by_subscription:       float
						ocpu_count:                         float
						ocpu_per_hour_by_subscription:      float
						total_per_hour_by_subscription:     float
						gpu_count:                          float
						gpu_per_hour:                       float
						ocpu_per_hour:                      float
						total_per_hour:                     float
						memory_gb_per_hour_by_subscription: float
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
					subscription_id:            string
					total_estimation_per_month: float
				}]
				vm_count: int
			}]
			display_name!: string
			freeform_tags?: [_]: string
			strategies?: [...{
				strategy_type!:         string
				adjustment_multiplier?: float
				metric_time_window?:    string
				metric_type?:           string
				percentile?:            string
				resource_type!:         string
			}]
			migration_id!: string
			defined_tags?: [_]: string
			calculated_limits: [_]: string
			lifecycle_details: string
		}
		replication_schedule: {
			state:                  string
			display_name!:          string
			execution_recurrences!: string
			system_tags: [_]: string
			time_created:    string
			compartment_id!: string
			defined_tags?: [_]: string
			time_updated: string
			freeform_tags?: [_]: string
			lifecycle_details: string
		}
		target_asset: {
			is_excluded_from_execution!: bool
			user_spec!: [...{
				preemptible_instance_config?: [...{
					preemption_action!: [...{
						type!: string, preserve_boot_volume?: bool
					}]
				}]
				availability_domain?: string
				defined_tags?: [_]: string
				source_details?: [...{
					kms_key_id?:              string
					source_type!:             string
					boot_volume_id?:          string
					boot_volume_size_in_gbs?: string
					boot_volume_vpus_per_gb?: string
					image_id?:                string
				}]
				freeform_tags?: [_]: string
				dedicated_vm_host_id?:                string
				display_name?:                        string
				compartment_id?:                      string
				is_pv_encryption_in_transit_enabled?: bool
				capacity_reservation_id?:             string
				instance_options?: [...{
					are_legacy_imds_endpoints_disabled?: bool
				}]
				shape?: string
				shape_config?: [...{
					baseline_ocpu_utilization?: string
					memory_in_gbs?:             float
					ocpus?:                     float
				}]
				hostname_label?: string
				agent_config?: [...{
					are_all_plugins_disabled?: bool
					is_management_disabled?:   bool
					is_monitoring_disabled?:   bool
					plugins_config?: [...{
						desired_state!: string
						name!:          string
					}]
				}]
				ipxe_script?: string
				create_vnic_details?: [...{
					private_ip?:             string
					skip_source_dest_check?: bool
					subnet_id?:              string
					vlan_id?:                string
					defined_tags?: [_]: string
					display_name?: string
					nsg_ids?: [...string]
					hostname_label?:   string
					assign_public_ip?: bool
					freeform_tags?: [_]: string
					assign_private_dns_record?: bool
				}]
				fault_domain?: string
			}]
			compartment_id: string
			time_assessed:  string
			type!:          string
			test_spec: [...{
				is_pv_encryption_in_transit_enabled: bool
				compartment_id:                      string
				availability_domain:                 string
				source_details: [...{
					boot_volume_id:          string
					boot_volume_size_in_gbs: string
					boot_volume_vpus_per_gb: string
					image_id:                string
					kms_key_id:              string
					source_type:             string
				}]
				display_name:         string
				dedicated_vm_host_id: string
				agent_config: [...{
					are_all_plugins_disabled: bool
					is_management_disabled:   bool
					is_monitoring_disabled:   bool
					plugins_config: [...{
						desired_state: string
						name:          string
					}]
				}]
				hostname_label: string
				shape_config: [...{
					memory_in_gbs:             float
					ocpus:                     float
					baseline_ocpu_utilization: string
				}]
				create_vnic_details: [...{
					private_ip:             string
					subnet_id:              string
					vlan_id:                string
					assign_public_ip:       bool
					skip_source_dest_check: bool
					defined_tags: [_]: string
					display_name:   string
					hostname_label: string
					freeform_tags: [_]: string
					nsg_ids: [...string]
					assign_private_dns_record: bool
				}]
				fault_domain: string
				defined_tags: [_]: string
				shape: string
				preemptible_instance_config: [...{
					preemption_action: [...{
						preserve_boot_volume: bool, type: string
					}]
				}]
				capacity_reservation_id: string
				freeform_tags: [_]: string
				instance_options: [...{
					are_legacy_imds_endpoints_disabled: bool
				}]
				ipxe_script: string
			}]
			migration_plan_id!: string
			estimated_cost: [...{
				subscription_id:                            string
				total_estimation_per_month:                 float
				total_estimation_per_month_by_subscription: float
				compute: [...{
					gpu_per_hour_by_subscription:       float
					gpu_count:                          float
					memory_gb_per_hour_by_subscription: float
					ocpu_per_hour:                      float
					total_per_hour:                     float
					gpu_per_hour:                       float
					memory_amount_gb:                   float
					ocpu_per_hour_by_subscription:      float
					total_per_hour_by_subscription:     float
					memory_gb_per_hour:                 float
					ocpu_count:                         float
				}]
				currency_code: string
				os_image: [...{
					total_per_hour:                 float
					total_per_hour_by_subscription: float
				}]
				storage: [...{
					volumes: [...{
						total_gb_per_month:                 float
						total_gb_per_month_by_subscription: float
						capacity_gb:                        float
						description:                        string
					}]
					total_gb_per_month:                 float
					total_gb_per_month_by_subscription: float
				}]
			}]
			display_name: string
			state:        string
			migration_asset: [...{
				lifecycle_details: string
				state:             string
				source_asset_data: [_]: string
				time_updated:    string
				migration_id:    string
				parent_snapshot: string
				depended_on_by: [...string]
				display_name:            string
				snap_shot_bucket_name:   string
				availability_domain:     string
				tenancy_id:              string
				source_asset_id:         string
				time_created:            string
				replication_schedule_id: string
				snapshots: [_]: string
				replication_compartment_id: string
				type:                       string
				notifications: [...string]
				compartment_id: string
				depends_on: [...string]
				id: string
			}]
			ms_license?:         string
			created_resource_id: string
			time_created:        string
			time_updated:        string
			recommended_spec: [...{
				defined_tags: [_]: string
				display_name: string
				shape_config: [...{
					ocpus:                     float
					baseline_ocpu_utilization: string
					memory_in_gbs:             float
				}]
				instance_options: [...{
					are_legacy_imds_endpoints_disabled: bool
				}]
				shape:          string
				compartment_id: string
				preemptible_instance_config: [...{
					preemption_action: [...{
						preserve_boot_volume: bool, type: string
					}]
				}]
				availability_domain: string
				ipxe_script:         string
				agent_config: [...{
					are_all_plugins_disabled: bool
					is_management_disabled:   bool
					is_monitoring_disabled:   bool
					plugins_config: [...{
						desired_state: string
						name:          string
					}]
				}]
				is_pv_encryption_in_transit_enabled: bool
				source_details: [...{
					boot_volume_vpus_per_gb: string
					image_id:                string
					kms_key_id:              string
					source_type:             string
					boot_volume_id:          string
					boot_volume_size_in_gbs: string
				}]
				capacity_reservation_id: string
				hostname_label:          string
				create_vnic_details: [...{
					assign_private_dns_record: bool
					subnet_id:                 string
					defined_tags: [_]: string
					freeform_tags: [_]: string
					display_name: string
					nsg_ids: [...string]
					private_ip:             string
					assign_public_ip:       bool
					hostname_label:         string
					skip_source_dest_check: bool
					vlan_id:                string
				}]
				dedicated_vm_host_id: string
				fault_domain:         string
				freeform_tags: [_]: string
			}]
			block_volumes_performance?: int
			compatibility_messages: [...{
				name:     string
				severity: string
				message:  string
			}]
			preferred_shape_type!: string
			lifecycle_details:     string
		}
	}
	arguments: {
		migration: {
			replication_schedule_id?: string
			compartment_id!:          string
			is_completed?:            bool
			display_name!:            string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		migration_asset: {
			snap_shot_bucket_name!:      string
			replication_schedule_id?:    string
			replication_compartment_id!: string
			migration_asset_depends_on?: [...string]
			display_name?:        string
			availability_domain!: string
			inventory_asset_id!:  string
			migration_id!:        string
		}
		migration_plan: {
			defined_tags?: [_]: string
			compartment_id!:           string
			source_migration_plan_id?: string
			target_environments?: [...{
				target_compartment_id?:   string
				ms_license?:              string
				vcn!:                     string
				dedicated_vm_host?:       string
				preferred_shape_type?:    string
				availability_domain?:     string
				subnet!:                  string
				target_environment_type!: string
				fault_domain?:            string
			}]
			display_name!: string
			freeform_tags?: [_]: string
			strategies?: [...{
				metric_type?:           string
				percentile?:            string
				resource_type!:         string
				strategy_type!:         string
				adjustment_multiplier?: float
				metric_time_window?:    string
			}]
			migration_id!: string
		}
		replication_schedule: {
			execution_recurrences!: string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name!: string
		}
		target_asset: {
			migration_plan_id!:          string
			preferred_shape_type!:       string
			ms_license?:                 string
			is_excluded_from_execution!: bool
			user_spec!: [...{
				display_name?:                        string
				shape?:                               string
				dedicated_vm_host_id?:                string
				is_pv_encryption_in_transit_enabled?: bool
				source_details?: [...{
					kms_key_id?:              string
					source_type!:             string
					boot_volume_id?:          string
					boot_volume_size_in_gbs?: string
					boot_volume_vpus_per_gb?: string
					image_id?:                string
				}]
				freeform_tags?: [_]: string
				shape_config?: [...{
					baseline_ocpu_utilization?: string
					memory_in_gbs?:             float
					ocpus?:                     float
				}]
				compartment_id?: string
				defined_tags?: [_]: string
				agent_config?: [...{
					are_all_plugins_disabled?: bool
					is_management_disabled?:   bool
					is_monitoring_disabled?:   bool
					plugins_config?: [...{
						name!:          string
						desired_state!: string
					}]
				}]
				ipxe_script?:    string
				hostname_label?: string
				preemptible_instance_config?: [...{
					preemption_action!: [...{
						type!: string, preserve_boot_volume?: bool
					}]
				}]
				instance_options?: [...{
					are_legacy_imds_endpoints_disabled?: bool
				}]
				create_vnic_details?: [...{
					hostname_label?:            string
					private_ip?:                string
					assign_private_dns_record?: bool
					subnet_id?:                 string
					vlan_id?:                   string
					defined_tags?: [_]: string
					skip_source_dest_check?: bool
					display_name?:           string
					nsg_ids?: [...string]
					assign_public_ip?: bool
					freeform_tags?: [_]: string
				}]
				fault_domain?:            string
				capacity_reservation_id?: string
				availability_domain?:     string
			}]
			type!:                      string
			block_volumes_performance?: int
		}
	}
}
#data: {
	migration_assets: {
		display_name?:       string
		migration_asset_id?: string
		migration_id?:       string
		state?:              string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	migration_plans: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?:    string
		display_name?:      string
		migration_id?:      string
		migration_plan_id?: string
	}
	migrations: {
		migration_id?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
	}
	target_asset: target_asset_id!: string
	target_assets: {
		target_asset_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:      string
		migration_plan_id?: string
		state?:             string
	}
	migration: migration_id!: string
	migration_asset: migration_asset_id!: string
	migration_plan: migration_plan_id!: string
	migration_plan_available_shape: {
		reserved_capacity_id?: string
		availability_domain?:  string
		compartment_id?:       string
		dvh_host_id?:          string
		migration_plan_id!:    string
	}
	migration_plan_available_shapes: {
		availability_domain?:  string
		compartment_id?:       string
		dvh_host_id?:          string
		migration_plan_id!:    string
		reserved_capacity_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	replication_schedule: replication_schedule_id!: string
	replication_schedules: {
		compartment_id?:          string
		display_name?:            string
		replication_schedule_id?: string
		state?:                   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

