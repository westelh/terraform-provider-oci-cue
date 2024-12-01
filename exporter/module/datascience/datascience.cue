package datascience

#resource: {
	attributes: {
		model_provenance: {
			model_id!:        string
			git_branch?:      string
			git_commit?:      string
			repository_url?:  string
			script_dir?:      string
			training_id?:     string
			training_script?: string
		}
		model_version_set: {
			time_created: string
			created_by:   string
			state:        string
			project_id!:  string
			time_updated: string
			system_tags: [_]: string
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			name!:           string
			defined_tags?: [_]: string
		}
		notebook_session: {
			created_by: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			notebook_session_url: string
			time_created:         string
			compartment_id!:      string
			project_id!:          string
			notebook_session_config_details?: [...{
				block_storage_size_in_gbs?: int
				notebook_session_shape_config_details?: [...{
					ocpus?:         float
					memory_in_gbs?: float
				}]
				private_endpoint_id?: string
				subnet_id?:           string
				shape!:               string
			}]
			display_name?: string
			notebook_session_storage_mount_configuration_details_list?: [...{
				namespace?:                  string
				prefix?:                     string
				destination_directory_name!: string
				storage_type!:               string
				bucket?:                     string
				destination_path?:           string
				export_id?:                  string
				mount_target_id?:            string
			}]
			lifecycle_details: string
			notebook_session_runtime_config_details?: [...{
				custom_environment_variables?: [_]: string
				notebook_session_git_config_details?: [...{
					notebook_session_git_repo_config_collection?: [...{
						url!: string
					}]
				}]
			}]
			notebook_session_configuration_details?: [...{
				private_endpoint_id?:       string
				shape!:                     string
				subnet_id!:                 string
				block_storage_size_in_gbs?: int
				notebook_session_shape_config_details?: [...{
					ocpus?:         float
					memory_in_gbs?: float
				}]
			}]
			state?: string
		}
		pipeline_run: {
			state:               string
			pipeline_id!:        string
			opc_parent_rpt_url?: string
			project_id!:         string
			system_tags?: [_]: string
			time_updated:  string
			time_started:  string
			time_accepted: string
			log_details: [...{
				log_group_id: string
				log_id:       string
			}]
			time_finished: string
			created_by:    string
			display_name?: string
			freeform_tags?: [_]: string
			delete_related_job_runs?: *false | bool
			defined_tags?: [_]: string
			configuration_details: [...{
				command_line_arguments: string
				environment_variables: [_]: string
				maximum_runtime_in_minutes: string
				type:                       string
			}]
			step_runs: [...{
				time_finished:     string
				time_started:      string
				job_run_id:        string
				lifecycle_details: string
				state:             string
				step_name:         string
				step_type:         string
			}]
			log_configuration_override_details?: [...{
				log_id?:                   string
				enable_auto_log_creation?: bool
				enable_logging?:           bool
				log_group_id?:             string
			}]
			step_override_details?: [...{
				step_name!: string
				step_container_configuration_details?: [...{
					container_type!: string
					image!:          string
					cmd?: [...string]
					entrypoint?: [...string]
					image_digest?:       string
					image_signature_id?: string
				}]
				step_configuration_details!: [...{
					command_line_arguments?: string
					environment_variables?: [_]: string
					maximum_runtime_in_minutes?: string
				}]
			}]
			lifecycle_details: string
			compartment_id!:   string
			configuration_override_details?: [...{
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
				type!:                       string
				command_line_arguments?:     string
			}]
		}
		project: {
			system_tags: [_]: string
			display_name?: string
			created_by:    string
			time_created:  string
			description?:  string
			freeform_tags?: [_]: string
			state:           string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		job_run: {
			job_configuration_override_details?: [...{
				job_type!:               string
				command_line_arguments?: string
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
			}]
			job_log_configuration_override_details?: [...{
				enable_auto_log_creation?: bool
				enable_logging?:           bool
				log_group_id?:             string
				log_id?:                   string
			}]
			display_name?: string
			log_details: [...{
				log_group_id: string
				log_id:       string
			}]
			job_environment_configuration_override_details?: [...{
				cmd?: [...string]
				entrypoint?: [...string]
				image_digest?:         string
				image_signature_id?:   string
				image!:                string
				job_environment_type!: string
			}]
			asynchronous?:       *true | bool
			opc_parent_rpt_url?: string
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
			project_id!:     string
			state:           string
			job_id!:         string
			compartment_id!: string
			defined_tags?: [_]: string
			time_started: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			created_by:        string
			job_storage_mount_configuration_details_list: [...{
				export_id:                  string
				mount_target_id:            string
				namespace:                  string
				prefix:                     string
				storage_type:               string
				bucket:                     string
				destination_directory_name: string
				destination_path:           string
			}]
			time_accepted: string
			time_finished: string
		}
		model: {
			lifecycle_details: string
			freeform_tags?: [_]: string
			version_label?: string
			display_name?:  string
			defined_tags?: [_]: string
			project_id!: string
			backup_setting?: [...{
				backup_region!:              string
				is_backup_enabled!:          bool
				customer_notification_type?: string
			}]
			description?:                  string
			artifact_content_disposition?: string
			model_version_set_id?:         string
			retention_operation_details: [...{
				archive_state:           string
				archive_state_details:   string
				delete_state:            string
				delete_state_details:    string
				time_archival_scheduled: string
				time_deletion_scheduled: string
			}]
			model_version_set_name?:  string
			artifact_content_length!: string
			backup_operation_details: [...{
				backup_state_details: string
				time_last_backup:     string
				backup_state:         string
			}]
			defined_metadata_list?: [...{
				category?:    string
				description?: string
				key?:         string
				value?:       string
			}]
			input_schema?:   string
			output_schema?:  string
			empty_model:     bool
			compartment_id!: string
			model_artifact!: string
			time_created:    string
			custom_metadata_list?: [...{
				value?:       string
				category?:    string
				description?: string
				key?:         string
			}]
			artifact_content_md5:   string
			created_by:             string
			artifact_last_modified: string
			retention_setting?: [...{
				archive_after_days!:         int
				customer_notification_type?: string
				delete_after_days?:          int
			}]
			state?: string
		}
		model_deployment: {
			defined_tags?: [_]: string
			display_name?: string
			model_deployment_configuration_details!: [...{
				deployment_type!: string
				model_configuration_details!: [...{
					maximum_bandwidth_mbps?: int
					scaling_policy?: [...{
						policy_type!: string
						auto_scaling_policies?: [...{
							initial_instance_count!: int
							maximum_instance_count!: int
							minimum_instance_count!: int
							rules!: [...{
								metric_expression_rule_type!: string
								scale_in_configuration!: [...{
									query?:                      string
									scaling_configuration_type?: string
									threshold?:                  int
									instance_count_adjustment?:  int
									pending_duration?:           string
								}]
								scale_out_configuration!: [...{
									instance_count_adjustment?:  int
									pending_duration?:           string
									query?:                      string
									scaling_configuration_type?: string
									threshold?:                  int
								}]
								metric_type?: string
							}]
							auto_scaling_policy_type!: string
						}]
						cool_down_in_seconds?: int
						instance_count?:       int
						is_enabled?:           bool
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
					health_check_port?:              int
					image?:                          string
					image_digest?:                   string
					server_port?:                    int
					environment_configuration_type!: string
					cmd?: [...string]
					entrypoint?: [...string]
					environment_variables?: [_]: string
				}]
			}]
			created_by:      string
			compartment_id!: string
			category_log_details?: [...{
				access?: [...{
					log_group_id!: string
					log_id!:       string
				}]
				predict?: [...{
					log_id!:       string
					log_group_id!: string
				}]
			}]
			time_created:      string
			lifecycle_details: string
			project_id!:       string
			freeform_tags?: [_]: string
			state?: string
			model_deployment_system_data: [...{
				current_instance_count: int
				system_infra_type:      string
			}]
			description?:         string
			model_deployment_url: string
			opc_parent_rpt_url?:  string
		}
		model_artifact_import: {
			model_id!:                string
			artifact_source_type!:    string
			namespace!:               string
			destination_bucket!:      string
			destination_object_name!: string
			destination_region!:      string
		}
		pipeline: {
			defined_tags?: [_]: string
			created_by: string
			log_configuration_details?: [...{
				log_id?:                   string
				enable_auto_log_creation?: bool
				enable_logging?:           bool
				log_group_id?:             string
			}]
			step_artifact?: [...{
				artifact_last_modified:        string
				step_name!:                    string
				pipeline_step_artifact!:       string
				artifact_content_length!:      string
				artifact_content_disposition?: string
				artifact_content_md5:          string
			}]
			project_id!:  string
			time_updated: string
			system_tags: [_]: string
			description?: string
			time_created: string
			configuration_details?: [...{
				type!:                   string
				command_line_arguments?: string
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
			}]
			display_name?: string
			step_details!: [...{
				is_artifact_uploaded?: bool
				step_configuration_details?: [...{
					environment_variables?: [_]: string
					maximum_runtime_in_minutes?: string
					command_line_arguments?:     string
				}]
				step_type!: string
				depends_on?: [...string]
				job_id?:      string
				step_name!:   string
				description?: string
				step_container_configuration_details?: [...{
					image!: string
					cmd?: [...string]
					entrypoint?: [...string]
					image_digest?:       string
					image_signature_id?: string
					container_type!:     string
				}]
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
			freeform_tags?: [_]: string
			state:                         string
			delete_related_pipeline_runs?: *false | bool
			lifecycle_details:             string
			compartment_id!:               string
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
		private_endpoint: {
			time_created:                string
			created_by:                  string
			sub_domain?:                 string
			data_science_resource_type!: string
			description?:                string
			state:                       string
			display_name?:               string
			lifecycle_details:           string
			compartment_id!:             string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			time_updated: string
			subnet_id!:   string
			system_tags: [_]: string
			nsg_ids?: [...string]
			fqdn: string
		}
		job: {
			display_name?:        string
			artifact_content_md5: string
			created_by:           string
			job_environment_configuration_details?: [...{
				job_environment_type!: string
				cmd?: [...string]
				entrypoint?: [...string]
				image_digest?:       string
				image_signature_id?: string
				image!:              string
			}]
			job_configuration_details!: [...{
				command_line_arguments?: string
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
				job_type!:                   string
			}]
			lifecycle_details: string
			job_log_configuration_details?: [...{
				enable_auto_log_creation?: bool
				enable_logging?:           bool
				log_group_id?:             string
				log_id?:                   string
			}]
			artifact_content_length?: string
			empty_artifact:           bool
			description?:             string
			job_artifact?:            string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			artifact_content_disposition?: string
			delete_related_job_runs?:      *false | bool
			artifact_last_modified:        string
			job_infrastructure_configuration_details!: [...{
				shape_name!: string
				job_shape_config_details?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				subnet_id?:                 string
				block_storage_size_in_gbs!: int
				job_infrastructure_type!:   string
			}]
			state:        string
			time_created: string
			project_id!:  string
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
			compartment_id!: string
		}
		model_artifact_export: {
			source_bucket!:        string
			source_object_name!:   string
			source_region!:        string
			model_id!:             string
			artifact_source_type!: string
			namespace!:            string
		}
	}
	arguments: {
		model_provenance: {
			git_branch?:      string
			git_commit?:      string
			repository_url?:  string
			script_dir?:      string
			training_id?:     string
			training_script?: string
			model_id!:        string
		}
		model_version_set: {
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			name!:           string
			project_id!:     string
			defined_tags?: [_]: string
		}
		notebook_session: {
			defined_tags?: [_]: string
			notebook_session_runtime_config_details?: [...{
				custom_environment_variables?: [_]: string
				notebook_session_git_config_details?: [...{
					notebook_session_git_repo_config_collection?: [...{
						url!: string
					}]
				}]
			}]
			project_id!: string
			freeform_tags?: [_]: string
			state?:        string
			display_name?: string
			notebook_session_config_details?: [...{
				shape!:                     string
				block_storage_size_in_gbs?: int
				notebook_session_shape_config_details?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				private_endpoint_id?: string
				subnet_id?:           string
			}]
			compartment_id!: string
			notebook_session_storage_mount_configuration_details_list?: [...{
				namespace?:                  string
				prefix?:                     string
				destination_directory_name!: string
				storage_type!:               string
				bucket?:                     string
				destination_path?:           string
				export_id?:                  string
				mount_target_id?:            string
			}]
			notebook_session_configuration_details?: [...{
				shape!:                     string
				subnet_id!:                 string
				block_storage_size_in_gbs?: int
				notebook_session_shape_config_details?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				private_endpoint_id?: string
			}]
		}
		pipeline_run: {
			opc_parent_rpt_url?: string
			project_id!:         string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			log_configuration_override_details?: [...{
				enable_auto_log_creation?: bool
				enable_logging?:           bool
				log_group_id?:             string
				log_id?:                   string
			}]
			compartment_id!: string
			configuration_override_details?: [...{
				maximum_runtime_in_minutes?: string
				type!:                       string
				command_line_arguments?:     string
				environment_variables?: [_]: string
			}]
			display_name?:            string
			delete_related_job_runs?: *false | bool
			system_tags?: [_]: string
			pipeline_id!: string
			step_override_details?: [...{
				step_configuration_details!: [...{
					command_line_arguments?: string
					environment_variables?: [_]: string
					maximum_runtime_in_minutes?: string
				}]
				step_name!: string
				step_container_configuration_details?: [...{
					image!: string
					cmd?: [...string]
					entrypoint?: [...string]
					image_digest?:       string
					image_signature_id?: string
					container_type!:     string
				}]
			}]
		}
		project: {
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
		}
		job_run: {
			display_name?: string
			job_id!:       string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			job_configuration_override_details?: [...{
				command_line_arguments?: string
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
				job_type!:                   string
			}]
			job_log_configuration_override_details?: [...{
				log_group_id?:             string
				log_id?:                   string
				enable_auto_log_creation?: bool
				enable_logging?:           bool
			}]
			opc_parent_rpt_url?: string
			project_id!:         string
			job_environment_configuration_override_details?: [...{
				image!:                string
				job_environment_type!: string
				cmd?: [...string]
				entrypoint?: [...string]
				image_digest?:       string
				image_signature_id?: string
			}]
			asynchronous?: *true | bool
		}
		model: {
			state?:          string
			model_artifact!: string
			display_name?:   string
			project_id!:     string
			input_schema?:   string
			retention_setting?: [...{
				customer_notification_type?: string
				delete_after_days?:          int
				archive_after_days!:         int
			}]
			artifact_content_disposition?: string
			artifact_content_length!:      string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			compartment_id!:       string
			description?:          string
			output_schema?:        string
			model_version_set_id?: string
			version_label?:        string
			backup_setting?: [...{
				backup_region!:              string
				is_backup_enabled!:          bool
				customer_notification_type?: string
			}]
			model_version_set_name?: string
			custom_metadata_list?: [...{
				category?:    string
				description?: string
				key?:         string
				value?:       string
			}]
			defined_metadata_list?: [...{
				category?:    string
				description?: string
				key?:         string
				value?:       string
			}]
		}
		model_deployment: {
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
			display_name?: string
			defined_tags?: [_]: string
			opc_parent_rpt_url?: string
			compartment_id!:     string
			description?:        string
			model_deployment_configuration_details!: [...{
				environment_configuration_details?: [...{
					image?:                          string
					image_digest?:                   string
					server_port?:                    int
					environment_configuration_type!: string
					cmd?: [...string]
					entrypoint?: [...string]
					environment_variables?: [_]: string
					health_check_port?: int
				}]
				deployment_type!: string
				model_configuration_details!: [...{
					maximum_bandwidth_mbps?: int
					scaling_policy?: [...{
						policy_type!: string
						auto_scaling_policies?: [...{
							auto_scaling_policy_type!: string
							initial_instance_count!:   int
							maximum_instance_count!:   int
							minimum_instance_count!:   int
							rules!: [...{
								scale_out_configuration!: [...{
									scaling_configuration_type?: string
									threshold?:                  int
									instance_count_adjustment?:  int
									pending_duration?:           string
									query?:                      string
								}]
								metric_type?:                 string
								metric_expression_rule_type!: string
								scale_in_configuration!: [...{
									pending_duration?:           string
									query?:                      string
									scaling_configuration_type?: string
									threshold?:                  int
									instance_count_adjustment?:  int
								}]
							}]
						}]
						cool_down_in_seconds?: int
						instance_count?:       int
						is_enabled?:           bool
					}]
					instance_configuration!: [...{
						instance_shape_name!: string
						model_deployment_instance_shape_config_details?: [...{
							ocpus?:         float
							cpu_baseline?:  string
							memory_in_gbs?: float
						}]
						subnet_id?: string
					}]
					model_id!:       string
					bandwidth_mbps?: int
				}]
			}]
			project_id!: string
			freeform_tags?: [_]: string
			state?: string
		}
		model_artifact_import: {
			namespace!:               string
			destination_bucket!:      string
			destination_object_name!: string
			destination_region!:      string
			model_id!:                string
			artifact_source_type!:    string
		}
		pipeline: {
			freeform_tags?: [_]: string
			description?: string
			defined_tags?: [_]: string
			delete_related_pipeline_runs?: *false | bool
			compartment_id!:               string
			display_name?:                 string
			log_configuration_details?: [...{
				enable_auto_log_creation?: bool
				enable_logging?:           bool
				log_group_id?:             string
				log_id?:                   string
			}]
			project_id!: string
			configuration_details?: [...{
				command_line_arguments?: string
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
				type!:                       string
			}]
			step_artifact?: [...{
				pipeline_step_artifact!:       string
				artifact_content_length!:      string
				artifact_content_disposition?: string
				step_name!:                    string
			}]
			step_details!: [...{
				is_artifact_uploaded?: bool
				step_configuration_details?: [...{
					maximum_runtime_in_minutes?: string
					command_line_arguments?:     string
					environment_variables?: [_]: string
				}]
				description?: string
				step_infrastructure_configuration_details?: [...{
					shape_config_details?: [...{
						ocpus?:         float
						memory_in_gbs?: float
					}]
					shape_name!:                string
					subnet_id?:                 string
					block_storage_size_in_gbs!: int
				}]
				depends_on?: [...string]
				job_id?: string
				step_container_configuration_details?: [...{
					image_signature_id?: string
					container_type!:     string
					image!:              string
					cmd?: [...string]
					entrypoint?: [...string]
					image_digest?: string
				}]
				step_name!: string
				step_type!: string
			}]
			infrastructure_configuration_details?: [...{
				shape_name!: string
				shape_config_details?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				subnet_id?:                 string
				block_storage_size_in_gbs!: int
			}]
		}
		private_endpoint: {
			description?:    string
			compartment_id!: string
			subnet_id!:      string
			defined_tags?: [_]: string
			display_name?: string
			nsg_ids?: [...string]
			sub_domain?: string
			freeform_tags?: [_]: string
			data_science_resource_type!: string
		}
		job: {
			job_infrastructure_configuration_details!: [...{
				shape_name!: string
				job_shape_config_details?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				subnet_id?:                 string
				block_storage_size_in_gbs!: int
				job_infrastructure_type!:   string
			}]
			job_artifact?: string
			job_log_configuration_details?: [...{
				log_id?:                   string
				enable_auto_log_creation?: bool
				enable_logging?:           bool
				log_group_id?:             string
			}]
			job_configuration_details!: [...{
				environment_variables?: [_]: string
				maximum_runtime_in_minutes?: string
				job_type!:                   string
				command_line_arguments?:     string
			}]
			project_id!: string
			freeform_tags?: [_]: string
			description?:  string
			display_name?: string
			job_environment_configuration_details?: [...{
				image_signature_id?:   string
				image!:                string
				job_environment_type!: string
				cmd?: [...string]
				entrypoint?: [...string]
				image_digest?: string
			}]
			artifact_content_length?: string
			defined_tags?: [_]: string
			job_storage_mount_configuration_details_list?: [...{
				mount_target_id?:            string
				namespace?:                  string
				prefix?:                     string
				destination_directory_name!: string
				storage_type!:               string
				bucket?:                     string
				destination_path?:           string
				export_id?:                  string
			}]
			artifact_content_disposition?: string
			delete_related_job_runs?:      *false | bool
			compartment_id!:               string
		}
		model_artifact_export: {
			artifact_source_type!: string
			namespace!:            string
			source_bucket!:        string
			source_object_name!:   string
			source_region!:        string
			model_id!:             string
		}
	}
}
#data: {
	job_shapes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	models: {
		compartment_id!:       string
		display_name?:         string
		model_version_set_id?: string
		created_by?:           string
		id?:                   string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		model_version_set_name?: string
		version_label?:          string
		project_id?:             string
		state?:                  string
	}
	pipeline_runs: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		created_by?:     string
		display_name?:   string
		id?:             string
		pipeline_id?:    string
	}
	pipelines: {
		display_name?: string
		id?:           string
		project_id?:   string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		created_by?:     string
	}
	project: project_id!: string
	job_runs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		created_by?:     string
		display_name?:   string
		id?:             string
		job_id?:         string
		state?:          string
	}
	model_deployment_shapes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	model_version_sets: {
		compartment_id!: string
		created_by?:     string
		id?:             string
		name?:           string
		project_id?:     string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	notebook_session_shapes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	pipeline: pipeline_id!: string
	pipeline_run: pipeline_run_id!: string
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
	fast_launch_job_configs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	job_run: job_run_id!: string
	model: model_id!: string
	model_deployment: model_deployment_id!: string
	model_provenance: model_id!: string
	model_version_set: model_version_set_id!: string
	notebook_session: notebook_session_id!: string
	notebook_sessions: {
		compartment_id!: string
		created_by?:     string
		display_name?:   string
		id?:             string
		project_id?:     string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	job: job_id!: string
	jobs: {
		project_id?: string
		state?:      string
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
	model_deployments: {
		state?: string
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
	}
	projects: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		created_by?:     string
		display_name?:   string
		id?:             string
		state?:          string
	}
}

