package log_analytics

#resource: {
	attributes: {
		namespace_scheduled_task: {
			namespace!:        string
			num_occurrences:   string
			state:             string
			kind!:             string
			work_request_id:   string
			display_name?:     string
			compartment_id!:   string
			time_updated:      string
			task_type!:        string
			scheduled_task_id: string
			time_created:      string
			action!: [...{
				type!:                      string
				compartment_id_in_subtree?: bool
				data_type?:                 string
				metric_extraction?: [...{
					compartment_id?: string
					metric_name?:    string
					namespace?:      string
					resource_group?: string
				}]
				purge_compartment_id?: string
				purge_duration?:       string
				query_string?:         string
				saved_search_id?:      string
			}]
			saved_search_id?: string
			freeform_tags?: [_]: string
			task_status: string
			defined_tags?: [_]: string
			schedules!: [...{
				schedule!: [...{
					type!: string, expression?: string, misfire_policy?: string, recurring_interval?: string, repeat_count?: int, time_zone?: string
				}]
			}]
		}
		namespace: {
			compartment_id!: string
			namespace!:      string
			is_onboarded!:   bool
		}
		log_analytics_entity: {
			source_id?:   string
			time_updated: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			entity_type_name!:         string
			are_logs_collected:        bool
			name!:                     string
			entity_type_internal_name: string
			management_agent_id?:      string
			timezone_region?:          string
			cloud_resource_id?:        string
			metadata?: [...{
				items?: [...{
					value?: string, name?: string, type?: string
				}]
			}]
			lifecycle_details: string
			compartment_id!:   string
			namespace!:        string
			hostname?:         string
			properties?: [_]: string
			time_created:                    string
			time_last_discovered?:           string
			management_agent_compartment_id: string
			state:                           string
			management_agent_display_name:   string
		}
		log_analytics_preferences_management: {
			namespace!: string
			items?: [...{
				name?:  string
				value?: string
			}]
		}
		log_analytics_resource_categories_management: {
			namespace!:     string
			resource_id!:   string
			resource_type!: string
			resource_categories!: [...string]
		}
		namespace_ingest_time_rule: {
			actions!: [...{
				metric_name!: string
				namespace!:   string
				type!:        string
				dimensions?: [...string]
				resource_group?: string
				compartment_id!: string
			}]
			namespace!:    string
			display_name!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			time_created:        string
			time_updated:        string
			ingest_time_rule_id: string
			description?:        string
			state:               string
			is_enabled:          bool
			compartment_id!:     string
			conditions!: [...{
				field_value!: string
				kind!:        string
				additional_conditions?: [...{
					condition_field!:    string
					condition_operator!: string
					condition_value!:    string
				}]
				field_name!:     string
				field_operator!: string
			}]
		}
		namespace_ingest_time_rules_management: {
			ingest_time_rule_id!:     string
			namespace!:               string
			enable_ingest_time_rule!: bool
		}
		log_analytics_import_custom_content: {
			parser_names: [...string]
			namespace!:   string
			expect?:      string
			content_name: string
			field_names: [...string]
			source_names: [...string]
			import_custom_content_file!: string
			is_overwrite?:               bool
			change_list: [...{
				updated_field_display_names: [...string]
				conflict_parser_names: [...string]
				conflict_source_names: [...string]
				created_field_display_names: [...string]
				created_parser_names: [...string]
				created_source_names: [...string]
				conflict_field_display_names: [...string]
				updated_parser_names: [...string]
				updated_source_names: [...string]
			}]
		}
		log_analytics_log_group: {
			display_name!: string
			namespace!:    string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			time_created:    string
			time_updated:    string
			compartment_id!: string
		}
		log_analytics_object_collection_rule: {
			log_set_key?:      string
			compartment_id!:   string
			is_enabled?:       bool
			poll_till?:        string
			lifecycle_details: string
			collection_type?:  string
			time_created:      string
			object_name_filters?: [...string]
			description?:                  string
			is_force_historic_collection?: bool
			freeform_tags?: [_]: string
			log_set?:         string
			log_type?:        string
			os_namespace!:    string
			namespace!:       string
			poll_since?:      string
			entity_id?:       string
			os_bucket_name!:  string
			log_source_name!: string
			overrides?: [...{
				match_type?:     string
				match_value?:    string
				property_name?:  string
				property_value?: string
			}]
			time_updated:       string
			log_set_ext_regex?: string
			char_encoding?:     string
			defined_tags?: [_]: string
			timezone?:     string
			log_group_id!: string
			name!:         string
			state:         string
		}
		log_analytics_unprocessed_data_bucket_management: {
			is_enabled?:  bool
			time_created: string
			time_updated: string
			bucket!:      string
			namespace!:   string
		}
	}
	arguments: {
		namespace_scheduled_task: {
			compartment_id!: string
			freeform_tags?: [_]: string
			task_type!: string
			action!: [...{
				query_string?:              string
				saved_search_id?:           string
				type!:                      string
				compartment_id_in_subtree?: bool
				data_type?:                 string
				metric_extraction?: [...{
					compartment_id?: string
					metric_name?:    string
					namespace?:      string
					resource_group?: string
				}]
				purge_compartment_id?: string
				purge_duration?:       string
			}]
			defined_tags?: [_]: string
			schedules!: [...{
				schedule!: [...{
					expression?: string, misfire_policy?: string, recurring_interval?: string, repeat_count?: int, time_zone?: string, type!: string
				}]
			}]
			kind!:            string
			display_name?:    string
			namespace!:       string
			saved_search_id?: string
		}
		namespace: {
			namespace!:      string
			is_onboarded!:   bool
			compartment_id!: string
		}
		log_analytics_entity: {
			management_agent_id?: string
			namespace!:           string
			defined_tags?: [_]: string
			hostname?: string
			freeform_tags?: [_]: string
			time_last_discovered?: string
			entity_type_name!:     string
			cloud_resource_id?:    string
			timezone_region?:      string
			properties?: [_]: string
			name!:      string
			source_id?: string
			metadata?: [...{
				items?: [...{
					name?: string, type?: string, value?: string
				}]
			}]
			compartment_id!: string
		}
		log_analytics_preferences_management: {
			items?: [...{
				name?:  string
				value?: string
			}]
			namespace!: string
		}
		log_analytics_resource_categories_management: {
			resource_id!:   string
			resource_type!: string
			resource_categories!: [...string]
			namespace!: string
		}
		namespace_ingest_time_rule: {
			actions!: [...{
				dimensions?: [...string]
				resource_group?: string
				compartment_id!: string
				metric_name!:    string
				namespace!:      string
				type!:           string
			}]
			defined_tags?: [_]: string
			description?:    string
			display_name!:   string
			compartment_id!: string
			conditions!: [...{
				field_name!:     string
				field_operator!: string
				field_value!:    string
				kind!:           string
				additional_conditions?: [...{
					condition_field!:    string
					condition_operator!: string
					condition_value!:    string
				}]
			}]
			namespace!: string
			freeform_tags?: [_]: string
		}
		namespace_ingest_time_rules_management: {
			ingest_time_rule_id!:     string
			namespace!:               string
			enable_ingest_time_rule!: bool
		}
		log_analytics_import_custom_content: {
			expect?:                     string
			is_overwrite?:               bool
			import_custom_content_file!: string
			namespace!:                  string
		}
		log_analytics_log_group: {
			namespace!: string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
		}
		log_analytics_object_collection_rule: {
			namespace!:         string
			is_enabled?:        bool
			char_encoding?:     string
			log_set_ext_regex?: string
			object_name_filters?: [...string]
			compartment_id!: string
			overrides?: [...{
				match_type?:     string
				match_value?:    string
				property_name?:  string
				property_value?: string
			}]
			name!:                         string
			entity_id?:                    string
			os_bucket_name!:               string
			is_force_historic_collection?: bool
			log_source_name!:              string
			poll_since?:                   string
			timezone?:                     string
			freeform_tags?: [_]: string
			log_set?:      string
			log_set_key?:  string
			os_namespace!: string
			defined_tags?: [_]: string
			log_group_id!:    string
			poll_till?:       string
			log_type?:        string
			description?:     string
			collection_type?: string
		}
		log_analytics_unprocessed_data_bucket_management: {
			bucket!:     string
			namespace!:  string
			is_enabled?: bool
		}
	}
}
#data: {
	log_sets_count: namespace!: string
	namespace_ingest_time_rules: {
		field_name?:  string
		field_value?: string
		namespace!:   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		condition_kind?: string
		state?:          string
		compartment_id!: string
		display_name?:   string
	}
	namespace_storage_recall_count: namespace!: string
	namespace_storage_encryption_key_info: namespace!: string
	log_analytics_entity_topology: {
		log_analytics_entity_id!: string
		metadata_equals?: [...string]
		namespace!: string
		state?:     string
	}
	log_analytics_log_group: {
		log_analytics_log_group_id!: string
		namespace!:                  string
	}
	log_analytics_log_groups_summary: {
		compartment_id!: string
		namespace!:      string
	}
	log_analytics_object_collection_rules: {
		name?:      string
		namespace!: string
		state?:     string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	namespace_rules: {
		kind?:           string
		namespace!:      string
		state?:          string
		target_service?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	log_analytics_category: {
		name!:      string
		namespace!: string
	}
	log_analytics_entity: {
		log_analytics_entity_id!: string
		namespace!:               string
	}
	namespace_scheduled_task: {
		namespace!:         string
		scheduled_task_id!: string
	}
	namespaces: {
		compartment_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	namespace_ingest_time_rule: {
		namespace!:           string
		ingest_time_rule_id!: string
	}
	namespace_scheduled_tasks: {
		display_name?:   string
		namespace!:      string
		target_service?: string
		task_type!:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	namespace_properties_metadata: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		constraints?:  string
		display_text?: string
		level?:        string
		name?:         string
		namespace!:    string
	}
	namespace_storage_recalled_data_size: {
		namespace!:         string
		time_data_ended?:   string
		time_data_started?: string
	}
	log_analytics_categories_list: {
		name?:                  string
		namespace!:             string
		category_display_text?: string
		category_type?:         string
	}
	namespace_effective_properties: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		entity_id?:           string
		is_include_patterns?: bool
		namespace!:           string
		agent_id?:            string
		name?:                string
		source_name?:         string
		pattern_id?:          int
	}
	log_analytics_preference: namespace!: string
	log_analytics_resource_categories_list: {
		namespace!:           string
		resource_ids?:        string
		resource_types?:      string
		resource_categories?: string
	}
	log_analytics_unprocessed_data_bucket: namespace!: string
	namespace: namespace!: string
	namespace_rules_summary: {
		namespace!:      string
		compartment_id!: string
	}
	log_analytics_log_groups: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		namespace!:      string
	}
	log_analytics_object_collection_rule: {
		log_analytics_object_collection_rule_id!: string
		namespace!:                               string
	}
	namespace_storage_overlapping_recalls: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		namespace!:         string
		time_data_ended?:   string
		time_data_started?: string
	}
	log_analytics_entities: {
		state?: string
		metadata_equals?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		hostname?:                   string
		hostname_contains?:          string
		lifecycle_details_contains?: string
		source_id?:                  string
		name?:                       string
		compartment_id!:             string
		name_contains?:              string
		namespace!:                  string
		cloud_resource_id?:          string
		entity_type_name?: [...string]
		is_management_agent_id_null?: string
	}
	log_analytics_entities_summary: {
		compartment_id!: string
		namespace!:      string
	}
}

