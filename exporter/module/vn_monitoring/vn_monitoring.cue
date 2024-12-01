package vn_monitoring

#resource: {
	attributes: {
		path_analysi: {
			type!: string
			destination_endpoint?: [...{
				network_load_balancer_id?: string
				vnic_id?:                  string
				instance_id?:              string
				subnet_id?:                string
				state:                     string
				vlan_id?:                  string
				address?:                  string
				listener_id?:              string
				type!:                     string
				load_balancer_id?:         string
			}]
			compartment_id?:        string
			path_analyzer_test_id?: string
			protocol?:              int
			query_options?: [...{
				is_bi_directional_analysis?: bool
			}]
			protocol_parameters?: [...{
				destination_port?: int
				icmp_code?:        int
				icmp_type?:        int
				source_port?:      int
				type!:             string
			}]
			source_endpoint?: [...{
				vnic_id?:                  string
				type!:                     string
				subnet_id?:                string
				state:                     string
				listener_id?:              string
				load_balancer_id?:         string
				network_load_balancer_id?: string
				vlan_id?:                  string
				address?:                  string
				instance_id?:              string
			}]
			cache_control?: string
		}
		path_analyzer_test: {
			query_options?: [...{
				is_bi_directional_analysis?: bool
			}]
			freeform_tags?: [_]: string
			protocol!: int
			system_tags: [_]: string
			display_name?: string
			state:         string
			time_created:  string
			source_endpoint!: [...{
				load_balancer_id?:         string
				subnet_id?:                string
				address?:                  string
				network_load_balancer_id?: string
				vlan_id?:                  string
				vnic_id?:                  string
				type!:                     string
				listener_id?:              string
				instance_id?:              string
				state:                     string
			}]
			defined_tags?: [_]: string
			time_updated:    string
			compartment_id!: string
			destination_endpoint!: [...{
				vlan_id?:                  string
				vnic_id?:                  string
				address?:                  string
				listener_id?:              string
				type!:                     string
				network_load_balancer_id?: string
				subnet_id?:                string
				instance_id?:              string
				load_balancer_id?:         string
				state:                     string
			}]
			protocol_parameters?: [...{
				type!:             string
				destination_port?: int
				icmp_code?:        int
				icmp_type?:        int
				source_port?:      int
			}]
		}
	}
	arguments: {
		path_analysi: {
			destination_endpoint?: [...{
				type!:                     string
				address?:                  string
				load_balancer_id?:         string
				listener_id?:              string
				network_load_balancer_id?: string
				vlan_id?:                  string
				subnet_id?:                string
				vnic_id?:                  string
				instance_id?:              string
			}]
			protocol_parameters?: [...{
				icmp_type?:        int
				source_port?:      int
				type!:             string
				destination_port?: int
				icmp_code?:        int
			}]
			compartment_id?: string
			query_options?: [...{
				is_bi_directional_analysis?: bool
			}]
			type!: string
			source_endpoint?: [...{
				instance_id?:              string
				load_balancer_id?:         string
				network_load_balancer_id?: string
				address?:                  string
				listener_id?:              string
				vlan_id?:                  string
				vnic_id?:                  string
				type!:                     string
				subnet_id?:                string
			}]
			cache_control?:         string
			path_analyzer_test_id?: string
			protocol?:              int
		}
		path_analyzer_test: {
			destination_endpoint!: [...{
				vlan_id?:                  string
				type!:                     string
				listener_id?:              string
				instance_id?:              string
				address?:                  string
				network_load_balancer_id?: string
				subnet_id?:                string
				vnic_id?:                  string
				load_balancer_id?:         string
			}]
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			protocol_parameters?: [...{
				destination_port?: int
				icmp_code?:        int
				icmp_type?:        int
				source_port?:      int
				type!:             string
			}]
			source_endpoint!: [...{
				load_balancer_id?:         string
				vlan_id?:                  string
				vnic_id?:                  string
				address?:                  string
				instance_id?:              string
				network_load_balancer_id?: string
				subnet_id?:                string
				type!:                     string
				listener_id?:              string
			}]
			protocol!:       int
			display_name?:   string
			compartment_id!: string
			query_options?: [...{
				is_bi_directional_analysis?: bool
			}]
		}
	}
}
#data: {
	path_analyzer_test: path_analyzer_test_id!: string
	path_analyzer_tests: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
}

