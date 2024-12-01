package containerengine

#resource: {
	attributes: {
		cluster_workload_mapping: {
			state:                  string
			time_created:           string
			cluster_id!:            string
			mapped_compartment_id!: string
			namespace!:             string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			mapped_tenancy_id: string
		}
		cluster_complete_credential_rotation_management: cluster_id!: string
		cluster_start_credential_rotation_management: {
			auto_completion_delay_duration!: string
			cluster_id!:                     string
		}
		node_pool: {
			node_source_details?: [...{
				source_type!:             string
				boot_volume_size_in_gbs?: string
				image_id!:                string
			}]
			node_config_details?: [...{
				node_pool_pod_network_option_details?: [...{
					max_pods_per_node?: int
					pod_nsg_ids?: [...string]
					pod_subnet_ids?: [...string]
					cni_type!: string
				}]
				nsg_ids?: [...string]
				placement_configs!: [...{
					subnet_id!:               string
					capacity_reservation_id?: string
					fault_domains?: [...string]
					preemptible_node_config?: [...{
						preemption_action!: [...{
							type!: string, is_preserve_boot_volume?: bool
						}]
					}]
					availability_domain!: string
				}]
				size!:                                int
				is_pv_encryption_in_transit_enabled?: bool
				kms_key_id?:                          string
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
			}]
			compartment_id!: string
			name!:           string
			node_eviction_node_pool_settings?: [...{
				is_force_delete_after_grace_duration?: bool
				eviction_grace_duration?:              string
			}]
			lifecycle_details: string
			node_image_name?:  string
			node_pool_cycling_details?: [...{
				maximum_surge?:           string
				maximum_unavailable?:     string
				is_node_cycling_enabled?: bool
			}]
			subnet_ids?: [...string]
			cluster_id!: string
			node_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			initial_node_labels?: [...{
				value?: string
				key?:   string
			}]
			ssh_public_key?: string
			defined_tags?: [_]: string
			kubernetes_version?: string
			node_source: [...{
				source_type: string
				image_id:    string
				source_name: string
			}]
			state: string
			node_metadata?: [_]: string
			nodes: [...{
				fault_domain:        string
				id:                  string
				availability_domain: string
				state:               string
				private_ip:          string
				node_pool_id:        string
				error: [...{
					status:  string
					code:    string
					message: string
				}]
				name:               string
				kubernetes_version: string
				public_ip:          string
				subnet_id:          string
				defined_tags: [_]: string
				lifecycle_details: string
				freeform_tags: [_]: string
			}]
			freeform_tags?: [_]: string
			quantity_per_subnet?: int
			node_image_id?:       string
			node_shape!:          string
		}
		virtual_node_pool: {
			pod_configuration!: [...{
				shape!:     string
				subnet_id!: string
				nsg_ids?: [...string]
			}]
			size!: int
			freeform_tags?: [_]: string
			placement_configurations!: [...{
				availability_domain!: string
				fault_domain!: [...string]
				subnet_id!: string
			}]
			defined_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
			time_updated:    string
			system_tags: [_]: string
			state:             string
			lifecycle_details: string
			initial_virtual_node_labels?: [...{
				value?: string
				key?:   string
			}]
			kubernetes_version: string
			virtual_node_tags?: [...{
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
			}]
			time_created: string
			cluster_id!:  string
			nsg_ids?: [...string]
			taints?: [...{
				effect?: string
				key?:    string
				value?:  string
			}]
		}
		addon: {
			cluster_id!:                       string
			override_existing?:                *false | bool
			state:                             string
			addon_name!:                       string
			remove_addon_resources_on_delete!: bool
			version?:                          string
			addon_error: [...{
				status:  string
				code:    string
				message: string
			}]
			time_created: string
			configurations?: [...{
				key?:   string
				value?: string
			}]
			current_installed_version: string
		}
		cluster: {
			image_policy_config?: [...{
				is_policy_enabled?: bool
				key_details?: [...{
					kms_key_id?: string
				}]
			}]
			kms_key_id?: string
			endpoints: [...{
				private_endpoint:      string
				public_endpoint:       string
				vcn_hostname_endpoint: string
				kubernetes:            string
			}]
			metadata: [...{
				created_by_work_request_id: string
				time_deleted:               string
				created_by_user_id:         string
				time_created:               string
				deleted_by_work_request_id: string
				time_credential_expiration: string
				time_updated:               string
				updated_by_user_id:         string
				deleted_by_user_id:         string
				updated_by_work_request_id: string
			}]
			kubernetes_version!: string
			cluster_pod_network_options?: [...{
				cni_type!: string
			}]
			name!:   string
			vcn_id!: string
			endpoint_config?: [...{
				is_public_ip_enabled?: bool
				nsg_ids?: [...string]
				subnet_id!: string
			}]
			compartment_id!:   string
			lifecycle_details: string
			freeform_tags?: [_]: string
			open_id_connect_discovery_endpoint: string
			defined_tags?: [_]: string
			type?: string
			state: string
			options?: [...{
				service_lb_config?: [...{
					defined_tags?: [_]: string
					freeform_tags?: [_]: string
				}]
				service_lb_subnet_ids?: [...string]
				add_ons?: [...{
					is_kubernetes_dashboard_enabled?: bool
					is_tiller_enabled?:               bool
				}]
				admission_controller_options?: [...{
					is_pod_security_policy_enabled?: bool
				}]
				kubernetes_network_config?: [...{
					pods_cidr?:     string
					services_cidr?: string
				}]
				open_id_connect_token_authentication_config?: [...{
					client_id?:  string
					issuer_url?: string
					required_claims?: [...{
						key?:   string
						value?: string
					}]
					username_claim?:                  string
					is_open_id_connect_auth_enabled!: bool
					ca_certificate?:                  string
					groups_claim?:                    string
					groups_prefix?:                   string
					signing_algorithms?: [...string]
					username_prefix?: string
				}]
				open_id_connect_discovery?: [...{
					is_open_id_connect_discovery_enabled?: bool
				}]
				persistent_volume_config?: [...{
					defined_tags?: [_]: string
					freeform_tags?: [_]: string
				}]
			}]
			available_kubernetes_upgrades: [...string]
		}
	}
	arguments: {
		cluster_workload_mapping: {
			freeform_tags?: [_]: string
			cluster_id!:            string
			mapped_compartment_id!: string
			namespace!:             string
			defined_tags?: [_]: string
		}
		cluster_complete_credential_rotation_management: cluster_id!: string
		cluster_start_credential_rotation_management: {
			auto_completion_delay_duration!: string
			cluster_id!:                     string
		}
		node_pool: {
			node_shape!: string
			node_metadata?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
			cluster_id!:     string
			node_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			node_pool_cycling_details?: [...{
				is_node_cycling_enabled?: bool
				maximum_surge?:           string
				maximum_unavailable?:     string
			}]
			quantity_per_subnet?: int
			ssh_public_key?:      string
			subnet_ids?: [...string]
			name!: string
			node_config_details?: [...{
				freeform_tags?: [_]: string
				node_pool_pod_network_option_details?: [...{
					cni_type!:          string
					max_pods_per_node?: int
					pod_nsg_ids?: [...string]
					pod_subnet_ids?: [...string]
				}]
				nsg_ids?: [...string]
				placement_configs!: [...{
					capacity_reservation_id?: string
					fault_domains?: [...string]
					preemptible_node_config?: [...{
						preemption_action!: [...{
							is_preserve_boot_volume?: bool, type!: string
						}]
					}]
					availability_domain!: string
					subnet_id!:           string
				}]
				size!:                                int
				is_pv_encryption_in_transit_enabled?: bool
				kms_key_id?:                          string
				defined_tags?: [_]: string
			}]
			node_image_name?: string
			node_image_id?:   string
			node_source_details?: [...{
				image_id!:                string
				source_type!:             string
				boot_volume_size_in_gbs?: string
			}]
			defined_tags?: [_]: string
			initial_node_labels?: [...{
				key?:   string
				value?: string
			}]
			kubernetes_version?: string
			node_eviction_node_pool_settings?: [...{
				is_force_delete_after_grace_duration?: bool
				eviction_grace_duration?:              string
			}]
		}
		virtual_node_pool: {
			freeform_tags?: [_]: string
			taints?: [...{
				effect?: string
				key?:    string
				value?:  string
			}]
			initial_virtual_node_labels?: [...{
				value?: string
				key?:   string
			}]
			defined_tags?: [_]: string
			compartment_id!: string
			size!:           int
			cluster_id!:     string
			display_name!:   string
			nsg_ids?: [...string]
			pod_configuration!: [...{
				subnet_id!: string
				nsg_ids?: [...string]
				shape!: string
			}]
			virtual_node_tags?: [...{
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
			}]
			placement_configurations!: [...{
				availability_domain!: string
				fault_domain!: [...string]
				subnet_id!: string
			}]
		}
		addon: {
			configurations?: [...{
				key?:   string
				value?: string
			}]
			override_existing?:                *false | bool
			addon_name!:                       string
			cluster_id!:                       string
			remove_addon_resources_on_delete!: bool
			version?:                          string
		}
		cluster: {
			vcn_id!:     string
			kms_key_id?: string
			defined_tags?: [_]: string
			type?:               string
			compartment_id!:     string
			kubernetes_version!: string
			endpoint_config?: [...{
				is_public_ip_enabled?: bool
				nsg_ids?: [...string]
				subnet_id!: string
			}]
			freeform_tags?: [_]: string
			options?: [...{
				service_lb_config?: [...{
					defined_tags?: [_]: string
					freeform_tags?: [_]: string
				}]
				service_lb_subnet_ids?: [...string]
				add_ons?: [...{
					is_kubernetes_dashboard_enabled?: bool
					is_tiller_enabled?:               bool
				}]
				admission_controller_options?: [...{
					is_pod_security_policy_enabled?: bool
				}]
				kubernetes_network_config?: [...{
					pods_cidr?:     string
					services_cidr?: string
				}]
				open_id_connect_token_authentication_config?: [...{
					username_claim?:                  string
					issuer_url?:                      string
					is_open_id_connect_auth_enabled!: bool
					ca_certificate?:                  string
					required_claims?: [...{
						key?:   string
						value?: string
					}]
					groups_prefix?: string
					signing_algorithms?: [...string]
					username_prefix?: string
					client_id?:       string
					groups_claim?:    string
				}]
				open_id_connect_discovery?: [...{
					is_open_id_connect_discovery_enabled?: bool
				}]
				persistent_volume_config?: [...{
					defined_tags?: [_]: string
					freeform_tags?: [_]: string
				}]
			}]
			image_policy_config?: [...{
				is_policy_enabled?: bool
				key_details?: [...{
					kms_key_id?: string
				}]
			}]
			name!: string
			cluster_pod_network_options?: [...{
				cni_type!: string
			}]
		}
	}
}
#data: {
	pod_shapes: {
		availability_domain?: string
		compartment_id!:      string
		name?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	work_request_errors: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		work_request_id!: string
	}
	addon: {
		addon_name!: string
		cluster_id!: string
	}
	addons: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		cluster_id!: string
	}
	migrate_to_native_vcn_status: cluster_id!: string
	cluster_workload_mapping: {
		workload_mapping_id!: string
		cluster_id!:          string
	}
	node_pools: {
		state?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		cluster_id?:     string
		compartment_id!: string
		name?:           string
	}
	virtual_node_pool: virtual_node_pool_id!: string
	clusters: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
		state?: [...string]
	}
	node_pool: node_pool_id!: string
	node_pool_option: {
		compartment_id?:      string
		node_pool_option_id!: string
	}
	work_request_log_entries: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		work_request_id!: string
	}
	work_requests: {
		resource_type?: string
		status?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		cluster_id?:     string
		compartment_id!: string
		resource_id?:    string
	}
	addon_options: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		addon_name?:         string
		kubernetes_version!: string
	}
	cluster_credential_rotation_status: cluster_id!: string
	cluster_kube_config: {
		token_version?: string
		cluster_id!:    string
		endpoint?:      string
		expiration?:    int
	}
	virtual_node_pools: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		cluster_id?:     string
		compartment_id!: string
		display_name?:   string
		state?: [...string]
	}
	cluster: cluster_id!: string
	cluster_option: {
		compartment_id?:    string
		cluster_option_id!: string
	}
	cluster_workload_mappings: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		cluster_id!: string
	}
}

