package devops

#resource: {
	attributes: {
		build_pipeline: {
			project_id!:   string
			display_name?: string
			build_pipeline_parameters?: [...{
				items!: [...{
					description?: string, default_value!: string, name!: string
				}]
			}]
			time_created: string
			state:        string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id:    string
			lifecycle_details: string
			time_updated:      string
			description?:      string
			system_tags: [_]: string
		}
		project_repository_setting: {
			approval_rules?: [...{
				items!: [...{
					min_approvals_count!: int, name!:     string, destination_branch?: string, reviewers?: [...{
								principal_name: string, principal_state:     string, principal_type: string, principal_id!: string
					}]
				}]
			}]
			merge_settings?: [...{
				allowed_merge_strategies!: [...string]
				default_merge_strategy!: string
			}]
			project_id!: string
		}
		repository_protected_branch_management: {
			branch_name!:   string
			repository_id!: string
			protection_levels?: [...string]
			freeform_tags: [_]: string
		}
		deploy_environment: {
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_updated: string
			defined_tags?: [_]: string
			time_created:  string
			state:         string
			display_name?: string
			description?:  string
			network_channel?: [...{
				network_channel_type!: string
				subnet_id!:            string
				nsg_ids?: [...string]
			}]
			compartment_id:           string
			deploy_environment_type!: string
			lifecycle_details:        string
			project_id!:              string
			cluster_id?:              string
			function_id?:             string
			compute_instance_group_selectors?: [...{
				items?: [...{
					selector_type!: string, compute_instance_ids?: [...string]
					query?: string, region?: string
				}]
			}]
		}
		deploy_pipeline: {
			compartment_id: string
			freeform_tags?: [_]: string
			deploy_pipeline_environments: [...{
				items: [...{
					deploy_environment_id: string, deploy_pipeline_stages: [...{
								items: [...{
									deploy_stage_id: string, display_name: string
								}]
					}]
					display_name: string
				}]
			}]
			deploy_pipeline_artifacts: [...{
				items: [...{
					deploy_artifact_id: string, deploy_pipeline_stages: [...{
								items: [...{
									deploy_stage_id: string, display_name: string
								}]
					}]
					display_name: string
				}]
			}]
			deploy_pipeline_parameters?: [...{
				items!: [...{
					name!: string, default_value?: string, description?: string
				}]
			}]
			system_tags: [_]: string
			project_id!:  string
			time_updated: string
			defined_tags?: [_]: string
			time_created:      string
			state:             string
			description?:      string
			display_name?:     string
			lifecycle_details: string
		}
		deployment: {
			display_name?: string
			state:         string
			system_tags: [_]: string
			deployment_type!: string
			freeform_tags?: [_]: string
			deploy_stage_override_arguments?: [...{
				items?: [...{
					deploy_stage_id?: string, name?: string, value?: string
				}]
			}]
			deploy_stage_id?: string
			deployment_arguments?: [...{
				items?: [...{
					name?: string, value?: string
				}]
			}]
			time_updated:                   string
			trigger_new_devops_deployment?: *false | bool
			compartment_id:                 string
			defined_tags?: [_]: string
			lifecycle_details: string
			time_created:      string
			deploy_artifact_override_arguments?: [...{
				items?: [...{
					deploy_artifact_id?: string, name?: string, value?: string
				}]
			}]
			deployment_execution_progress: [...{
				deploy_stage_execution_progress: [_]: string
				time_finished: string
				time_started:  string
			}]
			deploy_pipeline_environments: [...{
				items: [...{
					display_name: string, deploy_environment_id: string, deploy_pipeline_stages: [...{
							items: [...{
								deploy_stage_id: string, display_name: string
							}]
					}]
				}]
			}]
			project_id:              string
			deploy_pipeline_id!:     string
			previous_deployment_id?: string
			deploy_pipeline_artifacts: [...{
				items: [...{
					deploy_artifact_id: string, deploy_pipeline_stages: [...{
								items: [...{
									deploy_stage_id: string, display_name: string
								}]
					}]
					display_name: string
				}]
			}]
		}
		project: {
			compartment_id!: string
			defined_tags?: [_]: string
			state: string
			notification_config!: [...{
				topic_id!: string
			}]
			name!: string
			system_tags: [_]: string
			time_created: string
			time_updated: string
			freeform_tags?: [_]: string
			namespace:         string
			description?:      string
			lifecycle_details: string
		}
		repository: {
			description?:          string
			compartment_id:        string
			parent_repository_id?: string
			project_name:          string
			name!:                 string
			project_id!:           string
			lifecyle_details:      string
			size_in_bytes:         string
			ssh_url:               string
			repository_type!:      string
			branch_count:          int
			state:                 string
			freeform_tags?: [_]: string
			trigger_build_events: [...string]
			default_branch?: string
			time_updated:    string
			system_tags: [_]: string
			commit_count: int
			time_created: string
			mirror_repository_config?: [...{
				connector_id?:   string
				repository_url?: string
				trigger_schedule?: [...{
					schedule_type!:   string
					custom_schedule?: string
				}]
			}]
			http_url:  string
			namespace: string
			defined_tags?: [_]: string
		}
		repository_mirror: repository_id!: string
		repository_ref: {
			freeform_tags: [_]: string
			full_ref_name:  string
			ref_name!:      string
			ref_type!:      string
			repository_id!: string
			commit_id?:     string
			object_id?:     string
			defined_tags: [_]: string
		}
		repository_setting: {
			merge_checks?: [...{
				last_build_succeeded!: string
			}]
			merge_settings?: [...{
				allowed_merge_strategies!: [...string]
				default_merge_strategy!: string
			}]
			repository_id!: string
			approval_rules?: [...{
				items!: [...{
					destination_branch?: string, reviewers?: [...{
								principal_name: string, principal_state: string, principal_type: string, principal_id!: string
					}]
					min_approvals_count!: int, name!: string
				}]
			}]
		}
		trigger: {
			project_id!: string
			actions!: [...{
				filter?: [...{
					events?: [...string]
					exclude?: [...{
						file_filter?: [...{
							file_paths?: [...string]
						}]
					}]
					include?: [...{
						repository_name?: string
						base_ref?:        string
						file_filter?: [...{
							file_paths?: [...string]
						}]
						head_ref?: string
					}]
					trigger_source!: string
				}]
				build_pipeline_id!: string
				type!:              string
			}]
			connection_id?:    string
			display_name?:     string
			lifecycle_details: string
			trigger_url:       string
			state:             string
			trigger_source!:   string
			repository_id?:    string
			time_created:      string
			time_updated:      string
			description?:      string
			defined_tags?: [_]: string
			compartment_id: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
		}
		build_pipeline_stage: {
			image?:                string
			primary_build_source?: string
			wait_criteria?: [...{
				wait_duration!: string
				wait_type!:     string
			}]
			freeform_tags?: [_]: string
			description?: string
			system_tags: [_]: string
			state: string
			build_source_collection?: [...{
				items?: [...{
					repository_id?: string, repository_url?: string, connection_type!: string, branch?: string, connection_id?: string, name?: string
				}]
			}]
			stage_execution_timeout_in_seconds?: int
			build_spec_file?:                    string
			compartment_id:                      string
			time_created:                        string
			time_updated:                        string
			is_pass_all_parameters_enabled?:     bool
			lifecycle_details:                   string
			build_pipeline_stage_type!:          string
			defined_tags?: [_]: string
			display_name?:       string
			build_pipeline_id!:  string
			deploy_pipeline_id?: string
			deliver_artifact_collection?: [...{
				items?: [...{
					artifact_name?: string, artifact_id?: string
				}]
			}]
			private_access_config?: [...{
				subnet_id!: string
				nsg_ids?: [...string]
				network_channel_type!: string
			}]
			project_id: string
			build_pipeline_stage_predecessor_collection!: [...{
				items!: [...{
					id!: string
				}]
			}]
			build_runner_shape_config?: [...{
				build_runner_type!: string
				memory_in_gbs?:     int
				ocpus?:             int
			}]
		}
		build_run: {
			build_run_arguments?: [...{
				items!: [...{
					name!: string, value!: string
				}]
			}]
			system_tags: [_]: string
			build_run_progress: [...{
				build_pipeline_stage_run_progress: [_]: string
				time_finished: string
				time_started:  string
			}]
			build_run_source: [...{
				repository_id: string
				source_type:   string
				trigger_id:    string
				trigger_info: [...{
					actions: [...{
						build_pipeline_id: string
						filter: [...{
							trigger_source: string
							events: [...string]
							exclude: [...{
								file_filter: [...{
									file_paths: [...string]
								}]
							}]
							include: [...{
								head_ref:        string
								repository_name: string
								base_ref:        string
								file_filter: [...{
									file_paths: [...string]
								}]
							}]
						}]
						type: string
					}]
					display_name: string
				}]
			}]
			build_pipeline_id!: string
			time_updated:       string
			build_outputs: [...{
				exported_variables: [...{
					items: [...{
						name: string, value: string
					}]
				}]
				vulnerability_audit_summary_collection: [...{
					items: [...{
						build_stage_id: string, commit_hash: string, vulnerability_audit_id: string
					}]
				}]
				artifact_override_parameters: [...{
					items: [...{
						deploy_artifact_id: string, name: string, value: string
					}]
				}]
				delivered_artifacts: [...{
					items: [...{
						delivered_artifact_id: string, image_uri: string, output_artifact_name: string, path: string, version: string, artifact_type: string, deploy_artifact_id: string, artifact_repository_id: string, delivered_artifact_hash: string
					}]
				}]
			}]
			commit_info?: [...{
				commit_hash!:       string
				repository_branch!: string
				repository_url!:    string
			}]
			compartment_id: string
			defined_tags?: [_]: string
			time_created:      string
			lifecycle_details: string
			project_id:        string
			state:             string
			display_name?:     string
			freeform_tags?: [_]: string
		}
		connection: {
			username?:     string
			time_created:  string
			app_password?: string
			tls_verify_config?: [...{
				ca_certificate_bundle_id!: string
				tls_verify_mode!:          string
			}]
			access_token?: string
			last_connection_validation_result: [...{
				result:         string
				time_validated: string
				message:        string
			}]
			defined_tags?: [_]: string
			state:            string
			compartment_id:   string
			display_name?:    string
			base_url?:        string
			description?:     string
			connection_type!: string
			project_id!:      string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_updated: string
		}
		deploy_artifact: {
			deploy_artifact_source!: [...{
				deploy_artifact_version?:     string
				deploy_artifact_source_type!: string
				helm_verification_key_source?: [...{
					current_public_key?:           string
					previous_public_key?:          string
					vault_secret_id?:              string
					verification_key_source_type!: string
				}]
				image_uri?:                 string
				base64encoded_content?:     string
				helm_artifact_source_type?: string
				repository_id?:             string
				deploy_artifact_path?:      string
				image_digest?:              string
				chart_url?:                 string
			}]
			argument_substitution_mode!: string
			deploy_artifact_type!:       string
			defined_tags?: [_]: string
			system_tags: [_]: string
			time_updated:   string
			project_id!:    string
			state:          string
			description?:   string
			compartment_id: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			time_created:      string
			display_name?:     string
		}
		deploy_stage: {
			is_force_enabled?:   bool
			timeout_in_seconds?: int
			test_load_balancer_config?: [...{
				listener_name?:    string
				load_balancer_id?: string
				state:             string
				backend_port?:     int
			}]
			is_validation_enabled?: bool
			config?: [_]: string
			are_hooks_enabled?:                             bool
			compute_instance_group_canary_deploy_stage_id?: string
			freeform_tags?: [_]: string
			canary_strategy?: [...{
				ingress_name!:  string
				namespace!:     string
				strategy_type!: string
			}]
			approval_policy?: [...{
				approval_policy_type!:         string
				number_of_approvals_required!: int
			}]
			deploy_stage_predecessor_collection!: [...{
				items!: [...{
					id!: string
				}]
			}]
			helm_command_artifact_ids?: [...string]
			compute_instance_group_deploy_environment_id?: string
			should_reset_values?:                          bool
			release_name?:                                 string
			lifecycle_details:                             string
			deploy_pipeline_id!:                           string
			time_updated:                                  string
			project_id:                                    string
			kubernetes_manifest_deploy_artifact_ids?: [...string]
			function_deploy_environment_id?: string
			oke_blue_green_deploy_stage_id?: string
			set_string?: [...{
				items?: [...{
					name?: string, value?: string
				}]
			}]
			oke_canary_traffic_shift_deploy_stage_id?: string
			oke_canary_deploy_stage_id?:               string
			failure_policy?: [...{
				policy_type!:        string
				failure_count?:      int
				failure_percentage?: int
			}]
			load_balancer_config?: [...{
				state:             string
				backend_port?:     int
				listener_name?:    string
				load_balancer_id?: string
			}]
			rollback_policy?: [...{
				policy_type?: string
			}]
			state:                 string
			namespace?:            string
			traffic_shift_target?: string
			should_skip_crds?:     bool
			is_debug_enabled?:     bool
			should_not_wait?:      bool
			set_values?: [...{
				items?: [...{
					name?: string, value?: string
				}]
			}]
			green_backend_ips?: [...{
				items?: [...string]
			}]
			deploy_environment_id_b?: string
			wait_criteria?: [...{
				wait_type!:     string
				wait_duration!: string
			}]
			display_name?:        string
			should_reuse_values?: bool
			blue_green_strategy?: [...{
				ingress_name!:  string
				namespace_a!:   string
				namespace_b!:   string
				strategy_type!: string
			}]
			time_created:                       string
			is_async?:                          bool
			deploy_stage_type!:                 string
			function_timeout_in_seconds?:       int
			description?:                       string
			deploy_artifact_id?:                string
			oke_cluster_deploy_environment_id?: string
			system_tags: [_]: string
			max_memory_in_mbs?:                                            string
			docker_image_deploy_artifact_id?:                              string
			deployment_spec_deploy_artifact_id?:                           string
			compute_instance_group_blue_green_deployment_deploy_stage_id?: string
			purpose?:                                                      string
			max_history?:                                                  int
			compute_instance_group_canary_traffic_shift_deploy_stage_id?:  string
			helm_chart_deploy_artifact_id?:                                string
			defined_tags?: [_]: string
			deploy_artifact_ids?: [...string]
			command_spec_deploy_artifact_id?:   string
			should_skip_render_subchart_notes?: bool
			is_uninstall_on_stage_delete?:      bool
			deploy_environment_id_a?:           string
			blue_backend_ips?: [...{
				items?: [...string]
			}]
			rollout_policy?: [...{
				batch_percentage?:       int
				ramp_limit_percent?:     float
				policy_type?:            string
				batch_count?:            int
				batch_delay_in_seconds?: int
			}]
			production_load_balancer_config?: [...{
				state:             string
				backend_port?:     int
				listener_name?:    string
				load_balancer_id?: string
			}]
			should_cleanup_on_fail?: bool
			values_artifact_ids?: [...string]
			container_config?: [...{
				container_config_type!: string
				network_channel!: [...{
					network_channel_type!: string
					subnet_id!:            string
					nsg_ids?: [...string]
				}]
				shape_config!: [...{
					ocpus!:         float
					memory_in_gbs?: float
				}]
				shape_name!:          string
				availability_domain?: string
				compartment_id?:      string
			}]
			compartment_id: string
		}
	}
	arguments: {
		build_pipeline: {
			description?: string
			freeform_tags?: [_]: string
			project_id!: string
			defined_tags?: [_]: string
			display_name?: string
			build_pipeline_parameters?: [...{
				items!: [...{
					default_value!: string, name!: string, description?: string
				}]
			}]
		}
		project_repository_setting: {
			project_id!: string
			approval_rules?: [...{
				items!: [...{
					min_approvals_count!: int, name!:    string, destination_branch?: string, reviewers?: [...{
								principal_id!: string
					}]
				}]
			}]
			merge_settings?: [...{
				allowed_merge_strategies!: [...string]
				default_merge_strategy!: string
			}]
		}
		repository_protected_branch_management: {
			branch_name!:   string
			repository_id!: string
			protection_levels?: [...string]
		}
		deploy_environment: {
			freeform_tags?: [_]: string
			project_id!: string
			defined_tags?: [_]: string
			display_name?: string
			cluster_id?:   string
			compute_instance_group_selectors?: [...{
				items?: [...{
					selector_type!: string, compute_instance_ids?: [...string]
					query?: string, region?: string
				}]
			}]
			description?: string
			network_channel?: [...{
				nsg_ids?: [...string]
				network_channel_type!: string
				subnet_id!:            string
			}]
			deploy_environment_type!: string
			function_id?:             string
		}
		deploy_pipeline: {
			project_id!: string
			defined_tags?: [_]: string
			deploy_pipeline_parameters?: [...{
				items!: [...{
					name!: string, default_value?: string, description?: string
				}]
			}]
			freeform_tags?: [_]: string
			description?:  string
			display_name?: string
		}
		deployment: {
			deployment_type!: string
			deploy_artifact_override_arguments?: [...{
				items?: [...{
					name?: string, value?: string, deploy_artifact_id?: string
				}]
			}]
			deploy_stage_id?: string
			deployment_arguments?: [...{
				items?: [...{
					name?: string, value?: string
				}]
			}]
			defined_tags?: [_]: string
			deploy_stage_override_arguments?: [...{
				items?: [...{
					value?: string, deploy_stage_id?: string, name?: string
				}]
			}]
			freeform_tags?: [_]: string
			previous_deployment_id?:        string
			trigger_new_devops_deployment?: *false | bool
			deploy_pipeline_id!:            string
			display_name?:                  string
		}
		project: {
			freeform_tags?: [_]: string
			compartment_id!: string
			name!:           string
			description?:    string
			notification_config!: [...{
				topic_id!: string
			}]
			defined_tags?: [_]: string
		}
		repository: {
			defined_tags?: [_]: string
			parent_repository_id?: string
			project_id!:           string
			freeform_tags?: [_]: string
			default_branch?: string
			description?:    string
			name!:           string
			mirror_repository_config?: [...{
				connector_id?:   string
				repository_url?: string
				trigger_schedule?: [...{
					schedule_type!:   string
					custom_schedule?: string
				}]
			}]
			repository_type!: string
		}
		repository_mirror: repository_id!: string
		repository_ref: {
			ref_type!:      string
			repository_id!: string
			commit_id?:     string
			object_id?:     string
			ref_name!:      string
		}
		repository_setting: {
			repository_id!: string
			approval_rules?: [...{
				items!: [...{
					min_approvals_count!: int, name!:    string, destination_branch?: string, reviewers?: [...{
								principal_id!: string
					}]
				}]
			}]
			merge_checks?: [...{
				last_build_succeeded!: string
			}]
			merge_settings?: [...{
				default_merge_strategy!: string
				allowed_merge_strategies!: [...string]
			}]
		}
		trigger: {
			description?:    string
			trigger_source!: string
			repository_id?:  string
			actions!: [...{
				build_pipeline_id!: string
				type!:              string
				filter?: [...{
					trigger_source!: string
					events?: [...string]
					exclude?: [...{
						file_filter?: [...{
							file_paths?: [...string]
						}]
					}]
					include?: [...{
						base_ref?: string
						file_filter?: [...{
							file_paths?: [...string]
						}]
						head_ref?:        string
						repository_name?: string
					}]
				}]
			}]
			project_id!: string
			defined_tags?: [_]: string
			connection_id?: string
			display_name?:  string
			freeform_tags?: [_]: string
		}
		build_pipeline_stage: {
			description?: string
			image?:       string
			deliver_artifact_collection?: [...{
				items?: [...{
					artifact_id?: string, artifact_name?: string
				}]
			}]
			wait_criteria?: [...{
				wait_duration!: string
				wait_type!:     string
			}]
			stage_execution_timeout_in_seconds?: int
			build_spec_file?:                    string
			primary_build_source?:               string
			build_pipeline_stage_type!:          string
			build_source_collection?: [...{
				items?: [...{
					connection_type!: string, branch?: string, connection_id?: string, name?: string, repository_id?: string, repository_url?: string
				}]
			}]
			build_pipeline_stage_predecessor_collection!: [...{
				items!: [...{
					id!: string
				}]
			}]
			build_runner_shape_config?: [...{
				build_runner_type!: string
				memory_in_gbs?:     int
				ocpus?:             int
			}]
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			build_pipeline_id!:              string
			deploy_pipeline_id?:             string
			is_pass_all_parameters_enabled?: bool
			private_access_config?: [...{
				nsg_ids?: [...string]
				network_channel_type!: string
				subnet_id!:            string
			}]
		}
		build_run: {
			build_pipeline_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			commit_info?: [...{
				commit_hash!:       string
				repository_branch!: string
				repository_url!:    string
			}]
			build_run_arguments?: [...{
				items!: [...{
					name!: string, value!: string
				}]
			}]
		}
		connection: {
			display_name?: string
			username?:     string
			description?:  string
			defined_tags?: [_]: string
			access_token?: string
			project_id!:   string
			base_url?:     string
			freeform_tags?: [_]: string
			connection_type!: string
			app_password?:    string
			tls_verify_config?: [...{
				ca_certificate_bundle_id!: string
				tls_verify_mode!:          string
			}]
		}
		deploy_artifact: {
			description?:                string
			argument_substitution_mode!: string
			deploy_artifact_type!:       string
			project_id!:                 string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name?: string
			deploy_artifact_source!: [...{
				deploy_artifact_source_type!: string
				repository_id?:               string
				image_digest?:                string
				image_uri?:                   string
				deploy_artifact_path?:        string
				deploy_artifact_version?:     string
				helm_artifact_source_type?:   string
				base64encoded_content?:       string
				chart_url?:                   string
				helm_verification_key_source?: [...{
					verification_key_source_type!: string
					current_public_key?:           string
					previous_public_key?:          string
					vault_secret_id?:              string
				}]
			}]
		}
		deploy_stage: {
			set_string?: [...{
				items?: [...{
					name?: string, value?: string
				}]
			}]
			deploy_artifact_id?: string
			release_name?:       string
			load_balancer_config?: [...{
				load_balancer_id?: string
				backend_port?:     int
				listener_name?:    string
			}]
			deploy_environment_id_a?: string
			display_name?:            string
			should_skip_crds?:        bool
			rollout_policy?: [...{
				ramp_limit_percent?:     float
				policy_type?:            string
				batch_count?:            int
				batch_delay_in_seconds?: int
				batch_percentage?:       int
			}]
			should_not_wait?:                                             bool
			compute_instance_group_canary_traffic_shift_deploy_stage_id?: string
			approval_policy?: [...{
				approval_policy_type!:         string
				number_of_approvals_required!: int
			}]
			defined_tags?: [_]: string
			production_load_balancer_config?: [...{
				listener_name?:    string
				load_balancer_id?: string
				backend_port?:     int
			}]
			blue_green_strategy?: [...{
				namespace_a!:   string
				namespace_b!:   string
				strategy_type!: string
				ingress_name!:  string
			}]
			function_deploy_environment_id?:     string
			deployment_spec_deploy_artifact_id?: string
			timeout_in_seconds?:                 int
			function_timeout_in_seconds?:        int
			should_cleanup_on_fail?:             bool
			deploy_artifact_ids?: [...string]
			deploy_stage_type!:                            string
			oke_cluster_deploy_environment_id?:            string
			compute_instance_group_deploy_environment_id?: string
			deploy_pipeline_id!:                           string
			rollback_policy?: [...{
				policy_type?: string
			}]
			helm_chart_deploy_artifact_id?:                                string
			should_reset_values?:                                          bool
			compute_instance_group_blue_green_deployment_deploy_stage_id?: string
			test_load_balancer_config?: [...{
				backend_port?:     int
				listener_name?:    string
				load_balancer_id?: string
			}]
			description?:       string
			purpose?:           string
			max_memory_in_mbs?: string
			blue_backend_ips?: [...{
				items?: [...string]
			}]
			canary_strategy?: [...{
				ingress_name!:  string
				namespace!:     string
				strategy_type!: string
			}]
			oke_blue_green_deploy_stage_id?: string
			container_config?: [...{
				network_channel!: [...{
					network_channel_type!: string
					subnet_id!:            string
					nsg_ids?: [...string]
				}]
				shape_config!: [...{
					ocpus!:         float
					memory_in_gbs?: float
				}]
				shape_name!:            string
				availability_domain?:   string
				compartment_id?:        string
				container_config_type!: string
			}]
			deploy_environment_id_b?:                  string
			oke_canary_traffic_shift_deploy_stage_id?: string
			set_values?: [...{
				items?: [...{
					name?: string, value?: string
				}]
			}]
			oke_canary_deploy_stage_id?: string
			values_artifact_ids?: [...string]
			deploy_stage_predecessor_collection!: [...{
				items!: [...{
					id!: string
				}]
			}]
			are_hooks_enabled?:                             bool
			compute_instance_group_canary_deploy_stage_id?: string
			docker_image_deploy_artifact_id?:               string
			is_async?:                                      bool
			is_force_enabled?:                              bool
			is_debug_enabled?:                              bool
			config?: [_]: string
			freeform_tags?: [_]: string
			kubernetes_manifest_deploy_artifact_ids?: [...string]
			helm_command_artifact_ids?: [...string]
			wait_criteria?: [...{
				wait_duration!: string
				wait_type!:     string
			}]
			namespace?: string
			green_backend_ips?: [...{
				items?: [...string]
			}]
			traffic_shift_target?:              string
			is_validation_enabled?:             bool
			max_history?:                       int
			should_skip_render_subchart_notes?: bool
			should_reuse_values?:               bool
			is_uninstall_on_stage_delete?:      bool
			command_spec_deploy_artifact_id?:   string
			failure_policy?: [...{
				policy_type!:        string
				failure_count?:      int
				failure_percentage?: int
			}]
		}
	}
}
#data: {
	repository_author: {
		repository_id!: string
		ref_name?:      string
	}
	repository_diffs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		base_version!:                  string
		is_comparison_from_merge_base?: bool
		repository_id!:                 string
		target_repository_id?:          string
		target_version!:                string
	}
	repository_object_content: {
		sha!:           string
		file_path?:     string
		repository_id!: string
	}
	deploy_environment: deploy_environment_id!: string
	deployment: deployment_id!: string
	repo_file_line: {
		start_line_number?: int
		file_path!:         string
		repository_id!:     string
		revision!:          string
	}
	repository_commit: {
		commit_id!:     string
		repository_id!: string
	}
	repository_setting: repository_id!: string
	build_run: build_run_id!: string
	connections: {
		compartment_id?:  string
		connection_type?: string
		display_name?:    string
		id?:              string
		project_id?:      string
		state?:           string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	deploy_environments: {
		compartment_id?: string
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
	deploy_pipelines: {
		compartment_id?: string
		display_name?:   string
		id?:             string
		project_id?:     string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	project: project_id!: string
	projects: {
		compartment_id!: string
		id?:             string
		name?:           string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	repository_mirror_record: {
		repository_id!:      string
		mirror_record_type!: string
	}
	build_pipeline: build_pipeline_id!: string
	build_pipelines: {
		compartment_id?: string
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
	deploy_stages: {
		display_name?: string
		id?:           string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:     string
		deploy_pipeline_id?: string
	}
	triggers: {
		project_id?: string
		state?:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
	}
	deploy_pipeline: deploy_pipeline_id!: string
	project_repository_setting: project_id!: string
	repository: {
		fields?: [...string]
		repository_id!: string
	}
	repository_commits: {
		repository_id!:                      string
		timestamp_greater_than_or_equal_to?: string
		author_name?:                        string
		timestamp_less_than_or_equal_to?:    string
		exclude_ref_name?:                   string
		file_path?:                          string
		ref_name?:                           string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		commit_message?: string
	}
	repository_file_line: {
		revision!:          string
		start_line_number?: int
		file_path!:         string
		repository_id!:     string
	}
	repository_path: {
		repository_id!:    string
		display_name?:     string
		folder_path?:      string
		paths_in_subtree?: bool
		ref?:              string
	}
	build_pipeline_stage: build_pipeline_stage_id!: string
	build_runs: {
		display_name?: string
		id?:           string
		project_id?:   string
		state?:        string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		build_pipeline_id?: string
		compartment_id?:    string
	}
	deploy_artifact: deploy_artifact_id!: string
	repository_diff: {
		base_version!:                  string
		is_comparison_from_merge_base?: bool
		repository_id!:                 string
		file_path!:                     string
		target_version!:                string
	}
	repository_mirror_records: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		repository_id!: string
	}
	repository_object: {
		file_path?:     string
		ref_name?:      string
		repository_id!: string
	}
	deploy_artifacts: {
		id?:         string
		project_id?: string
		state?:      string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		display_name?:   string
	}
	repositories: {
		name?:          string
		project_id?:    string
		repository_id?: string
		state?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	repository_archive_content: {
		repository_id!: string
		format?:        string
		ref_name?:      string
	}
	repository_paths: {
		folder_path?:      string
		paths_in_subtree?: bool
		ref?:              string
		repository_id!:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
	}
	repository_protected_branches: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		name?:          string
		repository_id!: string
	}
	repository_refs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		commit_id?:     string
		ref_name?:      string
		ref_type?:      string
		repository_id!: string
	}
	build_pipeline_stages: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		build_pipeline_id?: string
		compartment_id?:    string
		display_name?:      string
		id?:                string
		state?:             string
	}
	connection: connection_id!: string
	deploy_stage: deploy_stage_id!: string
	deployments: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:                        string
		state?:                                 string
		deploy_pipeline_id?:                    string
		time_created_greater_than_or_equal_to?: string
		display_name?:                          string
		project_id?:                            string
		time_created_less_than?:                string
		id?:                                    string
	}
	repository_authors: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		ref_name?:      string
		repository_id!: string
	}
	repository_file_diff: {
		is_comparison_from_merge_base?: bool
		target_version!:                string
		base_version!:                  string
		file_path!:                     string
		repository_id!:                 string
	}
	repository_ref: {
		ref_name!:      string
		repository_id!: string
	}
	trigger: trigger_id!: string
	repository_mirrorrecord: {
		mirror_record_type!: string
		repository_id!:      string
	}
}

