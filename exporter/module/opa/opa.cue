package opa

#resource: {
	attributes: opa_instance: {
		is_breakglass_enabled?:    bool
		idcs_at?:                  string
		identity_app_display_name: string
		time_updated:              string
		compartment_id!:           string
		attachments: [...{
			target_instance_url: string
			target_role:         string
			target_service_type: string
			is_implicit:         bool
			target_id:           string
		}]
		identity_app_guid:                      string
		identity_app_opc_service_instance_guid: string
		identity_domain_url:                    string
		instance_url:                           string
		defined_tags?: [_]: string
		metering_type?: string
		shape_name!:    string
		freeform_tags?: [_]: string
		system_tags: [_]: string
		time_created:       string
		display_name!:      string
		consumption_model?: string
		description?:       string
		state?:             string
	}
	arguments: opa_instance: {
		shape_name!: string
		freeform_tags?: [_]: string
		consumption_model?: string
		compartment_id!:    string
		display_name!:      string
		state?:             string
		idcs_at?:           string
		description?:       string
		metering_type?:     string
		defined_tags?: [_]: string
		is_breakglass_enabled?: bool
	}
}
#data: {
	opa_instances: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
	}
	opa_instance: opa_instance_id!: string
}

