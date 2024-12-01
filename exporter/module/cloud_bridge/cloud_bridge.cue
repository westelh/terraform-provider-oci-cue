package cloud_bridge

#resource: {
	attributes: {
		asset: {
			display_name?: string
			time_updated:  string
			asset_source_ids?: [...string]
			compute?: [...{
				cpu_model?:        string
				dns_name?:         string
				operating_system?: string
				nvdimms?: [...{
					controller_key?: int
					label?:          string
					unit_number?:    int
				}]
				nics_count?: int
				gpu_devices?: [...{
					cores_count?:   int
					description?:   string
					manufacturer?:  string
					memory_in_mbs?: string
					name?:          string
				}]
				threads_per_core_count?: int
				power_state?:            string
				pmem_in_mbs?:            string
				host_name?:              string
				is_tpm_enabled?:         bool
				nics?: [...{
					label?:            string
					mac_address?:      string
					mac_address_type?: string
					network_name?:     string
					switch_name?:      string
					ip_addresses?: [...string]
				}]
				description?:                string
				latency_sensitivity?:        string
				is_pmem_enabled?:            bool
				operating_system_version?:   string
				gpu_devices_count?:          int
				memory_in_mbs?:              string
				firmware?:                   string
				guest_state?:                string
				storage_provisioned_in_mbs?: string
				disks?: [...{
					size_in_mbs?:     string
					uuid?:            string
					uuid_lun?:        string
					boot_order?:      int
					location?:        string
					name?:            string
					persistent_mode?: string
				}]
				connected_networks?: int
				primary_ip?:         string
				hardware_version?:   string
				cores_count?:        int
				disks_count?:        int
				scsi_controller?: [...{
					label?:       string
					shared_bus?:  string
					unit_number?: int
				}]
				nvdimm_controller?: [...{
					bus_number?: int
					label?:      string
				}]
			}]
			defined_tags?: [_]: string
			vmware_vcenter?: [...{
				data_center?:     string
				vcenter_key?:     string
				vcenter_version?: string
			}]
			source_key!: string
			vmware_vm?: [...{
				cluster?:               string
				is_disks_uuid_enabled?: bool
				path?:                  string
				vmware_tools_status?:   string
				customer_fields?: [...string]
				customer_tags?: [...{
					name?:        string
					description?: string
				}]
				fault_tolerance_state?:             string
				instance_uuid?:                     string
				is_disks_cbt_enabled?:              bool
				fault_tolerance_secondary_latency?: int
				fault_tolerance_bandwidth?:         int
			}]
			inventory_id!: string
			asset_type!:   string
			system_tags: [_]: string
			external_asset_key!: string
			time_created:        string
			vm?: [...{
				hypervisor_host?:    string
				hypervisor_vendor?:  string
				hypervisor_version?: string
			}]
			state: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		asset_source: {
			lifecycle_details:               string
			type!:                           string
			vcenter_endpoint!:               string
			state:                           string
			are_realtime_metrics_collected?: bool
			discovery_schedule_id?:          string
			system_tags?: [_]: string
			are_historical_metrics_collected?: bool
			inventory_id!:                     string
			time_updated:                      string
			time_created:                      string
			discovery_credentials!: [...{
				secret_id!: string
				type!:      string
			}]
			replication_credentials?: [...{
				secret_id!: string
				type!:      string
			}]
			compartment_id!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			display_name?:          string
			assets_compartment_id!: string
			environment_id!:        string
		}
		discovery_schedule: {
			compartment_id!:        string
			lifecycle_details:      string
			execution_recurrences!: string
			time_updated:           string
			state:                  string
			time_created:           string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			defined_tags?: [_]: string
			display_name?: string
		}
		environment: {
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			time_created:      string
			lifecycle_details: string
			state:             string
			compartment_id!:   string
			system_tags: [_]: string
			time_updated: string
		}
		inventory: {
			compartment_id!: string
			defined_tags?: [_]: string
			state:        string
			time_created: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			display_name!:     string
			time_updated:      string
			lifecycle_details: string
		}
		agent: {
			system_tags: [_]: string
			os_version!:       string
			time_created:      string
			compartment_id!:   string
			agent_pub_key:     string
			state:             string
			display_name!:     string
			lifecycle_details: string
			defined_tags?: [_]: string
			plugin_list: [...{
				agent_id: string
				defined_tags: [_]: string
				lifecycle_details: string
				state:             string
				time_created:      string
				time_updated:      string
				name:              string
				freeform_tags: [_]: string
				plugin_version: string
			}]
			environment_id!: string
			freeform_tags?: [_]: string
			time_expire_agent_key_in_ms: string
			time_last_sync_received:     string
			time_updated:                string
			agent_type!:                 string
			agent_version!:              string
			heart_beat_status:           string
		}
		agent_dependency: {
			checksum:          string
			description?:      string
			e_tag:             string
			lifecycle_details: string
			time_created:      string
			bucket!:           string
			freeform_tags?: [_]: string
			display_name!:   string
			compartment_id!: string
			defined_tags?: [_]: string
			dependency_version?: string
			system_tags?: [_]: string
			namespace!:       string
			state:            string
			object!:          string
			dependency_name!: string
		}
		agent_plugin: {
			plugin_name!:   string
			plugin_version: string
			system_tags: [_]: string
			time_created:   string
			desired_state?: string
			defined_tags: [_]: string
			state:             string
			time_updated:      string
			agent_id!:         string
			name:              string
			lifecycle_details: string
			freeform_tags: [_]: string
		}
	}
	arguments: {
		asset: {
			external_asset_key!: string
			compute?: [...{
				memory_in_mbs?:       string
				latency_sensitivity?: string
				nvdimm_controller?: [...{
					bus_number?: int
					label?:      string
				}]
				power_state?:     string
				dns_name?:        string
				is_pmem_enabled?: bool
				disks?: [...{
					uuid_lun?:        string
					boot_order?:      int
					location?:        string
					name?:            string
					persistent_mode?: string
					size_in_mbs?:     string
					uuid?:            string
				}]
				storage_provisioned_in_mbs?: string
				threads_per_core_count?:     int
				hardware_version?:           string
				operating_system?:           string
				disks_count?:                int
				operating_system_version?:   string
				host_name?:                  string
				is_tpm_enabled?:             bool
				nics?: [...{
					switch_name?: string
					ip_addresses?: [...string]
					label?:            string
					mac_address?:      string
					mac_address_type?: string
					network_name?:     string
				}]
				nics_count?:  int
				pmem_in_mbs?: string
				primary_ip?:  string
				guest_state?: string
				cores_count?: int
				description?: string
				scsi_controller?: [...{
					label?:       string
					shared_bus?:  string
					unit_number?: int
				}]
				nvdimms?: [...{
					label?:          string
					unit_number?:    int
					controller_key?: int
				}]
				cpu_model?:         string
				gpu_devices_count?: int
				gpu_devices?: [...{
					cores_count?:   int
					description?:   string
					manufacturer?:  string
					memory_in_mbs?: string
					name?:          string
				}]
				firmware?:           string
				connected_networks?: int
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			vmware_vm?: [...{
				customer_fields?: [...string]
				instance_uuid?:                     string
				cluster?:                           string
				fault_tolerance_secondary_latency?: int
				is_disks_uuid_enabled?:             bool
				path?:                              string
				customer_tags?: [...{
					description?: string
					name?:        string
				}]
				fault_tolerance_bandwidth?: int
				fault_tolerance_state?:     string
				is_disks_cbt_enabled?:      bool
				vmware_tools_status?:       string
			}]
			vm?: [...{
				hypervisor_version?: string
				hypervisor_host?:    string
				hypervisor_vendor?:  string
			}]
			asset_type!: string
			freeform_tags?: [_]: string
			source_key!: string
			vmware_vcenter?: [...{
				data_center?:     string
				vcenter_key?:     string
				vcenter_version?: string
			}]
			inventory_id!: string
			display_name?: string
			asset_source_ids?: [...string]
		}
		asset_source: {
			defined_tags?: [_]: string
			display_name?: string
			discovery_credentials!: [...{
				secret_id!: string
				type!:      string
			}]
			compartment_id!:                   string
			are_realtime_metrics_collected?:   bool
			assets_compartment_id!:            string
			environment_id!:                   string
			are_historical_metrics_collected?: bool
			freeform_tags?: [_]: string
			inventory_id!: string
			replication_credentials?: [...{
				secret_id!: string
				type!:      string
			}]
			vcenter_endpoint!: string
			system_tags?: [_]: string
			type!:                  string
			discovery_schedule_id?: string
		}
		discovery_schedule: {
			execution_recurrences!: string
			freeform_tags?: [_]: string
			display_name?:   string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		environment: {
			defined_tags?: [_]: string
			display_name?:   string
			compartment_id!: string
			freeform_tags?: [_]: string
		}
		inventory: {
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
		}
		agent: {
			environment_id!: string
			agent_version!:  string
			display_name!:   string
			os_version!:     string
			defined_tags?: [_]: string
			compartment_id!: string
			freeform_tags?: [_]: string
			agent_type!: string
		}
		agent_dependency: {
			dependency_version?: string
			description?:        string
			compartment_id!:     string
			object!:             string
			dependency_name!:    string
			namespace!:          string
			freeform_tags?: [_]: string
			display_name!: string
			system_tags?: [_]: string
			bucket!: string
			defined_tags?: [_]: string
		}
		agent_plugin: {
			desired_state?: string
			agent_id!:      string
			plugin_name!:   string
		}
	}
}
#data: {
	agent_dependencies: {
		compartment_id!: string
		display_name?:   string
		environment_id?: string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		agent_id?: string
	}
	agent_dependency: agent_dependency_id!: string
	agents: {
		compartment_id!: string
		display_name?:   string
		environment_id?: string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		agent_id?: string
	}
	appliance_image: {
		compartment_id!: string
		display_name?:   string
	}
	asset: asset_id!: string
	environment: environment_id!: string
	inventories: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		state?:          string
	}
	agent: agent_id!: string
	appliance_images: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	asset_source: asset_source_id!: string
	assets: {
		asset_type?:         string
		compartment_id!:     string
		source_key?:         string
		display_name?:       string
		external_asset_key?: string
		inventory_id?:       string
		state?:              string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		asset_id?: string
	}
	discovery_schedule: discovery_schedule_id!: string
	environments: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		environment_id?: string
	}
	agent_plugin: {
		agent_id!:    string
		plugin_name!: string
	}
	asset_sources: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		asset_source_id?: string
	}
	inventory: inventory_id!: string
	discovery_schedules: {
		compartment_id!:        string
		discovery_schedule_id?: string
		display_name?:          string
		state?:                 string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

