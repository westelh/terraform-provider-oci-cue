package vn_monitoring

#resource: {
	attributes: {
		path_analysi: {
			type!:                  string
			path_analyzer_test_id?: string
			protocol_parameters?: [...{
				type!:             string
				destination_port?: int
				icmp_code?:        int
				icmp_type?:        int
				source_port?:      int
			}]
			cache_control?: string
			destination_endpoint?: [...{
				type!:                     string
				network_load_balancer_id?: string
				vnic_id?:                  string
				listener_id?:              string
				load_balancer_id?:         string
				subnet_id?:                string
				state:                     string
				address?:                  string
				instance_id?:              string
				vlan_id?:                  string
			}]
			protocol?: int
			query_options?: [...{
				is_bi_directional_analysis?: bool
			}]
			source_endpoint?: [...{
				state:                     string
				type!:                     string
				instance_id?:              string
				subnet_id?:                string
				load_balancer_id?:         string
				listener_id?:              string
				network_load_balancer_id?: string
				vnic_id?:                  string
				address?:                  string
				vlan_id?:                  string
			}]
			compartment_id?: string
		}
		path_analyzer_test: {
			defined_tags?: [_]: string
			query_options?: [...{
				is_bi_directional_analysis?: bool
			}]
			system_tags: [_]: string
			destination_endpoint!: [...{
				listener_id?:              string
				load_balancer_id?:         string
				vnic_id?:                  string
				type!:                     string
				instance_id?:              string
				address?:                  string
				vlan_id?:                  string
				network_load_balancer_id?: string
				state:                     string
				subnet_id?:                string
			}]
			protocol!: int
			source_endpoint!: [...{
				load_balancer_id?:         string
				instance_id?:              string
				subnet_id?:                string
				vlan_id?:                  string
				state:                     string
				type!:                     string
				listener_id?:              string
				network_load_balancer_id?: string
				vnic_id?:                  string
				address?:                  string
			}]
			freeform_tags?: [_]: string
			state:         string
			time_created:  string
			time_updated:  string
			display_name?: string
			protocol_parameters?: [...{
				source_port?:      int
				type!:             string
				destination_port?: int
				icmp_code?:        int
				icmp_type?:        int
			}]
			compartment_id!: string
		}
	}
	arguments: {
		path_analysi: {
			type!:           string
			compartment_id?: string
			protocol_parameters?: [...{
				type!:             string
				destination_port?: int
				icmp_code?:        int
				icmp_type?:        int
				source_port?:      int
			}]
			protocol?: int
			query_options?: [...{
				is_bi_directional_analysis?: bool
			}]
			source_endpoint?: [...{
				network_load_balancer_id?: string
				vnic_id?:                  string
				type!:                     string
				load_balancer_id?:         string
				vlan_id?:                  string
				address?:                  string
				subnet_id?:                string
				instance_id?:              string
				listener_id?:              string
			}]
			path_analyzer_test_id?: string
			cache_control?:         string
			destination_endpoint?: [...{
				instance_id?:              string
				type!:                     string
				address?:                  string
				network_load_balancer_id?: string
				load_balancer_id?:         string
				subnet_id?:                string
				vlan_id?:                  string
				vnic_id?:                  string
				listener_id?:              string
			}]
		}
		path_analyzer_test: {
			source_endpoint!: [...{
				type!:                     string
				listener_id?:              string
				load_balancer_id?:         string
				vlan_id?:                  string
				network_load_balancer_id?: string
				vnic_id?:                  string
				address?:                  string
				instance_id?:              string
				subnet_id?:                string
			}]
			display_name?: string
			destination_endpoint!: [...{
				vlan_id?:                  string
				vnic_id?:                  string
				type!:                     string
				instance_id?:              string
				load_balancer_id?:         string
				subnet_id?:                string
				address?:                  string
				listener_id?:              string
				network_load_balancer_id?: string
			}]
			query_options?: [...{
				is_bi_directional_analysis?: bool
			}]
			protocol_parameters?: [...{
				type!:             string
				destination_port?: int
				icmp_code?:        int
				icmp_type?:        int
				source_port?:      int
			}]
			compartment_id!: string
			protocol!:       int
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	path_analyzer_test: path_analyzer_test_id!: string
	path_analyzer_tests: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
}

