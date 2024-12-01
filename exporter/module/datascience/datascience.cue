package datascience

#resource: {
	attributes: {
		job: {
			display_name?: string
			project_id!:   string
			job_configuration_details!: [...{
				job_type!:               string
				command_line_arguments?: string
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
			}]
			job_storage_mount_configuration_details_list?: [...{
				destination_path?:           string
				export_id?:                  string
				mount_target_id?:            string
				namespace?:                  string
				prefix?:                     string
				destination_directory_name!: string
				storage_type!:               string
				bucket?:                     string
			}]
			created_by:               string
			artifact_content_length?: string
			description?:             string
			freeform_tags?: [_]: string
			compartment_id!:        string
			state:                  string
			artifact_last_modified: string
			lifecycle_details:      string
			time_created:           string
			job_environment_configuration_details?: [...{
				image!:                string
				job_environment_type!: string
				cmd?: [...string]
				entrypoint?: [...string]
				image_digest?:       string
				image_signature_id?: string
			}]
			job_log_configuration_details?: [...{
				enable_logging?:           bool
				log_group_id?:             string
				log_id?:                   string
				enable_auto_log_creation?: bool
			}]
			job_infrastructure_configuration_details!: [...{
				job_shape_config_details?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				subnet_id?:                 string
				block_storage_size_in_gbs!: int
				job_infrastructure_type!:   string
				shape_name!:                string
			}]
			job_artifact?: string
			defined_tags?: [_]: string
			delete_related_job_runs?:      *false | bool
			artifact_content_disposition?: string
			empty_artifact:                bool
			artifact_content_md5:          string
		}
		job_run: {
			job_storage_mount_configuration_details_list: [...{
				bucket:                     string
				destination_directory_name: string
				destination_path:           string
				export_id:                  string
				mount_target_id:            string
				namespace:                  string
				prefix:                     string
				storage_type:               string
			}]
			lifecycle_details: string
			compartment_id!:   string
			display_name?:     string
			job_environment_configuration_override_details?: [...{
				image!:                string
				job_environment_type!: string
				cmd?: [...string]
				entrypoint?: [...string]
				image_digest?:       string
				image_signature_id?: string
			}]
			defined_tags?: [_]: string
			opc_parent_rpt_url?: string
			job_log_configuration_override_details?: [...{
				log_group_id?:             string
				log_id?:                   string
				enable_auto_log_creation?: bool
				enable_logging?:           bool
			}]
			created_by:  string
			project_id!: string
			state:       string
			job_id!:     string
			log_details: [...{
				log_group_id: string
				log_id:       string
			}]
			time_accepted: string
			time_finished: string
			job_configuration_override_details?: [...{
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
				job_type!:                   string
				command_line_arguments?:     string
			}]
			job_infrastructure_configuration_details: [...{
				job_infrastructure_type: string
				job_shape_config_details: [...{
					memory_in_gbs: float
					ocpus:         float
				}]
				shape_name:                string
				subnet_id:                 string
				block_storage_size_in_gbs: int
			}]
			asynchronous?: *true | bool
			freeform_tags?: [_]: string
			time_started: string
		}
		model: {
			project_id!:                   string
			artifact_content_length!:      string
			artifact_last_modified:        string
			state?:                        string
			time_created:                  string
			output_schema?:                string
			display_name?:                 string
			version_label?:                string
			artifact_content_disposition?: string
			defined_metadata_list?: [...{
				key?:         string
				value?:       string
				category?:    string
				description?: string
			}]
			created_by: string
			retention_operation_details: [...{
				archive_state:           string
				archive_state_details:   string
				delete_state:            string
				delete_state_details:    string
				time_archival_scheduled: string
				time_deletion_scheduled: string
			}]
			freeform_tags?: [_]: string
			description?:         string
			artifact_content_md5: string
			backup_operation_details: [...{
				time_last_backup:     string
				backup_state:         string
				backup_state_details: string
			}]
			compartment_id!:         string
			model_version_set_name?: string
			empty_model:             bool
			defined_tags?: [_]: string
			model_version_set_id?: string
			input_schema?:         string
			retention_setting?: [...{
				customer_notification_type?: string
				delete_after_days?:          int
				archive_after_days!:         int
			}]
			custom_metadata_list?: [...{
				value?:       string
				category?:    string
				description?: string
				key?:         string
			}]
			model_artifact!: string
			backup_setting?: [...{
				backup_region!:              string
				is_backup_enabled!:          bool
				customer_notification_type?: string
			}]
			lifecycle_details: string
		}
		model_provenance: {
			training_id?:     string
			training_script?: string
			model_id!:        string
			git_branch?:      string
			git_commit?:      string
			repository_url?:  string
			script_dir?:      string
		}
		model_artifact_import: {
			model_id!:                string
			artifact_source_type!:    string
			namespace!:               string
			destination_bucket!:      string
			destination_object_name!: string
			destination_region!:      string
		}
		private_endpoint: {
			display_name?: string
			nsg_ids?: [...string]
			freeform_tags?: [_]: string
			fqdn:            string
			time_created:    string
			created_by:      string
			compartment_id!: string
			subnet_id!:      string
			state:           string
			description?:    string
			time_updated:    string
			defined_tags?: [_]: string
			system_tags: [_]: string
			sub_domain?:                 string
			lifecycle_details:           string
			data_science_resource_type!: string
		}
		model_deployment: {
			model_deployment_url: string
			category_log_details?: [...{
				access?: [...{
					log_group_id!: string
					log_id!:       string
				}]
				predict?: [...{
					log_group_id!: string
					log_id!:       string
				}]
			}]
			created_by:      string
			compartment_id!: string
			time_created:    string
			model_deployment_configuration_details!: [...{
				deployment_type!: string
				model_configuration_details!: [...{
					instance_configuration!: [...{
						instance_shape_name!: string
						model_deployment_instance_shape_config_details?: [...{
							cpu_baseline?:  string
							memory_in_gbs?: float
							ocpus?:         float
						}]
						subnet_id?: string
					}]
					model_id!:               string
					bandwidth_mbps?:         int
					maximum_bandwidth_mbps?: int
					scaling_policy?: [...{
						policy_type!: string
						auto_scaling_policies?: [...{
							rules!: [...{
								scale_in_configuration!: [...{
									query?:                      string
									scaling_configuration_type?: string
									threshold?:                  int
									instance_count_adjustment?:  int
									pending_duration?:           string
								}]
								scale_out_configuration!: [...{
									query?:                      string
									scaling_configuration_type?: string
									threshold?:                  int
									instance_count_adjustment?:  int
									pending_duration?:           string
								}]
								metric_type?:                 string
								metric_expression_rule_type!: string
							}]
							auto_scaling_policy_type!: string
							initial_instance_count!:   int
							maximum_instance_count!:   int
							minimum_instance_count!:   int
						}]
						cool_down_in_seconds?: int
						instance_count?:       int
						is_enabled?:           bool
					}]
				}]
				environment_configuration_details?: [...{
					cmd?: [...string]
					entrypoint?: [...string]
					environment_variables?: [_]: string
					health_check_port?:              int
					image?:                          string
					image_digest?:                   string
					server_port?:                    int
					environment_configuration_type!: string
				}]
			}]
			defined_tags?: [_]: string
			opc_parent_rpt_url?: string
			project_id!:         string
			display_name?:       string
			lifecycle_details:   string
			freeform_tags?: [_]: string
			description?: string
			state?:       string
			model_deployment_system_data: [...{
				current_instance_count: int
				system_infra_type:      string
			}]
		}
		model_version_set: {
			time_created:    string
			project_id!:     string
			time_updated:    string
			compartment_id!: string
			defined_tags?: [_]: string
			description?: string
			created_by:   string
			freeform_tags?: [_]: string
			state: string
			system_tags: [_]: string
			name!: string
		}
		model_artifact_export: {
			model_id!:             string
			artifact_source_type!: string
			namespace!:            string
			source_bucket!:        string
			source_object_name!:   string
			source_region!:        string
		}
		notebook_session: {
			time_created: string
			freeform_tags?: [_]: string
			notebook_session_config_details?: [...{
				notebook_session_shape_config_details?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				private_endpoint_id?:       string
				subnet_id?:                 string
				shape!:                     string
				block_storage_size_in_gbs?: int
			}]
			lifecycle_details: string
			notebook_session_configuration_details?: [...{
				subnet_id!:                 string
				block_storage_size_in_gbs?: int
				notebook_session_shape_config_details?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				private_endpoint_id?: string
				shape!:               string
			}]
			notebook_session_storage_mount_configuration_details_list?: [...{
				destination_path?:           string
				export_id?:                  string
				mount_target_id?:            string
				namespace?:                  string
				prefix?:                     string
				destination_directory_name!: string
				storage_type!:               string
				bucket?:                     string
			}]
			state?:               string
			notebook_session_url: string
			display_name?:        string
			notebook_session_runtime_config_details?: [...{
				notebook_session_git_config_details?: [...{
					notebook_session_git_repo_config_collection?: [...{
						url!: string
					}]
				}]
				custom_environment_variables?: [_]: string
			}]
			project_id!:     string
			created_by:      string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		pipeline: {
			system_tags: [_]: string
			created_by: string
			infrastructure_configuration_details?: [...{
				shape_config_details?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				subnet_id?:                 string
				block_storage_size_in_gbs!: int
				shape_name!:                string
			}]
			time_updated: string
			step_details!: [...{
				job_id?: string
				step_container_configuration_details?: [...{
					entrypoint?: [...string]
					image_digest?:       string
					image_signature_id?: string
					container_type!:     string
					image!:              string
					cmd?: [...string]
				}]
				step_name!: string
				step_type!: string
				depends_on?: [...string]
				description?:          string
				is_artifact_uploaded?: bool
				step_configuration_details?: [...{
					maximum_runtime_in_minutes?: string
					command_line_arguments?:     string
					environment_variables?: [_]: string
				}]
				step_infrastructure_configuration_details?: [...{
					shape_name!:                string
					subnet_id?:                 string
					block_storage_size_in_gbs!: int
					shape_config_details?: [...{
						memory_in_gbs?: float
						ocpus?:         float
					}]
				}]
			}]
			delete_related_pipeline_runs?: *false | bool
			log_configuration_details?: [...{
				enable_logging?:           bool
				log_group_id?:             string
				log_id?:                   string
				enable_auto_log_creation?: bool
			}]
			configuration_details?: [...{
				command_line_arguments?: string
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
				type!:                       string
			}]
			defined_tags?: [_]: string
			step_artifact?: [...{
				artifact_content_md5:          string
				artifact_last_modified:        string
				step_name!:                    string
				pipeline_step_artifact!:       string
				artifact_content_length!:      string
				artifact_content_disposition?: string
			}]
			lifecycle_details: string
			description?:      string
			display_name?:     string
			project_id!:       string
			state:             string
			time_created:      string
			compartment_id!:   string
			freeform_tags?: [_]: string
		}
		pipeline_run: {
			freeform_tags?: [_]: string
			system_tags?: [_]: string
			state:        string
			time_updated: string
			pipeline_id!: string
			log_configuration_override_details?: [...{
				enable_logging?:           bool
				log_group_id?:             string
				log_id?:                   string
				enable_auto_log_creation?: bool
			}]
			time_finished: string
			step_runs: [...{
				lifecycle_details: string
				state:             string
				step_name:         string
				step_type:         string
				time_finished:     string
				time_started:      string
				job_run_id:        string
			}]
			configuration_override_details?: [...{
				type!:                   string
				command_line_arguments?: string
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
			}]
			step_override_details?: [...{
				step_configuration_details!: [...{
					maximum_runtime_in_minutes?: string
					command_line_arguments?:     string
					environment_variables?: [_]: string
				}]
				step_name!: string
				step_container_configuration_details?: [...{
					image_signature_id?: string
					container_type!:     string
					image!:              string
					cmd?: [...string]
					entrypoint?: [...string]
					image_digest?: string
				}]
			}]
			defined_tags?: [_]: string
			configuration_details: [...{
				environment_variables: [_]: string
				maximum_runtime_in_minutes: string
				type:                       string
				command_line_arguments:     string
			}]
			created_by:               string
			lifecycle_details:        string
			project_id!:              string
			time_accepted:            string
			opc_parent_rpt_url?:      string
			time_started:             string
			delete_related_job_runs?: *false | bool
			compartment_id!:          string
			display_name?:            string
			log_details: [...{
				log_group_id: string
				log_id:       string
			}]
		}
		project: {
			state:           string
			display_name?:   string
			created_by:      string
			description?:    string
			time_created:    string
			compartment_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			system_tags: [_]: string
		}
	}
	arguments: {
		job: {
			job_infrastructure_configuration_details!: [...{
				job_shape_config_details?: [...{
					ocpus?:         float
					memory_in_gbs?: float
				}]
				subnet_id?:                 string
				block_storage_size_in_gbs!: int
				job_infrastructure_type!:   string
				shape_name!:                string
			}]
			freeform_tags?: [_]: string
			job_environment_configuration_details?: [...{
				image_signature_id?:   string
				image!:                string
				job_environment_type!: string
				cmd?: [...string]
				entrypoint?: [...string]
				image_digest?: string
			}]
			compartment_id!: string
			display_name?:   string
			job_log_configuration_details?: [...{
				log_id?:                   string
				enable_auto_log_creation?: bool
				enable_logging?:           bool
				log_group_id?:             string
			}]
			artifact_content_length?: string
			job_configuration_details!: [...{
				maximum_runtime_in_minutes?: string
				job_type!:                   string
				command_line_arguments?:     string
				environment_variables?: [_]: string
			}]
			delete_related_job_runs?:      *false | bool
			artifact_content_disposition?: string
			job_storage_mount_configuration_details_list?: [...{
				bucket?:                     string
				destination_path?:           string
				export_id?:                  string
				mount_target_id?:            string
				namespace?:                  string
				prefix?:                     string
				destination_directory_name!: string
				storage_type!:               string
			}]
			job_artifact?: string
			defined_tags?: [_]: string
			description?: string
			project_id!:  string
		}
		job_run: {
			asynchronous?: *true | bool
			display_name?: string
			job_log_configuration_override_details?: [...{
				enable_auto_log_creation?: bool
				enable_logging?:           bool
				log_group_id?:             string
				log_id?:                   string
			}]
			opc_parent_rpt_url?: string
			freeform_tags?: [_]: string
			project_id!: string
			job_environment_configuration_override_details?: [...{
				image!:                string
				job_environment_type!: string
				cmd?: [...string]
				entrypoint?: [...string]
				image_digest?:       string
				image_signature_id?: string
			}]
			compartment_id!: string
			job_id!:         string
			defined_tags?: [_]: string
			job_configuration_override_details?: [...{
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
				job_type!:                   string
				command_line_arguments?:     string
			}]
		}
		model: {
			display_name?:   string
			compartment_id!: string
			version_label?:  string
			backup_setting?: [...{
				is_backup_enabled!:          bool
				customer_notification_type?: string
				backup_region!:              string
			}]
			output_schema?: string
			project_id!:    string
			defined_tags?: [_]: string
			artifact_content_length!: string
			model_artifact!:          string
			description?:             string
			input_schema?:            string
			retention_setting?: [...{
				delete_after_days?:          int
				archive_after_days!:         int
				customer_notification_type?: string
			}]
			model_version_set_name?: string
			custom_metadata_list?: [...{
				key?:         string
				value?:       string
				category?:    string
				description?: string
			}]
			freeform_tags?: [_]: string
			model_version_set_id?: string
			defined_metadata_list?: [...{
				category?:    string
				description?: string
				key?:         string
				value?:       string
			}]
			state?:                        string
			artifact_content_disposition?: string
		}
		model_provenance: {
			git_commit?:      string
			repository_url?:  string
			script_dir?:      string
			training_id?:     string
			training_script?: string
			model_id!:        string
			git_branch?:      string
		}
		model_artifact_import: {
			destination_object_name!: string
			destination_region!:      string
			model_id!:                string
			artifact_source_type!:    string
			namespace!:               string
			destination_bucket!:      string
		}
		private_endpoint: {
			data_science_resource_type!: string
			defined_tags?: [_]: string
			subnet_id!: string
			freeform_tags?: [_]: string
			compartment_id!: string
			description?:    string
			display_name?:   string
			nsg_ids?: [...string]
			sub_domain?: string
		}
		model_deployment: {
			category_log_details?: [...{
				predict?: [...{
					log_id!:       string
					log_group_id!: string
				}]
				access?: [...{
					log_group_id!: string
					log_id!:       string
				}]
			}]
			opc_parent_rpt_url?: string
			defined_tags?: [_]: string
			state?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			project_id!:     string
			description?:    string
			model_deployment_configuration_details!: [...{
				deployment_type!: string
				model_configuration_details!: [...{
					maximum_bandwidth_mbps?: int
					scaling_policy?: [...{
						cool_down_in_seconds?: int
						instance_count?:       int
						is_enabled?:           bool
						policy_type!:          string
						auto_scaling_policies?: [...{
							auto_scaling_policy_type!: string
							initial_instance_count!:   int
							maximum_instance_count!:   int
							minimum_instance_count!:   int
							rules!: [...{
								scale_in_configuration!: [...{
									scaling_configuration_type?: string
									threshold?:                  int
									instance_count_adjustment?:  int
									pending_duration?:           string
									query?:                      string
								}]
								scale_out_configuration!: [...{
									instance_count_adjustment?:  int
									pending_duration?:           string
									query?:                      string
									scaling_configuration_type?: string
									threshold?:                  int
								}]
								metric_type?:                 string
								metric_expression_rule_type!: string
							}]
						}]
					}]
					instance_configuration!: [...{
						instance_shape_name!: string
						model_deployment_instance_shape_config_details?: [...{
							memory_in_gbs?: float
							ocpus?:         float
							cpu_baseline?:  string
						}]
						subnet_id?: string
					}]
					model_id!:       string
					bandwidth_mbps?: int
				}]
				environment_configuration_details?: [...{
					server_port?:                    int
					environment_configuration_type!: string
					cmd?: [...string]
					entrypoint?: [...string]
					environment_variables?: [_]: string
					health_check_port?: int
					image?:             string
					image_digest?:      string
				}]
			}]
			display_name?: string
		}
		model_version_set: {
			defined_tags?: [_]: string
			name!:        string
			project_id!:  string
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		model_artifact_export: {
			source_region!:        string
			model_id!:             string
			artifact_source_type!: string
			namespace!:            string
			source_bucket!:        string
			source_object_name!:   string
		}
		notebook_session: {
			state?:          string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			notebook_session_runtime_config_details?: [...{
				custom_environment_variables?: [_]: string
				notebook_session_git_config_details?: [...{
					notebook_session_git_repo_config_collection?: [...{
						url!: string
					}]
				}]
			}]
			project_id!: string
			notebook_session_storage_mount_configuration_details_list?: [...{
				storage_type!:               string
				bucket?:                     string
				destination_path?:           string
				export_id?:                  string
				mount_target_id?:            string
				namespace?:                  string
				prefix?:                     string
				destination_directory_name!: string
			}]
			freeform_tags?: [_]: string
			notebook_session_config_details?: [...{
				subnet_id?:                 string
				shape!:                     string
				block_storage_size_in_gbs?: int
				notebook_session_shape_config_details?: [...{
					ocpus?:         float
					memory_in_gbs?: float
				}]
				private_endpoint_id?: string
			}]
			notebook_session_configuration_details?: [...{
				block_storage_size_in_gbs?: int
				notebook_session_shape_config_details?: [...{
					ocpus?:         float
					memory_in_gbs?: float
				}]
				private_endpoint_id?: string
				shape!:               string
				subnet_id!:           string
			}]
		}
		pipeline: {
			log_configuration_details?: [...{
				enable_auto_log_creation?: bool
				enable_logging?:           bool
				log_group_id?:             string
				log_id?:                   string
			}]
			description?: string
			freeform_tags?: [_]: string
			project_id!:                   string
			delete_related_pipeline_runs?: *false | bool
			step_artifact?: [...{
				pipeline_step_artifact!:       string
				artifact_content_length!:      string
				artifact_content_disposition?: string
				step_name!:                    string
			}]
			step_details!: [...{
				depends_on?: [...string]
				is_artifact_uploaded?: bool
				step_configuration_details?: [...{
					environment_variables?: [_]: string
					maximum_runtime_in_minutes?: string
					command_line_arguments?:     string
				}]
				step_type!:   string
				description?: string
				job_id?:      string
				step_container_configuration_details?: [...{
					cmd?: [...string]
					entrypoint?: [...string]
					image_digest?:       string
					image_signature_id?: string
					container_type!:     string
					image!:              string
				}]
				step_name!: string
				step_infrastructure_configuration_details?: [...{
					block_storage_size_in_gbs!: int
					shape_config_details?: [...{
						memory_in_gbs?: float
						ocpus?:         float
					}]
					shape_name!: string
					subnet_id?:  string
				}]
			}]
			compartment_id!: string
			display_name?:   string
			configuration_details?: [...{
				type!:                   string
				command_line_arguments?: string
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
			}]
			defined_tags?: [_]: string
			infrastructure_configuration_details?: [...{
				block_storage_size_in_gbs!: int
				shape_name!:                string
				shape_config_details?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				subnet_id?: string
			}]
		}
		pipeline_run: {
			defined_tags?: [_]: string
			log_configuration_override_details?: [...{
				enable_logging?:           bool
				log_group_id?:             string
				log_id?:                   string
				enable_auto_log_creation?: bool
			}]
			system_tags?: [_]: string
			compartment_id!:     string
			project_id!:         string
			pipeline_id!:        string
			opc_parent_rpt_url?: string
			step_override_details?: [...{
				step_configuration_details!: [...{
					environment_variables?: [_]: string
					maximum_runtime_in_minutes?: string
					command_line_arguments?:     string
				}]
				step_name!: string
				step_container_configuration_details?: [...{
					image_signature_id?: string
					container_type!:     string
					image!:              string
					cmd?: [...string]
					entrypoint?: [...string]
					image_digest?: string
				}]
			}]
			display_name?: string
			configuration_override_details?: [...{
				maximum_runtime_in_minutes?: string
				type!:                       string
				command_line_arguments?:     string
				environment_variables?: [_]: string
			}]
			freeform_tags?: [_]: string
			delete_related_job_runs?: *false | bool
		}
		project: {
			compartment_id!: string
			description?:    string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	model: model_id!: string
	model_deployment_shapes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	model_deployments: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		created_by?:     string
		display_name?:   string
		id?:             string
		project_id?:     string
		state?:          string
	}
	notebook_session_shapes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	private_endpoint: data_science_private_endpoint_id!: string
	private_endpoints: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:             string
		created_by?:                 string
		data_science_resource_type?: string
		display_name?:               string
		state?:                      string
	}
	job_run: job_run_id!: string
	job_shapes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	pipeline_runs: {
		compartment_id!: string
		created_by?:     string
		display_name?:   string
		id?:             string
		pipeline_id?:    string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	job: job_id!: string
	model_deployment: model_deployment_id!: string
	model_provenance: model_id!: string
	notebook_sessions: {
		display_name?: string
		id?:           string
		project_id?:   string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		created_by?:     string
	}
	pipeline_run: pipeline_run_id!: string
	project: project_id!: string
	projects: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		created_by?:     string
		display_name?:   string
		id?:             string
	}
	jobs: {
		project_id?: string
		state?:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		created_by?:     string
		display_name?:   string
		id?:             string
	}
	models: {
		display_name?:           string
		id?:                     string
		model_version_set_name?: string
		version_label?:          string
		state?:                  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		model_version_set_id?: string
		created_by?:           string
		project_id?:           string
		compartment_id!:       string
	}
	notebook_session: notebook_session_id!: string
	pipeline: pipeline_id!: string
	pipelines: {
		created_by?:   string
		display_name?: string
		id?:           string
		project_id?:   string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	fast_launch_job_configs: {
		compartment_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	job_runs: {
		compartment_id!: string
		created_by?:     string
		display_name?:   string
		id?:             string
		job_id?:         string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	model_version_set: model_version_set_id!: string
	model_version_sets: {
		name?:       string
		project_id?: string
		state?:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		created_by?:     string
		id?:             string
	}
}

