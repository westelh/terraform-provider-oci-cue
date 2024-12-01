package waa

#resource: {
	attributes: {
		web_app_acceleration: {
			time_updated: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			system_tags?: [_]: string
			load_balancer_id!:               string
			lifecycle_details:               string
			display_name?:                   string
			web_app_acceleration_policy_id!: string
			state:                           string
			backend_type!:                   string
			compartment_id!:                 string
			time_created:                    string
		}
		web_app_acceleration_policy: {
			freeform_tags?: [_]: string
			response_caching_policy?: [...{
				is_response_header_based_caching_enabled?: bool
			}]
			system_tags?: [_]: string
			time_created:      string
			lifecycle_details: string
			time_updated:      string
			response_compression_policy?: [...{
				gzip_compression?: [...{
					is_enabled?: bool
				}]
			}]
			defined_tags?: [_]: string
			display_name?:   string
			state:           string
			compartment_id!: string
		}
	}
	arguments: {
		web_app_acceleration: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			system_tags?: [_]: string
			backend_type!:                   string
			compartment_id!:                 string
			load_balancer_id!:               string
			display_name?:                   string
			web_app_acceleration_policy_id!: string
		}
		web_app_acceleration_policy: {
			display_name?: string
			freeform_tags?: [_]: string
			response_caching_policy?: [...{
				is_response_header_based_caching_enabled?: bool
			}]
			response_compression_policy?: [...{
				gzip_compression?: [...{
					is_enabled?: bool
				}]
			}]
			system_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	web_app_acceleration_policies: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
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
	web_app_acceleration: web_app_acceleration_id!: string
}

