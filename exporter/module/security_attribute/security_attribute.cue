package security_attribute

#resource: {
	attributes: {
		security_attribute: {
			time_created:                      string
			description!:                      string
			is_retired?:                       bool
			type:                              string
			name!:                             string
			compartment_id:                    string
			security_attribute_namespace_name: string
			security_attribute_namespace_id!:  string
			validator?: [...{
				validator_type!: string
				values?: [...string]
			}]
			state: string
		}
		security_attribute_namespace: {
			name!: string
			defined_tags?: [_]: string
			is_retired?: bool
			state:       string
			system_tags: [_]: string
			description!: string
			freeform_tags?: [_]: string
			compartment_id!: string
			mode: [...string]
			time_created: string
		}
	}
	arguments: {
		security_attribute: {
			validator?: [...{
				validator_type!: string
				values?: [...string]
			}]
			description!:                     string
			is_retired?:                      bool
			name!:                            string
			security_attribute_namespace_id!: string
		}
		security_attribute_namespace: {
			compartment_id!: string
			defined_tags?: [_]: string
			is_retired?:  bool
			name!:        string
			description!: string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	security_attribute: {
		security_attribute_namespace_id!: string
		security_attribute_name!:         string
	}
	security_attribute_namespace: security_attribute_namespace_id!: string
	security_attribute_namespaces: {
		compartment_id?:            string
		compartment_id_in_subtree?: bool
		name?:                      string
		state?:                     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	security_attributes: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		security_attribute_namespace_id!: string
		state?:                           string
	}
}

