package oce

#resource: {
	attributes: oce_instance: {
		tenancy_name!:          string
		guid:                   string
		instance_license_type?: string
		system_tags: [_]: string
		freeform_tags?: [_]: string
		state_message:         string
		instance_access_type?: string
		upgrade_schedule?:     string
		time_updated:          string
		admin_email!:          string
		state:                 string
		lifecycle_details:     string
		instance_usage_type?:  string
		tenancy_id!:           string
		add_on_features?: [...string]
		service: [_]: string
		idcs_tenancy: string
		defined_tags?: [_]: string
		dr_region?:                string
		waf_primary_domain?:       string
		name!:                     string
		description?:              string
		object_storage_namespace!: string
		time_created:              string
		idcs_access_token!:        string
		compartment_id!:           string
	}
	arguments: oce_instance: {
		name!:                  string
		instance_license_type?: string
		freeform_tags?: [_]: string
		admin_email!:         string
		idcs_access_token!:   string
		instance_usage_type?: string
		tenancy_name!:        string
		waf_primary_domain?:  string
		add_on_features?: [...string]
		defined_tags?: [_]: string
		instance_access_type?:     string
		upgrade_schedule?:         string
		description?:              string
		compartment_id!:           string
		tenancy_id!:               string
		object_storage_namespace!: string
		dr_region?:                string
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

