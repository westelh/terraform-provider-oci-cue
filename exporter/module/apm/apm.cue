package apm

#resource: {
	attributes: apm_domain: {
		time_updated:  string
		display_name!: string
		freeform_tags?: [_]: string
		time_created:    string
		compartment_id!: string
		defined_tags?: [_]: string
		data_upload_endpoint: string
		description?:         string
		is_free_tier?:        bool
		state:                string
	}
	arguments: apm_domain: {
		freeform_tags?: [_]: string
		is_free_tier?:   bool
		compartment_id!: string
		defined_tags?: [_]: string
		description?:  string
		display_name!: string
	}
}
#data: {
	apm_domain: apm_domain_id!: string
	apm_domains: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	data_keys: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		apm_domain_id!: string
		data_key_type?: string
	}
}

