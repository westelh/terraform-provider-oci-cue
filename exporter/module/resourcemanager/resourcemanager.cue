package resourcemanager

#resource: {
	attributes: private_endpoint: {
		dns_zones?: [...string]
		source_ips: [...string]
		description?: string
		time_created: string
		defined_tags?: [_]: string
		vcn_id!: string
		freeform_tags?: [_]: string
		is_used_with_configuration_source_provider?: bool
		compartment_id!:                             string
		display_name!:                               string
		nsg_id_list?: [...string]
		state:      string
		subnet_id!: string
	}
	arguments: private_endpoint: {
		display_name!: string
		nsg_id_list?: [...string]
		vcn_id!: string
		freeform_tags?: [_]: string
		compartment_id!:                             string
		description?:                                string
		is_used_with_configuration_source_provider?: bool
		subnet_id!:                                  string
		defined_tags?: [_]: string
		dns_zones?: [...string]
	}
}
#data: {
	stack_tf_state: {
		stack_id!:   string
		local_path!: string
	}
	stacks: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	private_endpoint: private_endpoint_id!: string
	private_endpoint_reachable_ip: {
		private_endpoint_id!: string
		private_ip!:          string
	}
	private_endpoints: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?:      string
		display_name?:        string
		private_endpoint_id?: string
		vcn_id?:              string
	}
	stack: stack_id!: string
}

