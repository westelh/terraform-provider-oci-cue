package vbs_inst

#resource: {
	attributes: vbs_instance: {
		is_resource_usage_agreement_granted?: bool
		system_tags: [_]: string
		freeform_tags?: [_]: string
		display_name!: string
		defined_tags?: [_]: string
		time_created:             string
		time_updated:             string
		compartment_id!:          string
		idcs_access_token?:       string
		resource_compartment_id?: string
		state:                    string
		vbs_access_url:           string
		name!:                    string
		lifecyle_details:         string
	}
	arguments: vbs_instance: {
		resource_compartment_id?: string
		display_name!:            string
		name!:                    string
		defined_tags?: [_]: string
		is_resource_usage_agreement_granted?: bool
		compartment_id!:                      string
		freeform_tags?: [_]: string
		idcs_access_token?: string
	}
}
#data: {
	vbs_instance: vbs_instance_id!: string
	vbs_instances: {
		name?:  string
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		id?:             string
	}
}

