package bds

#resource: {
	attributes: {
		bds_instance_metastore_config: {
			metastore_type:          string
			time_created:            string
			time_updated:            string
			bds_api_key_passphrase!: string
			bds_instance_id!:        string
			display_name?:           string
			activate_trigger?:       int
			metastore_id!:           string
			state:                   string
			cluster_admin_password!: string
			bds_api_key_id!:         string
		}
		bds_instance_operation_certificate_managements_management: {
			root_certificate?:       string
			server_key_password?:    string
			bds_instance_id!:        string
			cluster_admin_password!: string
			services!: [...string]
			enable_operation_certificate_management!: bool
			renew_operation_certificate_management!:  bool
			host_cert_details?: [...{
				host_name?:   string
				private_key?: string
				certificate?: string
			}]
		}
		bds_instance_patch_action: {
			bds_instance_id!:        string
			cluster_admin_password!: string
			version!:                string
			patching_config?: [...{
				wait_time_between_batch_in_seconds?:  int
				wait_time_between_domain_in_seconds?: int
				patching_config_strategy!:            string
				batch_size?:                          int
			}]
		}
		bds_instance_resource_principal_configuration: {
			display_name!:                              string
			session_token_life_span_duration_in_hours?: int
			time_updated:                               string
			bds_instance_id!:                           string
			force_refresh_resource_principal_trigger?:  int
			time_created:                               string
			time_token_refreshed:                       string
			cluster_admin_password!:                    string
			state:                                      string
			time_token_expiry:                          string
		}
		bds_instance_os_patch_action: {
			bds_instance_id!:        string
			cluster_admin_password!: string
			os_patch_version!:       string
			patching_configs?: [...{
				patching_config_strategy!:            string
				batch_size?:                          int
				wait_time_between_batch_in_seconds?:  int
				tolerance_threshold_per_batch?:       int
				tolerance_threshold_per_domain?:      int
				wait_time_between_domain_in_seconds?: int
			}]
		}
		auto_scaling_configuration: {
			node_type!:   string
			time_created: string
			policy?: [...{
				policy_type!: string
				rules!: [...{
					action!: string
					metric!: [...{
						metric_type!: string
						threshold!: [...{
							value!:               int
							duration_in_minutes!: int
							operator!:            string
						}]
					}]
				}]
			}]
			cluster_admin_password!: string
			display_name?:           string
			policy_details?: [...{
				timezone?:    string
				policy_type!: string
				scale_up_config?: [...{
					ocpu_step_size?:      int
					max_memory_per_node?: int
					max_ocpus_per_node?:  int
					memory_step_size?:    int
					metric?: [...{
						threshold?: [...{
							duration_in_minutes?: int
							operator?:            string
							value?:               int
						}]
						metric_type?: string
					}]
				}]
				action_type:  string
				trigger_type: string
				scale_down_config?: [...{
					min_ocpus_per_node?: int
					ocpu_step_size?:     int
					memory_step_size?:   int
					metric?: [...{
						metric_type?: string
						threshold?: [...{
							operator?:            string
							value?:               int
							duration_in_minutes?: int
						}]
					}]
					min_memory_per_node?: int
				}]
				scale_in_config?: [...{
					min_node_count?: int
					step_size?:      int
					metric?: [...{
						metric_type?: string
						threshold?: [...{
							operator?:            string
							value?:               int
							duration_in_minutes?: int
						}]
					}]
				}]
				scale_out_config?: [...{
					max_node_count?: int
					metric?: [...{
						threshold?: [...{
							operator?:            string
							value?:               int
							duration_in_minutes?: int
						}]
						metric_type?: string
					}]
					step_size?: int
				}]
				schedule_details?: [...{
					schedule_type?: string
					time_and_horizontal_scaling_config?: [...{
						target_node_count?: int
						time_recurrence?:   string
					}]
					time_and_vertical_scaling_config?: [...{
						target_memory_per_node?: int
						target_ocpus_per_node?:  int
						target_shape?:           string
						time_recurrence?:        string
					}]
				}]
			}]
			state:            string
			time_updated:     string
			bds_instance_id!: string
			is_enabled!:      bool
		}
		bds_instance: {
			is_force_stop_jobs?:  bool
			time_created:         string
			is_kafka_configured?: bool
			network_config?: [...{
				cidr_block?:              string
				is_nat_gateway_required?: bool
			}]
			cluster_public_key!: string
			ignore_existing_nodes_shape?: [...string]
			state?:                   string
			is_cloud_sql_configured?: bool
			cluster_details: [...{
				db_version:           string
				bd_cell_version:      string
				bda_version:          string
				big_data_manager_url: string
				os_version:           string
				hue_server_url:       string
				ambari_url:           string
				time_created:         string
				bdm_version:          string
				csql_cell_version:    string
				jupyter_hub_url:      string
				odh_version:          string
				time_refreshed:       string
				cloudera_manager_url: string
				bds_version:          string
			}]
			created_by:            string
			bootstrap_script_url?: string
			compartment_id!:       string
			is_high_availability!: bool
			cluster_version!:      string
			display_name!:         string
			time_updated:          string
			edge_node?: [...{
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
				shape_config?: [...{
					nvmes?:         int
					memory_in_gbs?: int
					ocpus?:         int
				}]
				shape!: string
			}]
			freeform_tags?: [_]: string
			cloud_sql_details?: [...{
				nvmes:                                int
				ocpus:                                int
				shape!:                               string
				ip_address:                           string
				is_kerberos_mapped_to_database_users: bool
				kerberos_details: [...{
					keytab_file:    string
					principal_name: string
				}]
				block_volume_size_in_gbs: string
				memory_in_gbs:            int
			}]
			os_patch_version?:                            string
			number_of_nodes_requiring_maintenance_reboot: int
			nodes: [...{
				node_type:                     string
				instance_id:                   string
				os_version:                    string
				availability_domain:           string
				ip_address:                    string
				nvmes:                         int
				hostname:                      string
				time_created:                  string
				display_name:                  string
				subnet_id:                     string
				is_reboot_required:            bool
				ssh_fingerprint:               string
				image_id:                      string
				local_disks_total_size_in_gbs: float
				fault_domain:                  string
				attached_block_volumes: [...{
					volume_size_in_gbs:   string
					volume_attachment_id: string
				}]
				time_maintenance_reboot_due: string
				ocpus:                       int
				memory_in_gbs:               int
				shape:                       string
				state:                       string
			}]
			kms_key_id?: string
			worker_node!: [...{
				shape!:                    string
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
				shape_config?: [...{
					ocpus?:         int
					nvmes?:         int
					memory_in_gbs?: int
				}]
			}]
			defined_tags?: [_]: string
			util_node!: [...{
				shape_config?: [...{
					memory_in_gbs?: int
					ocpus?:         int
					nvmes?:         int
				}]
				shape!:                    string
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
			}]
			cluster_profile?: string
			number_of_nodes:  int
			is_secure!:       bool
			master_node!: [...{
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
				shape_config?: [...{
					nvmes?:         int
					memory_in_gbs?: int
					ocpus?:         int
				}]
				shape!:     string
				subnet_id!: string
			}]
			compute_only_worker_node?: [...{
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
				shape_config?: [...{
					nvmes?:         int
					memory_in_gbs?: int
					ocpus?:         int
				}]
				shape!:     string
				subnet_id!: string
			}]
			kerberos_realm_name?:    string
			cluster_admin_password!: string
			kafka_broker_node?: [...{
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_kafka_nodes!:    int
				shape_config?: [...{
					memory_in_gbs?: int
					ocpus?:         int
					nvmes?:         int
				}]
				shape!: string
			}]
		}
		bds_instance_api_key: {
			pemfilepath:      string
			bds_instance_id!: string
			passphrase!:      string
			key_alias!:       string
			user_id!:         string
			default_region?:  string
			time_created:     string
			fingerprint:      string
			state:            string
			tenant_id:        string
		}
	}
	arguments: {
		bds_instance_metastore_config: {
			activate_trigger?:       int
			bds_api_key_id!:         string
			metastore_id!:           string
			bds_api_key_passphrase!: string
			bds_instance_id!:        string
			cluster_admin_password!: string
			display_name?:           string
		}
		bds_instance_operation_certificate_managements_management: {
			renew_operation_certificate_management!: bool
			host_cert_details?: [...{
				certificate?: string
				host_name?:   string
				private_key?: string
			}]
			root_certificate?:       string
			server_key_password?:    string
			bds_instance_id!:        string
			cluster_admin_password!: string
			services!: [...string]
			enable_operation_certificate_management!: bool
		}
		bds_instance_patch_action: {
			bds_instance_id!:        string
			cluster_admin_password!: string
			version!:                string
			patching_config?: [...{
				wait_time_between_domain_in_seconds?: int
				patching_config_strategy!:            string
				batch_size?:                          int
				wait_time_between_batch_in_seconds?:  int
			}]
		}
		bds_instance_resource_principal_configuration: {
			display_name!:                              string
			session_token_life_span_duration_in_hours?: int
			bds_instance_id!:                           string
			cluster_admin_password!:                    string
			force_refresh_resource_principal_trigger?:  int
		}
		bds_instance_os_patch_action: {
			cluster_admin_password!: string
			os_patch_version!:       string
			patching_configs?: [...{
				batch_size?:                          int
				wait_time_between_batch_in_seconds?:  int
				tolerance_threshold_per_batch?:       int
				tolerance_threshold_per_domain?:      int
				wait_time_between_domain_in_seconds?: int
				patching_config_strategy!:            string
			}]
			bds_instance_id!: string
		}
		auto_scaling_configuration: {
			bds_instance_id!:        string
			node_type!:              string
			display_name?:           string
			cluster_admin_password!: string
			is_enabled!:             bool
			policy?: [...{
				policy_type!: string
				rules!: [...{
					action!: string
					metric!: [...{
						metric_type!: string
						threshold!: [...{
							duration_in_minutes!: int
							operator!:            string
							value!:               int
						}]
					}]
				}]
			}]
			policy_details?: [...{
				policy_type!: string
				scale_down_config?: [...{
					min_memory_per_node?: int
					min_ocpus_per_node?:  int
					ocpu_step_size?:      int
					memory_step_size?:    int
					metric?: [...{
						threshold?: [...{
							value?:               int
							duration_in_minutes?: int
							operator?:            string
						}]
						metric_type?: string
					}]
				}]
				scale_in_config?: [...{
					step_size?: int
					metric?: [...{
						metric_type?: string
						threshold?: [...{
							duration_in_minutes?: int
							operator?:            string
							value?:               int
						}]
					}]
					min_node_count?: int
				}]
				scale_out_config?: [...{
					metric?: [...{
						threshold?: [...{
							operator?:            string
							value?:               int
							duration_in_minutes?: int
						}]
						metric_type?: string
					}]
					step_size?:      int
					max_node_count?: int
				}]
				schedule_details?: [...{
					schedule_type?: string
					time_and_horizontal_scaling_config?: [...{
						target_node_count?: int
						time_recurrence?:   string
					}]
					time_and_vertical_scaling_config?: [...{
						target_shape?:           string
						time_recurrence?:        string
						target_memory_per_node?: int
						target_ocpus_per_node?:  int
					}]
				}]
				scale_up_config?: [...{
					max_memory_per_node?: int
					max_ocpus_per_node?:  int
					memory_step_size?:    int
					metric?: [...{
						metric_type?: string
						threshold?: [...{
							duration_in_minutes?: int
							operator?:            string
							value?:               int
						}]
					}]
					ocpu_step_size?: int
				}]
				timezone?: string
			}]
		}
		bds_instance: {
			compartment_id!:         string
			display_name!:           string
			cluster_admin_password!: string
			freeform_tags?: [_]: string
			cluster_version!:     string
			is_kafka_configured?: bool
			network_config?: [...{
				cidr_block?:              string
				is_nat_gateway_required?: bool
			}]
			edge_node?: [...{
				number_of_nodes!: int
				shape_config?: [...{
					memory_in_gbs?: int
					ocpus?:         int
					nvmes?:         int
				}]
				shape!:                    string
				subnet_id!:                string
				block_volume_size_in_gbs?: string
			}]
			cluster_public_key!: string
			state?:              string
			cloud_sql_details?: [...{
				shape!: string
			}]
			os_patch_version?:    string
			is_secure!:           bool
			kerberos_realm_name?: string
			compute_only_worker_node?: [...{
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
				shape_config?: [...{
					memory_in_gbs?: int
					ocpus?:         int
					nvmes?:         int
				}]
				shape!: string
			}]
			defined_tags?: [_]: string
			is_cloud_sql_configured?: bool
			bootstrap_script_url?:    string
			kms_key_id?:              string
			worker_node!: [...{
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
				shape_config?: [...{
					nvmes?:         int
					memory_in_gbs?: int
					ocpus?:         int
				}]
				shape!:     string
				subnet_id!: string
			}]
			is_force_stop_jobs?: bool
			cluster_profile?:    string
			master_node!: [...{
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
				shape_config?: [...{
					memory_in_gbs?: int
					ocpus?:         int
					nvmes?:         int
				}]
				shape!:     string
				subnet_id!: string
			}]
			ignore_existing_nodes_shape?: [...string]
			util_node!: [...{
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
				shape_config?: [...{
					memory_in_gbs?: int
					ocpus?:         int
					nvmes?:         int
				}]
				shape!: string
			}]
			is_high_availability!: bool
			kafka_broker_node?: [...{
				shape!:                    string
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_kafka_nodes!:    int
				shape_config?: [...{
					nvmes?:         int
					memory_in_gbs?: int
					ocpus?:         int
				}]
			}]
		}
		bds_instance_api_key: {
			bds_instance_id!: string
			passphrase!:      string
			key_alias!:       string
			user_id!:         string
			default_region?:  string
		}
	}
}
#data: {
	bds_instance_resource_principal_configurations: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bds_instance_id!: string
		display_name?:    string
	}
	bds_instance_patch_histories: {
		bds_instance_id!: string
		patch_type?:      string
		patch_version?:   string
		state?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	bds_instance_patches: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bds_instance_id!: string
	}
	bds_instance_metastore_config: {
		metastore_config_id!: string
		bds_instance_id!:     string
	}
	bds_instance_resource_principal_configuration: {
		bds_instance_id!:                     string
		resource_principal_configuration_id!: string
	}
	bds_instances: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	auto_scaling_configuration: {
		auto_scaling_configuration_id!: string
		bds_instance_id!:               string
	}
	bds_instance_api_keys: {
		display_name?: string
		state?:        string
		user_id?:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bds_instance_id!: string
	}
	bds_instance_metastore_configs: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bds_api_key_id?:  string
		bds_instance_id!: string
		display_name?:    string
		metastore_id?:    string
		metastore_type?:  string
	}
	bds_instance: bds_instance_id!: string
	bds_instance_get_os_patch: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		bds_instance_id!:  string
		os_patch_version!: string
	}
	bds_instance_list_os_patches: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		bds_instance_id!: string
	}
	auto_scaling_configurations: {
		bds_instance_id!: string
		compartment_id!:  string
		display_name?:    string
		state?:           string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	bds_instance_api_key: {
		bds_instance_id!: string
		api_key_id!:      string
	}
}

