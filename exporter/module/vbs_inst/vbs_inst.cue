package vbs_inst

#resource: {
	attributes: vbs_instance: {
		state:          string
		vbs_access_url: string
		defined_tags?: [_]: string
		lifecyle_details: string
		time_created:     string
		freeform_tags?: [_]: string
		time_updated:       string
		compartment_id!:    string
		idcs_access_token?: string
		name!:              string
		system_tags: [_]: string
		resource_compartment_id?:             string
		display_name!:                        string
		is_resource_usage_agreement_granted?: bool
	}
	arguments: vbs_instance: {
		resource_compartment_id?: string
		display_name!:            string
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
		compartment_id!:                      string
		idcs_access_token?:                   string
		name!:                                string
		is_resource_usage_agreement_granted?: bool
	}
}
#data: {
	vbs_instance: vbs_instance_id!: string
	vbs_instances: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		id?:             string
		name?:           string
	}
}

