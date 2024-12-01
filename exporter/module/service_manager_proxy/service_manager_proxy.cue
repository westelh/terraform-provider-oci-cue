package service_manager_proxy

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	service_environment: {
		service_environment_id!: string
		compartment_id!:         string
	}
	service_environments: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:           string
		display_name?:             string
		service_environment_id?:   string
		service_environment_type?: string
	}
}

