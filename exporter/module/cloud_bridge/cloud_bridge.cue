package cloud_bridge

#resource: {
	attributes: {
		asset_source: {
			type!: string
			discovery_credentials!: [...{
				secret_id!: string
				type!:      string
			}]
			assets_compartment_id!: string
			compartment_id!:        string
			environment_id!:        string
			system_tags?: [_]: string
			replication_credentials?: [...{
				type!:      string
				secret_id!: string
			}]
			lifecycle_details: string
			defined_tags?: [_]: string
			display_name?: string
			state:         string
			inventory_id!: string
			freeform_tags?: [_]: string
			vcenter_endpoint!:                 string
			are_historical_metrics_collected?: bool
			discovery_schedule_id?:            string
			are_realtime_metrics_collected?:   bool
			time_created:                      string
			time_updated:                      string
		}
		discovery_schedule: {
			system_tags: [_]: string
			compartment_id!:   string
			display_name?:     string
			lifecycle_details: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			time_created:           string
			time_updated:           string
			execution_recurrences!: string
			state:                  string
		}
		environment: {
			state: string
			system_tags: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			lifecycle_details: string
			time_created:      string
			time_updated:      string
		}
		inventory: {
			lifecycle_details: string
			system_tags: [_]: string
			time_updated:  string
			display_name!: string
			defined_tags?: [_]: string
			time_created:    string
			compartment_id!: string
			state:           string
			freeform_tags?: [_]: string
		}
		agent: {
			time_updated:    string
			compartment_id!: string
			display_name!:   string
			system_tags: [_]: string
			defined_tags?: [_]: string
			agent_pub_key:   string
			agent_type!:     string
			os_version!:     string
			environment_id!: string
			time_created:    string
			agent_version!:  string
			freeform_tags?: [_]: string
			heart_beat_status: string
			state:             string
			plugin_list: [...{
				name:              string
				time_created:      string
				lifecycle_details: string
				state:             string
				time_updated:      string
				freeform_tags: [_]: string
				plugin_version: string
				agent_id:       string
				defined_tags: [_]: string
			}]
			time_expire_agent_key_in_ms: string
			time_last_sync_received:     string
			lifecycle_details:           string
		}
		agent_dependency: {
			bucket!:             string
			object!:             string
			dependency_version?: string
			state:               string
			description?:        string
			display_name!:       string
			time_created:        string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			system_tags?: [_]: string
			lifecycle_details: string
			checksum:          string
			compartment_id!:   string
			dependency_name!:  string
			e_tag:             string
			namespace!:        string
		}
		agent_plugin: {
			time_updated:   string
			plugin_version: string
			state:          string
			freeform_tags: [_]: string
			lifecycle_details: string
			system_tags: [_]: string
			desired_state?: string
			plugin_name!:   string
			name:           string
			defined_tags: [_]: string
			time_created: string
			agent_id!:    string
		}
		asset: {
			vmware_vm?: [...{
				customer_fields?: [...string]
				is_disks_cbt_enabled?:              bool
				is_disks_uuid_enabled?:             bool
				vmware_tools_status?:               string
				fault_tolerance_bandwidth?:         int
				cluster?:                           string
				fault_tolerance_secondary_latency?: int
				fault_tolerance_state?:             string
				instance_uuid?:                     string
				path?:                              string
				customer_tags?: [...{
					description?: string
					name?:        string
				}]
			}]
			asset_type!: string
			vm?: [...{
				hypervisor_version?: string
				hypervisor_host?:    string
				hypervisor_vendor?:  string
			}]
			display_name?: string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			vmware_vcenter?: [...{
				data_center?:     string
				vcenter_key?:     string
				vcenter_version?: string
			}]
			asset_source_ids?: [...string]
			state:           string
			compartment_id!: string
			inventory_id!:   string
			compute?: [...{
				storage_provisioned_in_mbs?: string
				cpu_model?:                  string
				dns_name?:                   string
				gpu_devices?: [...{
					manufacturer?:  string
					memory_in_mbs?: string
					name?:          string
					cores_count?:   int
					description?:   string
				}]
				scsi_controller?: [...{
					unit_number?: int
					label?:       string
					shared_bus?:  string
				}]
				description?:        string
				power_state?:        string
				hardware_version?:   string
				host_name?:          string
				connected_networks?: int
				disks?: [...{
					boot_order?:      int
					location?:        string
					name?:            string
					persistent_mode?: string
					size_in_mbs?:     string
					uuid?:            string
					uuid_lun?:        string
				}]
				threads_per_core_count?: int
				is_tpm_enabled?:         bool
				nvdimms?: [...{
					label?:          string
					unit_number?:    int
					controller_key?: int
				}]
				nics_count?:               int
				primary_ip?:               string
				operating_system_version?: string
				is_pmem_enabled?:          bool
				cores_count?:              int
				operating_system?:         string
				latency_sensitivity?:      string
				guest_state?:              string
				memory_in_mbs?:            string
				gpu_devices_count?:        int
				pmem_in_mbs?:              string
				nics?: [...{
					mac_address_type?: string
					network_name?:     string
					switch_name?:      string
					ip_addresses?: [...string]
					label?:       string
					mac_address?: string
				}]
				nvdimm_controller?: [...{
					bus_number?: int
					label?:      string
				}]
				firmware?:    string
				disks_count?: int
			}]
			time_created:        string
			time_updated:        string
			source_key!:         string
			external_asset_key!: string
			defined_tags?: [_]: string
		}
	}
	arguments: {
		asset_source: {
			discovery_credentials!: [...{
				type!:      string
				secret_id!: string
			}]
			replication_credentials?: [...{
				secret_id!: string
				type!:      string
			}]
			vcenter_endpoint!: string
			display_name?:     string
			freeform_tags?: [_]: string
			system_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			discovery_schedule_id?:            string
			environment_id!:                   string
			inventory_id!:                     string
			type!:                             string
			assets_compartment_id!:            string
			are_historical_metrics_collected?: bool
			are_realtime_metrics_collected?:   bool
		}
		discovery_schedule: {
			compartment_id!:        string
			execution_recurrences!: string
			display_name?:          string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		environment: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
		inventory: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name!: string
			freeform_tags?: [_]: string
		}
		agent: {
			freeform_tags?: [_]: string
			agent_version!: string
			os_version!:    string
			defined_tags?: [_]: string
			agent_type!:     string
			display_name!:   string
			environment_id!: string
			compartment_id!: string
		}
		agent_dependency: {
			namespace!:      string
			compartment_id!: string
			bucket!:         string
			system_tags?: [_]: string
			description?:  string
			display_name!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			dependency_name!:    string
			object!:             string
			dependency_version?: string
		}
		agent_plugin: {
			desired_state?: string
			plugin_name!:   string
			agent_id!:      string
		}
		asset: {
			inventory_id!: string
			compute?: [...{
				scsi_controller?: [...{
					label?:       string
					shared_bus?:  string
					unit_number?: int
				}]
				pmem_in_mbs?:                string
				operating_system?:           string
				is_tpm_enabled?:             bool
				storage_provisioned_in_mbs?: string
				hardware_version?:           string
				nvdimm_controller?: [...{
					bus_number?: int
					label?:      string
				}]
				operating_system_version?: string
				is_pmem_enabled?:          bool
				connected_networks?:       int
				threads_per_core_count?:   int
				power_state?:              string
				disks_count?:              int
				host_name?:                string
				primary_ip?:               string
				disks?: [...{
					size_in_mbs?:     string
					uuid?:            string
					uuid_lun?:        string
					boot_order?:      int
					location?:        string
					name?:            string
					persistent_mode?: string
				}]
				nvdimms?: [...{
					unit_number?:    int
					controller_key?: int
					label?:          string
				}]
				dns_name?: string
				gpu_devices?: [...{
					description?:   string
					manufacturer?:  string
					memory_in_mbs?: string
					name?:          string
					cores_count?:   int
				}]
				latency_sensitivity?: string
				guest_state?:         string
				nics?: [...{
					mac_address_type?: string
					network_name?:     string
					switch_name?:      string
					ip_addresses?: [...string]
					label?:       string
					mac_address?: string
				}]
				nics_count?:        int
				cpu_model?:         string
				memory_in_mbs?:     string
				description?:       string
				gpu_devices_count?: int
				cores_count?:       int
				firmware?:          string
			}]
			vmware_vcenter?: [...{
				data_center?:     string
				vcenter_key?:     string
				vcenter_version?: string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			source_key!:   string
			display_name?: string
			vmware_vm?: [...{
				cluster?: string
				customer_fields?: [...string]
				is_disks_cbt_enabled?: bool
				customer_tags?: [...{
					description?: string
					name?:        string
				}]
				fault_tolerance_state?:             string
				fault_tolerance_bandwidth?:         int
				is_disks_uuid_enabled?:             bool
				vmware_tools_status?:               string
				fault_tolerance_secondary_latency?: int
				instance_uuid?:                     string
				path?:                              string
			}]
			external_asset_key!: string
			asset_source_ids?: [...string]
			asset_type!: string
			vm?: [...{
				hypervisor_host?:    string
				hypervisor_vendor?:  string
				hypervisor_version?: string
			}]
		}
	}
}
#data: {
	discovery_schedule: discovery_schedule_id!: string
	discovery_schedules: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:        string
		discovery_schedule_id?: string
		display_name?:          string
		state?:                 string
	}
	inventories: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		state?:          string
	}
	agent_dependency: agent_dependency_id!: string
	agent_plugin: {
		agent_id!:    string
		plugin_name!: string
	}
	agents: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		agent_id?:       string
		compartment_id!: string
		display_name?:   string
		environment_id?: string
		state?:          string
	}
	agent: agent_id!: string
	agent_dependencies: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		agent_id?:       string
		compartment_id!: string
		display_name?:   string
		environment_id?: string
		state?:          string
	}
	environment: environment_id!: string
	environments: {
		compartment_id!: string
		display_name?:   string
		environment_id?: string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	assets: {
		inventory_id?:   string
		source_key?:     string
		compartment_id!: string
		display_name?:   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		asset_type?:         string
		asset_id?:           string
		external_asset_key?: string
		state?:              string
	}
	inventory: inventory_id!: string
	appliance_image: {
		compartment_id!: string
		display_name?:   string
	}
	appliance_images: {
		display_name?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	asset: asset_id!: string
	asset_source: asset_source_id!: string
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
}

