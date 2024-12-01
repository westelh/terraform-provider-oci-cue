package waa

#resource: {
	attributes: {
		web_app_acceleration: {
			lifecycle_details: string
			state:             string
			system_tags?: [_]: string
			time_created:                    string
			time_updated:                    string
			display_name?:                   string
			compartment_id!:                 string
			backend_type!:                   string
			load_balancer_id!:               string
			web_app_acceleration_policy_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		web_app_acceleration_policy: {
			system_tags?: [_]: string
			time_created:    string
			time_updated:    string
			compartment_id!: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			display_name?:     string
			response_caching_policy?: [...{
				is_response_header_based_caching_enabled?: bool
			}]
			response_compression_policy?: [...{
				gzip_compression?: [...{
					is_enabled?: bool
				}]
			}]
			state: string
			defined_tags?: [_]: string
		}
	}
	arguments: {
		web_app_acceleration: {
			compartment_id!: string
			freeform_tags?: [_]: string
			display_name?: string
			system_tags?: [_]: string
			backend_type!:                   string
			load_balancer_id!:               string
			web_app_acceleration_policy_id!: string
			defined_tags?: [_]: string
		}
		web_app_acceleration_policy: {
			response_compression_policy?: [...{
				gzip_compression?: [...{
					is_enabled?: bool
				}]
			}]
			defined_tags?: [_]: string
			display_name?: string
			system_tags?: [_]: string
			compartment_id!: string
			freeform_tags?: [_]: string
			response_caching_policy?: [...{
				is_response_header_based_caching_enabled?: bool
			}]
		}
	}
}
#data: {
	web_app_acceleration: web_app_acceleration_id!: string
	web_app_acceleration_policies: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?: [...string]
	}
	web_app_acceleration_policy: web_app_acceleration_policy_id!: string
	web_app_accelerations: {
		display_name?: string
		id?:           string
		state?: [...string]
		web_app_acceleration_policy_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
}

