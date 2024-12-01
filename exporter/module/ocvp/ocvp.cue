package ocvp

#resource: {
	attributes: {
		esxi_host: {
			next_sku?:                           string
			sddc_id?:                            string
			time_created:                        string
			capacity_reservation_id?:            string
			display_name?:                       string
			non_upgraded_esxi_host_id?:          string
			compute_availability_domain?:        string
			is_billing_continuation_in_progress: bool
			billing_donor_host_id?:              string
			esxi_software_version?:              string
			host_ocpu_count?:                    float
			cluster_id?:                         string
			is_billing_swapping_in_progress:     bool
			current_commitment:                  string
			compartment_id:                      string
			compute_instance_id:                 string
			swap_billing_host_id:                string
			defined_tags?: [_]: string
			state:                             string
			failed_esxi_host_id?:              string
			billing_contract_end_date:         string
			replacement_esxi_host_id:          string
			upgraded_replacement_esxi_host_id: string
			host_shape_name?:                  string
			time_updated:                      string
			vmware_software_version:           string
			grace_period_end_date:             string
			next_commitment:                   string
			freeform_tags?: [_]: string
			current_sku?: string
		}
		sddc: {
			display_name?:            string
			compartment_id!:          string
			initial_host_shape_name?: string
			hcx_action?:              string
			hcx_on_prem_key:          string
			vcenter_private_ip_id:    string
			upgrade_licenses: [...{
				license_type: string
				license_key:  string
			}]
			time_hcx_billing_cycle_end: string
			nsx_edge_uplink_ip_id:      string
			vsphere_upgrade_objects: [...{
				download_link:    string
				link_description: string
			}]
			nsx_manager_fqdn:         string
			vmware_software_version!: string
			initial_configuration?: [...{
				initial_cluster_configurations!: [...{
					workload_network_cidr?: string, compute_availability_domain!: string, network_configuration?: [...{
								nsx_edge_uplink2vlan_id?:             string, vsan_vlan_id!: string, hcx_vlan_id?: string, nsx_edge_uplink1vlan_id?: string, replication_vlan_id?: string, provisioning_vlan_id?: string, vsphere_vlan_id?: string, nsx_vtep_vlan_id!: string, vmotion_vlan_id!: string, nsx_edge_vtep_vlan_id!: string, provisioning_subnet_id!: string
					}]
					vsphere_type!: string, initial_host_ocpu_count?: float, instance_display_name_prefix?: string, datastores?: [...{
							datastore_type!:                  string, block_volume_ids!: [...string]
					}]
					actual_esxi_hosts_count: int, initial_host_shape_name?: string, display_name?: string, is_shielded_instance_enabled?: bool, esxi_hosts_count!: int, capacity_reservation_id?: string, initial_commitment?: string
				}]
			}]
			nsx_edge_vtep_vlan_id?:   string
			vsan_vlan_id?:            string
			nsx_edge_uplink2vlan_id?: string
			vsphere_vlan_id?:         string
			hcx_on_prem_licenses: [...{
				activation_key: string
				status:         string
				system_name:    string
			}]
			freeform_tags?: [_]: string
			vcenter_fqdn: string
			reserving_hcx_on_premise_license_keys?: [...string]
			is_hcx_enterprise_enabled:       bool
			vsphere_upgrade_guide:           string
			time_created:                    string
			nsx_manager_private_ip_id:       string
			hcx_private_ip_id:               string
			nsx_edge_uplink1vlan_id?:        string
			hcx_vlan_id?:                    string
			time_hcx_license_status_updated: string
			instance_display_name_prefix?:   string
			provisioning_subnet_id?:         string
			nsx_overlay_segment_name:        string
			ssh_authorized_keys!:            string
			initial_host_ocpu_count?:        float
			is_hcx_pending_downgrade:        bool
			nsx_manager_initial_password:    string
			hcx_mode:                        string
			defined_tags?: [_]: string
			refresh_hcx_license_status?:   bool
			is_single_host_sddc?:          bool
			hcx_initial_password:          string
			esxi_hosts_count?:             int
			is_shielded_instance_enabled?: bool
			capacity_reservation_id?:      string
			esxi_software_version?:        string
			state:                         string
			vcenter_username:              string
			actual_esxi_hosts_count:       int
			replication_vlan_id?:          string
			provisioning_vlan_id?:         string
			initial_sku?:                  string
			time_updated:                  string
			vmotion_vlan_id?:              string
			is_hcx_enabled?:               bool
			compute_availability_domain?:  string
			workload_network_cidr?:        string
			vcenter_initial_password:      string
			hcx_fqdn:                      string
			datastores?: [...{
				block_volume_ids!: [...string]
				datastore_type!: string
				capacity:        float
			}]
			nsx_vtep_vlan_id?:    string
			nsx_manager_username: string
			clusters_count:       int
		}
		cluster: {
			instance_display_name_prefix?: string
			datastores?: [...{
				block_volume_ids!: [...string]
				datastore_type!: string
				capacity:        float
			}]
			initial_host_shape_name?: string
			workload_network_cidr?:   string
			upgrade_licenses: [...{
				license_type: string
				license_key:  string
			}]
			freeform_tags?: [_]: string
			initial_commitment?:           string
			is_shielded_instance_enabled?: bool
			time_created:                  string
			initial_host_ocpu_count?:      float
			capacity_reservation_id?:      string
			compartment_id:                string
			display_name?:                 string
			state:                         string
			vmware_software_version?:      string
			esxi_hosts_count!:             int
			sddc_id!:                      string
			network_configuration!: [...{
				replication_vlan_id?:     string
				nsx_edge_vtep_vlan_id!:   string
				vmotion_vlan_id!:         string
				vsan_vlan_id!:            string
				nsx_edge_uplink1vlan_id?: string
				nsx_edge_uplink2vlan_id?: string
				vsphere_vlan_id?:         string
				provisioning_vlan_id?:    string
				nsx_vtep_vlan_id!:        string
				provisioning_subnet_id!:  string
				hcx_vlan_id?:             string
			}]
			vsphere_upgrade_objects: [...{
				download_link:    string
				link_description: string
			}]
			compute_availability_domain!: string
			esxi_software_version?:       string
			actual_esxi_hosts_count:      int
			defined_tags?: [_]: string
			time_updated: string
			vsphere_type: string
		}
	}
	arguments: {
		esxi_host: {
			freeform_tags?: [_]: string
			compute_availability_domain?: string
			display_name?:                string
			sddc_id?:                     string
			capacity_reservation_id?:     string
			host_ocpu_count?:             float
			billing_donor_host_id?:       string
			host_shape_name?:             string
			non_upgraded_esxi_host_id?:   string
			failed_esxi_host_id?:         string
			defined_tags?: [_]: string
			next_sku?:              string
			cluster_id?:            string
			current_sku?:           string
			esxi_software_version?: string
		}
		sddc: {
			vsphere_vlan_id?: string
			vsan_vlan_id?:    string
			is_hcx_enabled?:  bool
			reserving_hcx_on_premise_license_keys?: [...string]
			hcx_vlan_id?:             string
			provisioning_subnet_id?:  string
			vmware_software_version!: string
			esxi_hosts_count?:        int
			defined_tags?: [_]: string
			is_shielded_instance_enabled?: bool
			esxi_software_version?:        string
			provisioning_vlan_id?:         string
			capacity_reservation_id?:      string
			workload_network_cidr?:        string
			initial_configuration?: [...{
				initial_cluster_configurations!: [...{
					is_shielded_instance_enabled?: bool, display_name?: string, datastores?: [...{
									datastore_type!:     string, block_volume_ids!: [...string]
					}]
					workload_network_cidr?: string, compute_availability_domain!: string, initial_host_ocpu_count?: float, esxi_hosts_count!: int, initial_host_shape_name?:    string, instance_display_name_prefix?: string, capacity_reservation_id?: string, network_configuration?: [...{
								provisioning_vlan_id?:                string, vsphere_vlan_id?:         string, vsan_vlan_id!:    string, nsx_edge_uplink2vlan_id?: string, provisioning_subnet_id!:       string, hcx_vlan_id?:             string, nsx_edge_uplink1vlan_id?: string, nsx_vtep_vlan_id!: string, vmotion_vlan_id!: string, replication_vlan_id?: string, nsx_edge_vtep_vlan_id!: string
					}]
					vsphere_type!: string, initial_commitment?: string
				}]
			}]
			initial_host_shape_name?:     string
			ssh_authorized_keys!:         string
			hcx_action?:                  string
			replication_vlan_id?:         string
			nsx_edge_uplink1vlan_id?:     string
			initial_sku?:                 string
			initial_host_ocpu_count?:     float
			nsx_vtep_vlan_id?:            string
			nsx_edge_vtep_vlan_id?:       string
			compartment_id!:              string
			display_name?:                string
			compute_availability_domain?: string
			datastores?: [...{
				block_volume_ids!: [...string]
				datastore_type!: string
			}]
			instance_display_name_prefix?: string
			freeform_tags?: [_]: string
			is_single_host_sddc?:        bool
			nsx_edge_uplink2vlan_id?:    string
			refresh_hcx_license_status?: bool
			vmotion_vlan_id?:            string
		}
		cluster: {
			datastores?: [...{
				block_volume_ids!: [...string]
				datastore_type!: string
			}]
			capacity_reservation_id?: string
			vmware_software_version?: string
			workload_network_cidr?:   string
			esxi_hosts_count!:        int
			network_configuration!: [...{
				hcx_vlan_id?:             string
				provisioning_vlan_id?:    string
				nsx_edge_uplink1vlan_id?: string
				vsphere_vlan_id?:         string
				nsx_edge_vtep_vlan_id!:   string
				nsx_vtep_vlan_id!:        string
				vmotion_vlan_id!:         string
				vsan_vlan_id!:            string
				provisioning_subnet_id!:  string
				replication_vlan_id?:     string
				nsx_edge_uplink2vlan_id?: string
			}]
			display_name?:                 string
			instance_display_name_prefix?: string
			sddc_id!:                      string
			initial_host_shape_name?:      string
			compute_availability_domain!:  string
			initial_host_ocpu_count?:      float
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			initial_commitment?:           string
			is_shielded_instance_enabled?: bool
			esxi_software_version?:        string
		}
	}
}
#data: {
	cluster: cluster_id!: string
	clusters: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		sddc_id?:        string
	}
	esxi_host: esxi_host_id!: string
	retrieve_password: {
		type!:    string
		sddc_id!: string
	}
	sddcs: {
		compute_availability_domain?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	supported_skus: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		host_shape_name?: string
	}
	supported_vmware_software_versions: {
		compartment_id!:     string
		host_shape_name?:    string
		version?:            string
		version_to_upgrade?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	esxi_hosts: {
		is_swap_billing_only?: bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		sddc_id?:                string
		is_billing_donors_only?: bool
		display_name?:           string
		state?:                  string
		cluster_id?:             string
		compartment_id?:         string
		compute_instance_id?:    string
	}
	sddc: sddc_id!: string
	supported_commitments: {
		host_shape_name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	supported_host_shapes: {
		is_single_host_sddc_supported?: bool
		name?:                          string
		sddc_type?:                     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:          string
		initial_host_shape_name?: string
	}
}

