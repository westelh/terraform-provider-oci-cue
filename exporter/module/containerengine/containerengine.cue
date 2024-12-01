package containerengine

#resource: {
	attributes: {
		addon: {
			cluster_id!:        string
			override_existing?: *false | bool
			version?:           string
			addon_error: [...{
				message: string
				status:  string
				code:    string
			}]
			current_installed_version:         string
			state:                             string
			time_created:                      string
			remove_addon_resources_on_delete!: bool
			configurations?: [...{
				key?:   string
				value?: string
			}]
			addon_name!: string
		}
		cluster: {
			compartment_id!:   string
			lifecycle_details: string
			metadata: [...{
				time_updated:               string
				deleted_by_work_request_id: string
				updated_by_work_request_id: string
				deleted_by_user_id:         string
				time_deleted:               string
				updated_by_user_id:         string
				created_by_user_id:         string
				time_created:               string
				time_credential_expiration: string
				created_by_work_request_id: string
			}]
			image_policy_config?: [...{
				key_details?: [...{
					kms_key_id?: string
				}]
				is_policy_enabled?: bool
			}]
			name!:               string
			state:               string
			type?:               string
			kubernetes_version!: string
			defined_tags?: [_]: string
			options?: [...{
				admission_controller_options?: [...{
					is_pod_security_policy_enabled?: bool
				}]
				kubernetes_network_config?: [...{
					services_cidr?: string
					pods_cidr?:     string
				}]
				open_id_connect_token_authentication_config?: [...{
					required_claims?: [...{
						value?: string
						key?:   string
					}]
					username_claim?:                  string
					ca_certificate?:                  string
					groups_prefix?:                   string
					groups_claim?:                    string
					username_prefix?:                 string
					is_open_id_connect_auth_enabled!: bool
					signing_algorithms?: [...string]
					client_id?:  string
					issuer_url?: string
				}]
				open_id_connect_discovery?: [...{
					is_open_id_connect_discovery_enabled?: bool
				}]
				persistent_volume_config?: [...{
					defined_tags?: [_]: string
					freeform_tags?: [_]: string
				}]
				service_lb_config?: [...{
					defined_tags?: [_]: string
					freeform_tags?: [_]: string
				}]
				service_lb_subnet_ids?: [...string]
				add_ons?: [...{
					is_tiller_enabled?:               bool
					is_kubernetes_dashboard_enabled?: bool
				}]
			}]
			vcn_id!: string
			endpoint_config?: [...{
				subnet_id!:            string
				is_public_ip_enabled?: bool
				nsg_ids?: [...string]
			}]
			freeform_tags?: [_]: string
			open_id_connect_discovery_endpoint: string
			cluster_pod_network_options?: [...{
				cni_type!: string
			}]
			endpoints: [...{
				vcn_hostname_endpoint: string
				kubernetes:            string
				private_endpoint:      string
				public_endpoint:       string
			}]
			kms_key_id?: string
			available_kubernetes_upgrades: [...string]
		}
		cluster_workload_mapping: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			mapped_tenancy_id:      string
			state:                  string
			time_created:           string
			cluster_id!:            string
			mapped_compartment_id!: string
			namespace!:             string
		}
		cluster_complete_credential_rotation_management: cluster_id!: string
		cluster_start_credential_rotation_management: {
			cluster_id!:                     string
			auto_completion_delay_duration!: string
		}
		node_pool: {
			node_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			node_image_name?: string
			defined_tags?: [_]: string
			ssh_public_key?: string
			cluster_id!:     string
			freeform_tags?: [_]: string
			quantity_per_subnet?: int
			node_shape!:          string
			node_source_details?: [...{
				image_id!:                string
				source_type!:             string
				boot_volume_size_in_gbs?: string
			}]
			lifecycle_details: string
			nodes: [...{
				lifecycle_details: string
				defined_tags: [_]: string
				state:               string
				kubernetes_version:  string
				private_ip:          string
				fault_domain:        string
				public_ip:           string
				id:                  string
				name:                string
				subnet_id:           string
				availability_domain: string
				error: [...{
					status:  string
					code:    string
					message: string
				}]
				freeform_tags: [_]: string
				node_pool_id: string
			}]
			initial_node_labels?: [...{
				key?:   string
				value?: string
			}]
			node_source: [...{
				image_id:    string
				source_name: string
				source_type: string
			}]
			node_eviction_node_pool_settings?: [...{
				eviction_grace_duration?:              string
				is_force_delete_after_grace_duration?: bool
			}]
			node_metadata?: [_]: string
			node_config_details?: [...{
				is_pv_encryption_in_transit_enabled?: bool
				kms_key_id?:                          string
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
				node_pool_pod_network_option_details?: [...{
					cni_type!:          string
					max_pods_per_node?: int
					pod_nsg_ids?: [...string]
					pod_subnet_ids?: [...string]
				}]
				nsg_ids?: [...string]
				placement_configs!: [...{
					preemptible_node_config?: [...{
						preemption_action!: [...{
							type!: string, is_preserve_boot_volume?: bool
						}]
					}]
					availability_domain!:     string
					subnet_id!:               string
					capacity_reservation_id?: string
					fault_domains?: [...string]
				}]
				size!: int
			}]
			node_image_id?: string
			node_pool_cycling_details?: [...{
				is_node_cycling_enabled?: bool
				maximum_surge?:           string
				maximum_unavailable?:     string
			}]
			subnet_ids?: [...string]
			name!:               string
			state:               string
			kubernetes_version?: string
			compartment_id!:     string
		}
		virtual_node_pool: {
			time_created: string
			placement_configurations!: [...{
				availability_domain!: string
				fault_domain!: [...string]
				subnet_id!: string
			}]
			defined_tags?: [_]: string
			taints?: [...{
				key?:    string
				value?:  string
				effect?: string
			}]
			lifecycle_details: string
			display_name!:     string
			cluster_id!:       string
			nsg_ids?: [...string]
			freeform_tags?: [_]: string
			pod_configuration!: [...{
				shape!:     string
				subnet_id!: string
				nsg_ids?: [...string]
			}]
			compartment_id!: string
			initial_virtual_node_labels?: [...{
				key?:   string
				value?: string
			}]
			virtual_node_tags?: [...{
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
			}]
			time_updated: string
			system_tags: [_]: string
			size!:              int
			state:              string
			kubernetes_version: string
		}
	}
	arguments: {
		addon: {
			cluster_id!:                       string
			remove_addon_resources_on_delete!: bool
			override_existing?:                *false | bool
			version?:                          string
			configurations?: [...{
				key?:   string
				value?: string
			}]
			addon_name!: string
		}
		cluster: {
			image_policy_config?: [...{
				key_details?: [...{
					kms_key_id?: string
				}]
				is_policy_enabled?: bool
			}]
			name!: string
			options?: [...{
				open_id_connect_token_authentication_config?: [...{
					ca_certificate?: string
					issuer_url?:     string
					signing_algorithms?: [...string]
					username_claim?:                  string
					client_id?:                       string
					groups_prefix?:                   string
					is_open_id_connect_auth_enabled!: bool
					groups_claim?:                    string
					required_claims?: [...{
						value?: string
						key?:   string
					}]
					username_prefix?: string
				}]
				open_id_connect_discovery?: [...{
					is_open_id_connect_discovery_enabled?: bool
				}]
				persistent_volume_config?: [...{
					defined_tags?: [_]: string
					freeform_tags?: [_]: string
				}]
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
			}]
			vcn_id!:             string
			kubernetes_version!: string
			endpoint_config?: [...{
				subnet_id!:            string
				is_public_ip_enabled?: bool
				nsg_ids?: [...string]
			}]
			kms_key_id?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
			cluster_pod_network_options?: [...{
				cni_type!: string
			}]
			type?: string
		}
		cluster_workload_mapping: {
			cluster_id!:            string
			mapped_compartment_id!: string
			namespace!:             string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		cluster_complete_credential_rotation_management: cluster_id!: string
		cluster_start_credential_rotation_management: {
			auto_completion_delay_duration!: string
			cluster_id!:                     string
		}
		node_pool: {
			name!:                string
			quantity_per_subnet?: int
			cluster_id!:          string
			ssh_public_key?:      string
			subnet_ids?: [...string]
			node_eviction_node_pool_settings?: [...{
				eviction_grace_duration?:              string
				is_force_delete_after_grace_duration?: bool
			}]
			node_metadata?: [_]: string
			node_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			defined_tags?: [_]: string
			node_pool_cycling_details?: [...{
				is_node_cycling_enabled?: bool
				maximum_surge?:           string
				maximum_unavailable?:     string
			}]
			node_image_name?:    string
			kubernetes_version?: string
			compartment_id!:     string
			node_image_id?:      string
			node_shape!:         string
			initial_node_labels?: [...{
				value?: string
				key?:   string
			}]
			node_source_details?: [...{
				boot_volume_size_in_gbs?: string
				image_id!:                string
				source_type!:             string
			}]
			freeform_tags?: [_]: string
			node_config_details?: [...{
				kms_key_id?: string
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
				node_pool_pod_network_option_details?: [...{
					max_pods_per_node?: int
					pod_nsg_ids?: [...string]
					pod_subnet_ids?: [...string]
					cni_type!: string
				}]
				nsg_ids?: [...string]
				placement_configs!: [...{
					capacity_reservation_id?: string
					fault_domains?: [...string]
					preemptible_node_config?: [...{
						preemption_action!: [...{
							type!: string, is_preserve_boot_volume?: bool
						}]
					}]
					availability_domain!: string
					subnet_id!:           string
				}]
				size!:                                int
				is_pv_encryption_in_transit_enabled?: bool
			}]
		}
		virtual_node_pool: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			nsg_ids?: [...string]
			virtual_node_tags?: [...{
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
			}]
			display_name!: string
			initial_virtual_node_labels?: [...{
				key?:   string
				value?: string
			}]
			size!:           int
			compartment_id!: string
			placement_configurations!: [...{
				fault_domain!: [...string]
				subnet_id!:           string
				availability_domain!: string
			}]
			pod_configuration!: [...{
				subnet_id!: string
				nsg_ids?: [...string]
				shape!: string
			}]
			taints?: [...{
				effect?: string
				key?:    string
				value?:  string
			}]
			cluster_id!: string
		}
	}
}
#data: {
	node_pool: node_pool_id!: string
	pod_shapes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
		name?:                string
	}
	cluster: cluster_id!: string
	cluster_kube_config: {
		endpoint?:      string
		expiration?:    int
		token_version?: string
		cluster_id!:    string
	}
	cluster_workload_mapping: {
		workload_mapping_id!: string
		cluster_id!:          string
	}
	cluster_workload_mappings: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		cluster_id!: string
	}
	node_pools: {
		compartment_id!: string
		name?:           string
		state?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		cluster_id?: string
	}
	addon: {
		addon_name!: string
		cluster_id!: string
	}
	addons: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		cluster_id!: string
	}
	cluster_option: {
		cluster_option_id!: string
		compartment_id?:    string
	}
	node_pool_option: {
		compartment_id?:      string
		node_pool_option_id!: string
	}
	cluster_credential_rotation_status: cluster_id!: string
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
	virtual_node_pool: virtual_node_pool_id!: string
	virtual_node_pools: {
		compartment_id!: string
		display_name?:   string
		state?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		cluster_id?: string
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
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		addon_name?:         string
		kubernetes_version!: string
	}
	migrate_to_native_vcn_status: cluster_id!: string
	work_request_errors: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:  string
		work_request_id!: string
	}
	work_request_log_entries: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:  string
		work_request_id!: string
	}
}

