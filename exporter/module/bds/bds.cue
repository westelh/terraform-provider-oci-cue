package bds

#resource: {
	attributes: {
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
			time_token_refreshed:                       string
			time_created:                               string
			time_token_expiry:                          string
			force_refresh_resource_principal_trigger?:  int
			state:                                      string
			display_name!:                              string
			time_updated:                               string
			bds_instance_id!:                           string
			cluster_admin_password!:                    string
			session_token_life_span_duration_in_hours?: int
		}
		bds_instance_os_patch_action: {
			cluster_admin_password!: string
			os_patch_version!:       string
			patching_configs?: [...{
				wait_time_between_domain_in_seconds?: int
				patching_config_strategy!:            string
				batch_size?:                          int
				wait_time_between_batch_in_seconds?:  int
				tolerance_threshold_per_batch?:       int
				tolerance_threshold_per_domain?:      int
			}]
			bds_instance_id!: string
		}
		auto_scaling_configuration: {
			policy?: [...{
				policy_type!: string
				rules!: [...{
					action!: string
					metric!: [...{
						threshold!: [...{
							duration_in_minutes!: int
							operator!:            string
							value!:               int
						}]
						metric_type!: string
					}]
				}]
			}]
			time_created:     string
			bds_instance_id!: string
			is_enabled!:      bool
			policy_details?: [...{
				scale_in_config?: [...{
					metric?: [...{
						metric_type?: string
						threshold?: [...{
							duration_in_minutes?: int
							operator?:            string
							value?:               int
						}]
					}]
					min_node_count?: int
					step_size?:      int
				}]
				trigger_type: string
				schedule_details?: [...{
					time_and_vertical_scaling_config?: [...{
						target_memory_per_node?: int
						target_ocpus_per_node?:  int
						target_shape?:           string
						time_recurrence?:        string
					}]
					schedule_type?: string
					time_and_horizontal_scaling_config?: [...{
						target_node_count?: int
						time_recurrence?:   string
					}]
				}]
				policy_type!: string
				action_type:  string
				scale_down_config?: [...{
					memory_step_size?: int
					metric?: [...{
						threshold?: [...{
							duration_in_minutes?: int
							operator?:            string
							value?:               int
						}]
						metric_type?: string
					}]
					min_memory_per_node?: int
					min_ocpus_per_node?:  int
					ocpu_step_size?:      int
				}]
				scale_out_config?: [...{
					step_size?:      int
					max_node_count?: int
					metric?: [...{
						metric_type?: string
						threshold?: [...{
							value?:               int
							duration_in_minutes?: int
							operator?:            string
						}]
					}]
				}]
				scale_up_config?: [...{
					metric?: [...{
						metric_type?: string
						threshold?: [...{
							value?:               int
							duration_in_minutes?: int
							operator?:            string
						}]
					}]
					ocpu_step_size?:      int
					max_memory_per_node?: int
					max_ocpus_per_node?:  int
					memory_step_size?:    int
				}]
				timezone?: string
			}]
			display_name?:           string
			state:                   string
			cluster_admin_password!: string
			node_type!:              string
			time_updated:            string
		}
		bds_instance: {
			util_node!: [...{
				shape_config?: [...{
					ocpus?:         int
					nvmes?:         int
					memory_in_gbs?: int
				}]
				shape!:                    string
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
			}]
			is_cloud_sql_configured?: bool
			compartment_id!:          string
			master_node!: [...{
				shape!:                    string
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
				shape_config?: [...{
					memory_in_gbs?: int
					ocpus?:         int
					nvmes?:         int
				}]
			}]
			time_created: string
			is_secure!:   bool
			ignore_existing_nodes_shape?: [...string]
			is_kafka_configured?:  bool
			is_high_availability!: bool
			freeform_tags?: [_]: string
			cluster_profile?: string
			cluster_details: [...{
				jupyter_hub_url:      string
				time_refreshed:       string
				csql_cell_version:    string
				odh_version:          string
				db_version:           string
				bdm_version:          string
				cloudera_manager_url: string
				time_created:         string
				hue_server_url:       string
				bda_version:          string
				os_version:           string
				ambari_url:           string
				big_data_manager_url: string
				bd_cell_version:      string
				bds_version:          string
			}]
			created_by: string
			compute_only_worker_node?: [...{
				shape_config?: [...{
					ocpus?:         int
					nvmes?:         int
					memory_in_gbs?: int
				}]
				shape!:                    string
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
			}]
			network_config?: [...{
				cidr_block?:              string
				is_nat_gateway_required?: bool
			}]
			kafka_broker_node?: [...{
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_kafka_nodes!:    int
				shape_config?: [...{
					ocpus?:         int
					nvmes?:         int
					memory_in_gbs?: int
				}]
				shape!: string
			}]
			number_of_nodes_requiring_maintenance_reboot: int
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
			cluster_admin_password!: string
			is_force_stop_jobs?:     bool
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
			time_updated: string
			defined_tags?: [_]: string
			edge_node?: [...{
				number_of_nodes!: int
				shape_config?: [...{
					ocpus?:         int
					nvmes?:         int
					memory_in_gbs?: int
				}]
				shape!:                    string
				subnet_id!:                string
				block_volume_size_in_gbs?: string
			}]
			kms_key_id?:          string
			kerberos_realm_name?: string
			cluster_public_key!:  string
			display_name!:        string
			number_of_nodes:      int
			cluster_version!:     string
			os_patch_version?:    string
			nodes: [...{
				os_version:                  string
				shape:                       string
				time_created:                string
				availability_domain:         string
				fault_domain:                string
				image_id:                    string
				ip_address:                  string
				ssh_fingerprint:             string
				hostname:                    string
				time_maintenance_reboot_due: string
				attached_block_volumes: [...{
					volume_attachment_id: string
					volume_size_in_gbs:   string
				}]
				local_disks_total_size_in_gbs: float
				memory_in_gbs:                 int
				state:                         string
				node_type:                     string
				is_reboot_required:            bool
				display_name:                  string
				subnet_id:                     string
				ocpus:                         int
				instance_id:                   string
				nvmes:                         int
			}]
			state?:                string
			bootstrap_script_url?: string
		}
		bds_instance_api_key: {
			default_region?:  string
			fingerprint:      string
			state:            string
			tenant_id:        string
			passphrase!:      string
			time_created:     string
			key_alias!:       string
			user_id!:         string
			pemfilepath:      string
			bds_instance_id!: string
		}
		bds_instance_metastore_config: {
			bds_api_key_passphrase!: string
			cluster_admin_password!: string
			metastore_id!:           string
			display_name?:           string
			activate_trigger?:       int
			bds_api_key_id!:         string
			metastore_type:          string
			time_created:            string
			state:                   string
			bds_instance_id!:        string
			time_updated:            string
		}
		bds_instance_operation_certificate_managements_management: {
			services!: [...string]
			enable_operation_certificate_management!: bool
			renew_operation_certificate_management!:  bool
			host_cert_details?: [...{
				certificate?: string
				host_name?:   string
				private_key?: string
			}]
			root_certificate?:       string
			server_key_password?:    string
			bds_instance_id!:        string
			cluster_admin_password!: string
		}
	}
	arguments: {
		bds_instance_patch_action: {
			patching_config?: [...{
				wait_time_between_domain_in_seconds?: int
				patching_config_strategy!:            string
				batch_size?:                          int
				wait_time_between_batch_in_seconds?:  int
			}]
			bds_instance_id!:        string
			cluster_admin_password!: string
			version!:                string
		}
		bds_instance_resource_principal_configuration: {
			display_name!:                              string
			bds_instance_id!:                           string
			cluster_admin_password!:                    string
			session_token_life_span_duration_in_hours?: int
			force_refresh_resource_principal_trigger?:  int
		}
		bds_instance_os_patch_action: {
			bds_instance_id!:        string
			cluster_admin_password!: string
			os_patch_version!:       string
			patching_configs?: [...{
				tolerance_threshold_per_batch?:       int
				tolerance_threshold_per_domain?:      int
				wait_time_between_domain_in_seconds?: int
				patching_config_strategy!:            string
				batch_size?:                          int
				wait_time_between_batch_in_seconds?:  int
			}]
		}
		auto_scaling_configuration: {
			policy?: [...{
				rules!: [...{
					action!: string
					metric!: [...{
						metric_type!: string
						threshold!: [...{
							operator!:            string
							value!:               int
							duration_in_minutes!: int
						}]
					}]
				}]
				policy_type!: string
			}]
			bds_instance_id!:        string
			cluster_admin_password!: string
			is_enabled!:             bool
			node_type!:              string
			display_name?:           string
			policy_details?: [...{
				scale_out_config?: [...{
					step_size?:      int
					max_node_count?: int
					metric?: [...{
						metric_type?: string
						threshold?: [...{
							operator?:            string
							value?:               int
							duration_in_minutes?: int
						}]
					}]
				}]
				scale_up_config?: [...{
					max_ocpus_per_node?: int
					memory_step_size?:   int
					metric?: [...{
						metric_type?: string
						threshold?: [...{
							duration_in_minutes?: int
							operator?:            string
							value?:               int
						}]
					}]
					ocpu_step_size?:      int
					max_memory_per_node?: int
				}]
				timezone?:    string
				policy_type!: string
				scale_in_config?: [...{
					step_size?: int
					metric?: [...{
						metric_type?: string
						threshold?: [...{
							value?:               int
							duration_in_minutes?: int
							operator?:            string
						}]
					}]
					min_node_count?: int
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
				scale_down_config?: [...{
					metric?: [...{
						metric_type?: string
						threshold?: [...{
							duration_in_minutes?: int
							operator?:            string
							value?:               int
						}]
					}]
					min_memory_per_node?: int
					min_ocpus_per_node?:  int
					ocpu_step_size?:      int
					memory_step_size?:    int
				}]
			}]
		}
		bds_instance: {
			is_secure!:            bool
			is_high_availability!: bool
			freeform_tags?: [_]: string
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
			cluster_profile?:     string
			is_force_stop_jobs?:  bool
			display_name!:        string
			is_kafka_configured?: bool
			compartment_id!:      string
			master_node!: [...{
				shape!:                    string
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
				shape_config?: [...{
					nvmes?:         int
					memory_in_gbs?: int
					ocpus?:         int
				}]
			}]
			kerberos_realm_name?: string
			cloud_sql_details?: [...{
				shape!: string
			}]
			network_config?: [...{
				cidr_block?:              string
				is_nat_gateway_required?: bool
			}]
			kms_key_id?: string
			defined_tags?: [_]: string
			util_node!: [...{
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
			edge_node?: [...{
				number_of_nodes!: int
				shape_config?: [...{
					nvmes?:         int
					memory_in_gbs?: int
					ocpus?:         int
				}]
				shape!:                    string
				subnet_id!:                string
				block_volume_size_in_gbs?: string
			}]
			cluster_admin_password!: string
			os_patch_version?:       string
			compute_only_worker_node?: [...{
				shape!:                    string
				subnet_id!:                string
				block_volume_size_in_gbs?: string
				number_of_nodes!:          int
				shape_config?: [...{
					memory_in_gbs?: int
					ocpus?:         int
					nvmes?:         int
				}]
			}]
			state?:                   string
			cluster_public_key!:      string
			bootstrap_script_url?:    string
			cluster_version!:         string
			is_cloud_sql_configured?: bool
			worker_node!: [...{
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
		}
		bds_instance_api_key: {
			key_alias!:       string
			passphrase!:      string
			default_region?:  string
			bds_instance_id!: string
			user_id!:         string
		}
		bds_instance_metastore_config: {
			bds_api_key_id!:         string
			bds_instance_id!:        string
			bds_api_key_passphrase!: string
			cluster_admin_password!: string
			metastore_id!:           string
			display_name?:           string
			activate_trigger?:       int
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
				certificate?: string
				host_name?:   string
				private_key?: string
			}]
		}
	}
}
#data: {
	bds_instance_api_key: {
		api_key_id!:      string
		bds_instance_id!: string
	}
	bds_instance_get_os_patch: {
		bds_instance_id!:  string
		os_patch_version!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	auto_scaling_configuration: {
		bds_instance_id!:               string
		auto_scaling_configuration_id!: string
	}
	bds_instance: bds_instance_id!: string
	bds_instance_patch_histories: {
		patch_version?: string
		state?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bds_instance_id!: string
		patch_type?:      string
	}
	bds_instance_patches: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bds_instance_id!: string
	}
	bds_instance_resource_principal_configuration: {
		bds_instance_id!:                     string
		resource_principal_configuration_id!: string
	}
	bds_instances: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	auto_scaling_configurations: {
		bds_instance_id!: string
		compartment_id!:  string
		display_name?:    string
		state?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	bds_instance_api_keys: {
		bds_instance_id!: string
		display_name?:    string
		state?:           string
		user_id?:         string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	bds_instance_resource_principal_configurations: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		bds_instance_id!: string
		display_name?:    string
		state?:           string
	}
	bds_instance_metastore_config: {
		metastore_config_id!: string
		bds_instance_id!:     string
	}
	bds_instance_metastore_configs: {
		display_name?:   string
		metastore_id?:   string
		metastore_type?: string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		bds_api_key_id?:  string
		bds_instance_id!: string
	}
	bds_instance_list_os_patches: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		bds_instance_id!: string
	}
}

