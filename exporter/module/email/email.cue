package email

#resource: {
	attributes: {
		email_return_path: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state:               string
			parent_resource_id!: string
			name?:               string
			compartment_id:      string
			dns_subdomain_name:  string
			system_tags: [_]: string
			lifecycle_details:  string
			time_created:       string
			time_updated:       string
			description?:       string
			cname_record_value: string
		}
		sender: {
			email_domain_id: string
			is_spf:          bool
			time_created:    string
			state:           string
			system_tags: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			email_address!: string
		}
		suppression: {
			time_created:         string
			time_last_suppressed: string
			compartment_id!:      string
			email_address!:       string
			error_detail:         string
			error_source:         string
			message_id:           string
			reason:               string
		}
		dkim: {
			name?:              string
			state:              string
			time_created:       string
			cname_record_value: string
			email_domain_id!:   string
			dns_subdomain_name: string
			txt_record_value:   string
			freeform_tags?: [_]: string
			description?: string
			defined_tags?: [_]: string
			lifecycle_details: string
			compartment_id:    string
			system_tags: [_]: string
			time_updated: string
		}
		email_domain: {
			active_dkim_id:             string
			is_spf:                     bool
			time_created:               string
			domain_verification_status: string
			defined_tags?: [_]: string
			system_tags: [_]: string
			compartment_id!: string
			name!:           string
			state:           string
			freeform_tags?: [_]: string
			description?:            string
			domain_verification_id?: string
		}
	}
	arguments: {
		email_return_path: {
			description?:        string
			name?:               string
			parent_resource_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		sender: {
			compartment_id!: string
			email_address!:  string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		suppression: {
			compartment_id!: string
			email_address!:  string
		}
		dkim: {
			description?:     string
			email_domain_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			name?: string
		}
		email_domain: {
			compartment_id!: string
			name!:           string
			defined_tags?: [_]: string
			description?:            string
			domain_verification_id?: string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	configuration: compartment_id!: string
	dkim: dkim_id!: string
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
	email_domains: {
		compartment_id!: string
		id?:             string
		name?:           string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	email_return_path: email_return_path_id!: string
	suppressions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:                        string
		email_address?:                         string
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
	}
	email_domain: email_domain_id!: string
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
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		domain?:         string
		email_address?:  string
		state?:          string
	}
	suppression: suppression_id!: string
}

