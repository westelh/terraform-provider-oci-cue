package cloud_guard

#resource: {
	attributes: {
		saved_query: {
			state:  string
			query!: string
			defined_tags?: [_]: string
			time_created:    string
			time_updated:    string
			compartment_id!: string
			display_name!:   string
			description?:    string
			system_tags: [_]: string
			freeform_tags?: [_]: string
		}
		security_zone: {
			display_name!:            string
			security_zone_recipe_id!: string
			inherited_by_compartments: [...string]
			lifecycle_details: string
			state:             string
			compartment_id!:   string
			time_created:      string
			time_updated:      string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			security_zone_target_id: string
		}
		target: {
			lifecyle_details: string
			compartment_id!:  string
			system_tags: [_]: string
			recipe_count:        int
			target_resource_id!: string
			freeform_tags?: [_]: string
			target_responder_recipes?: [...{
				time_updated: string
				display_name: string
				effective_responder_rules: [...{
					policies: [...string]
					description:  string
					display_name: string
					type:         string
					supported_modes: [...string]
					time_created:      string
					time_updated:      string
					responder_rule_id: string
					compartment_id:    string
					state:             string
					details: [...{
						condition: string
						configurations: [...{
							config_key: string
							name:       string
							value:      string
						}]
						is_enabled: bool
						mode:       string
					}]
					lifecycle_details: string
				}]
				id:                   string
				time_created:         string
				responder_recipe_id!: string
				description:          string
				compartment_id:       string
				responder_rules?: [...{
					compartment_id:    string
					lifecycle_details: string
					supported_modes: [...string]
					details!: [...{
						is_enabled: bool
						condition?: string
						configurations?: [...{
							name!:       string
							value!:      string
							config_key!: string
						}]
						mode?: string
					}]
					responder_rule_id!: string
					display_name:       string
					policies: [...string]
					time_created: string
					state:        string
					time_updated: string
					description:  string
					type:         string
				}]
				owner: string
			}]
			state?: string
			inherited_by_compartments: [...string]
			target_details: [...{
				security_zone_id:     string
				target_resource_type: string
				target_security_zone_recipes: [...{
					owner: string
					security_policies: [...string]
					time_created:   string
					compartment_id: string
					state:          string
					time_updated:   string
					defined_tags: [_]: string
					id: string
					system_tags: [_]: string
					description:       string
					display_name:      string
					lifecycle_details: string
					freeform_tags: [_]: string
				}]
				security_zone_display_name: string
			}]
			time_created: string
			defined_tags?: [_]: string
			description?:          string
			display_name!:         string
			time_updated:          string
			target_resource_type!: string
			target_detector_recipes?: [...{
				detector_recipe_type: string
				effective_detector_rules: [...{
					data_source_id: string
					recommendation: string
					state:          string
					time_created:   string
					time_updated:   string
					description:    string
					resource_type:  string
					display_name:   string
					service_type:   string
					entities_mappings: [...{
						query_field:  string
						display_name: string
						entity_type:  string
					}]
					managed_list_types: [...string]
					detector_rule_id:  string
					detector:          string
					lifecycle_details: string
					details: [...{
						risk_level: string
						condition_groups: [...{
							compartment_id: string
							condition:      string
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
					}]
				}]
				id:           string
				state:        string
				time_updated: string
				detector_rules?: [...{
					state:        string
					time_updated: string
					description:  string
					managed_list_types: [...string]
					time_created: string
					entities_mappings: [...{
						query_field:  string
						display_name: string
						entity_type:  string
					}]
					lifecycle_details: string
					recommendation:    string
					service_type:      string
					details!: [...{
						labels: [...string]
						risk_level: string
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
					}]
					detector_rule_id!: string
					detector:          string
					display_name:      string
					resource_type:     string
					data_source_id:    string
				}]
				display_name:        string
				detector_recipe_id!: string
				compartment_id:      string
				description:         string
				detector:            string
				time_created:        string
				owner:               string
			}]
		}
		wlp_agent: {
			compartment_id!: string
			os_info!:        string
			freeform_tags?: [_]: string
			agent_version!:              string
			certificate_id:              string
			time_created:                string
			tenant_id:                   string
			certificate_signed_request!: string
			host_id:                     string
			defined_tags?: [_]: string
			time_updated: string
			system_tags: [_]: string
		}
		cloud_guard_configuration: {
			status!:                string
			self_manage_resources?: bool
			compartment_id!:        string
			reporting_region!:      string
		}
		data_mask_rule: {
			compartment_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			data_mask_rule_status?: string
			system_tags: [_]: string
			time_updated:     string
			lifecyle_details: string
			time_created:     string
			description?:     string
			display_name!:    string
			iam_group_id!:    string
			target_selected!: [...{
				kind!: string
				values?: [...string]
			}]
			data_mask_categories!: [...string]
			state?: string
		}
		managed_list: {
			feed_provider:           string
			time_created:            string
			source_managed_list_id?: string
			state:                   string
			list_items?: [...string]
			list_type?:   string
			description?: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_updated:     string
			display_name!:    string
			compartment_id!:  string
			is_editable:      bool
			lifecyle_details: string
			defined_tags?: [_]: string
		}
		responder_recipe: {
			state:         string
			display_name!: string
			description?:  string
			freeform_tags?: [_]: string
			lifecycle_details: string
			owner:             string
			system_tags: [_]: string
			time_updated:                string
			source_responder_recipe_id!: string
			responder_rules?: [...{
				state: string
				supported_modes: [...string]
				time_updated: string
				display_name: string
				policies: [...string]
				description: string
				details!: [...{
					is_enabled!: bool
					condition:   string
					configurations: [...{
						config_key: string
						name:       string
						value:      string
					}]
					mode: string
				}]
				responder_rule_id!: string
				time_created:       string
				type:               string
				lifecycle_details:  string
				compartment_id?:    string
			}]
			defined_tags?: [_]: string
			compartment_id!: string
			time_created:    string
			effective_responder_rules: [...{
				state:        string
				type:         string
				time_updated: string
				display_name: string
				policies: [...string]
				description:       string
				responder_rule_id: string
				time_created:      string
				compartment_id?:   string
				details: [...{
					mode:      string
					condition: string
					configurations: [...{
						name:       string
						value:      string
						config_key: string
					}]
					is_enabled: bool
				}]
				supported_modes: [...string]
				lifecycle_details: string
			}]
		}
		security_recipe: {
			lifecycle_details: string
			description?:      string
			time_updated:      string
			compartment_id!:   string
			display_name!:     string
			owner:             string
			time_created:      string
			security_policies!: [...string]
			state: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		adhoc_query: {
			compartment_id!: string
			error_message:   string
			state:           string
			adhoc_query_regional_details: [...{
				region:          string
				regional_error:  string
				regional_status: string
				succeeded_count: string
				expected_count:  string
				expired_count:   string
				failed_count:    string
			}]
			time_created: string
			time_updated: string
			defined_tags?: [_]: string
			system_tags: [_]: string
			status: string
			adhoc_query_details!: [...{
				query!: string
				adhoc_query_resources!: [...{
					resource_type?: string
					region?:        string
					resource_ids?: [...string]
				}]
			}]
			freeform_tags?: [_]: string
		}
		data_source: {
			time_created: string
			time_updated: string
			data_source_details?: [...{
				additional_entities_count?: int
				query?:                     string
				interval_in_seconds?:       int
				logging_query_type?:        string
				regions?: [...string]
				threshold?:           int
				interval_in_minutes?: int
				logging_query_details?: [...{
					logging_query_type!: string
					key_entities_count?: int
				}]
				scheduled_query_scope_details?: [...{
					resource_type?: string
					region?:        string
					resource_ids?: [...string]
				}]
				data_source_feed_provider!: string
				operator?:                  string
				query_start_time?: [...{
					start_policy_type!: string
					query_start_time?:  string
				}]
				description?: string
			}]
			data_source_detector_mapping_info: [...{
				detector_rule_id:   string
				detector_recipe_id: string
			}]
			display_name!: string
			status?:       string
			region_status_detail: [...{
				region: string
				status: string
			}]
			state: string
			system_tags: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			data_source_feed_provider!: string
		}
		detector_recipe: {
			compartment_id!:      string
			detector_recipe_type: string
			time_created:         string
			detector?:            string
			time_updated:         string
			description?:         string
			detector_rules?: [...{
				candidate_responder_rules: [...{
					id:           string
					is_preferred: bool
					display_name: string
				}]
				details!: [...{
					condition?:      string
					is_enabled!:     bool
					description?:    string
					risk_level!:     string
					data_source_id?: string
					labels?: [...string]
					is_configuration_allowed: bool
					entities_mappings?: [...{
						query_field!:  string
						display_name?: string
						entity_type?:  string
					}]
					recommendation?: string
					configurations?: [...{
						values?: [...{
							list_type!:         string
							managed_list_type!: string
							value!:             string
						}]
						config_key!: string
						name!:       string
						data_type?:  string
						value?:      string
					}]
				}]
				detector_rule_id!: string
				time_created:      string
				entities_mappings: [...{
					entity_type:  string
					query_field:  string
					display_name: string
				}]
				managed_list_types: [...string]
				resource_type:     string
				time_updated:      string
				service_type:      string
				state:             string
				detector:          string
				data_source_id:    string
				lifecycle_details: string
				recommendation:    string
				display_name:      string
				description:       string
			}]
			target_ids: [...string]
			display_name!: string
			defined_tags?: [_]: string
			state: string
			effective_detector_rules: [...{
				candidate_responder_rules: [...{
					display_name: string
					id:           string
					is_preferred: bool
				}]
				details: [...{
					condition:  string
					is_enabled: bool
					labels: [...string]
					is_configuration_allowed: bool
					recommendation:           string
					risk_level:               string
					entities_mappings: [...{
						display_name: string
						entity_type:  string
						query_field:  string
					}]
					data_source_id: string
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
					description: string
				}]
				time_created:     string
				description:      string
				service_type:     string
				data_source_id:   string
				recommendation:   string
				detector_rule_id: string
				display_name:     string
				entities_mappings: [...{
					display_name: string
					entity_type:  string
					query_field:  string
				}]
				managed_list_types: [...string]
				resource_type:     string
				lifecycle_details: string
				time_updated:      string
				state:             string
				detector:          string
			}]
			freeform_tags?: [_]: string
			source_detector_recipe_id?: string
			system_tags: [_]: string
			owner: string
		}
	}
	arguments: {
		saved_query: {
			defined_tags?: [_]: string
			description?:    string
			compartment_id!: string
			display_name!:   string
			freeform_tags?: [_]: string
			query!: string
		}
		security_zone: {
			security_zone_recipe_id!: string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
		}
		target: {
			target_resource_type!: string
			defined_tags?: [_]: string
			state?: string
			target_responder_recipes?: [...{
				responder_recipe_id!: string
				responder_rules?: [...{
					details!: [...{
						configurations?: [...{
							config_key!: string
							name!:       string
							value!:      string
						}]
						mode?:      string
						condition?: string
					}]
					responder_rule_id!: string
				}]
			}]
			compartment_id!: string
			freeform_tags?: [_]: string
			display_name!:       string
			target_resource_id!: string
			description?:        string
			target_detector_recipes?: [...{
				detector_recipe_id!: string
				detector_rules?: [...{
					detector_rule_id!: string
					details!: [...{
						condition_groups?: [...{
							condition!: string, compartment_id!: string
						}]
					}]
				}]
			}]
		}
		wlp_agent: {
			freeform_tags?: [_]: string
			agent_version!: string
			defined_tags?: [_]: string
			certificate_signed_request!: string
			compartment_id!:             string
			os_info!:                    string
		}
		cloud_guard_configuration: {
			compartment_id!:        string
			reporting_region!:      string
			status!:                string
			self_manage_resources?: bool
		}
		data_mask_rule: {
			data_mask_categories!: [...string]
			iam_group_id!: string
			target_selected!: [...{
				kind!: string
				values?: [...string]
			}]
			description?:  string
			state?:        string
			display_name!: string
			defined_tags?: [_]: string
			data_mask_rule_status?: string
			compartment_id!:        string
			freeform_tags?: [_]: string
		}
		managed_list: {
			list_items?: [...string]
			defined_tags?: [_]: string
			list_type?:              string
			source_managed_list_id?: string
			display_name!:           string
			compartment_id!:         string
			description?:            string
			freeform_tags?: [_]: string
		}
		responder_recipe: {
			compartment_id!:             string
			source_responder_recipe_id!: string
			display_name!:               string
			description?:                string
			freeform_tags?: [_]: string
			responder_rules?: [...{
				details!: [...{
					is_enabled!: bool
				}]
				responder_rule_id!: string
				compartment_id?:    string
			}]
			defined_tags?: [_]: string
		}
		security_recipe: {
			display_name!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			security_policies!: [...string]
			description?:    string
			compartment_id!: string
		}
		adhoc_query: {
			compartment_id!: string
			defined_tags?: [_]: string
			adhoc_query_details!: [...{
				adhoc_query_resources!: [...{
					region?: string
					resource_ids?: [...string]
					resource_type?: string
				}]
				query!: string
			}]
			freeform_tags?: [_]: string
		}
		data_source: {
			status?:       string
			display_name!: string
			data_source_details?: [...{
				operator?: string
				query_start_time?: [...{
					start_policy_type!: string
					query_start_time?:  string
				}]
				additional_entities_count?: int
				interval_in_minutes?:       int
				query?:                     string
				logging_query_type?:        string
				interval_in_seconds?:       int
				regions?: [...string]
				threshold?:                 int
				data_source_feed_provider!: string
				logging_query_details?: [...{
					key_entities_count?: int
					logging_query_type!: string
				}]
				scheduled_query_scope_details?: [...{
					region?: string
					resource_ids?: [...string]
					resource_type?: string
				}]
				description?: string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!:            string
			data_source_feed_provider!: string
		}
		detector_recipe: {
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			detector?: string
			detector_rules?: [...{
				details!: [...{
					description?:    string
					risk_level!:     string
					data_source_id?: string
					labels?: [...string]
					is_enabled!: bool
					condition?:  string
					configurations?: [...{
						config_key!: string
						name!:       string
						data_type?:  string
						value?:      string
						values?: [...{
							value!:             string
							list_type!:         string
							managed_list_type!: string
						}]
					}]
					entities_mappings?: [...{
						query_field!:  string
						display_name?: string
						entity_type?:  string
					}]
					recommendation?: string
				}]
				detector_rule_id!: string
			}]
			source_detector_recipe_id?: string
			compartment_id!:            string
			display_name!:              string
		}
	}
}
#data: {
	security_policy: security_policy_id!: string
	security_zones: {
		is_required_security_zones_in_subtree?: bool
		security_recipe_id?:                    string
		state?:                                 string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
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
	cloud_guard_configuration: compartment_id!: string
	data_source_event: {
		data_source_id!: string
		region?:         string
	}
	detector_recipes: {
		display_name?:           string
		resource_metadata_only?: bool
		state?:                  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
	}
	responder_recipes: {
		display_name?:           string
		resource_metadata_only?: bool
		state?:                  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
	}
	wlp_agents: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	adhoc_query: adhoc_query_id!: string
	data_sources: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?: bool
		data_source_feed_provider?: string
		access_level?:              string
		compartment_id!:            string
		display_name?:              string
		logging_query_type?:        string
		state?:                     string
	}
	responder_recipe: responder_recipe_id!: string
	security_recipe: security_recipe_id!: string
	security_recipes: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
	}
	target: target_id!: string
	data_mask_rules: {
		display_name?: string
		state?:        string
		target_id?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		target_type?:           string
		iam_group_id?:          string
		access_level?:          string
		data_mask_rule_status?: string
		compartment_id!:        string
	}
	problem_entity: problem_id!: string
	security_policies: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
	}
	security_zone: security_zone_id!: string
	targets: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:                            string
		compartment_id!:                          string
		compartment_id_in_subtree?:               bool
		display_name?:                            string
		is_non_security_zone_targets_only_query?: bool
	}
	data_mask_rule: data_mask_rule_id!: string
	managed_lists: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		access_level?:              string
		list_type?:                 string
		resource_metadata_only?:    bool
	}
	managed_list: managed_list_id!: string
	data_source: data_source_id!: string
	wlp_agent: wlp_agent_id!: string
	adhoc_queries: {
		time_ended_filter_query_param?:   string
		time_started_filter_query_param?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		access_level?:              string
		adhoc_query_status?:        string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
	}
	problem_entities: {
		problem_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	saved_queries: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
	}
	saved_query: saved_query_id!: string
	detector_recipe: detector_recipe_id!: string
}

