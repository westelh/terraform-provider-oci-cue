package limits

#resource: {
	attributes: quota: {
		compartment_id!: string
		description!:    string
		locks?: [...{
			type!:                string
			message?:             string
			related_resource_id?: string
			time_created:         string
		}]
		time_created: string
		name!:        string
		statements!: [...string]
		is_lock_override: bool
		state:            string
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
	}
	arguments: quota: {
		description!: string
		freeform_tags?: [_]: string
		locks?: [...{
			type!:                string
			message?:             string
			related_resource_id?: string
		}]
		name!: string
		statements!: [...string]
		defined_tags?: [_]: string
		compartment_id!: string
	}
}
#data: {
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
		availability_domain?: string
		service_name!:        string
		subscription_id?:     string
		compartment_id!:      string
		limit_name!:          string
	}
	services: {
		subscription_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	limit_definitions: {
		name?:            string
		service_name?:    string
		subscription_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	limit_values: {
		availability_domain?: string
		compartment_id!:      string
		name?:                string
		scope_type?:          string
		service_name!:        string
		subscription_id?:     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	quota: quota_id!: string
}

