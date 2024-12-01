package logging

#resource: {
	attributes: {
		log_group: {
			display_name!: string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			state:              string
			time_created:       string
			time_last_modified: string
			compartment_id!:    string
		}
		log_saved_search: {
			description?: string
			freeform_tags?: [_]: string
			state:              string
			time_last_modified: string
			name!:              string
			query!:             string
			compartment_id!:    string
			defined_tags?: [_]: string
			time_created: string
		}
		unified_agent_configuration: {
			time_created:        string
			time_last_modified:  string
			configuration_state: string
			state:               string
			display_name!:       string
			description!:        string
			is_enabled!:         bool
			service_configuration!: [...{
				configuration_type!: string
				application_configurations?: [...{
					unified_agent_configuration_filter?: [...{
						name?: string
						allow_list?: [...string]
						deny_list?: [...string]
						filter_type?: string
					}]
					destination!: [...{
						metrics_namespace?: string
						compartment_id?:    string
					}]
					source_type!: string
					source?: [...{
						name?: string
						scrape_targets?: [...{
							k8s_namespace?:  string
							name?:           string
							resource_group?: string
							resource_type?:  string
							service_name?:   string
							url?:            string
						}]
					}]
					sources?: [...{
						name?: string
						parser?: [...{
							nested_parser?: [...{
								time_format?:      string
								time_type?:        string
								is_keep_time_key?: bool
								parse_nested?:     bool
								separator?:        string
								field_time_key?:   string
							}]
							delimiter?:                  string
							is_support_colonless_ident?: bool
							format?: [...string]
							time_type?:               string
							message_key?:             string
							is_keep_time_key?:        *false | bool
							syslog_parser_type?:      string
							timeout_in_milliseconds?: int
							format_firstline?:        string
							is_null_empty_string?:    *false | bool
							rfc5424time_format?:      string
							parse_nested?:            bool
							time_format?:             string
							separator?:               string
							field_time_key?:          string
							multi_line_start_regexp?: string
							is_merge_cri_fields?:     bool
							message_format?:          string
							grok_failure_key?:        string
							keys?: [...string]
							null_value_pattern?: string
							parser_type!:        string
							grok_name_key?:      string
							types?: [_]: string
							expression?:                string
							is_estimate_current_event?: *true | bool
							is_with_priority?:          bool
							patterns?: [...{
								field_time_format?: string
								field_time_key?:    string
								field_time_zone?:   string
								name?:              string
								pattern?:           string
							}]
							record_input?: [...{
								resource_group?: string
								dimensions?: [_]: string
								namespace?: string
							}]
						}]
						paths?: [...string]
						source_type?: string
						advanced_options?: [...{
							is_read_from_head?: bool
						}]
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
					custom_plugin?: string
					name?:          string
					parser?: [...{
						rfc5424time_format?:   string
						grok_failure_key?:     string
						field_time_key?:       string
						is_null_empty_string?: *false | bool
						nested_parser?: [...{
							parse_nested?:     bool
							separator?:        string
							field_time_key?:   string
							time_format?:      string
							time_type?:        string
							is_keep_time_key?: bool
						}]
						parse_nested?: bool
						types?: [_]: string
						is_with_priority?:        bool
						multi_line_start_regexp?: string
						grok_name_key?:           string
						is_merge_cri_fields?:     bool
						delimiter?:               string
						patterns?: [...{
							field_time_format?: string
							field_time_key?:    string
							field_time_zone?:   string
							name?:              string
							pattern?:           string
						}]
						parser_type!:                string
						is_support_colonless_ident?: bool
						record_input?: [...{
							dimensions?: [_]: string
							namespace?:      string
							resource_group?: string
						}]
						format_firstline?: string
						format?: [...string]
						syslog_parser_type?: string
						time_format?:        string
						message_key?:        string
						expression?:         string
						keys?: [...string]
						separator?:                 string
						null_value_pattern?:        string
						timeout_in_milliseconds?:   int
						is_keep_time_key?:          *false | bool
						message_format?:            string
						is_estimate_current_event?: *true | bool
						time_type?:                 string
					}]
					paths?: [...string]
					source_type!: string
					advanced_options?: [...{
						is_read_from_head?: bool
					}]
					channels?: [...string]
				}]
				unified_agent_configuration_filter?: [...{
					params?: [_]: string
					remove_key_name_field?:    bool
					filter_type!:              string
					is_auto_typecast_enabled?: bool
					reserve_time?:             bool
					custom_filter_type?:       string
					custom_sections?: [...{
						params?: [_]: string
						name?: string
					}]
					keep_keys?: [...string]
					name!: string
					parser?: [...{
						is_keep_time_key?:          *false | bool
						is_estimate_current_event?: *true | bool
						null_value_pattern?:        string
						expression?:                string
						format?: [...string]
						grok_name_key?: string
						parser_type!:   string
						nested_parser?: [...{
							field_time_key?:   string
							time_format?:      string
							time_type?:        string
							is_keep_time_key?: bool
							parse_nested?:     bool
							separator?:        string
						}]
						patterns?: [...{
							field_time_key?:    string
							field_time_zone?:   string
							name?:              string
							pattern?:           string
							field_time_format?: string
						}]
						separator?:               string
						rfc5424time_format?:      string
						message_key?:             string
						grok_failure_key?:        string
						format_firstline?:        string
						parse_nested?:            bool
						syslog_parser_type?:      string
						delimiter?:               string
						is_null_empty_string?:    *false | bool
						is_merge_cri_fields?:     bool
						multi_line_start_regexp?: string
						is_with_priority?:        bool
						types?: [_]: string
						keys?: [...string]
						record_input?: [...{
							namespace?:      string
							resource_group?: string
							dimensions?: [_]: string
						}]
						timeout_in_milliseconds?:    int
						field_time_key?:             string
						message_format?:             string
						time_format?:                string
						is_support_colonless_ident?: bool
						time_type?:                  string
					}]
					inject_key_prefix?: string
					is_ruby_enabled?:   bool
					record_list?: [...{
						key?:   string
						value?: string
					}]
					renew_time_key?: string
					remove_keys?: [...string]
					reserve_data?: bool
					allow_list?: [...{
						key?:     string
						pattern?: string
					}]
					emit_invalid_record_to_error?: bool
					hash_value_field?:             string
					key_name?:                     string
					replace_invalid_sequence?:     bool
					deny_list?: [...{
						key?:     string
						pattern?: string
					}]
					is_renew_record_enabled?: bool
				}]
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			group_association?: [...{
				group_list?: [...string]
			}]
			compartment_id!: string
		}
		log: {
			compartment_id: string
			state:          string
			log_type!:      string
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
			time_created:        string
			time_last_modified:  string
			log_group_id!:       string
			tenancy_id:          string
			is_enabled?:         bool
			retention_duration?: int
			display_name!:       string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
	}
	arguments: {
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
			freeform_tags?: [_]: string
			name!:  string
			query!: string
		}
		unified_agent_configuration: {
			freeform_tags?: [_]: string
			service_configuration!: [...{
				configuration_type!: string
				application_configurations?: [...{
					destination!: [...{
						compartment_id?:    string
						metrics_namespace?: string
					}]
					source_type!: string
					source?: [...{
						name?: string
						scrape_targets?: [...{
							name?:           string
							resource_group?: string
							resource_type?:  string
							service_name?:   string
							url?:            string
							k8s_namespace?:  string
						}]
					}]
					sources?: [...{
						name?: string
						parser?: [...{
							grok_name_key?: string
							parse_nested?:  bool
							keys?: [...string]
							null_value_pattern?:   string
							is_null_empty_string?: *false | bool
							is_with_priority?:     bool
							types?: [_]: string
							format_firstline?: string
							parser_type!:      string
							nested_parser?: [...{
								field_time_key?:   string
								time_format?:      string
								time_type?:        string
								is_keep_time_key?: bool
								parse_nested?:     bool
								separator?:        string
							}]
							time_type?: string
							patterns?: [...{
								field_time_format?: string
								field_time_key?:    string
								field_time_zone?:   string
								name?:              string
								pattern?:           string
							}]
							time_format?:        string
							syslog_parser_type?: string
							record_input?: [...{
								dimensions?: [_]: string
								namespace?:      string
								resource_group?: string
							}]
							rfc5424time_format?:        string
							timeout_in_milliseconds?:   int
							multi_line_start_regexp?:   string
							expression?:                string
							delimiter?:                 string
							is_estimate_current_event?: *true | bool
							format?: [...string]
							message_key?:                string
							is_merge_cri_fields?:        bool
							field_time_key?:             string
							is_support_colonless_ident?: bool
							grok_failure_key?:           string
							is_keep_time_key?:           *false | bool
							message_format?:             string
							separator?:                  string
						}]
						paths?: [...string]
						source_type?: string
						advanced_options?: [...{
							is_read_from_head?: bool
						}]
					}]
					unified_agent_configuration_filter?: [...{
						deny_list?: [...string]
						filter_type?: string
						name?:        string
						allow_list?: [...string]
					}]
				}]
				destination?: [...{
					log_object_id!: string
					operational_metrics_configuration?: [...{
						source!: [...{
							metrics?: [...string]
							record_input!: [...{
								namespace!:      string
								resource_group?: string
							}]
							type!: string
						}]
						destination!: [...{
							compartment_id!: string
						}]
					}]
				}]
				sources?: [...{
					channels?: [...string]
					custom_plugin?: string
					name?:          string
					parser?: [...{
						is_keep_time_key?: *false | bool
						message_format?:   string
						patterns?: [...{
							name?:              string
							pattern?:           string
							field_time_format?: string
							field_time_key?:    string
							field_time_zone?:   string
						}]
						timeout_in_milliseconds?:   int
						rfc5424time_format?:        string
						time_format?:               string
						field_time_key?:            string
						expression?:                string
						is_merge_cri_fields?:       bool
						is_null_empty_string?:      *false | bool
						is_estimate_current_event?: *true | bool
						separator?:                 string
						message_key?:               string
						nested_parser?: [...{
							separator?:        string
							field_time_key?:   string
							time_format?:      string
							time_type?:        string
							is_keep_time_key?: bool
							parse_nested?:     bool
						}]
						types?: [_]: string
						delimiter?:               string
						parse_nested?:            bool
						parser_type!:             string
						syslog_parser_type?:      string
						multi_line_start_regexp?: string
						format_firstline?:        string
						grok_name_key?:           string
						format?: [...string]
						grok_failure_key?: string
						keys?: [...string]
						is_support_colonless_ident?: bool
						time_type?:                  string
						null_value_pattern?:         string
						is_with_priority?:           bool
						record_input?: [...{
							namespace?:      string
							resource_group?: string
							dimensions?: [_]: string
						}]
					}]
					paths?: [...string]
					source_type!: string
					advanced_options?: [...{
						is_read_from_head?: bool
					}]
				}]
				unified_agent_configuration_filter?: [...{
					reserve_time?:       bool
					custom_filter_type?: string
					record_list?: [...{
						key?:   string
						value?: string
					}]
					emit_invalid_record_to_error?: bool
					parser?: [...{
						grok_failure_key?: string
						delimiter?:        string
						field_time_key?:   string
						time_type?:        string
						patterns?: [...{
							pattern?:           string
							field_time_format?: string
							field_time_key?:    string
							field_time_zone?:   string
							name?:              string
						}]
						is_merge_cri_fields?: bool
						format?: [...string]
						syslog_parser_type?:      string
						timeout_in_milliseconds?: int
						is_null_empty_string?:    *false | bool
						is_keep_time_key?:        *false | bool
						expression?:              string
						grok_name_key?:           string
						keys?: [...string]
						parse_nested?:       bool
						rfc5424time_format?: string
						format_firstline?:   string
						time_format?:        string
						nested_parser?: [...{
							separator?:        string
							field_time_key?:   string
							time_format?:      string
							time_type?:        string
							is_keep_time_key?: bool
							parse_nested?:     bool
						}]
						record_input?: [...{
							dimensions?: [_]: string
							namespace?:      string
							resource_group?: string
						}]
						types?: [_]: string
						parser_type!:                string
						is_estimate_current_event?:  *true | bool
						multi_line_start_regexp?:    string
						null_value_pattern?:         string
						message_format?:             string
						separator?:                  string
						message_key?:                string
						is_with_priority?:           bool
						is_support_colonless_ident?: bool
					}]
					inject_key_prefix?: string
					params?: [_]: string
					custom_sections?: [...{
						name?: string
						params?: [_]: string
					}]
					hash_value_field?: string
					renew_time_key?:   string
					keep_keys?: [...string]
					key_name?:        string
					is_ruby_enabled?: bool
					deny_list?: [...{
						pattern?: string
						key?:     string
					}]
					is_auto_typecast_enabled?: bool
					is_renew_record_enabled?:  bool
					reserve_data?:             bool
					replace_invalid_sequence?: bool
					filter_type!:              string
					remove_keys?: [...string]
					remove_key_name_field?: bool
					name!:                  string
					allow_list?: [...{
						key?:     string
						pattern?: string
					}]
				}]
			}]
			description!:  string
			display_name!: string
			is_enabled!:   bool
			group_association?: [...{
				group_list?: [...string]
			}]
			compartment_id!: string
			defined_tags?: [_]: string
		}
		log: {
			log_type!:     string
			log_group_id!: string
			defined_tags?: [_]: string
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
			freeform_tags?: [_]: string
			is_enabled?:         bool
			retention_duration?: int
			display_name!:       string
		}
	}
}
#data: {
	log: {
		log_id!:       string
		log_group_id!: string
	}
	log_group: log_group_id!: string
	log_groups: {
		compartment_id!:               string
		display_name?:                 string
		is_compartment_id_in_subtree?: bool
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	log_saved_search: log_saved_search_id!: string
	log_saved_searches: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:      string
		log_saved_search_id?: string
		name?:                string
	}
	logs: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?:    string
		log_group_id!:    string
		log_type?:        string
		source_resource?: string
		source_service?:  string
	}
	unified_agent_configuration: unified_agent_configuration_id!: string
	unified_agent_configurations: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:               string
		display_name?:                 string
		group_id?:                     string
		is_compartment_id_in_subtree?: bool
		log_id?:                       string
		state?:                        string
	}
}

