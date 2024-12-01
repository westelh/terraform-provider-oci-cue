package sch

#resource: {
	attributes: service_connector: {
		compartment_id!: string
		tasks?: [...{
			kind!:              string
			batch_size_in_kbs?: int
			batch_time_in_sec?: int
			condition?:         string
			function_id?:       string
		}]
		system_tags: [_]: string
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
		lifecyle_details: string
		time_created:     string
		display_name!:    string
		state?:           string
		time_updated:     string
		source!: [...{
			config_map?: string
			cursor?: [...{
				kind?: string
			}]
			log_sources?: [...{
				compartment_id?: string
				log_group_id?:   string
				log_id?:         string
			}]
			monitoring_sources?: [...{
				compartment_id?: string
				namespace_details?: [...{
					kind!: string
					namespaces!: [...{
						namespace!: string
						metrics!: [...{
							kind!: string
						}]
					}]
				}]
			}]
			plugin_name?: string
			stream_id?:   string
			kind!:        string
		}]
		description?: string
		target!: [...{
			metric?:                     string
			metric_namespace?:           string
			batch_rollover_size_in_mbs?: int
			batch_time_in_sec?:          int
			log_group_id?:               string
			kind!:                       string
			batch_size_in_num?:          int
			function_id?:                string
			namespace?:                  string
			enable_formatted_messaging?: bool
			topic_id?:                   string
			compartment_id?:             string
			batch_size_in_kbs?:          int
			object_name_prefix?:         string
			stream_id?:                  string
			batch_rollover_time_in_ms?:  int
			dimensions?: [...{
				dimension_value?: [...{
					kind!:  string
					path?:  string
					value?: string
				}]
				name?: string
			}]
			log_source_identifier?: string
			bucket?:                string
		}]
	}
	arguments: service_connector: {
		target!: [...{
			topic_id?:          string
			batch_size_in_num?: int
			metric_namespace?:  string
			kind!:              string
			batch_size_in_kbs?: int
			dimensions?: [...{
				dimension_value?: [...{
					kind!:  string
					path?:  string
					value?: string
				}]
				name?: string
			}]
			log_source_identifier?:      string
			metric?:                     string
			batch_time_in_sec?:          int
			log_group_id?:               string
			namespace?:                  string
			object_name_prefix?:         string
			stream_id?:                  string
			batch_rollover_time_in_ms?:  int
			bucket?:                     string
			batch_rollover_size_in_mbs?: int
			enable_formatted_messaging?: bool
			compartment_id?:             string
			function_id?:                string
		}]
		tasks?: [...{
			batch_size_in_kbs?: int
			batch_time_in_sec?: int
			condition?:         string
			function_id?:       string
			kind!:              string
		}]
		display_name!: string
		description?:  string
		state?:        string
		source!: [...{
			cursor?: [...{
				kind?: string
			}]
			log_sources?: [...{
				compartment_id?: string
				log_group_id?:   string
				log_id?:         string
			}]
			monitoring_sources?: [...{
				compartment_id?: string
				namespace_details?: [...{
					kind!: string
					namespaces!: [...{
						namespace!: string
						metrics!: [...{
							kind!: string
						}]
					}]
				}]
			}]
			plugin_name?: string
			stream_id?:   string
			kind!:        string
			config_map?:  string
		}]
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
		compartment_id!: string
	}
}
#data: {
	service_connectors: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	connector_plugin: connector_plugin_name!: string
	connector_plugins: {
		name?:  string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
	}
	service_connector: service_connector_id!: string
}

