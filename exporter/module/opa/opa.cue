package opa

#resource: {
	attributes: opa_instance: {
		defined_tags?: [_]: string
		metering_type?:                         string
		identity_app_opc_service_instance_guid: string
		attachments: [...{
			target_role:         string
			target_service_type: string
			is_implicit:         bool
			target_id:           string
			target_instance_url: string
		}]
		compartment_id!:           string
		identity_app_guid:         string
		identity_domain_url:       string
		display_name!:             string
		shape_name!:               string
		state?:                    string
		identity_app_display_name: string
		consumption_model?:        string
		is_breakglass_enabled?:    bool
		system_tags: [_]: string
		description?: string
		instance_url: string
		time_updated: string
		idcs_at?:     string
		freeform_tags?: [_]: string
		time_created: string
	}
	arguments: opa_instance: {
		defined_tags?: [_]: string
		description?:   string
		metering_type?: string
		freeform_tags?: [_]: string
		idcs_at?:               string
		compartment_id!:        string
		is_breakglass_enabled?: bool
		state?:                 string
		consumption_model?:     string
		display_name!:          string
		shape_name!:            string
	}
}
#data: {
	opa_instance: opa_instance_id!: string
	opa_instances: {
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

