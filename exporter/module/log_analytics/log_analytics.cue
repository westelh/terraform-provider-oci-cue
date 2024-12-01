package log_analytics

#resource: {
	attributes: {
		log_analytics_import_custom_content: {
			change_list: [...{
				conflict_source_names: [...string]
				created_field_display_names: [...string]
				updated_source_names: [...string]
				conflict_parser_names: [...string]
				updated_field_display_names: [...string]
				updated_parser_names: [...string]
				conflict_field_display_names: [...string]
				created_parser_names: [...string]
				created_source_names: [...string]
			}]
			expect?: string
			parser_names: [...string]
			source_names: [...string]
			namespace!:                  string
			is_overwrite?:               bool
			content_name:                string
			import_custom_content_file!: string
			field_names: [...string]
		}
		log_analytics_log_group: {
			time_updated:    string
			compartment_id!: string
			display_name!:   string
			namespace!:      string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			time_created: string
		}
		log_analytics_object_collection_rule: {
			freeform_tags?: [_]: string
			state: string
			defined_tags?: [_]: string
			name!: string
			object_name_filters?: [...string]
			os_bucket_name!:               string
			is_force_historic_collection?: bool
			log_source_name!:              string
			poll_till?:                    string
			entity_id?:                    string
			log_set_key?:                  string
			timezone?:                     string
			log_type?:                     string
			compartment_id!:               string
			log_group_id!:                 string
			is_enabled?:                   bool
			log_set_ext_regex?:            string
			lifecycle_details:             string
			collection_type?:              string
			os_namespace!:                 string
			char_encoding?:                string
			log_set?:                      string
			time_created:                  string
			overrides?: [...{
				property_name?:  string
				property_value?: string
				match_type?:     string
				match_value?:    string
			}]
			namespace!:   string
			description?: string
			time_updated: string
			poll_since?:  string
		}
		namespace: {
			is_onboarded!:   bool
			compartment_id!: string
			namespace!:      string
		}
		log_analytics_entity: {
			defined_tags?: [_]: string
			management_agent_display_name:   string
			state:                           string
			are_logs_collected:              bool
			entity_type_internal_name:       string
			namespace!:                      string
			source_id?:                      string
			timezone_region?:                string
			management_agent_compartment_id: string
			cloud_resource_id?:              string
			time_created:                    string
			lifecycle_details:               string
			entity_type_name!:               string
			freeform_tags?: [_]: string
			name!:                 string
			hostname?:             string
			time_last_discovered?: string
			management_agent_id?:  string
			time_updated:          string
			compartment_id!:       string
			properties?: [_]: string
			metadata?: [...{
				items?: [...{
					name?: string, type?: string, value?: string
				}]
			}]
		}
		log_analytics_preferences_management: {
			namespace!: string
			items?: [...{
				name?:  string
				value?: string
			}]
		}
		log_analytics_resource_categories_management: {
			resource_id!:   string
			resource_type!: string
			resource_categories!: [...string]
			namespace!: string
		}
		log_analytics_unprocessed_data_bucket_management: {
			time_created: string
			time_updated: string
			bucket!:      string
			namespace!:   string
			is_enabled?:  bool
		}
		namespace_ingest_time_rule: {
			display_name!: string
			freeform_tags?: [_]: string
			time_updated: string
			defined_tags?: [_]: string
			namespace!:   string
			description?: string
			state:        string
			time_created: string
			actions!: [...{
				compartment_id!: string
				metric_name!:    string
				namespace!:      string
				type!:           string
				dimensions?: [...string]
				resource_group?: string
			}]
			conditions!: [...{
				field_operator!: string
				field_value!:    string
				kind!:           string
				additional_conditions?: [...{
					condition_value!:    string
					condition_field!:    string
					condition_operator!: string
				}]
				field_name!: string
			}]
			is_enabled:          bool
			ingest_time_rule_id: string
			compartment_id!:     string
		}
		namespace_ingest_time_rules_management: {
			ingest_time_rule_id!:     string
			namespace!:               string
			enable_ingest_time_rule!: bool
		}
		namespace_scheduled_task: {
			time_created:     string
			saved_search_id?: string
			schedules!: [...{
				schedule!: [...{
					type!: string, expression?: string, misfire_policy?: string, recurring_interval?: string, repeat_count?: int, time_zone?: string
				}]
			}]
			task_status: string
			task_type!:  string
			defined_tags?: [_]: string
			scheduled_task_id: string
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
			namespace!:   string
			time_updated: string
			freeform_tags?: [_]: string
			kind!:           string
			num_occurrences: string
			compartment_id!: string
			display_name?:   string
			state:           string
			work_request_id: string
		}
	}
	arguments: {
		log_analytics_import_custom_content: {
			expect?:                     string
			import_custom_content_file!: string
			namespace!:                  string
			is_overwrite?:               bool
		}
		log_analytics_log_group: {
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
			namespace!:      string
			defined_tags?: [_]: string
			description?: string
		}
		log_analytics_object_collection_rule: {
			freeform_tags?: [_]: string
			is_force_historic_collection?: bool
			poll_since?:                   string
			entity_id?:                    string
			description?:                  string
			log_type?:                     string
			char_encoding?:                string
			collection_type?:              string
			object_name_filters?: [...string]
			name!:         string
			namespace!:    string
			log_group_id!: string
			defined_tags?: [_]: string
			poll_till?:    string
			timezone?:     string
			os_namespace!: string
			log_set_key?:  string
			overrides?: [...{
				match_value?:    string
				property_name?:  string
				property_value?: string
				match_type?:     string
			}]
			compartment_id!:    string
			log_set_ext_regex?: string
			log_source_name!:   string
			log_set?:           string
			os_bucket_name!:    string
			is_enabled?:        bool
		}
		namespace: {
			compartment_id!: string
			namespace!:      string
			is_onboarded!:   bool
		}
		log_analytics_entity: {
			timezone_region?:      string
			entity_type_name!:     string
			cloud_resource_id?:    string
			namespace!:            string
			time_last_discovered?: string
			metadata?: [...{
				items?: [...{
					name?: string, type?: string, value?: string
				}]
			}]
			defined_tags?: [_]: string
			management_agent_id?: string
			compartment_id!:      string
			name!:                string
			hostname?:            string
			freeform_tags?: [_]: string
			source_id?: string
			properties?: [_]: string
		}
		log_analytics_preferences_management: {
			namespace!: string
			items?: [...{
				name?:  string
				value?: string
			}]
		}
		log_analytics_resource_categories_management: {
			resource_id!:   string
			resource_type!: string
			resource_categories!: [...string]
			namespace!: string
		}
		log_analytics_unprocessed_data_bucket_management: {
			is_enabled?: bool
			bucket!:     string
			namespace!:  string
		}
		namespace_ingest_time_rule: {
			conditions!: [...{
				field_operator!: string
				field_value!:    string
				kind!:           string
				additional_conditions?: [...{
					condition_field!:    string
					condition_operator!: string
					condition_value!:    string
				}]
				field_name!: string
			}]
			display_name!: string
			namespace!:    string
			description?:  string
			freeform_tags?: [_]: string
			actions!: [...{
				metric_name!: string
				namespace!:   string
				type!:        string
				dimensions?: [...string]
				resource_group?: string
				compartment_id!: string
			}]
			defined_tags?: [_]: string
			compartment_id!: string
		}
		namespace_ingest_time_rules_management: {
			enable_ingest_time_rule!: bool
			ingest_time_rule_id!:     string
			namespace!:               string
		}
		namespace_scheduled_task: {
			saved_search_id?: string
			schedules!: [...{
				schedule!: [...{
					misfire_policy?: string, recurring_interval?: string, repeat_count?: int, time_zone?: string, type!: string, expression?: string
				}]
			}]
			task_type!: string
			defined_tags?: [_]: string
			compartment_id!: string
			display_name?:   string
			namespace!:      string
			freeform_tags?: [_]: string
			kind!: string
			action!: [...{
				saved_search_id?:           string
				type!:                      string
				compartment_id_in_subtree?: bool
				data_type?:                 string
				metric_extraction?: [...{
					namespace?:      string
					resource_group?: string
					compartment_id?: string
					metric_name?:    string
				}]
				purge_compartment_id?: string
				purge_duration?:       string
				query_string?:         string
			}]
		}
	}
}
#data: {
	namespace: namespace!: string
	log_analytics_categories_list: {
		category_display_text?: string
		category_type?:         string
		name?:                  string
		namespace!:             string
	}
	log_analytics_entities: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		name_contains?:  string
		hostname?:       string
		compartment_id!: string
		name?:           string
		source_id?:      string
		entity_type_name?: [...string]
		is_management_agent_id_null?: string
		namespace!:                   string
		lifecycle_details_contains?:  string
		metadata_equals?: [...string]
		cloud_resource_id?: string
		hostname_contains?: string
	}
	namespace_rules_summary: {
		compartment_id!: string
		namespace!:      string
	}
	namespace_ingest_time_rule: {
		ingest_time_rule_id!: string
		namespace!:           string
	}
	namespace_scheduled_task: {
		scheduled_task_id!: string
		namespace!:         string
	}
	namespace_storage_recalled_data_size: {
		namespace!:         string
		time_data_ended?:   string
		time_data_started?: string
	}
	log_analytics_entities_summary: {
		compartment_id!: string
		namespace!:      string
	}
	log_analytics_entity: {
		log_analytics_entity_id!: string
		namespace!:               string
	}
	log_analytics_unprocessed_data_bucket: namespace!: string
	log_sets_count: namespace!: string
	namespaces: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	log_analytics_preference: namespace!: string
	namespace_ingest_time_rules: {
		namespace!:      string
		compartment_id!: string
		display_name?:   string
		field_value?:    string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		condition_kind?: string
		field_name?:     string
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
	namespace_storage_overlapping_recalls: {
		time_data_started?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		namespace!:       string
		time_data_ended?: string
	}
	log_analytics_log_group: {
		namespace!:                  string
		log_analytics_log_group_id!: string
	}
	log_analytics_object_collection_rule: {
		namespace!:                               string
		log_analytics_object_collection_rule_id!: string
	}
	log_analytics_object_collection_rules: {
		namespace!: string
		state?:     string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		name?:           string
	}
	namespace_storage_encryption_key_info: namespace!: string
	log_analytics_log_groups: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
		namespace!:      string
	}
	log_analytics_log_groups_summary: {
		compartment_id!: string
		namespace!:      string
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
	namespace_effective_properties: {
		entity_id?:           string
		is_include_patterns?: bool
		name?:                string
		agent_id?:            string
		namespace!:           string
		pattern_id?:          int
		source_name?:         string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	namespace_properties_metadata: {
		level?:     string
		name?:      string
		namespace!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		constraints?:  string
		display_text?: string
	}
	namespace_storage_recall_count: namespace!: string
	log_analytics_category: {
		name!:      string
		namespace!: string
	}
	log_analytics_entity_topology: {
		namespace!:               string
		state?:                   string
		log_analytics_entity_id!: string
		metadata_equals?: [...string]
	}
	log_analytics_resource_categories_list: {
		namespace!:           string
		resource_ids?:        string
		resource_types?:      string
		resource_categories?: string
	}
}

