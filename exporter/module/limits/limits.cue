package limits

#resource: {
	attributes: quota: {
		name!: string
		statements!: [...string]
		defined_tags?: [_]: string
		state:           string
		compartment_id!: string
		freeform_tags?: [_]: string
		is_lock_override: bool
		time_created:     string
		description!:     string
		locks?: [...{
			message?:             string
			related_resource_id?: string
			time_created:         string
			type!:                string
		}]
	}
	arguments: quota: {
		freeform_tags?: [_]: string
		name!: string
		statements!: [...string]
		defined_tags?: [_]: string
		locks?: [...{
			type!:                string
			message?:             string
			related_resource_id?: string
		}]
		compartment_id!: string
		description!:    string
	}
}
#data: {
	limit_definitions: {
		compartment_id!:  string
		name?:            string
		service_name?:    string
		subscription_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	limit_values: {
		scope_type?:      string
		service_name!:    string
		subscription_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
		name?:                string
	}
	quota: quota_id!: string
	quotas: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
		state?:          string
	}
	resource_availability: {
		subscription_id?:     string
		compartment_id!:      string
		service_name!:        string
		availability_domain?: string
		limit_name!:          string
	}
	services: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:  string
		subscription_id?: string
	}
}

