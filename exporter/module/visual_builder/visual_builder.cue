package visual_builder

#resource: {
	attributes: vb_instance: {
		alternate_custom_endpoints?: [...{
			hostname!:                  string
			certificate_secret_id?:     string
			certificate_secret_version: int
		}]
		idcs_open_id?:              string
		consumption_model?:         string
		is_visual_builder_enabled?: bool
		display_name!:              string
		idcs_info: [...{
			instance_primary_audience_url: string
			idcs_app_display_name:         string
			idcs_app_id:                   string
			idcs_app_location_url:         string
			idcs_app_name:                 string
		}]
		compartment_id!:        string
		service_nat_gateway_ip: string
		system_tags: [_]: string
		node_count!:   int
		time_updated:  string
		state_message: string
		time_created:  string
		custom_endpoint?: [...{
			hostname!:                  string
			certificate_secret_id?:     string
			certificate_secret_version: int
		}]
		management_nat_gateway_ip: string
		defined_tags?: [_]: string
		attachments: [...{
			is_implicit:         bool
			target_id:           string
			target_instance_url: string
			target_role:         string
			target_service_type: string
		}]
		service_vcn_id: string
		freeform_tags?: [_]: string
		management_vcn_id: string
		state:             string
		instance_url:      string
	}
	arguments: vb_instance: {
		alternate_custom_endpoints?: [...{
			certificate_secret_id?: string
			hostname!:              string
		}]
		freeform_tags?: [_]: string
		idcs_open_id?: string
		display_name!: string
		defined_tags?: [_]: string
		is_visual_builder_enabled?: bool
		compartment_id!:            string
		custom_endpoint?: [...{
			certificate_secret_id?: string
			hostname!:              string
		}]
		node_count!:        int
		consumption_model?: string
	}
}
#data: {
	vb_instance_applications: {
		vb_instance_id!: string
		idcs_open_id?:   string
	}
	vb_instance: vb_instance_id!: string
	vb_instances: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
}

