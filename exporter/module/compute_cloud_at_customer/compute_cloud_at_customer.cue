package compute_cloud_at_customer

#resource: {
	attributes: {
		ccc_infrastructure: {
			state:             string
			connection_state?: string
			provisioning_pin:  string
			upgrade_information: [...{
				time_of_scheduled_upgrade:  string
				current_version:            string
				is_active:                  bool
				scheduled_upgrade_duration: string
			}]
			lifecycle_details: string
			time_updated:      string
			description?:      string
			display_name!:     string
			system_tags: [_]: string
			connection_details?: string
			defined_tags?: [_]: string
			infrastructure_inventory: [...{
				serial_number:                  string
				capacity_storage_tray_count:    int
				compute_node_count:             int
				management_node_count:          int
				performance_storage_tray_count: int
			}]
			ccc_upgrade_schedule_id?: string
			subnet_id!:               string
			infrastructure_network_configuration: [...{
				infrastructure_routing_dynamic: [...{
					peer_information: [...{
						asn: int
						ip:  string
					}]
					bgp_topology: string
					oracle_asn:   int
				}]
				uplink_vlan_mtu: int
				infrastructure_routing_static: [...{
					uplink_vlan:       int
					uplink_hsrp_group: int
				}]
				mgmt_vip_hostname:         string
				uplink_port_speed_in_gbps: int
				mgmt_vip_ip:               string
				management_nodes: [...{
					hostname: string
					ip:       string
				}]
				uplink_port_count: int
				uplink_domain:     string
				dns_ips: [...string]
				spine_vip:         string
				uplink_gateway_ip: string
				uplink_netmask:    string
				spine_ips: [...string]
				uplink_port_forward_error_correction: string
			}]
			compartment_id!: string
			freeform_tags?: [_]: string
			provisioning_fingerprint: string
			short_name:               string
			time_created:             string
		}
		ccc_upgrade_schedule: {
			defined_tags?: [_]: string
			state:        string
			time_updated: string
			description?: string
			system_tags: [_]: string
			events!: [...{
				schedule_event_duration!:    string
				time_start!:                 string
				schedule_event_recurrences?: string
				name:                        string
				description!:                string
			}]
			display_name!:   string
			time_created:    string
			compartment_id!: string
			infrastructure_ids: [...string]
			freeform_tags?: [_]: string
			lifecycle_details: string
		}
	}
	arguments: {
		ccc_infrastructure: {
			defined_tags?: [_]: string
			compartment_id!:     string
			connection_details?: string
			subnet_id!:          string
			connection_state?:   string
			description?:        string
			display_name!:       string
			freeform_tags?: [_]: string
			ccc_upgrade_schedule_id?: string
		}
		ccc_upgrade_schedule: {
			compartment_id!: string
			description?:    string
			display_name!:   string
			events!: [...{
				description!:                string
				schedule_event_duration!:    string
				time_start!:                 string
				schedule_event_recurrences?: string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	ccc_infrastructure: ccc_infrastructure_id!: string
	ccc_infrastructures: {
		display_name_contains?: string
		state?:                 string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		ccc_infrastructure_id?:     string
		access_level?:              string
		compartment_id?:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
	}
	ccc_upgrade_schedule: ccc_upgrade_schedule_id!: string
	ccc_upgrade_schedules: {
		ccc_upgrade_schedule_id?: string
		compartment_id?:          string
		display_name?:            string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?: bool
		state?:                     string
		display_name_contains?:     string
		access_level?:              string
	}
}

