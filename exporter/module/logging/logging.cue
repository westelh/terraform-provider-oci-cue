package logging

#resource: {
	attributes: {
		log: {
			is_enabled?:         bool
			tenancy_id:          string
			time_last_modified:  string
			log_group_id!:       string
			retention_duration?: int
			freeform_tags?: [_]: string
			compartment_id: string
			display_name!:  string
			configuration?: [...{
				source!: [...{
					category!:    string
					resource!:    string
					service!:     string
					source_type!: string
					parameters?: [_]: string
				}]
				compartment_id?: string
			}]
			defined_tags?: [_]: string
			state:        string
			time_created: string
			log_type!:    string
		}
		log_group: {
			time_created:       string
			time_last_modified: string
			compartment_id!:    string
			display_name!:      string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			state: string
		}
		log_saved_search: {
			compartment_id!: string
			defined_tags?: [_]: string
			query!: string
			name!:  string
			freeform_tags?: [_]: string
			state:              string
			description?:       string
			time_created:       string
			time_last_modified: string
		}
		unified_agent_configuration: {
			group_association?: [...{
				group_list?: [...string]
			}]
			state:           string
			compartment_id!: string
			description!:    string
			display_name!:   string
			freeform_tags?: [_]: string
			time_last_modified: string
			is_enabled!:        bool
			service_configuration!: [...{
				configuration_type!: string
				application_configurations?: [...{
					unified_agent_configuration_filter?: [...{
						allow_list?: [...string]
						deny_list?: [...string]
						filter_type?: string
						name?:        string
					}]
					destination!: [...{
						compartment_id?:    string
						metrics_namespace?: string
					}]
					source_type!: string
					source?: [...{
						scrape_targets?: [...{
							name?:           string
							resource_group?: string
							resource_type?:  string
							service_name?:   string
							url?:            string
							k8s_namespace?:  string
						}]
						name?: string
					}]
					sources?: [...{
						parser?: [...{
							patterns?: [...{
								name?:              string
								pattern?:           string
								field_time_format?: string
								field_time_key?:    string
								field_time_zone?:   string
							}]
							is_merge_cri_fields?: bool
							record_input?: [...{
								namespace?:      string
								resource_group?: string
								dimensions?: [_]: string
							}]
							keys?: [...string]
							multi_line_start_regexp?: string
							format_firstline?:        string
							types?: [_]: string
							is_estimate_current_event?: *true | bool
							field_time_key?:            string
							time_type?:                 string
							message_format?:            string
							is_null_empty_string?:      *false | bool
							null_value_pattern?:        string
							grok_name_key?:             string
							nested_parser?: [...{
								parse_nested?:     bool
								separator?:        string
								field_time_key?:   string
								time_format?:      string
								time_type?:        string
								is_keep_time_key?: bool
							}]
							rfc5424time_format?:         string
							delimiter?:                  string
							is_with_priority?:           bool
							separator?:                  string
							syslog_parser_type?:         string
							timeout_in_milliseconds?:    int
							grok_failure_key?:           string
							time_format?:                string
							parse_nested?:               bool
							parser_type!:                string
							is_keep_time_key?:           *false | bool
							is_support_colonless_ident?: bool
							expression?:                 string
							message_key?:                string
							format?: [...string]
						}]
						paths?: [...string]
						source_type?: string
						advanced_options?: [...{
							is_read_from_head?: bool
						}]
						name?: string
					}]
				}]
				destination?: [...{
					operational_metrics_configuration?: [...{
						destination!: [...{
							compartment_id!: string
						}]
						source!: [...{
							type!: string
							metrics?: [...string]
							record_input!: [...{
								namespace!:      string
								resource_group?: string
							}]
						}]
					}]
					log_object_id!: string
				}]
				sources?: [...{
					paths?: [...string]
					source_type!: string
					advanced_options?: [...{
						is_read_from_head?: bool
					}]
					channels?: [...string]
					custom_plugin?: string
					name?:          string
					parser?: [...{
						nested_parser?: [...{
							is_keep_time_key?: bool
							parse_nested?:     bool
							separator?:        string
							field_time_key?:   string
							time_format?:      string
							time_type?:        string
						}]
						null_value_pattern?:        string
						separator?:                 string
						grok_name_key?:             string
						message_key?:               string
						rfc5424time_format?:        string
						parser_type!:               string
						is_estimate_current_event?: *true | bool
						is_null_empty_string?:      *false | bool
						types?: [_]: string
						format_firstline?: string
						is_with_priority?: bool
						delimiter?:        string
						patterns?: [...{
							field_time_zone?:   string
							name?:              string
							pattern?:           string
							field_time_format?: string
							field_time_key?:    string
						}]
						time_format?:             string
						timeout_in_milliseconds?: int
						syslog_parser_type?:      string
						multi_line_start_regexp?: string
						record_input?: [...{
							resource_group?: string
							dimensions?: [_]: string
							namespace?: string
						}]
						field_time_key?: string
						keys?: [...string]
						grok_failure_key?:           string
						message_format?:             string
						is_support_colonless_ident?: bool
						parse_nested?:               bool
						format?: [...string]
						is_merge_cri_fields?: bool
						is_keep_time_key?:    *false | bool
						time_type?:           string
						expression?:          string
					}]
				}]
				unified_agent_configuration_filter?: [...{
					renew_time_key?: string
					reserve_time?:   bool
					custom_sections?: [...{
						name?: string
						params?: [_]: string
					}]
					is_auto_typecast_enabled?: bool
					params?: [_]: string
					key_name?: string
					keep_keys?: [...string]
					emit_invalid_record_to_error?: bool
					hash_value_field?:             string
					remove_key_name_field?:        bool
					remove_keys?: [...string]
					name!: string
					record_list?: [...{
						key?:   string
						value?: string
					}]
					reserve_data?:            bool
					is_renew_record_enabled?: bool
					allow_list?: [...{
						pattern?: string
						key?:     string
					}]
					custom_filter_type?:       string
					replace_invalid_sequence?: bool
					filter_type!:              string
					deny_list?: [...{
						key?:     string
						pattern?: string
					}]
					is_ruby_enabled?: bool
					parser?: [...{
						grok_name_key?:             string
						is_estimate_current_event?: *true | bool
						field_time_key?:            string
						multi_line_start_regexp?:   string
						is_with_priority?:          bool
						expression?:                string
						time_type?:                 string
						types?: [_]: string
						is_null_empty_string?: *false | bool
						is_merge_cri_fields?:  bool
						record_input?: [...{
							dimensions?: [_]: string
							namespace?:      string
							resource_group?: string
						}]
						grok_failure_key?:   string
						time_format?:        string
						null_value_pattern?: string
						delimiter?:          string
						format_firstline?:   string
						message_format?:     string
						parser_type!:        string
						patterns?: [...{
							field_time_key?:    string
							field_time_zone?:   string
							name?:              string
							pattern?:           string
							field_time_format?: string
						}]
						keys?: [...string]
						timeout_in_milliseconds?: int
						format?: [...string]
						syslog_parser_type?:         string
						separator?:                  string
						message_key?:                string
						rfc5424time_format?:         string
						is_support_colonless_ident?: bool
						parse_nested?:               bool
						nested_parser?: [...{
							is_keep_time_key?: bool
							parse_nested?:     bool
							separator?:        string
							field_time_key?:   string
							time_format?:      string
							time_type?:        string
						}]
						is_keep_time_key?: *false | bool
					}]
					inject_key_prefix?: string
				}]
			}]
			defined_tags?: [_]: string
			configuration_state: string
			time_created:        string
		}
	}
	arguments: {
		log: {
			defined_tags?: [_]: string
			is_enabled?:   bool
			log_group_id!: string
			log_type!:     string
			freeform_tags?: [_]: string
			retention_duration?: int
			display_name!:       string
			configuration?: [...{
				source!: [...{
					parameters?: [_]: string
					category!:    string
					resource!:    string
					service!:     string
					source_type!: string
				}]
				compartment_id?: string
			}]
		}
		log_group: {
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			description?: string
		}
		log_saved_search: {
			defined_tags?: [_]: string
			description?:    string
			compartment_id!: string
			name!:           string
			freeform_tags?: [_]: string
			query!: string
		}
		unified_agent_configuration: {
			group_association?: [...{
				group_list?: [...string]
			}]
			description!: string
			is_enabled!:  bool
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
			service_configuration!: [...{
				unified_agent_configuration_filter?: [...{
					remove_keys?: [...string]
					renew_time_key?:               string
					name!:                         string
					custom_filter_type?:           string
					emit_invalid_record_to_error?: bool
					record_list?: [...{
						key?:   string
						value?: string
					}]
					hash_value_field?: string
					keep_keys?: [...string]
					replace_invalid_sequence?: bool
					filter_type!:              string
					is_auto_typecast_enabled?: bool
					is_ruby_enabled?:          bool
					key_name?:                 string
					inject_key_prefix?:        string
					allow_list?: [...{
						pattern?: string
						key?:     string
					}]
					is_renew_record_enabled?: bool
					custom_sections?: [...{
						params?: [_]: string
						name?: string
					}]
					deny_list?: [...{
						key?:     string
						pattern?: string
					}]
					params?: [_]: string
					reserve_data?: bool
					reserve_time?: bool
					parser?: [...{
						time_format?:      string
						is_keep_time_key?: *false | bool
						is_with_priority?: bool
						parse_nested?:     bool
						patterns?: [...{
							pattern?:           string
							field_time_format?: string
							field_time_key?:    string
							field_time_zone?:   string
							name?:              string
						}]
						rfc5424time_format?:      string
						parser_type!:             string
						timeout_in_milliseconds?: int
						record_input?: [...{
							dimensions?: [_]: string
							namespace?:      string
							resource_group?: string
						}]
						time_type?:           string
						grok_name_key?:       string
						is_merge_cri_fields?: bool
						separator?:           string
						types?: [_]: string
						format?: [...string]
						is_support_colonless_ident?: bool
						format_firstline?:           string
						is_null_empty_string?:       *false | bool
						delimiter?:                  string
						multi_line_start_regexp?:    string
						grok_failure_key?:           string
						null_value_pattern?:         string
						syslog_parser_type?:         string
						message_key?:                string
						keys?: [...string]
						nested_parser?: [...{
							is_keep_time_key?: bool
							parse_nested?:     bool
							separator?:        string
							field_time_key?:   string
							time_format?:      string
							time_type?:        string
						}]
						is_estimate_current_event?: *true | bool
						message_format?:            string
						expression?:                string
						field_time_key?:            string
					}]
					remove_key_name_field?: bool
				}]
				configuration_type!: string
				application_configurations?: [...{
					destination!: [...{
						compartment_id?:    string
						metrics_namespace?: string
					}]
					source_type!: string
					source?: [...{
						scrape_targets?: [...{
							url?:            string
							k8s_namespace?:  string
							name?:           string
							resource_group?: string
							resource_type?:  string
							service_name?:   string
						}]
						name?: string
					}]
					sources?: [...{
						name?: string
						parser?: [...{
							record_input?: [...{
								resource_group?: string
								dimensions?: [_]: string
								namespace?: string
							}]
							types?: [_]: string
							patterns?: [...{
								field_time_key?:    string
								field_time_zone?:   string
								name?:              string
								pattern?:           string
								field_time_format?: string
							}]
							delimiter?:            string
							format_firstline?:     string
							grok_failure_key?:     string
							separator?:            string
							grok_name_key?:        string
							is_merge_cri_fields?:  bool
							is_null_empty_string?: *false | bool
							nested_parser?: [...{
								time_format?:      string
								time_type?:        string
								is_keep_time_key?: bool
								parse_nested?:     bool
								separator?:        string
								field_time_key?:   string
							}]
							timeout_in_milliseconds?: int
							time_format?:             string
							field_time_key?:          string
							rfc5424time_format?:      string
							format?: [...string]
							keys?: [...string]
							is_support_colonless_ident?: bool
							message_key?:                string
							time_type?:                  string
							message_format?:             string
							parse_nested?:               bool
							parser_type!:                string
							expression?:                 string
							is_estimate_current_event?:  *true | bool
							is_keep_time_key?:           *false | bool
							is_with_priority?:           bool
							null_value_pattern?:         string
							multi_line_start_regexp?:    string
							syslog_parser_type?:         string
						}]
						paths?: [...string]
						source_type?: string
						advanced_options?: [...{
							is_read_from_head?: bool
						}]
					}]
					unified_agent_configuration_filter?: [...{
						name?: string
						allow_list?: [...string]
						deny_list?: [...string]
						filter_type?: string
					}]
				}]
				destination?: [...{
					log_object_id!: string
					operational_metrics_configuration?: [...{
						destination!: [...{
							compartment_id!: string
						}]
						source!: [...{
							type!: string
							metrics?: [...string]
							record_input!: [...{
								namespace!:      string
								resource_group?: string
							}]
						}]
					}]
				}]
				sources?: [...{
					advanced_options?: [...{
						is_read_from_head?: bool
					}]
					channels?: [...string]
					custom_plugin?: string
					name?:          string
					parser?: [...{
						is_keep_time_key?:        *false | bool
						expression?:              string
						format_firstline?:        string
						is_merge_cri_fields?:     bool
						multi_line_start_regexp?: string
						is_null_empty_string?:    *false | bool
						keys?: [...string]
						grok_failure_key?:           string
						timeout_in_milliseconds?:    int
						delimiter?:                  string
						is_support_colonless_ident?: bool
						parser_type!:                string
						record_input?: [...{
							namespace?:      string
							resource_group?: string
							dimensions?: [_]: string
						}]
						syslog_parser_type?: string
						null_value_pattern?: string
						format?: [...string]
						parse_nested?:              bool
						separator?:                 string
						is_estimate_current_event?: *true | bool
						is_with_priority?:          bool
						grok_name_key?:             string
						rfc5424time_format?:        string
						message_format?:            string
						types?: [_]: string
						time_format?: string
						time_type?:   string
						nested_parser?: [...{
							time_format?:      string
							time_type?:        string
							is_keep_time_key?: bool
							parse_nested?:     bool
							separator?:        string
							field_time_key?:   string
						}]
						field_time_key?: string
						patterns?: [...{
							name?:              string
							pattern?:           string
							field_time_format?: string
							field_time_key?:    string
							field_time_zone?:   string
						}]
						message_key?: string
					}]
					paths?: [...string]
					source_type!: string
				}]
			}]
			defined_tags?: [_]: string
		}
	}
}
#data: {
	log: {
		log_group_id!: string
		log_id!:       string
	}
	log_group: log_group_id!: string
	log_groups: {
		display_name?:                 string
		is_compartment_id_in_subtree?: bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	log_saved_search: log_saved_search_id!: string
	log_saved_searches: {
		log_saved_search_id?: string
		name?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	logs: {
		display_name?:    string
		log_group_id!:    string
		log_type?:        string
		source_resource?: string
		source_service?:  string
		state?:           string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	unified_agent_configuration: unified_agent_configuration_id!: string
	unified_agent_configurations: {
		log_id?: string
		state?:  string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:               string
		display_name?:                 string
		group_id?:                     string
		is_compartment_id_in_subtree?: bool
	}
}

