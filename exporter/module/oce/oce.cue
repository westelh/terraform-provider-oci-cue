package oce

#resource: {
	attributes: oce_instance: {
		description?: string
		freeform_tags?: [_]: string
		compartment_id!:        string
		lifecycle_details:      string
		upgrade_schedule?:      string
		guid:                   string
		dr_region?:             string
		state:                  string
		name!:                  string
		instance_access_type?:  string
		tenancy_id!:            string
		tenancy_name!:          string
		instance_license_type?: string
		idcs_tenancy:           string
		admin_email!:           string
		time_updated:           string
		instance_usage_type?:   string
		waf_primary_domain?:    string
		service: [_]: string
		object_storage_namespace!: string
		idcs_access_token!:        string
		defined_tags?: [_]: string
		system_tags: [_]: string
		add_on_features?: [...string]
		state_message: string
		time_created:  string
	}
	arguments: oce_instance: {
		add_on_features?: [...string]
		instance_usage_type?:      string
		object_storage_namespace!: string
		compartment_id!:           string
		instance_license_type?:    string
		admin_email!:              string
		waf_primary_domain?:       string
		tenancy_name!:             string
		defined_tags?: [_]: string
		idcs_access_token!:    string
		dr_region?:            string
		name!:                 string
		instance_access_type?: string
		upgrade_schedule?:     string
		description?:          string
		freeform_tags?: [_]: string
		tenancy_id!: string
	}
}
#data: {
	oce_instance: oce_instance_id!: string
	oce_instances: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
		tenancy_id?:     string
	}
}

