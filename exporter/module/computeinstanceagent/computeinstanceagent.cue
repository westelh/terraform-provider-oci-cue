package computeinstanceagent

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	instance_agent_plugin: {
		instanceagent_id!: string
		compartment_id!:   string
		plugin_name!:      string
	}
	instance_agent_plugins: {
		name?:   string
		status?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		instanceagent_id!: string
		compartment_id!:   string
	}
	instance_available_plugins: {
		os_version!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		name?:           string
		compartment_id!: string
		os_name!:        string
	}
}

