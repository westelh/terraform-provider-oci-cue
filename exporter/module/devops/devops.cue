package devops

#resource: {
	attributes: {
		repository: {
			http_url:         string
			commit_count:     int
			name!:            string
			compartment_id:   string
			project_name:     string
			ssh_url:          string
			lifecyle_details: string
			time_created:     string
			trigger_build_events: [...string]
			mirror_repository_config?: [...{
				connector_id?:   string
				repository_url?: string
				trigger_schedule?: [...{
					schedule_type!:   string
					custom_schedule?: string
				}]
			}]
			freeform_tags?: [_]: string
			system_tags: [_]: string
			repository_type!:      string
			parent_repository_id?: string
			project_id!:           string
			description?:          string
			size_in_bytes:         string
			namespace:             string
			branch_count:          int
			time_updated:          string
			defined_tags?: [_]: string
			state:           string
			default_branch?: string
		}
		repository_setting: {
			repository_id!: string
			approval_rules?: [...{
				items!: [...{
					destination_branch?: string, reviewers?: [...{
								principal_state: string, principal_type: string, principal_id!: string, principal_name: string
					}]
					min_approvals_count!: int, name!: string
				}]
			}]
			merge_checks?: [...{
				last_build_succeeded!: string
			}]
			merge_settings?: [...{
				allowed_merge_strategies!: [...string]
				default_merge_strategy!: string
			}]
		}
		build_pipeline: {
			project_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id: string
			display_name?:  string
			system_tags: [_]: string
			build_pipeline_parameters?: [...{
				items!: [...{
					default_value!: string, name!: string, description?: string
				}]
			}]
			description?:      string
			lifecycle_details: string
			time_created:      string
			time_updated:      string
			state:             string
		}
		connection: {
			access_token?: string
			project_id!:   string
			tls_verify_config?: [...{
				ca_certificate_bundle_id!: string
				tls_verify_mode!:          string
			}]
			compartment_id: string
			time_created:   string
			time_updated:   string
			description?:   string
			last_connection_validation_result: [...{
				result:         string
				time_validated: string
				message:        string
			}]
			connection_type!: string
			system_tags: [_]: string
			state: string
			freeform_tags?: [_]: string
			base_url?:     string
			app_password?: string
			username?:     string
			defined_tags?: [_]: string
			display_name?: string
		}
		project: {
			time_created:    string
			time_updated:    string
			compartment_id!: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			namespace:         string
			defined_tags?: [_]: string
			description?: string
			notification_config!: [...{
				topic_id!: string
			}]
			state: string
			name!: string
			system_tags: [_]: string
		}
		project_repository_setting: {
			project_id!: string
			approval_rules?: [...{
				items!: [...{
					name!: string, destination_branch?: string, reviewers?: [...{
						principal_state:             string, principal_type: string, principal_id!: string, principal_name: string
					}]
					min_approvals_count!: int
				}]
			}]
			merge_settings?: [...{
				allowed_merge_strategies!: [...string]
				default_merge_strategy!: string
			}]
		}
		deploy_environment: {
			system_tags: [_]: string
			display_name?: string
			defined_tags?: [_]: string
			description?:             string
			time_created:             string
			time_updated:             string
			deploy_environment_type!: string
			compute_instance_group_selectors?: [...{
				items?: [...{
					selector_type!: string, compute_instance_ids?: [...string]
					query?: string, region?: string
				}]
			}]
			network_channel?: [...{
				network_channel_type!: string
				subnet_id!:            string
				nsg_ids?: [...string]
			}]
			freeform_tags?: [_]: string
			state:             string
			lifecycle_details: string
			function_id?:      string
			compartment_id:    string
			project_id!:       string
			cluster_id?:       string
		}
		deploy_pipeline: {
			project_id!:    string
			compartment_id: string
			description?:   string
			deploy_pipeline_artifacts: [...{
				items: [...{
					deploy_artifact_id: string, deploy_pipeline_stages: [...{
								items: [...{
									display_name: string, deploy_stage_id: string
								}]
					}]
					display_name: string
				}]
			}]
			defined_tags?: [_]: string
			display_name?: string
			state:         string
			system_tags: [_]: string
			time_created:      string
			lifecycle_details: string
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
			freeform_tags?: [_]: string
			deploy_pipeline_parameters?: [...{
				items!: [...{
					name!: string, default_value?: string, description?: string
				}]
			}]
			time_updated: string
		}
		repository_mirror: repository_id!: string
		repository_protected_branch_management: {
			repository_id!: string
			protection_levels?: [...string]
			freeform_tags: [_]: string
			branch_name!: string
		}
		deployment: {
			state: string
			freeform_tags?: [_]: string
			deployment_execution_progress: [...{
				deploy_stage_execution_progress: [_]: string
				time_finished: string
				time_started:  string
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
			deployment_arguments?: [...{
				items?: [...{
					name?: string, value?: string
				}]
			}]
			compartment_id:          string
			previous_deployment_id?: string
			deployment_type!:        string
			deploy_stage_override_arguments?: [...{
				items?: [...{
					deploy_stage_id?: string, name?: string, value?: string
				}]
			}]
			time_updated:                   string
			deploy_pipeline_id!:            string
			trigger_new_devops_deployment?: *false | bool
			lifecycle_details:              string
			deploy_stage_id?:               string
			display_name?:                  string
			deploy_pipeline_environments: [...{
				items: [...{
					deploy_environment_id: string, deploy_pipeline_stages: [...{
								items: [...{
									display_name: string, deploy_stage_id: string
								}]
					}]
					display_name: string
				}]
			}]
			project_id:   string
			time_created: string
			system_tags: [_]: string
			defined_tags?: [_]: string
			deploy_artifact_override_arguments?: [...{
				items?: [...{
					deploy_artifact_id?: string, name?: string, value?: string
				}]
			}]
		}
		repository_ref: {
			object_id?: string
			defined_tags: [_]: string
			freeform_tags: [_]: string
			full_ref_name:  string
			ref_name!:      string
			ref_type!:      string
			repository_id!: string
			commit_id?:     string
		}
		trigger: {
			compartment_id:    string
			lifecycle_details: string
			description?:      string
			state:             string
			trigger_url:       string
			trigger_source!:   string
			connection_id?:    string
			time_created:      string
			display_name?:     string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			actions!: [...{
				build_pipeline_id!: string
				type!:              string
				filter?: [...{
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
					trigger_source!: string
					events?: [...string]
				}]
			}]
			project_id!:    string
			time_updated:   string
			repository_id?: string
			system_tags: [_]: string
		}
		build_pipeline_stage: {
			time_updated:                    string
			deploy_pipeline_id?:             string
			is_pass_all_parameters_enabled?: bool
			state:                           string
			time_created:                    string
			build_runner_shape_config?: [...{
				memory_in_gbs?:     int
				ocpus?:             int
				build_runner_type!: string
			}]
			system_tags: [_]: string
			wait_criteria?: [...{
				wait_duration!: string
				wait_type!:     string
			}]
			freeform_tags?: [_]: string
			lifecycle_details: string
			description?:      string
			defined_tags?: [_]: string
			image?: string
			build_pipeline_stage_predecessor_collection!: [...{
				items!: [...{
					id!: string
				}]
			}]
			primary_build_source?:               string
			stage_execution_timeout_in_seconds?: int
			private_access_config?: [...{
				network_channel_type!: string
				subnet_id!:            string
				nsg_ids?: [...string]
			}]
			build_source_collection?: [...{
				items?: [...{
					repository_id?: string, repository_url?: string, connection_type!: string, branch?: string, connection_id?: string, name?: string
				}]
			}]
			project_id:                 string
			display_name?:              string
			compartment_id:             string
			build_pipeline_id!:         string
			build_pipeline_stage_type!: string
			deliver_artifact_collection?: [...{
				items?: [...{
					artifact_id?: string, artifact_name?: string
				}]
			}]
			build_spec_file?: string
		}
		build_run: {
			state: string
			freeform_tags?: [_]: string
			time_created:   string
			project_id:     string
			compartment_id: string
			build_outputs: [...{
				artifact_override_parameters: [...{
					items: [...{
						deploy_artifact_id: string, name: string, value: string
					}]
				}]
				delivered_artifacts: [...{
					items: [...{
						delivered_artifact_hash: string, output_artifact_name: string, artifact_repository_id: string, artifact_type: string, image_uri: string, version: string, path: string, delivered_artifact_id: string, deploy_artifact_id: string
					}]
				}]
				exported_variables: [...{
					items: [...{
						name: string, value: string
					}]
				}]
				vulnerability_audit_summary_collection: [...{
					items: [...{
						vulnerability_audit_id: string, build_stage_id: string, commit_hash: string
					}]
				}]
			}]
			commit_info?: [...{
				commit_hash!:       string
				repository_branch!: string
				repository_url!:    string
			}]
			system_tags: [_]: string
			defined_tags?: [_]: string
			time_updated:       string
			build_pipeline_id!: string
			build_run_arguments?: [...{
				items!: [...{
					name!: string, value!: string
				}]
			}]
			lifecycle_details: string
			display_name?:     string
			build_run_source: [...{
				source_type: string
				trigger_id:  string
				trigger_info: [...{
					actions: [...{
						build_pipeline_id: string
						filter: [...{
							events: [...string]
							exclude: [...{
								file_filter: [...{
									file_paths: [...string]
								}]
							}]
							include: [...{
								base_ref: string
								file_filter: [...{
									file_paths: [...string]
								}]
								head_ref:        string
								repository_name: string
							}]
							trigger_source: string
						}]
						type: string
					}]
					display_name: string
				}]
				repository_id: string
			}]
			build_run_progress: [...{
				build_pipeline_stage_run_progress: [_]: string
				time_finished: string
				time_started:  string
			}]
		}
		deploy_artifact: {
			description?: string
			time_created: string
			state:        string
			project_id!:  string
			deploy_artifact_source!: [...{
				image_digest?:              string
				base64encoded_content?:     string
				helm_artifact_source_type?: string
				helm_verification_key_source?: [...{
					vault_secret_id?:              string
					verification_key_source_type!: string
					current_public_key?:           string
					previous_public_key?:          string
				}]
				image_uri?:                   string
				chart_url?:                   string
				deploy_artifact_path?:        string
				deploy_artifact_version?:     string
				repository_id?:               string
				deploy_artifact_source_type!: string
			}]
			time_updated: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			compartment_id:    string
			system_tags: [_]: string
			argument_substitution_mode!: string
			defined_tags?: [_]: string
			deploy_artifact_type!: string
			display_name?:         string
		}
		deploy_stage: {
			should_skip_crds?: bool
			helm_command_artifact_ids?: [...string]
			deploy_environment_id_a?: string
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
			purpose?: string
			kubernetes_manifest_deploy_artifact_ids?: [...string]
			canary_strategy?: [...{
				ingress_name!:  string
				namespace!:     string
				strategy_type!: string
			}]
			compute_instance_group_deploy_environment_id?: string
			deploy_artifact_id?:                           string
			oke_blue_green_deploy_stage_id?:               string
			values_artifact_ids?: [...string]
			is_validation_enabled?:      bool
			state:                       string
			oke_canary_deploy_stage_id?: string
			test_load_balancer_config?: [...{
				load_balancer_id?: string
				state:             string
				backend_port?:     int
				listener_name?:    string
			}]
			production_load_balancer_config?: [...{
				backend_port?:     int
				listener_name?:    string
				load_balancer_id?: string
				state:             string
			}]
			function_deploy_environment_id?: string
			release_name?:                   string
			config?: [_]: string
			description?:                                   string
			compute_instance_group_canary_deploy_stage_id?: string
			lifecycle_details:                              string
			command_spec_deploy_artifact_id?:               string
			deploy_artifact_ids?: [...string]
			deployment_spec_deploy_artifact_id?: string
			set_string?: [...{
				items?: [...{
					value?: string, name?: string
				}]
			}]
			compartment_id: string
			green_backend_ips?: [...{
				items?: [...string]
			}]
			compute_instance_group_canary_traffic_shift_deploy_stage_id?: string
			traffic_shift_target?:                                        string
			project_id:                                                   string
			is_uninstall_on_stage_delete?:                                bool
			load_balancer_config?: [...{
				backend_port?:     int
				listener_name?:    string
				load_balancer_id?: string
				state:             string
			}]
			set_values?: [...{
				items?: [...{
					name?: string, value?: string
				}]
			}]
			is_async?:                                 bool
			oke_canary_traffic_shift_deploy_stage_id?: string
			is_debug_enabled?:                         bool
			rollout_policy?: [...{
				batch_count?:            int
				batch_delay_in_seconds?: int
				batch_percentage?:       int
				ramp_limit_percent?:     float
				policy_type?:            string
			}]
			deploy_stage_type!: string
			defined_tags?: [_]: string
			is_force_enabled?:        bool
			deploy_pipeline_id!:      string
			deploy_environment_id_b?: string
			deploy_stage_predecessor_collection!: [...{
				items!: [...{
					id!: string
				}]
			}]
			max_memory_in_mbs?:      string
			should_cleanup_on_fail?: bool
			max_history?:            int
			blue_backend_ips?: [...{
				items?: [...string]
			}]
			time_created:     string
			display_name?:    string
			should_not_wait?: bool
			rollback_policy?: [...{
				policy_type?: string
			}]
			should_reset_values?:               bool
			should_skip_render_subchart_notes?: bool
			blue_green_strategy?: [...{
				namespace_a!:   string
				namespace_b!:   string
				strategy_type!: string
				ingress_name!:  string
			}]
			time_updated:         string
			should_reuse_values?: bool
			approval_policy?: [...{
				approval_policy_type!:         string
				number_of_approvals_required!: int
			}]
			timeout_in_seconds?: int
			failure_policy?: [...{
				policy_type!:        string
				failure_count?:      int
				failure_percentage?: int
			}]
			docker_image_deploy_artifact_id?:   string
			oke_cluster_deploy_environment_id?: string
			helm_chart_deploy_artifact_id?:     string
			wait_criteria?: [...{
				wait_duration!: string
				wait_type!:     string
			}]
			compute_instance_group_blue_green_deployment_deploy_stage_id?: string
			namespace?:                                                    string
			are_hooks_enabled?:                                            bool
			system_tags: [_]: string
			freeform_tags?: [_]: string
			function_timeout_in_seconds?: int
		}
	}
	arguments: {
		repository: {
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			name!: string
			mirror_repository_config?: [...{
				repository_url?: string
				trigger_schedule?: [...{
					schedule_type!:   string
					custom_schedule?: string
				}]
				connector_id?: string
			}]
			default_branch?:       string
			repository_type!:      string
			project_id!:           string
			description?:          string
			parent_repository_id?: string
		}
		repository_setting: {
			merge_settings?: [...{
				allowed_merge_strategies!: [...string]
				default_merge_strategy!: string
			}]
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
		}
		build_pipeline: {
			description?:  string
			display_name?: string
			project_id!:   string
			build_pipeline_parameters?: [...{
				items!: [...{
					default_value!: string, name!: string, description?: string
				}]
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		connection: {
			defined_tags?: [_]: string
			display_name?: string
			description?:  string
			tls_verify_config?: [...{
				ca_certificate_bundle_id!: string
				tls_verify_mode!:          string
			}]
			project_id!:   string
			app_password?: string
			freeform_tags?: [_]: string
			connection_type!: string
			access_token?:    string
			base_url?:        string
			username?:        string
		}
		project: {
			freeform_tags?: [_]: string
			compartment_id!: string
			notification_config!: [...{
				topic_id!: string
			}]
			description?: string
			name!:        string
			defined_tags?: [_]: string
		}
		project_repository_setting: {
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
			project_id!: string
		}
		deploy_environment: {
			network_channel?: [...{
				network_channel_type!: string
				subnet_id!:            string
				nsg_ids?: [...string]
			}]
			deploy_environment_type!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			cluster_id?:  string
			description?: string
			compute_instance_group_selectors?: [...{
				items?: [...{
					region?: string, selector_type!: string, compute_instance_ids?: [...string]
					query?: string
				}]
			}]
			display_name?: string
			function_id?:  string
			project_id!:   string
		}
		deploy_pipeline: {
			deploy_pipeline_parameters?: [...{
				items!: [...{
					name!: string, default_value?: string, description?: string
				}]
			}]
			display_name?: string
			project_id!:   string
			description?:  string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
		}
		repository_mirror: repository_id!: string
		repository_protected_branch_management: {
			branch_name!:   string
			repository_id!: string
			protection_levels?: [...string]
		}
		deployment: {
			defined_tags?: [_]: string
			deploy_artifact_override_arguments?: [...{
				items?: [...{
					deploy_artifact_id?: string, name?: string, value?: string
				}]
			}]
			deploy_stage_override_arguments?: [...{
				items?: [...{
					name?: string, value?: string, deploy_stage_id?: string
				}]
			}]
			trigger_new_devops_deployment?: *false | bool
			deploy_pipeline_id!:            string
			display_name?:                  string
			deploy_stage_id?:               string
			freeform_tags?: [_]: string
			previous_deployment_id?: string
			deployment_type!:        string
			deployment_arguments?: [...{
				items?: [...{
					name?: string, value?: string
				}]
			}]
		}
		repository_ref: {
			commit_id?:     string
			object_id?:     string
			ref_name!:      string
			ref_type!:      string
			repository_id!: string
		}
		trigger: {
			freeform_tags?: [_]: string
			repository_id?: string
			defined_tags?: [_]: string
			description?:    string
			trigger_source!: string
			project_id!:     string
			display_name?:   string
			connection_id?:  string
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
						head_ref?:        string
						repository_name?: string
						base_ref?:        string
						file_filter?: [...{
							file_paths?: [...string]
						}]
					}]
				}]
			}]
		}
		build_pipeline_stage: {
			build_spec_file?: string
			freeform_tags?: [_]: string
			wait_criteria?: [...{
				wait_duration!: string
				wait_type!:     string
			}]
			build_pipeline_stage_type!: string
			image?:                     string
			build_runner_shape_config?: [...{
				build_runner_type!: string
				memory_in_gbs?:     int
				ocpus?:             int
			}]
			private_access_config?: [...{
				subnet_id!: string
				nsg_ids?: [...string]
				network_channel_type!: string
			}]
			deploy_pipeline_id?: string
			description?:        string
			build_pipeline_stage_predecessor_collection!: [...{
				items!: [...{
					id!: string
				}]
			}]
			display_name?:                   string
			is_pass_all_parameters_enabled?: bool
			deliver_artifact_collection?: [...{
				items?: [...{
					artifact_id?: string, artifact_name?: string
				}]
			}]
			stage_execution_timeout_in_seconds?: int
			build_source_collection?: [...{
				items?: [...{
					branch?: string, connection_id?: string, name?: string, repository_id?: string, repository_url?: string, connection_type!: string
				}]
			}]
			primary_build_source?: string
			build_pipeline_id!:    string
			defined_tags?: [_]: string
		}
		build_run: {
			build_pipeline_id!: string
			display_name?:      string
			build_run_arguments?: [...{
				items!: [...{
					name!: string, value!: string
				}]
			}]
			commit_info?: [...{
				commit_hash!:       string
				repository_branch!: string
				repository_url!:    string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		deploy_artifact: {
			project_id!: string
			defined_tags?: [_]: string
			deploy_artifact_source!: [...{
				image_digest?:                string
				deploy_artifact_path?:        string
				deploy_artifact_version?:     string
				repository_id?:               string
				deploy_artifact_source_type!: string
				chart_url?:                   string
				helm_artifact_source_type?:   string
				helm_verification_key_source?: [...{
					verification_key_source_type!: string
					current_public_key?:           string
					previous_public_key?:          string
					vault_secret_id?:              string
				}]
				image_uri?:             string
				base64encoded_content?: string
			}]
			description?:          string
			deploy_artifact_type!: string
			display_name?:         string
			freeform_tags?: [_]: string
			argument_substitution_mode!: string
		}
		deploy_stage: {
			deploy_environment_id_a?:        string
			function_deploy_environment_id?: string
			purpose?:                        string
			set_string?: [...{
				items?: [...{
					name?: string, value?: string
				}]
			}]
			approval_policy?: [...{
				approval_policy_type!:         string
				number_of_approvals_required!: int
			}]
			timeout_in_seconds?: int
			failure_policy?: [...{
				failure_count?:      int
				failure_percentage?: int
				policy_type!:        string
			}]
			canary_strategy?: [...{
				strategy_type!: string
				ingress_name!:  string
				namespace!:     string
			}]
			is_async?: bool
			container_config?: [...{
				network_channel!: [...{
					network_channel_type!: string
					subnet_id!:            string
					nsg_ids?: [...string]
				}]
				shape_config!: [...{
					memory_in_gbs?: float
					ocpus!:         float
				}]
				shape_name!:            string
				availability_domain?:   string
				compartment_id?:        string
				container_config_type!: string
			}]
			compute_instance_group_canary_traffic_shift_deploy_stage_id?: string
			is_debug_enabled?:                                            bool
			test_load_balancer_config?: [...{
				backend_port?:     int
				listener_name?:    string
				load_balancer_id?: string
			}]
			deployment_spec_deploy_artifact_id?: string
			is_uninstall_on_stage_delete?:       bool
			deploy_environment_id_b?:            string
			config?: [_]: string
			oke_canary_deploy_stage_id?: string
			description?:                string
			should_reuse_values?:        bool
			helm_command_artifact_ids?: [...string]
			deploy_pipeline_id!:                           string
			command_spec_deploy_artifact_id?:              string
			compute_instance_group_deploy_environment_id?: string
			display_name?:                                 string
			freeform_tags?: [_]: string
			helm_chart_deploy_artifact_id?:     string
			should_not_wait?:                   bool
			oke_cluster_deploy_environment_id?: string
			deploy_artifact_id?:                string
			max_history?:                       int
			is_force_enabled?:                  bool
			wait_criteria?: [...{
				wait_duration!: string
				wait_type!:     string
			}]
			deploy_stage_type!:           string
			function_timeout_in_seconds?: int
			rollback_policy?: [...{
				policy_type?: string
			}]
			oke_blue_green_deploy_stage_id?: string
			production_load_balancer_config?: [...{
				backend_port?:     int
				listener_name?:    string
				load_balancer_id?: string
			}]
			should_skip_crds?:                                             bool
			should_skip_render_subchart_notes?:                            bool
			compute_instance_group_canary_deploy_stage_id?:                string
			compute_instance_group_blue_green_deployment_deploy_stage_id?: string
			namespace?:                                                    string
			is_validation_enabled?:                                        bool
			kubernetes_manifest_deploy_artifact_ids?: [...string]
			traffic_shift_target?: string
			blue_green_strategy?: [...{
				ingress_name!:  string
				namespace_a!:   string
				namespace_b!:   string
				strategy_type!: string
			}]
			load_balancer_config?: [...{
				backend_port?:     int
				listener_name?:    string
				load_balancer_id?: string
			}]
			deploy_stage_predecessor_collection!: [...{
				items!: [...{
					id!: string
				}]
			}]
			defined_tags?: [_]: string
			max_memory_in_mbs?: string
			are_hooks_enabled?: bool
			set_values?: [...{
				items?: [...{
					value?: string, name?: string
				}]
			}]
			values_artifact_ids?: [...string]
			release_name?: string
			rollout_policy?: [...{
				policy_type?:            string
				batch_count?:            int
				batch_delay_in_seconds?: int
				batch_percentage?:       int
				ramp_limit_percent?:     float
			}]
			should_reset_values?: bool
			green_backend_ips?: [...{
				items?: [...string]
			}]
			deploy_artifact_ids?: [...string]
			should_cleanup_on_fail?: bool
			blue_backend_ips?: [...{
				items?: [...string]
			}]
			oke_canary_traffic_shift_deploy_stage_id?: string
			docker_image_deploy_artifact_id?:          string
		}
	}
}
#data: {
	deployments: {
		state?:                  string
		time_created_less_than?: string
		compartment_id?:         string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		project_id?:                            string
		display_name?:                          string
		deploy_pipeline_id?:                    string
		id?:                                    string
		time_created_greater_than_or_equal_to?: string
	}
	repositories: {
		name?:          string
		project_id?:    string
		repository_id?: string
		state?:         string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
	}
	repository_archive_content: {
		ref_name?:      string
		repository_id!: string
		format?:        string
	}
	repository_ref: {
		repository_id!: string
		ref_name!:      string
	}
	build_pipeline: build_pipeline_id!: string
	connections: {
		display_name?: string
		id?:           string
		project_id?:   string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:  string
		connection_type?: string
	}
	deployment: deployment_id!: string
	repository: {
		repository_id!: string
		fields?: [...string]
	}
	repository_paths: {
		ref?:           string
		repository_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?:     string
		folder_path?:      string
		paths_in_subtree?: bool
	}
	deploy_artifact: deploy_artifact_id!: string
	deploy_stages: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:     string
		deploy_pipeline_id?: string
		display_name?:       string
		id?:                 string
	}
	project_repository_setting: project_id!: string
	repository_commit: {
		repository_id!: string
		commit_id!:     string
	}
	repository_file_line: {
		repository_id!:     string
		revision!:          string
		start_line_number?: int
		file_path!:         string
	}
	repository_setting: repository_id!: string
	repository_mirror_record: {
		mirror_record_type!: string
		repository_id!:      string
	}
	repository_path: {
		folder_path?:      string
		paths_in_subtree?: bool
		ref?:              string
		repository_id!:    string
		display_name?:     string
	}
	repository_refs: {
		ref_type?:      string
		repository_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		commit_id?: string
		ref_name?:  string
	}
	build_run: build_run_id!: string
	connection: connection_id!: string
	deploy_stage: deploy_stage_id!: string
	project: project_id!: string
	repository_commits: {
		repository_id!:                      string
		author_name?:                        string
		ref_name?:                           string
		file_path?:                          string
		timestamp_greater_than_or_equal_to?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		commit_message?:                  string
		timestamp_less_than_or_equal_to?: string
		exclude_ref_name?:                string
	}
	repository_mirrorrecord: {
		mirror_record_type!: string
		repository_id!:      string
	}
	trigger: trigger_id!: string
	build_pipeline_stage: build_pipeline_stage_id!: string
	build_pipelines: {
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
	deploy_artifacts: {
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
	repo_file_line: {
		file_path!:         string
		repository_id!:     string
		revision!:          string
		start_line_number?: int
	}
	repository_object_content: {
		file_path?:     string
		repository_id!: string
		sha!:           string
	}
	repository_diff: {
		target_version!:                string
		base_version!:                  string
		file_path!:                     string
		is_comparison_from_merge_base?: bool
		repository_id!:                 string
	}
	repository_mirror_records: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		repository_id!: string
	}
	repository_protected_branches: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		name?:          string
		repository_id!: string
	}
	build_pipeline_stages: {
		build_pipeline_id?: string
		compartment_id?:    string
		display_name?:      string
		id?:                string
		state?:             string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	deploy_environment: deploy_environment_id!: string
	deploy_environments: {
		display_name?: string
		id?:           string
		project_id?:   string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	deploy_pipeline: deploy_pipeline_id!: string
	repository_authors: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		ref_name?:      string
		repository_id!: string
	}
	repository_file_diff: {
		base_version!:                  string
		file_path!:                     string
		repository_id!:                 string
		target_version!:                string
		is_comparison_from_merge_base?: bool
	}
	repository_object: {
		file_path?:     string
		ref_name?:      string
		repository_id!: string
	}
	triggers: {
		display_name?: string
		id?:           string
		project_id?:   string
		state?:        string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
	}
	build_runs: {
		display_name?: string
		id?:           string
		project_id?:   string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		build_pipeline_id?: string
		compartment_id?:    string
	}
	deploy_pipelines: {
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
	projects: {
		id?:    string
		name?:  string
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	repository_author: {
		ref_name?:      string
		repository_id!: string
	}
	repository_diffs: {
		target_repository_id?: string
		target_version!:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		base_version!:                  string
		is_comparison_from_merge_base?: bool
		repository_id!:                 string
	}
}

