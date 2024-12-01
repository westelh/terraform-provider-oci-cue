package resourcemanager

#resource: {
	attributes: private_endpoint: {
		description?:  string
		display_name!: string
		subnet_id!:    string
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
		nsg_id_list?: [...string]
		state:           string
		compartment_id!: string
		vcn_id!:         string
		time_created:    string
		source_ips: [...string]
		dns_zones?: [...string]
		is_used_with_configuration_source_provider?: bool
	}
	arguments: private_endpoint: {
		dns_zones?: [...string]
		compartment_id!: string
		description?:    string
		display_name!:   string
		subnet_id!:      string
		vcn_id!:         string
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
		nsg_id_list?: [...string]
		is_used_with_configuration_source_provider?: bool
	}
}
#data: {
	stacks: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	private_endpoint: private_endpoint_id!: string
	private_endpoint_reachable_ip: {
		private_endpoint_id!: string
		private_ip!:          string
	}
	private_endpoints: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:      string
		display_name?:        string
		private_endpoint_id?: string
		vcn_id?:              string
	}
	stack: stack_id!: string
	stack_tf_state: {
		stack_id!:   string
		local_path!: string
	}
}

