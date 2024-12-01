package functions

#resource: {
	attributes: {
		function: {
			config?: [_]: string
			timeout_in_seconds?: int
			provisioned_concurrency_config?: [...{
				strategy!: string
				count?:    int
			}]
			time_updated:   string
			compartment_id: string
			freeform_tags?: [_]: string
			shape: string
			source_details?: [...{
				pbf_listing_id!: string
				source_type!:    string
			}]
			state:           string
			application_id!: string
			image?:          string
			display_name!:   string
			time_created:    string
			defined_tags?: [_]: string
			image_digest?:   string
			memory_in_mbs!:  string
			invoke_endpoint: string
			trace_config?: [...{
				is_enabled?: bool
			}]
		}
		invoke_function: {
			fn_intent?:                           string
			fn_invoke_type?:                      string
			function_id!:                         string
			input_body_source_path?:              string
			base64_encode_content?:               *false | bool
			invoke_function_body?:                string
			content:                              string
			invoke_endpoint:                      string
			invoke_function_body_base64_encoded?: string
		}
		application: {
			time_updated:  string
			display_name!: string
			time_created:  string
			shape?:        string
			config?: [_]: string
			trace_config?: [...{
				is_enabled?: bool
				domain_id?:  string
			}]
			subnet_ids!: [...string]
			freeform_tags?: [_]: string
			compartment_id!: string
			network_security_group_ids?: [...string]
			state: string
			defined_tags?: [_]: string
			image_policy_config?: [...{
				is_policy_enabled!: bool
				key_details?: [...{
					kms_key_id!: string
				}]
			}]
			syslog_url?: string
		}
	}
	arguments: {
		function: {
			defined_tags?: [_]: string
			provisioned_concurrency_config?: [...{
				strategy!: string
				count?:    int
			}]
			source_details?: [...{
				source_type!:    string
				pbf_listing_id!: string
			}]
			image_digest?: string
			config?: [_]: string
			timeout_in_seconds?: int
			trace_config?: [...{
				is_enabled?: bool
			}]
			application_id!: string
			image?:          string
			display_name!:   string
			memory_in_mbs!:  string
			freeform_tags?: [_]: string
		}
		invoke_function: {
			fn_intent?:                           string
			fn_invoke_type?:                      string
			function_id!:                         string
			invoke_function_body_base64_encoded?: string
			input_body_source_path?:              string
			base64_encode_content?:               *false | bool
			invoke_function_body?:                string
		}
		application: {
			defined_tags?: [_]: string
			syslog_url?:     string
			compartment_id!: string
			display_name!:   string
			shape?:          string
			subnet_ids!: [...string]
			freeform_tags?: [_]: string
			config?: [_]: string
			image_policy_config?: [...{
				is_policy_enabled!: bool
				key_details?: [...{
					kms_key_id!: string
				}]
			}]
			network_security_group_ids?: [...string]
			trace_config?: [...{
				is_enabled?: bool
				domain_id?:  string
			}]
		}
	}
}
#data: {
	application: application_id!: string
	applications: {
		id?:    string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	pbf_listing: pbf_listing_id!: string
	pbf_listing_triggers: {
		name?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	pbf_listing_version: pbf_listing_version_id!: string
	function: function_id!: string
	functions: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		application_id!: string
		display_name?:   string
		id?:             string
	}
	pbf_listing_versions: {
		name?:                   string
		pbf_listing_id!:         string
		pbf_listing_version_id?: string
		state?:                  string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		is_current_version?: bool
	}
	pbf_listings: {
		name_starts_with?: string
		pbf_listing_id?:   string
		state?:            string
		trigger?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		name?:          string
		name_contains?: string
	}
}

