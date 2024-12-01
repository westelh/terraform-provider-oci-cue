package email

#resource: {
	attributes: {
		dkim: {
			dns_subdomain_name: string
			system_tags: [_]: string
			time_updated:     string
			email_domain_id!: string
			freeform_tags?: [_]: string
			compartment_id: string
			time_created:   string
			defined_tags?: [_]: string
			name?:              string
			lifecycle_details:  string
			description?:       string
			cname_record_value: string
			state:              string
			txt_record_value:   string
		}
		email_domain: {
			name!: string
			defined_tags?: [_]: string
			description?:            string
			domain_verification_id?: string
			freeform_tags?: [_]: string
			is_spf: bool
			state:  string
			system_tags: [_]: string
			time_created:               string
			active_dkim_id:             string
			domain_verification_status: string
			compartment_id!:            string
		}
		email_return_path: {
			lifecycle_details: string
			system_tags: [_]: string
			description?:       string
			cname_record_value: string
			defined_tags?: [_]: string
			name?:          string
			compartment_id: string
			state:          string
			time_created:   string
			freeform_tags?: [_]: string
			dns_subdomain_name:  string
			parent_resource_id!: string
			time_updated:        string
		}
		sender: {
			state: string
			system_tags: [_]: string
			time_created:   string
			email_address!: string
			freeform_tags?: [_]: string
			is_spf:          bool
			compartment_id!: string
			defined_tags?: [_]: string
			email_domain_id: string
		}
		suppression: {
			message_id:           string
			reason:               string
			time_created:         string
			time_last_suppressed: string
			compartment_id!:      string
			email_address!:       string
			error_detail:         string
			error_source:         string
		}
	}
	arguments: {
		dkim: {
			description?: string
			freeform_tags?: [_]: string
			email_domain_id!: string
			name?:            string
			defined_tags?: [_]: string
		}
		email_domain: {
			name!: string
			defined_tags?: [_]: string
			description?:            string
			domain_verification_id?: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		email_return_path: {
			parent_resource_id!: string
			defined_tags?: [_]: string
			description?: string
			name?:        string
			freeform_tags?: [_]: string
		}
		sender: {
			compartment_id!: string
			defined_tags?: [_]: string
			email_address!: string
			freeform_tags?: [_]: string
		}
		suppression: {
			compartment_id!: string
			email_address!:  string
		}
	}
}
#data: {
	dkims: {
		email_domain_id!: string
		id?:              string
		name?:            string
		state?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	email_domain: email_domain_id!: string
	email_return_path: email_return_path_id!: string
	dkim: dkim_id!: string
	email_domains: {
		compartment_id!: string
		id?:             string
		name?:           string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	email_return_paths: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:     string
		id?:                 string
		name?:               string
		parent_resource_id?: string
		state?:              string
	}
	sender: sender_id!: string
	senders: {
		email_address?: string
		state?:         string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		domain?:         string
	}
	suppression: suppression_id!: string
	suppressions: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:                        string
		email_address?:                         string
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
	}
	configuration: compartment_id!: string
}

