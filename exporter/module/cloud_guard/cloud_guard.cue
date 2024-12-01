package cloud_guard

#resource: {
	attributes: {
		detector_recipe: {
			defined_tags?: [_]: string
			source_detector_recipe_id?: string
			compartment_id!:            string
			time_created:               string
			effective_detector_rules: [...{
				state: string
				candidate_responder_rules: [...{
					display_name: string
					id:           string
					is_preferred: bool
				}]
				detector:     string
				display_name: string
				managed_list_types: [...string]
				data_source_id:   string
				detector_rule_id: string
				entities_mappings: [...{
					display_name: string
					entity_type:  string
					query_field:  string
				}]
				time_created:      string
				time_updated:      string
				recommendation:    string
				resource_type:     string
				lifecycle_details: string
				description:       string
				details: [...{
					configurations: [...{
						value: string
						values: [...{
							list_type:         string
							managed_list_type: string
							value:             string
						}]
						config_key: string
						data_type:  string
						name:       string
					}]
					labels: [...string]
					is_configuration_allowed: bool
					is_enabled:               bool
					recommendation:           string
					risk_level:               string
					condition:                string
					data_source_id:           string
					entities_mappings: [...{
						entity_type:  string
						query_field:  string
						display_name: string
					}]
					description: string
				}]
				service_type: string
			}]
			description?:         string
			detector_recipe_type: string
			target_ids: [...string]
			detector_rules?: [...{
				detector_rule_id!: string
				managed_list_types: [...string]
				details!: [...{
					risk_level!:  string
					description?: string
					is_enabled!:  bool
					entities_mappings?: [...{
						display_name?: string
						entity_type?:  string
						query_field!:  string
					}]
					labels?: [...string]
					is_configuration_allowed: bool
					data_source_id?:          string
					configurations?: [...{
						config_key!: string
						name!:       string
						data_type?:  string
						value?:      string
						values?: [...{
							list_type!:         string
							managed_list_type!: string
							value!:             string
						}]
					}]
					recommendation?: string
					condition?:      string
				}]
				recommendation: string
				time_updated:   string
				description:    string
				detector:       string
				data_source_id: string
				entities_mappings: [...{
					display_name: string
					entity_type:  string
					query_field:  string
				}]
				time_created:  string
				resource_type: string
				service_type:  string
				display_name:  string
				candidate_responder_rules: [...{
					display_name: string
					id:           string
					is_preferred: bool
				}]
				lifecycle_details: string
				state:             string
			}]
			time_updated: string
			state:        string
			system_tags: [_]: string
			display_name!: string
			owner:         string
			freeform_tags?: [_]: string
			detector?: string
		}
		responder_recipe: {
			source_responder_recipe_id!: string
			responder_rules?: [...{
				details!: [...{
					configurations: [...{
						config_key: string
						name:       string
						value:      string
					}]
					mode:        string
					is_enabled!: bool
					condition:   string
				}]
				responder_rule_id!: string
				state:              string
				supported_modes: [...string]
				display_name:      string
				lifecycle_details: string
				policies: [...string]
				type:            string
				time_created:    string
				time_updated:    string
				compartment_id?: string
				description:     string
			}]
			lifecycle_details: string
			defined_tags?: [_]: string
			time_created:  string
			display_name!: string
			state:         string
			system_tags: [_]: string
			compartment_id!: string
			effective_responder_rules: [...{
				responder_rule_id: string
				time_updated:      string
				state:             string
				time_created:      string
				description:       string
				details: [...{
					is_enabled: bool
					mode:       string
					condition:  string
					configurations: [...{
						config_key: string
						name:       string
						value:      string
					}]
				}]
				type: string
				policies: [...string]
				compartment_id?:   string
				display_name:      string
				lifecycle_details: string
				supported_modes: [...string]
			}]
			description?: string
			time_updated: string
			freeform_tags?: [_]: string
			owner: string
		}
		security_recipe: {
			state:        string
			time_updated: string
			security_policies!: [...string]
			freeform_tags?: [_]: string
			lifecycle_details: string
			display_name!:     string
			defined_tags?: [_]: string
			time_created:    string
			compartment_id!: string
			owner:           string
			description?:    string
		}
		security_zone: {
			display_name!: string
			time_created:  string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			description?:      string
			inherited_by_compartments: [...string]
			time_updated:             string
			compartment_id!:          string
			security_zone_target_id:  string
			state:                    string
			security_zone_recipe_id!: string
		}
		target: {
			time_updated:  string
			display_name!: string
			description?:  string
			inherited_by_compartments: [...string]
			recipe_count: int
			target_detector_recipes?: [...{
				state:                string
				detector_recipe_id!:  string
				detector:             string
				detector_recipe_type: string
				owner:                string
				time_created:         string
				display_name:         string
				effective_detector_rules: [...{
					state:             string
					data_source_id:    string
					lifecycle_details: string
					description:       string
					managed_list_types: [...string]
					recommendation:   string
					service_type:     string
					time_updated:     string
					detector_rule_id: string
					resource_type:    string
					display_name:     string
					detector:         string
					entities_mappings: [...{
						display_name: string
						entity_type:  string
						query_field:  string
					}]
					time_created: string
					details: [...{
						condition_groups: [...{
							compartment_id: string
							condition:      string
						}]
						configurations: [...{
							config_key: string
							data_type:  string
							name:       string
							value:      string
							values: [...{
								value:             string
								list_type:         string
								managed_list_type: string
							}]
						}]
						is_configuration_allowed: bool
						is_enabled:               bool
						labels: [...string]
						risk_level: string
					}]
				}]
				detector_rules?: [...{
					display_name: string
					details!: [...{
						condition_groups?: [...{
							compartment_id!: string
							condition!:      string
						}]
						configurations: [...{
							name:  string
							value: string
							values: [...{
								list_type:         string
								managed_list_type: string
								value:             string
							}]
							config_key: string
							data_type:  string
						}]
						is_configuration_allowed: bool
						is_enabled:               bool
						labels: [...string]
						risk_level: string
					}]
					service_type:      string
					detector:          string
					detector_rule_id!: string
					time_updated:      string
					data_source_id:    string
					entities_mappings: [...{
						display_name: string
						entity_type:  string
						query_field:  string
					}]
					resource_type:     string
					lifecycle_details: string
					managed_list_types: [...string]
					recommendation: string
					state:          string
					time_created:   string
					description:    string
				}]
				compartment_id: string
				description:    string
				time_updated:   string
				id:             string
			}]
			system_tags: [_]: string
			lifecyle_details: string
			target_details: [...{
				target_security_zone_recipes: [...{
					compartment_id: string
					state:          string
					description:    string
					time_created:   string
					system_tags: [_]: string
					id:                string
					lifecycle_details: string
					owner:             string
					security_policies: [...string]
					defined_tags: [_]: string
					display_name: string
					freeform_tags: [_]: string
					time_updated: string
				}]
				security_zone_display_name: string
				security_zone_id:           string
				target_resource_type:       string
			}]
			freeform_tags?: [_]: string
			state?: string
			defined_tags?: [_]: string
			target_responder_recipes?: [...{
				responder_rules?: [...{
					display_name:   string
					compartment_id: string
					description:    string
					time_created:   string
					policies: [...string]
					state: string
					details!: [...{
						is_enabled: bool
						condition?: string
						configurations?: [...{
							config_key!: string
							name!:       string
							value!:      string
						}]
						mode?: string
					}]
					supported_modes: [...string]
					time_updated:       string
					type:               string
					responder_rule_id!: string
					lifecycle_details:  string
				}]
				effective_responder_rules: [...{
					state:        string
					time_created: string
					description:  string
					display_name: string
					supported_modes: [...string]
					compartment_id: string
					details: [...{
						configurations: [...{
							config_key: string
							name:       string
							value:      string
						}]
						is_enabled: bool
						mode:       string
						condition:  string
					}]
					lifecycle_details: string
					time_updated:      string
					policies: [...string]
					responder_rule_id: string
					type:              string
				}]
				id:                   string
				owner:                string
				responder_recipe_id!: string
				time_updated:         string
				display_name:         string
				compartment_id:       string
				description:          string
				time_created:         string
			}]
			target_resource_id!:   string
			target_resource_type!: string
			time_created:          string
			compartment_id!:       string
		}
		adhoc_query: {
			error_message: string
			freeform_tags?: [_]: string
			time_created: string
			defined_tags?: [_]: string
			system_tags: [_]: string
			time_updated:    string
			compartment_id!: string
			adhoc_query_details!: [...{
				adhoc_query_resources!: [...{
					resource_ids?: [...string]
					resource_type?: string
					region?:        string
				}]
				query!: string
			}]
			adhoc_query_regional_details: [...{
				expired_count:   string
				failed_count:    string
				region:          string
				regional_error:  string
				regional_status: string
				succeeded_count: string
				expected_count:  string
			}]
			state:  string
			status: string
		}
		cloud_guard_configuration: {
			status!:                string
			self_manage_resources?: bool
			compartment_id!:        string
			reporting_region!:      string
		}
		data_mask_rule: {
			description?:     string
			lifecyle_details: string
			time_created:     string
			display_name!:    string
			compartment_id!:  string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			system_tags: [_]: string
			state?:                 string
			data_mask_rule_status?: string
			time_updated:           string
			iam_group_id!:          string
			target_selected!: [...{
				values?: [...string]
				kind!: string
			}]
			data_mask_categories!: [...string]
		}
		data_source: {
			freeform_tags?: [_]: string
			data_source_detector_mapping_info: [...{
				detector_rule_id:   string
				detector_recipe_id: string
			}]
			time_created: string
			time_updated: string
			defined_tags?: [_]: string
			system_tags: [_]: string
			display_name!: string
			region_status_detail: [...{
				region: string
				status: string
			}]
			data_source_feed_provider!: string
			data_source_details?: [...{
				interval_in_minutes?:       int
				interval_in_seconds?:       int
				additional_entities_count?: int
				scheduled_query_scope_details?: [...{
					resource_type?: string
					region?:        string
					resource_ids?: [...string]
				}]
				threshold?:          int
				description?:        string
				logging_query_type?: string
				operator?:           string
				query_start_time?: [...{
					query_start_time?:  string
					start_policy_type!: string
				}]
				regions?: [...string]
				logging_query_details?: [...{
					logging_query_type!: string
					key_entities_count?: int
				}]
				query?:                     string
				data_source_feed_provider!: string
			}]
			status?:         string
			state:           string
			compartment_id!: string
		}
		managed_list: {
			time_updated:            string
			source_managed_list_id?: string
			system_tags: [_]: string
			compartment_id!:  string
			feed_provider:    string
			lifecyle_details: string
			list_items?: [...string]
			state:         string
			display_name!: string
			freeform_tags?: [_]: string
			description?: string
			is_editable:  bool
			list_type?:   string
			defined_tags?: [_]: string
			time_created: string
		}
		saved_query: {
			display_name!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			time_created: string
			state:        string
			system_tags: [_]: string
			time_updated:    string
			compartment_id!: string
			query!:          string
			description?:    string
		}
		wlp_agent: {
			os_info!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_created:                string
			certificate_signed_request!: string
			time_updated:                string
			agent_version!:              string
			tenant_id:                   string
			compartment_id!:             string
			certificate_id:              string
			host_id:                     string
		}
	}
	arguments: {
		detector_recipe: {
			description?:               string
			detector?:                  string
			source_detector_recipe_id?: string
			compartment_id!:            string
			defined_tags?: [_]: string
			detector_rules?: [...{
				details!: [...{
					data_source_id?: string
					description?:    string
					is_enabled!:     bool
					risk_level!:     string
					condition?:      string
					configurations?: [...{
						config_key!: string
						name!:       string
						data_type?:  string
						value?:      string
						values?: [...{
							list_type!:         string
							managed_list_type!: string
							value!:             string
						}]
					}]
					entities_mappings?: [...{
						display_name?: string
						entity_type?:  string
						query_field!:  string
					}]
					labels?: [...string]
					recommendation?: string
				}]
				detector_rule_id!: string
			}]
			display_name!: string
			freeform_tags?: [_]: string
		}
		responder_recipe: {
			compartment_id!:             string
			source_responder_recipe_id!: string
			description?:                string
			responder_rules?: [...{
				compartment_id?:    string
				responder_rule_id!: string
				details!: [...{
					is_enabled!: bool
				}]
			}]
			display_name!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		security_recipe: {
			defined_tags?: [_]: string
			description?:  string
			display_name!: string
			security_policies!: [...string]
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		security_zone: {
			freeform_tags?: [_]: string
			security_zone_recipe_id!: string
			defined_tags?: [_]: string
			description?:    string
			compartment_id!: string
			display_name!:   string
		}
		target: {
			compartment_id!: string
			target_responder_recipes?: [...{
				responder_recipe_id!: string
				responder_rules?: [...{
					details!: [...{
						condition?: string
						configurations?: [...{
							config_key!: string
							name!:       string
							value!:      string
						}]
						mode?: string
					}]
					responder_rule_id!: string
				}]
			}]
			description?:          string
			target_resource_type!: string
			defined_tags?: [_]: string
			display_name!: string
			freeform_tags?: [_]: string
			state?: string
			target_detector_recipes?: [...{
				detector_recipe_id!: string
				detector_rules?: [...{
					details!: [...{
						condition_groups?: [...{
							compartment_id!: string, condition!: string
						}]
					}]
					detector_rule_id!: string
				}]
			}]
			target_resource_id!: string
		}
		adhoc_query: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			adhoc_query_details!: [...{
				adhoc_query_resources!: [...{
					region?: string
					resource_ids?: [...string]
					resource_type?: string
				}]
				query!: string
			}]
			compartment_id!: string
		}
		cloud_guard_configuration: {
			self_manage_resources?: bool
			compartment_id!:        string
			reporting_region!:      string
			status!:                string
		}
		data_mask_rule: {
			defined_tags?: [_]: string
			target_selected!: [...{
				kind!: string
				values?: [...string]
			}]
			freeform_tags?: [_]: string
			iam_group_id!:          string
			data_mask_rule_status?: string
			state?:                 string
			data_mask_categories!: [...string]
			description?:    string
			display_name!:   string
			compartment_id!: string
		}
		data_source: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name!:              string
			status?:                    string
			compartment_id!:            string
			data_source_feed_provider!: string
			data_source_details?: [...{
				logging_query_details?: [...{
					logging_query_type!: string
					key_entities_count?: int
				}]
				query?:                     string
				threshold?:                 int
				data_source_feed_provider!: string
				interval_in_minutes?:       int
				interval_in_seconds?:       int
				logging_query_type?:        string
				query_start_time?: [...{
					start_policy_type!: string
					query_start_time?:  string
				}]
				scheduled_query_scope_details?: [...{
					region?: string
					resource_ids?: [...string]
					resource_type?: string
				}]
				description?: string
				operator?:    string
				regions?: [...string]
				additional_entities_count?: int
			}]
		}
		managed_list: {
			list_items?: [...string]
			source_managed_list_id?: string
			display_name!:           string
			freeform_tags?: [_]: string
			description?:    string
			compartment_id!: string
			list_type?:      string
			defined_tags?: [_]: string
		}
		saved_query: {
			freeform_tags?: [_]: string
			query!:          string
			description?:    string
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
		}
		wlp_agent: {
			certificate_signed_request!: string
			compartment_id!:             string
			agent_version!:              string
			os_info!:                    string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	wlp_agents: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	adhoc_query: adhoc_query_id!: string
	data_source_event: {
		data_source_id!: string
		region?:         string
	}
	managed_list: managed_list_id!: string
	security_recipe: security_recipe_id!: string
	security_recipes: {
		id?:    string
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
	}
	data_source: data_source_id!: string
	security_policies: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	security_zone: security_zone_id!: string
	wlp_agent: wlp_agent_id!: string
	saved_query: saved_query_id!: string
	security_policy: security_policy_id!: string
	adhoc_queries: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		access_level?:                    string
		adhoc_query_status?:              string
		compartment_id!:                  string
		compartment_id_in_subtree?:       bool
		time_ended_filter_query_param?:   string
		time_started_filter_query_param?: string
	}
	responder_recipes: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
		resource_metadata_only?:    bool
	}
	security_zones: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:                        string
		display_name?:                          string
		id?:                                    string
		is_required_security_zones_in_subtree?: bool
		security_recipe_id?:                    string
		state?:                                 string
	}
	data_source_events: {
		data_source_id!: string
		region?:         string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	problem_entity: problem_id!: string
	target: target_id!: string
	targets: {
		compartment_id_in_subtree?:               bool
		display_name?:                            string
		is_non_security_zone_targets_only_query?: bool
		state?:                                   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:   string
		compartment_id!: string
	}
	saved_queries: {
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	cloud_guard_configuration: compartment_id!: string
	data_mask_rule: data_mask_rule_id!: string
	detector_recipe: detector_recipe_id!: string
	managed_lists: {
		list_type?:              string
		resource_metadata_only?: bool
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:              string
		state?:                     string
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
	}
	data_mask_rules: {
		display_name?:          string
		access_level?:          string
		compartment_id!:        string
		data_mask_rule_status?: string
		state?:                 string
		target_id?:             string
		target_type?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		iam_group_id?: string
	}
	data_sources: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:            string
		data_source_feed_provider?: string
		display_name?:              string
		state?:                     string
		access_level?:              string
		compartment_id_in_subtree?: bool
		logging_query_type?:        string
	}
	detector_recipes: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
		resource_metadata_only?:    bool
		state?:                     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?: string
	}
	problem_entities: {
		problem_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	responder_recipe: responder_recipe_id!: string
}

