package appmgmt_control

#resource: {
	attributes: monitor_plugin_management: {
		state:                                  string
		monitored_instance_id!:                 string
		compartment_id:                         string
		monitored_instance_description:         string
		monitored_instance_display_name:        string
		monitored_instance_management_agent_id: string
	}
	arguments: monitor_plugin_management: monitored_instance_id!: string
}
#data: {
	monitored_instance: monitored_instance_id!: string
	monitored_instances: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
}

