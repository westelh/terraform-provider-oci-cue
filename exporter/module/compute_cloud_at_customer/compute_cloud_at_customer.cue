package compute_cloud_at_customer

#resource: {
	attributes: {
		ccc_infrastructure: {
			state:             string
			connection_state?: string
			defined_tags?: [_]: string
			short_name:               string
			ccc_upgrade_schedule_id?: string
			infrastructure_inventory: [...{
				management_node_count:          int
				performance_storage_tray_count: int
				serial_number:                  string
				capacity_storage_tray_count:    int
				compute_node_count:             int
			}]
			provisioning_fingerprint: string
			provisioning_pin:         string
			time_updated:             string
			compartment_id!:          string
			upgrade_information: [...{
				time_of_scheduled_upgrade:  string
				current_version:            string
				is_active:                  bool
				scheduled_upgrade_duration: string
			}]
			display_name!: string
			freeform_tags?: [_]: string
			infrastructure_network_configuration: [...{
				infrastructure_routing_static: [...{
					uplink_hsrp_group: int
					uplink_vlan:       int
				}]
				management_nodes: [...{
					hostname: string
					ip:       string
				}]
				spine_vip: string
				spine_ips: [...string]
				uplink_netmask:                       string
				uplink_vlan_mtu:                      int
				uplink_domain:                        string
				uplink_port_count:                    int
				uplink_port_forward_error_correction: string
				uplink_gateway_ip:                    string
				mgmt_vip_ip:                          string
				infrastructure_routing_dynamic: [...{
					bgp_topology: string
					oracle_asn:   int
					peer_information: [...{
						asn: int
						ip:  string
					}]
				}]
				dns_ips: [...string]
				mgmt_vip_hostname:         string
				uplink_port_speed_in_gbps: int
			}]
			time_created:        string
			connection_details?: string
			subnet_id!:          string
			description?:        string
			lifecycle_details:   string
			system_tags: [_]: string
		}
		ccc_upgrade_schedule: {
			state: string
			infrastructure_ids: [...string]
			description?: string
			freeform_tags?: [_]: string
			time_updated: string
			time_created: string
			defined_tags?: [_]: string
			lifecycle_details: string
			system_tags: [_]: string
			compartment_id!: string
			display_name!:   string
			events!: [...{
				description!:                string
				schedule_event_duration!:    string
				time_start!:                 string
				schedule_event_recurrences?: string
				name:                        string
			}]
		}
	}
	arguments: {
		ccc_infrastructure: {
			connection_state?: string
			defined_tags?: [_]: string
			description?:             string
			display_name!:            string
			connection_details?:      string
			ccc_upgrade_schedule_id?: string
			freeform_tags?: [_]: string
			subnet_id!:      string
			compartment_id!: string
		}
		ccc_upgrade_schedule: {
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
			events!: [...{
				description!:                string
				schedule_event_duration!:    string
				time_start!:                 string
				schedule_event_recurrences?: string
			}]
		}
	}
}
#data: {
	ccc_upgrade_schedule: ccc_upgrade_schedule_id!: string
	ccc_upgrade_schedules: {
		display_name_contains?: string
		state?:                 string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		access_level?:              string
		ccc_upgrade_schedule_id?:   string
		compartment_id_in_subtree?: bool
		compartment_id?:            string
		display_name?:              string
	}
	ccc_infrastructure: ccc_infrastructure_id!: string
	ccc_infrastructures: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?:            string
		access_level?:              string
		ccc_infrastructure_id?:     string
		compartment_id_in_subtree?: bool
		display_name?:              string
		display_name_contains?:     string
	}
}

