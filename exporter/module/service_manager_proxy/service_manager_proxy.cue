package service_manager_proxy

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	service_environments: {
		display_name?:             string
		service_environment_id?:   string
		service_environment_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	service_environment: {
		compartment_id!:         string
		service_environment_id!: string
	}
}

