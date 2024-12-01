package sch

#resource: {
	attributes: service_connector: {
		display_name!: string
		source!: [...{
			monitoring_sources?: [...{
				compartment_id?: string
				namespace_details?: [...{
					namespaces!: [...{
						metrics!: [...{
							kind!: string
						}]
						namespace!: string
					}]
					kind!: string
				}]
			}]
			plugin_name?: string
			stream_id?:   string
			kind!:        string
			config_map?:  string
			cursor?: [...{
				kind?: string
			}]
			log_sources?: [...{
				compartment_id?: string
				log_group_id?:   string
				log_id?:         string
			}]
		}]
		system_tags: [_]: string
		freeform_tags?: [_]: string
		tasks?: [...{
			kind!:              string
			batch_size_in_kbs?: int
			batch_time_in_sec?: int
			condition?:         string
			function_id?:       string
		}]
		state?:       string
		time_updated: string
		defined_tags?: [_]: string
		description?:     string
		lifecyle_details: string
		time_created:     string
		compartment_id!:  string
		target!: [...{
			metric_namespace?:           string
			object_name_prefix?:         string
			batch_size_in_kbs?:          int
			log_group_id?:               string
			bucket?:                     string
			function_id?:                string
			log_source_identifier?:      string
			topic_id?:                   string
			batch_size_in_num?:          int
			batch_time_in_sec?:          int
			stream_id?:                  string
			namespace?:                  string
			compartment_id?:             string
			metric?:                     string
			batch_rollover_size_in_mbs?: int
			enable_formatted_messaging?: bool
			kind!:                       string
			dimensions?: [...{
				dimension_value?: [...{
					kind!:  string
					path?:  string
					value?: string
				}]
				name?: string
			}]
			batch_rollover_time_in_ms?: int
		}]
	}
	arguments: service_connector: {
		tasks?: [...{
			kind!:              string
			batch_size_in_kbs?: int
			batch_time_in_sec?: int
			condition?:         string
			function_id?:       string
		}]
		display_name!: string
		freeform_tags?: [_]: string
		state?:          string
		compartment_id!: string
		source!: [...{
			kind!:       string
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
						metrics!: [...{
							kind!: string
						}]
						namespace!: string
					}]
				}]
			}]
			plugin_name?: string
			stream_id?:   string
		}]
		target!: [...{
			batch_rollover_size_in_mbs?: int
			log_group_id?:               string
			batch_time_in_sec?:          int
			enable_formatted_messaging?: bool
			metric_namespace?:           string
			kind!:                       string
			dimensions?: [...{
				name?: string
				dimension_value?: [...{
					kind!:  string
					path?:  string
					value?: string
				}]
			}]
			batch_rollover_time_in_ms?: int
			topic_id?:                  string
			metric?:                    string
			bucket?:                    string
			compartment_id?:            string
			log_source_identifier?:     string
			batch_size_in_kbs?:         int
			function_id?:               string
			namespace?:                 string
			batch_size_in_num?:         int
			object_name_prefix?:        string
			stream_id?:                 string
		}]
		defined_tags?: [_]: string
		description?: string
	}
}
#data: {
	connector_plugin: connector_plugin_name!: string
	connector_plugins: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
		name?:         string
		state?:        string
	}
	service_connector: service_connector_id!: string
	service_connectors: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
}

