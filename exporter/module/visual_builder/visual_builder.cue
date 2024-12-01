package visual_builder

#resource: {
	attributes: vb_instance: {
		compartment_id!:           string
		management_nat_gateway_ip: string
		time_created:              string
		custom_endpoint?: [...{
			hostname!:                  string
			certificate_secret_id?:     string
			certificate_secret_version: int
		}]
		alternate_custom_endpoints?: [...{
			certificate_secret_id?:     string
			certificate_secret_version: int
			hostname!:                  string
		}]
		state:                  string
		service_vcn_id:         string
		state_message:          string
		time_updated:           string
		consumption_model?:     string
		service_nat_gateway_ip: string
		node_count!:            int
		idcs_info: [...{
			idcs_app_location_url:         string
			idcs_app_name:                 string
			instance_primary_audience_url: string
			idcs_app_display_name:         string
			idcs_app_id:                   string
		}]
		defined_tags?: [_]: string
		attachments: [...{
			target_service_type: string
			is_implicit:         bool
			target_id:           string
			target_instance_url: string
			target_role:         string
		}]
		instance_url: string
		system_tags: [_]: string
		display_name!:              string
		idcs_open_id?:              string
		is_visual_builder_enabled?: bool
		freeform_tags?: [_]: string
		management_vcn_id: string
	}
	arguments: vb_instance: {
		node_count!:                int
		idcs_open_id?:              string
		is_visual_builder_enabled?: bool
		consumption_model?:         string
		freeform_tags?: [_]: string
		custom_endpoint?: [...{
			hostname!:              string
			certificate_secret_id?: string
		}]
		alternate_custom_endpoints?: [...{
			hostname!:              string
			certificate_secret_id?: string
		}]
		display_name!:   string
		compartment_id!: string
		defined_tags?: [_]: string
	}
}
#data: {
	vb_instance: vb_instance_id!: string
	vb_instances: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	vb_instance_applications: {
		vb_instance_id!: string
		idcs_open_id?:   string
	}
}

