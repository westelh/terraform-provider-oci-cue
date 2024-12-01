package apm

#resource: {
	attributes: apm_domain: {
		data_upload_endpoint: string
		time_created:         string
		defined_tags?: [_]: string
		state:         string
		display_name!: string
		description?:  string
		freeform_tags?: [_]: string
		time_updated:    string
		compartment_id!: string
		is_free_tier?:   bool
	}
	arguments: apm_domain: {
		display_name!: string
		description?:  string
		freeform_tags?: [_]: string
		compartment_id!: string
		defined_tags?: [_]: string
		is_free_tier?: bool
	}
}
#data: {
	apm_domain: apm_domain_id!: string
	apm_domains: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
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

