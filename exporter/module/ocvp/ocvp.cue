package ocvp

#resource: {
	attributes: {
		esxi_host: {
			compartment_id:                  string
			swap_billing_host_id:            string
			host_shape_name?:                string
			replacement_esxi_host_id:        string
			current_sku?:                    string
			display_name?:                   string
			compute_instance_id:             string
			is_billing_swapping_in_progress: bool
			vmware_software_version:         string
			esxi_software_version?:          string
			grace_period_end_date:           string
			time_updated:                    string
			billing_donor_host_id?:          string
			compute_availability_domain?:    string
			failed_esxi_host_id?:            string
			host_ocpu_count?:                float
			billing_contract_end_date:       string
			freeform_tags?: [_]: string
			next_sku?: string
			state:     string
			defined_tags?: [_]: string
			current_commitment:                  string
			next_commitment:                     string
			cluster_id?:                         string
			upgraded_replacement_esxi_host_id:   string
			sddc_id?:                            string
			time_created:                        string
			non_upgraded_esxi_host_id?:          string
			is_billing_continuation_in_progress: bool
			capacity_reservation_id?:            string
		}
		sddc: {
			vcenter_initial_password: string
			nsx_edge_uplink2vlan_id?: string
			hcx_fqdn:                 string
			is_hcx_pending_downgrade: bool
			clusters_count:           int
			capacity_reservation_id?: string
			initial_configuration?: [...{
				initial_cluster_configurations!: [...{
					compute_availability_domain!: string, workload_network_cidr?: string, initial_commitment?:      string, initial_host_ocpu_count?: float, actual_esxi_hosts_count: int, network_configuration?: [...{
									provisioning_subnet_id!:        string, nsx_edge_uplink1vlan_id?: string, nsx_edge_uplink2vlan_id?: string, vsphere_vlan_id?:       string, vmotion_vlan_id!: string, nsx_vtep_vlan_id!: string, hcx_vlan_id?: string, provisioning_vlan_id?: string, replication_vlan_id?: string, nsx_edge_vtep_vlan_id!: string, vsan_vlan_id!: string
					}]
					capacity_reservation_id?: string, is_shielded_instance_enabled?: bool, esxi_hosts_count!: int, instance_display_name_prefix?: string, vsphere_type!: string, display_name?: string, datastores?: [...{
									datastore_type!:                       string, block_volume_ids!: [...string]
					}]
					initial_host_shape_name?: string
				}]
			}]
			time_updated:                    string
			workload_network_cidr?:          string
			is_hcx_enterprise_enabled:       bool
			state:                           string
			time_hcx_license_status_updated: string
			ssh_authorized_keys!:            string
			compute_availability_domain?:    string
			initial_host_ocpu_count?:        float
			hcx_on_prem_key:                 string
			nsx_overlay_segment_name:        string
			initial_sku?:                    string
			nsx_manager_initial_password:    string
			is_single_host_sddc?:            bool
			nsx_edge_uplink1vlan_id?:        string
			vcenter_private_ip_id:           string
			vmotion_vlan_id?:                string
			vcenter_username:                string
			vsphere_upgrade_guide:           string
			reserving_hcx_on_premise_license_keys?: [...string]
			instance_display_name_prefix?: string
			defined_tags?: [_]: string
			hcx_initial_password:      string
			nsx_manager_private_ip_id: string
			nsx_edge_vtep_vlan_id?:    string
			actual_esxi_hosts_count:   int
			hcx_on_prem_licenses: [...{
				system_name:    string
				activation_key: string
				status:         string
			}]
			vsan_vlan_id?:            string
			hcx_private_ip_id:        string
			nsx_vtep_vlan_id?:        string
			hcx_mode:                 string
			display_name?:            string
			nsx_manager_fqdn:         string
			nsx_manager_username:     string
			time_created:             string
			vmware_software_version!: string
			replication_vlan_id?:     string
			vsphere_upgrade_objects: [...{
				link_description: string
				download_link:    string
			}]
			initial_host_shape_name?: string
			upgrade_licenses: [...{
				license_type: string
				license_key:  string
			}]
			is_hcx_enabled?:        bool
			esxi_software_version?: string
			provisioning_vlan_id?:  string
			freeform_tags?: [_]: string
			compartment_id!:       string
			nsx_edge_uplink_ip_id: string
			datastores?: [...{
				capacity: float
				block_volume_ids!: [...string]
				datastore_type!: string
			}]
			provisioning_subnet_id?:       string
			hcx_vlan_id?:                  string
			vcenter_fqdn:                  string
			time_hcx_billing_cycle_end:    string
			esxi_hosts_count?:             int
			hcx_action?:                   string
			vsphere_vlan_id?:              string
			is_shielded_instance_enabled?: bool
			refresh_hcx_license_status?:   bool
		}
		cluster: {
			capacity_reservation_id?: string
			datastores?: [...{
				block_volume_ids!: [...string]
				datastore_type!: string
				capacity:        float
			}]
			compartment_id: string
			vsphere_type:   string
			upgrade_licenses: [...{
				license_key:  string
				license_type: string
			}]
			defined_tags?: [_]: string
			initial_host_shape_name?: string
			vsphere_upgrade_objects: [...{
				download_link:    string
				link_description: string
			}]
			esxi_software_version?:        string
			is_shielded_instance_enabled?: bool
			workload_network_cidr?:        string
			esxi_hosts_count!:             int
			compute_availability_domain!:  string
			network_configuration!: [...{
				nsx_edge_uplink1vlan_id?: string
				nsx_edge_uplink2vlan_id?: string
				provisioning_vlan_id?:    string
				nsx_edge_vtep_vlan_id!:   string
				replication_vlan_id?:     string
				nsx_vtep_vlan_id!:        string
				provisioning_subnet_id!:  string
				vmotion_vlan_id!:         string
				vsan_vlan_id!:            string
				hcx_vlan_id?:             string
				vsphere_vlan_id?:         string
			}]
			initial_host_ocpu_count?: float
			vmware_software_version?: string
			actual_esxi_hosts_count:  int
			time_created:             string
			time_updated:             string
			sddc_id!:                 string
			initial_commitment?:      string
			state:                    string
			display_name?:            string
			freeform_tags?: [_]: string
			instance_display_name_prefix?: string
		}
	}
	arguments: {
		esxi_host: {
			cluster_id?:                string
			non_upgraded_esxi_host_id?: string
			sddc_id?:                   string
			capacity_reservation_id?:   string
			host_ocpu_count?:           float
			billing_donor_host_id?:     string
			failed_esxi_host_id?:       string
			next_sku?:                  string
			host_shape_name?:           string
			current_sku?:               string
			display_name?:              string
			freeform_tags?: [_]: string
			compute_availability_domain?: string
			defined_tags?: [_]: string
			esxi_software_version?: string
		}
		sddc: {
			reserving_hcx_on_premise_license_keys?: [...string]
			initial_host_ocpu_count?: float
			provisioning_subnet_id?:  string
			hcx_vlan_id?:             string
			vmware_software_version!: string
			compartment_id!:          string
			datastores?: [...{
				block_volume_ids!: [...string]
				datastore_type!: string
			}]
			ssh_authorized_keys!:        string
			esxi_software_version?:      string
			esxi_hosts_count?:           int
			refresh_hcx_license_status?: bool
			freeform_tags?: [_]: string
			display_name?:                 string
			initial_host_shape_name?:      string
			compute_availability_domain?:  string
			instance_display_name_prefix?: string
			vsan_vlan_id?:                 string
			initial_sku?:                  string
			is_hcx_enabled?:               bool
			vsphere_vlan_id?:              string
			hcx_action?:                   string
			nsx_edge_uplink1vlan_id?:      string
			is_shielded_instance_enabled?: bool
			nsx_vtep_vlan_id?:             string
			capacity_reservation_id?:      string
			defined_tags?: [_]: string
			provisioning_vlan_id?:    string
			nsx_edge_uplink2vlan_id?: string
			initial_configuration?: [...{
				initial_cluster_configurations!: [...{
					instance_display_name_prefix?: string, display_name?: string, is_shielded_instance_enabled?: bool, datastores?: [...{
									block_volume_ids!: [...string]
						datastore_type!: string
					}]
					workload_network_cidr?: string, compute_availability_domain!: string, esxi_hosts_count!:        int, initial_commitment?:  string, capacity_reservation_id?: string, initial_host_ocpu_count?: float, network_configuration?: [...{
								hcx_vlan_id?:                         string, nsx_edge_uplink1vlan_id?: string, nsx_vtep_vlan_id!: string, vsan_vlan_id!:            string, nsx_edge_uplink2vlan_id?: string, provisioning_vlan_id?: string, replication_vlan_id?: string, nsx_edge_vtep_vlan_id!: string, provisioning_subnet_id!: string, vsphere_vlan_id?: string, vmotion_vlan_id!: string
					}]
					vsphere_type!: string, initial_host_shape_name?: string
				}]
			}]
			workload_network_cidr?: string
			vmotion_vlan_id?:       string
			nsx_edge_vtep_vlan_id?: string
			is_single_host_sddc?:   bool
			replication_vlan_id?:   string
		}
		cluster: {
			initial_host_ocpu_count?:      float
			esxi_software_version?:        string
			is_shielded_instance_enabled?: bool
			esxi_hosts_count!:             int
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			capacity_reservation_id?:      string
			initial_host_shape_name?:      string
			instance_display_name_prefix?: string
			vmware_software_version?:      string
			sddc_id!:                      string
			initial_commitment?:           string
			workload_network_cidr?:        string
			display_name?:                 string
			datastores?: [...{
				block_volume_ids!: [...string]
				datastore_type!: string
			}]
			compute_availability_domain!: string
			network_configuration!: [...{
				vsphere_vlan_id?:         string
				provisioning_subnet_id!:  string
				vmotion_vlan_id!:         string
				nsx_vtep_vlan_id!:        string
				replication_vlan_id?:     string
				provisioning_vlan_id?:    string
				nsx_edge_vtep_vlan_id!:   string
				vsan_vlan_id!:            string
				nsx_edge_uplink1vlan_id?: string
				hcx_vlan_id?:             string
				nsx_edge_uplink2vlan_id?: string
			}]
		}
	}
}
#data: {
	esxi_host: esxi_host_id!: string
	esxi_hosts: {
		compute_instance_id?: string
		display_name?:        string
		state?:               string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?:         string
		sddc_id?:                string
		is_billing_donors_only?: bool
		cluster_id?:             string
		is_swap_billing_only?:   bool
	}
	supported_commitments: {
		host_shape_name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	supported_vmware_software_versions: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:     string
		host_shape_name?:    string
		version?:            string
		version_to_upgrade?: string
	}
	clusters: {
		compartment_id?: string
		display_name?:   string
		sddc_id?:        string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	retrieve_password: {
		sddc_id!: string
		type!:    string
	}
	sddc: sddc_id!: string
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
	supported_host_shapes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:                string
		initial_host_shape_name?:       string
		is_single_host_sddc_supported?: bool
		name?:                          string
		sddc_type?:                     string
	}
	supported_skus: {
		host_shape_name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	cluster: cluster_id!: string
}

