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
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		instanceagent_id!: string
		compartment_id!:   string
		name?:             string
		status?:           string
	}
	instance_available_plugins: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		name?:           string
		compartment_id!: string
		os_name!:        string
		os_version!:     string
	}
}

