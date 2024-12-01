package functions

#resource: {
	attributes: {
		application: {
			compartment_id!: string
			display_name!:   string
			config?: [_]: string
			subnet_ids!: [...string]
			syslog_url?: string
			freeform_tags?: [_]: string
			state:        string
			time_created: string
			network_security_group_ids?: [...string]
			time_updated: string
			trace_config?: [...{
				domain_id?:  string
				is_enabled?: bool
			}]
			image_policy_config?: [...{
				is_policy_enabled!: bool
				key_details?: [...{
					kms_key_id!: string
				}]
			}]
			defined_tags?: [_]: string
			shape?: string
		}
		function: {
			image_digest?: string
			provisioned_concurrency_config?: [...{
				strategy!: string
				count?:    int
			}]
			image?:          string
			invoke_endpoint: string
			config?: [_]: string
			shape:           string
			application_id!: string
			trace_config?: [...{
				is_enabled?: bool
			}]
			memory_in_mbs!: string
			defined_tags?: [_]: string
			timeout_in_seconds?: int
			state:               string
			display_name!:       string
			freeform_tags?: [_]: string
			source_details?: [...{
				pbf_listing_id!: string
				source_type!:    string
			}]
			time_updated:   string
			compartment_id: string
			time_created:   string
		}
		invoke_function: {
			base64_encode_content?:               *false | bool
			content:                              string
			function_id!:                         string
			input_body_source_path?:              string
			invoke_function_body_base64_encoded?: string
			fn_invoke_type?:                      string
			invoke_endpoint:                      string
			invoke_function_body?:                string
			fn_intent?:                           string
		}
	}
	arguments: {
		application: {
			syslog_url?:     string
			compartment_id!: string
			config?: [_]: string
			defined_tags?: [_]: string
			trace_config?: [...{
				domain_id?:  string
				is_enabled?: bool
			}]
			image_policy_config?: [...{
				is_policy_enabled!: bool
				key_details?: [...{
					kms_key_id!: string
				}]
			}]
			network_security_group_ids?: [...string]
			display_name!: string
			freeform_tags?: [_]: string
			shape?: string
			subnet_ids!: [...string]
		}
		function: {
			image?: string
			trace_config?: [...{
				is_enabled?: bool
			}]
			memory_in_mbs!:  string
			display_name!:   string
			application_id!: string
			config?: [_]: string
			image_digest?: string
			provisioned_concurrency_config?: [...{
				strategy!: string
				count?:    int
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			source_details?: [...{
				source_type!:    string
				pbf_listing_id!: string
			}]
			timeout_in_seconds?: int
		}
		invoke_function: {
			input_body_source_path?:              string
			base64_encode_content?:               *false | bool
			invoke_function_body_base64_encoded?: string
			fn_invoke_type?:                      string
			function_id!:                         string
			invoke_function_body?:                string
			fn_intent?:                           string
		}
	}
}
#data: {
	application: application_id!: string
	applications: {
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
	pbf_listing_triggers: {
		name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	pbf_listing_version: pbf_listing_version_id!: string
	pbf_listing_versions: {
		name?:                   string
		pbf_listing_id!:         string
		pbf_listing_version_id?: string
		state?:                  string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		is_current_version?: bool
	}
	function: function_id!: string
	functions: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		application_id!: string
		display_name?:   string
		id?:             string
		state?:          string
	}
	pbf_listing: pbf_listing_id!: string
	pbf_listings: {
		name?:             string
		name_contains?:    string
		name_starts_with?: string
		pbf_listing_id?:   string
		state?:            string
		trigger?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

