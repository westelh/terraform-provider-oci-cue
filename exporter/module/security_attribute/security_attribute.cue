package security_attribute

#resource: {
	attributes: {
		security_attribute: {
			security_attribute_namespace_name: string
			time_created:                      string
			compartment_id:                    string
			validator?: [...{
				validator_type!: string
				values?: [...string]
			}]
			is_retired?:                      bool
			type:                             string
			description!:                     string
			security_attribute_namespace_id!: string
			state:                            string
			name!:                            string
		}
		security_attribute_namespace: {
			description!: string
			system_tags: [_]: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state: string
			mode: [...string]
			compartment_id!: string
			is_retired?:     bool
			time_created:    string
			name!:           string
		}
	}
	arguments: {
		security_attribute: {
			is_retired?: bool
			validator?: [...{
				validator_type!: string
				values?: [...string]
			}]
			name!:                            string
			description!:                     string
			security_attribute_namespace_id!: string
		}
		security_attribute_namespace: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_retired?:     bool
			compartment_id!: string
			description!:    string
			name!:           string
		}
	}
}
#data: {
	security_attribute: {
		security_attribute_name!:         string
		security_attribute_namespace_id!: string
	}
	security_attribute_namespace: security_attribute_namespace_id!: string
	security_attribute_namespaces: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:            string
		compartment_id_in_subtree?: bool
		name?:                      string
		state?:                     string
	}
	security_attributes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		security_attribute_namespace_id!: string
		state?:                           string
	}
}

