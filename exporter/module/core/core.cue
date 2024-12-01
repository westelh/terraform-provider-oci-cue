package core

#resource: {
	attributes: {
		volume_group: {
			volume_group_replicas?: [...{
				volume_group_replica_id: string
				availability_domain!:    string
				display_name?:           string
				xrr_kms_key_id?:         string
			}]
			display_name?:                   string
			volume_group_replicas_deletion?: bool
			freeform_tags?: [_]: string
			volume_ids?: [...string]
			size_in_mbs: string
			size_in_gbs: string
			source_details!: [...{
				volume_ids?: [...string]
				type!:                    string
				volume_group_backup_id?:  string
				volume_group_id?:         string
				volume_group_replica_id?: string
			}]
			defined_tags?: [_]: string
			xrc_kms_key_id?:             string
			availability_domain!:        string
			backup_policy_id?:           string
			time_created:                string
			compartment_id!:             string
			cluster_placement_group_id?: string
			preserve_volume_replica?:    bool
			state:                       string
			is_hydrated:                 bool
		}
		app_catalog_subscription: {
			publisher_name:            string
			time_retrieved!:           string
			signature!:                string
			listing_resource_version!: string
			summary:                   string
			oracle_terms_of_use_link!: string
			eula_link?:                string
			display_name:              string
			listing_resource_id:       string
			time_created:              string
			listing_id!:               string
			compartment_id!:           string
		}
		boot_volume_backup: {
			expiration_time:    string
			time_created:       string
			unique_size_in_gbs: string
			source_details?: [...{
				boot_volume_backup_id!: string
				kms_key_id?:            string
				region!:                string
			}]
			size_in_gbs:   string
			type?:         string
			display_name?: string
			system_tags: [_]: string
			kms_key_id?:                  string
			source_boot_volume_backup_id: string
			source_type:                  string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			state:                 string
			image_id:              string
			time_request_received: string
			boot_volume_id?:       string
			compartment_id?:       string
		}
		drg_attachment_management: {
			display_name?: string
			network_details?: [...{
				route_table_id?:     string
				ipsec_connection_id: string
				id!:                 string
				type!:               string
			}]
			is_cross_tenancy:                              bool
			route_table_id?:                               string
			network_id?:                                   string
			export_drg_route_distribution_id?:             string
			state:                                         string
			drg_id!:                                       string
			remove_export_drg_route_distribution_trigger?: bool
			freeform_tags?: [_]: string
			compartment_id!: string
			time_created:    string
			vcn_id?:         string
			defined_tags?: [_]: string
			attachment_type!:    string
			drg_route_table_id?: string
		}
		image: {
			freeform_tags?: [_]: string
			operating_system_version: string
			state:                    string
			agent_features: [...{
				is_management_supported: bool
				is_monitoring_supported: bool
			}]
			launch_mode?:  string
			listing_type:  string
			display_name?: string
			defined_tags?: [_]: string
			size_in_mbs:      string
			base_image_id:    string
			compartment_id!:  string
			operating_system: string
			image_source_details?: [...{
				operating_system?:         string
				operating_system_version?: string
				source_image_type?:        string
				source_uri?:               string
				source_type!:              string
				bucket_name?:              string
				namespace_name?:           string
				object_name?:              string
			}]
			instance_id?:         string
			billable_size_in_gbs: string
			create_image_allowed: bool
			launch_options: [...{
				network_type:                        string
				remote_data_volume_type:             string
				boot_volume_type:                    string
				firmware:                            string
				is_consistent_volume_naming_enabled: bool
				is_pv_encryption_in_transit_enabled: bool
			}]
			time_created: string
		}
		local_peering_gateway: {
			vcn_id!:                  string
			is_cross_tenancy_peering: bool
			peering_status:           string
			state:                    string
			defined_tags?: [_]: string
			compartment_id!: string
			peer_advertised_cidr_details: [...string]
			time_created: string
			freeform_tags?: [_]: string
			peer_id?:               string
			peering_status_details: string
			route_table_id?:        string
			peer_advertised_cidr:   string
			display_name?:          string
		}
		volume_attachment: {
			device?:                            string
			is_shareable?:                      bool
			use_chap?:                          bool
			encryption_in_transit_type?:        string
			iqn:                                string
			availability_domain:                string
			ipv4:                               string
			is_multipath:                       bool
			volume_id!:                         string
			is_read_only?:                      bool
			is_agent_auto_iscsi_login_enabled?: bool
			multipath_devices: [...{
				ipv4: string
				iqn:  string
				port: int
			}]
			state:                                string
			is_pv_encryption_in_transit_enabled?: bool
			chap_username:                        string
			compartment_id?:                      string
			chap_secret:                          string
			display_name?:                        string
			time_created:                         string
			is_volume_created_during_launch:      bool
			attachment_type!:                     string
			instance_id!:                         string
			port:                                 int
			iscsi_login_state:                    string
		}
		capture_filter: {
			display_name?:   string
			time_created:    string
			state:           string
			compartment_id!: string
			defined_tags?: [_]: string
			filter_type!: string
			freeform_tags?: [_]: string
			flow_log_capture_filter_rules?: [...{
				sampling_rate?:    int
				destination_cidr?: string
				priority?:         int
				source_cidr?:      string
				tcp_options?: [...{
					destination_port_range?: [...{
						min!: int
						max!: int
					}]
					source_port_range?: [...{
						max!: int
						min!: int
					}]
				}]
				flow_log_type?: string
				icmp_options?: [...{
					code?: int
					type!: int
				}]
				udp_options?: [...{
					destination_port_range?: [...{
						max!: int
						min!: int
					}]
					source_port_range?: [...{
						min!: int
						max!: int
					}]
				}]
				is_enabled?:  bool
				protocol?:    string
				rule_action?: string
			}]
			vtap_capture_filter_rules?: [...{
				traffic_direction!: string
				destination_cidr?:  string
				icmp_options?: [...{
					code?: int
					type!: int
				}]
				protocol?:    string
				rule_action?: string
				source_cidr?: string
				tcp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					destination_port_range?: [...{
						max!: int
						min!: int
					}]
				}]
				udp_options?: [...{
					destination_port_range?: [...{
						max!: int
						min!: int
					}]
					source_port_range?: [...{
						min!: int
						max!: int
					}]
				}]
			}]
		}
		instance: {
			source_details?: [...{
				source_id?:               string
				boot_volume_size_in_gbs?: string
				boot_volume_vpus_per_gb?: string
				instance_source_image_filter_details?: [...{
					operating_system_version?: string
					compartment_id!:           string
					defined_tags_filter?: [_]: string
					operating_system?: string
				}]
				kms_key_id?:                      string
				is_preserve_boot_volume_enabled?: bool
				source_type!:                     string
			}]
			shape_config?: [...{
				gpu_description:               string
				memory_in_gbs?:                float
				vcpus?:                        int
				gpus:                          int
				max_vnic_attachments:          int
				ocpus?:                        float
				local_disks_total_size_in_gbs: float
				networking_bandwidth_in_gbps:  float
				baseline_ocpu_utilization?:    string
				local_disks:                   int
				processor_description:         string
				nvmes?:                        int
				local_disk_description:        string
			}]
			system_tags: [_]: string
			cluster_placement_group_id?:              string
			availability_domain!:                     string
			async?:                                   bool
			preserve_data_volumes_created_at_launch?: bool
			display_name?:                            string
			time_created:                             string
			fault_domain?:                            string
			compartment_id!:                          string
			boot_volume_id:                           string
			subnet_id?:                               string
			platform_config?: [...{
				config_map?: [_]: string
				is_symmetric_multi_threading_enabled?:           bool
				numa_nodes_per_socket?:                          string
				are_virtual_instructions_enabled?:               bool
				is_access_control_service_enabled?:              bool
				is_input_output_memory_management_unit_enabled?: bool
				is_secure_boot_enabled?:                         bool
				percentage_of_cores_enabled?:                    int
				is_measured_boot_enabled?:                       bool
				is_memory_encryption_enabled?:                   bool
				type!:                                           string
				is_trusted_platform_module_enabled?:             bool
			}]
			preserve_boot_volume?: bool
			extended_metadata?: [_]: string
			security_attributes?: [_]: string
			state?:                               string
			is_pv_encryption_in_transit_enabled?: bool
			metadata?: [_]: string
			compute_cluster_id?: string
			defined_tags?: [_]: string
			update_operation_constraint?: string
			image?:                       string
			public_ip:                    string
			shape?:                       string
			agent_config?: [...{
				is_management_disabled?: bool
				is_monitoring_disabled?: bool
				plugins_config?: [...{
					name!:          string
					desired_state!: string
				}]
				are_all_plugins_disabled?: bool
			}]
			freeform_tags?: [_]: string
			create_vnic_details?: [...{
				defined_tags?: [_]: string
				subnet_id?:      string
				hostname_label?: string
				security_attributes?: [_]: string
				vlan_id?: string
				ipv6address_ipv6subnet_cidr_pair_details?: [...{
					ipv6address?:     string
					ipv6subnet_cidr?: string
				}]
				freeform_tags?: [_]: string
				assign_ipv6ip?:             bool
				skip_source_dest_check?:    bool
				assign_public_ip?:          *"true" | string
				private_ip?:                string
				assign_private_dns_record?: bool
				nsg_ids?: [...string]
				display_name?: string
			}]
			capacity_reservation_id?: string
			launch_options?: [...{
				remote_data_volume_type?:             string
				boot_volume_type?:                    string
				firmware?:                            string
				is_consistent_volume_naming_enabled?: bool
				is_pv_encryption_in_transit_enabled?: bool
				network_type?:                        string
			}]
			preemptible_instance_config?: [...{
				preemption_action!: [...{
					type!: string, preserve_boot_volume?: bool
				}]
			}]
			launch_mode: string
			region:      string
			launch_volume_attachments?: [...{
				display_name?:                      string
				is_agent_auto_iscsi_login_enabled?: bool
				is_read_only?:                      bool
				is_shareable?:                      bool
				launch_create_volume_details?: [...{
					kms_key_id?:           string
					vpus_per_gb?:          string
					size_in_gbs!:          string
					volume_creation_type!: string
					compartment_id?:       string
					display_name?:         string
				}]
				use_chap?:                            bool
				device?:                              string
				type!:                                string
				encryption_in_transit_type?:          string
				is_pv_encryption_in_transit_enabled?: bool
				volume_id?:                           string
			}]
			ipxe_script?:               string
			hostname_label?:            string
			instance_configuration_id?: string
			instance_options?: [...{
				are_legacy_imds_endpoints_disabled?: bool
			}]
			time_maintenance_reboot_due: string
			availability_config?: [...{
				recovery_action?:             string
				is_live_migration_preferred?: bool
			}]
			dedicated_vm_host_id?:     string
			security_attributes_state: string
			private_ip:                string
			is_cross_numa_node:        bool
		}
		instance_pool: {
			instance_hostname_formatter?: string
			load_balancers?: [...{
				state:             string
				backend_set_name!: string
				load_balancer_id!: string
				port!:             int
				vnic_selection!:   string
				id:                string
				instance_pool_id:  string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?:              string
			actual_size:                int
			instance_configuration_id!: string
			size!:                      int
			state?:                     string
			freeform_tags?: [_]: string
			time_created: string
			placement_configurations!: [...{
				secondary_vnic_subnets?: [...{
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
					is_assign_ipv6ip?: bool
					subnet_id!:        string
					display_name?:     string
				}]
				availability_domain!: string
				fault_domains?: [...string]
				primary_subnet_id?: string
				primary_vnic_subnets?: [...{
					subnet_id!: string
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
					is_assign_ipv6ip?: bool
				}]
			}]
			instance_display_name_formatter?: string
		}
		route_table: {
			state:           string
			time_created:    string
			compartment_id!: string
			vcn_id!:         string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			route_rules?: [...{
				cidr_block?:        string
				description?:       string
				destination?:       string
				destination_type?:  string
				route_type?:        string
				network_entity_id!: string
			}]
		}
		shape_management: {
			compartment_id!: string
			image_id!:       string
			shape_name!:     string
		}
		compute_capacity_reservation: {
			availability_domain!: string
			compartment_id!:      string
			state:                string
			used_instance_count:  string
			freeform_tags?: [_]: string
			instance_reservation_configs!: [...{
				cluster_config?: [...{
					hpc_island_id!: string
					network_block_ids?: [...string]
				}]
				cluster_placement_group_id?: string
				fault_domain?:               string
				instance_shape_config?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				used_count:      string
				instance_shape!: string
				reserved_count!: string
			}]
			reserved_instance_count: string
			time_created:            string
			time_updated:            string
			defined_tags?: [_]: string
			display_name?:           string
			is_default_reservation?: bool
		}
		default_route_table: {
			state:           string
			compartment_id?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name?:               string
			time_created:                string
			manage_default_resource_id!: string
			route_rules?: [...{
				cidr_block?:        string
				description?:       string
				destination?:       string
				destination_type?:  string
				route_type?:        string
				network_entity_id!: string
			}]
		}
		volume_backup: {
			time_request_received: string
			kms_key_id?:           string
			system_tags: [_]: string
			compartment_id?:         string
			display_name?:           string
			source_type:             string
			state:                   string
			unique_size_in_gbs:      string
			volume_id?:              string
			time_created:            string
			source_volume_backup_id: string
			type?:                   string
			source_details?: [...{
				region!:           string
				volume_backup_id!: string
				kms_key_id?:       string
			}]
			freeform_tags?: [_]: string
			unique_size_in_mbs: string
			size_in_gbs:        string
			size_in_mbs:        string
			expiration_time:    string
			defined_tags?: [_]: string
		}
		boot_volume: {
			autotune_policies?: [...{
				autotune_type!:   string
				max_vpus_per_gb?: string
			}]
			kms_key_id?:          string
			is_hydrated:          bool
			availability_domain!: string
			boot_volume_replicas?: [...{
				boot_volume_replica_id: string
				kms_key_id:             string
				availability_domain!:   string
				display_name?:          string
				xrr_kms_key_id?:        string
			}]
			backup_policy_id?: string
			source_details!: [...{
				second_backup_id?:           string
				type!:                       string
				change_block_size_in_bytes?: string
				first_backup_id?:            string
				id?:                         string
			}]
			xrc_kms_key_id?: string
			size_in_mbs:     string
			compartment_id!: string
			display_name?:   string
			freeform_tags?: [_]: string
			vpus_per_gb?:           string
			auto_tuned_vpus_per_gb: string
			is_auto_tune_enabled?:  bool
			state:                  string
			defined_tags?: [_]: string
			image_id:                    string
			time_created:                string
			volume_group_id:             string
			cluster_placement_group_id?: string
			size_in_gbs?:                string
			system_tags: [_]: string
			boot_volume_replicas_deletion?: bool
		}
		ipsec: {
			defined_tags?: [_]: string
			cpe_id!:                    string
			cpe_local_identifier_type?: string
			freeform_tags?: [_]: string
			tunnel_configuration?: [...{
				oracle_tunnel_ip?: string
				associated_virtual_circuits?: [...string]
				drg_route_table_id?: string
			}]
			transport_type:        string
			display_name?:         string
			time_created:          string
			drg_id!:               string
			cpe_local_identifier?: string
			state:                 string
			compartment_id!:       string
			static_routes!: [...string]
		}
		nat_gateway: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			block_traffic?:  bool
			public_ip_id?:   string
			nat_ip:          string
			state:           string
			vcn_id!:         string
			time_created:    string
			route_table_id?: string
		}
		public_ip: {
			display_name?: string
			time_created:  string
			defined_tags?: [_]: string
			compartment_id!:     string
			availability_domain: string
			assigned_entity_id:  string
			freeform_tags?: [_]: string
			scope:                string
			lifetime!:            string
			private_ip_id?:       string
			assigned_entity_type: string
			ip_address:           string
			state:                string
			public_ip_pool_id?:   string
		}
		app_catalog_listing_resource_version_agreement: {
			listing_id!:               string
			listing_resource_version!: string
			eula_link:                 string
			oracle_terms_of_use_link:  string
			signature:                 string
			time_retrieved:            string
		}
		cross_connect: {
			is_active?:                                    bool
			cross_connect_group_id?:                       string
			compartment_id!:                               string
			display_name?:                                 string
			location_name!:                                string
			near_cross_connect_or_cross_connect_group_id?: string
			oci_physical_device_name:                      string
			time_created:                                  string
			port_speed_shape_name!:                        string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			oci_logical_device_name:  string
			port_name:                string
			customer_reference_name?: string
			macsec_properties?: [...{
				state!:                          string
				encryption_cipher?:              string
				is_unprotected_traffic_allowed?: bool
				primary_key?: [...{
					connectivity_association_name_secret_id!:     string
					connectivity_association_key_secret_version:  string
					connectivity_association_name_secret_version: string
					connectivity_association_key_secret_id!:      string
				}]
			}]
			state:                                        string
			far_cross_connect_or_cross_connect_group_id?: string
		}
		cluster_network: {
			display_name?: string
			freeform_tags?: [_]: string
			cluster_configuration?: [...{
				network_block_ids?: [...string]
				hpc_island_id!: string
			}]
			defined_tags?: [_]: string
			compartment_id!: string
			network_block_ids: [...string]
			state:         string
			time_updated:  string
			hpc_island_id: string
			time_created:  string
			instance_pools!: [...{
				display_name?:                   string
				instance_display_name_formatter: string
				compartment_id:                  string
				defined_tags?: [_]: string
				instance_hostname_formatter: string
				time_created:                string
				instance_configuration_id!:  string
				size!:                       int
				load_balancers: [...{
					state:            string
					vnic_selection:   string
					backend_set_name: string
					id:               string
					instance_pool_id: string
					load_balancer_id: string
					port:             int
				}]
				state: string
				freeform_tags?: [_]: string
				placement_configurations: [...{
					availability_domain: string
					fault_domains: [...string]
					primary_subnet_id: string
					primary_vnic_subnets: [...{
						ipv6address_ipv6subnet_cidr_pair_details: [...{
							ipv6subnet_cidr: string
						}]
						is_assign_ipv6ip: bool
						subnet_id:        string
					}]
					secondary_vnic_subnets: [...{
						is_assign_ipv6ip: bool
						subnet_id:        string
						display_name:     string
						ipv6address_ipv6subnet_cidr_pair_details: [...{
							ipv6subnet_cidr: string
						}]
					}]
				}]
				id: string
			}]
			placement_configuration!: [...{
				availability_domain!:  string
				primary_subnet_id?:    string
				placement_constraint?: string
				primary_vnic_subnets?: [...{
					subnet_id!: string
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
					is_assign_ipv6ip?: bool
				}]
				secondary_vnic_subnets?: [...{
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
					is_assign_ipv6ip?: bool
					subnet_id!:        string
					display_name?:     string
				}]
			}]
		}
		console_history: {
			display_name?: string
			freeform_tags?: [_]: string
			availability_domain: string
			compartment_id:      string
			state:               string
			time_created:        string
			instance_id!:        string
			defined_tags?: [_]: string
		}
		instance_pool_instance: {
			auto_terminate_instance_on_delete?: bool
			time_created:                       string
			shape:                              string
			availability_domain:                string
			compartment_id:                     string
			region:                             string
			display_name:                       string
			instance_configuration_id:          string
			instance_pool_id!:                  string
			state:                              string
			load_balancer_backends: [...{
				backend_set_name:      string
				load_balancer_id:      string
				state:                 string
				backend_health_status: string
				backend_name:          string
			}]
			decrement_size_on_delete?: bool
			fault_domain:              string
			instance_id!:              string
		}
		ipv6: {
			state:          string
			subnet_id:      string
			compartment_id: string
			vnic_id!:       string
			ip_address?:    string
			time_created:   string
			display_name?:  string
			freeform_tags?: [_]: string
			ipv6subnet_cidr?: string
			defined_tags?: [_]: string
		}
		compute_capacity_report: {
			shape_availabilities!: [...{
				availability_status: string
				available_count:     string
				instance_shape!:     string
				fault_domain?:       string
				instance_shape_config?: [...{
					nvmes?:         int
					ocpus?:         float
					memory_in_gbs?: float
				}]
			}]
			time_created:         string
			availability_domain!: string
			compartment_id!:      string
		}
		default_dhcp_options: {
			display_name?:               string
			domain_name_type?:           string
			manage_default_resource_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state:           string
			time_created:    string
			compartment_id?: string
			options!: [...{
				type!: string
				custom_dns_servers?: [...string]
				search_domain_names?: [...string]
				server_type?: string
			}]
		}
		dhcp_options: {
			display_name?:     string
			state:             string
			domain_name_type?: string
			time_created:      string
			compartment_id!:   string
			options!: [...{
				type!: string
				custom_dns_servers?: [...string]
				search_domain_names?: [...string]
				server_type?: string
			}]
			vcn_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		internet_gateway: {
			freeform_tags?: [_]: string
			route_table_id?: string
			state:           string
			defined_tags?: [_]: string
			display_name?:   string
			enabled?:        *true | bool
			time_created:    string
			vcn_id!:         string
			compartment_id!: string
		}
		volume_backup_policy_assignment: {
			xrc_kms_key_id?: string
			time_created:    string
			asset_id!:       string
			policy_id!:      string
		}
		service_gateway: {
			block_traffic: bool
			state:         string
			time_created:  string
			display_name?: string
			defined_tags?: [_]: string
			services!: [...{
				service_name: string
				service_id!:  string
			}]
			route_table_id?: string
			compartment_id!: string
			vcn_id!:         string
			freeform_tags?: [_]: string
		}
		compute_capacity_topology: {
			display_name?: string
			freeform_tags?: [_]: string
			time_updated:         string
			availability_domain!: string
			state:                string
			time_created:         string
			compartment_id!:      string
			capacity_source!: [...{
				capacity_type!:  string
				compartment_id?: string
			}]
			defined_tags?: [_]: string
		}
		default_security_list: {
			manage_default_resource_id!: string
			defined_tags?: [_]: string
			egress_security_rules?: [...{
				icmp_options?: [...{
					type!: int
					code?: *-1 | int
				}]
				stateless?: bool
				tcp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
				udp_options?: [...{
					source_port_range?: [...{
						min!: int
						max!: int
					}]
					max?: int
					min?: int
				}]
				destination!:      string
				protocol!:         string
				description?:      string
				destination_type?: string
			}]
			state: string
			freeform_tags?: [_]: string
			ingress_security_rules?: [...{
				source_type?: string
				stateless?:   *false | bool
				tcp_options?: [...{
					max?: int
					min?: int
					source_port_range?: [...{
						max!: int
						min!: int
					}]
				}]
				udp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
				protocol!:    string
				source!:      string
				description?: string
				icmp_options?: [...{
					code?: *-1 | int
					type!: int
				}]
			}]
			time_created:    string
			compartment_id?: string
			display_name?:   string
		}
		dedicated_vm_host: {
			total_ocpus:          float
			availability_domain!: string
			fault_domain?:        string
			remaining_ocpus:      float
			state:                string
			compartment_id!:      string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			remaining_memory_in_gbs:  float
			time_created:             string
			dedicated_vm_host_shape!: string
			total_memory_in_gbs:      float
			display_name?:            string
		}
		listing_resource_version_agreement: {
			listing_id!:               string
			listing_resource_version!: string
			eula_link:                 string
			oracle_terms_of_use_link:  string
			signature:                 string
			time_retrieved:            string
		}
		network_security_group_security_rule: {
			is_valid:          bool
			time_created:      string
			destination_type?: string
			source_type?:      string
			tcp_options?: [...{
				destination_port_range?: [...{
					max!: int
					min!: int
				}]
				source_port_range?: [...{
					max!: int
					min!: int
				}]
			}]
			network_security_group_id!: string
			source?:                    string
			udp_options?: [...{
				destination_port_range?: [...{
					max!: int
					min!: int
				}]
				source_port_range?: [...{
					min!: int
					max!: int
				}]
			}]
			description?: string
			direction!:   string
			protocol!:    string
			icmp_options?: [...{
				type!: int
				code?: *-1 | int
			}]
			stateless?:   bool
			destination?: string
		}
		cross_connect_group: {
			defined_tags?: [_]: string
			compartment_id!:          string
			oci_logical_device_name:  string
			oci_physical_device_name: string
			time_created:             string
			display_name?:            string
			freeform_tags?: [_]: string
			macsec_properties?: [...{
				encryption_cipher?:              string
				is_unprotected_traffic_allowed?: bool
				primary_key?: [...{
					connectivity_association_name_secret_id!:      string
					connectivity_association_key_secret_version?:  string
					connectivity_association_name_secret_version?: string
					connectivity_association_key_secret_id!:       string
				}]
				state!: string
			}]
			state:                    string
			customer_reference_name?: string
		}
		drg_route_distribution: {
			drg_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id:     string
			state:              string
			time_created:       string
			distribution_type!: string
		}
		ipsec_connection_tunnel_management: {
			ike_version?: string
			phase_two_details?: [...{
				lifetime?:                           int
				dh_group?:                           string
				is_custom_phase_two_config?:         bool
				negotiated_dh_group:                 string
				remaining_lifetime_int:              int
				negotiated_authentication_algorithm: string
				remaining_lifetime:                  string
				remaining_lifetime_last_retrieved:   string
				custom_authentication_algorithm?:    string
				is_pfs_enabled?:                     bool
				is_esp_established:                  bool
				negotiated_encryption_algorithm:     string
				custom_encryption_algorithm?:        string
			}]
			time_created: string
			status:       string
			vpn_ip:       string
			tunnel_id!:   string
			state:        string
			bgp_session_info?: [...{
				oracle_interface_ip?:     string
				customer_interface_ipv6?: string
				oracle_bgp_asn:           string
				bgp_ipv6_state:           string
				customer_interface_ip?:   string
				bgp_state:                string
				bgp_ipv6state:            string
				customer_bgp_asn?:        string
				oracle_interface_ipv6?:   string
			}]
			nat_translation_enabled?: string
			dpd_timeout_in_sec:       int
			ipsec_id!:                string
			shared_secret?:           string
			compartment_id:           string
			phase_one_details?: [...{
				lifetime?:                           int
				negotiated_authentication_algorithm: string
				is_custom_phase_one_config?:         bool
				negotiated_dh_group:                 string
				remaining_lifetime:                  string
				remaining_lifetime_int:              int
				custom_authentication_algorithm?:    string
				negotiated_encryption_algorithm:     string
				custom_dh_group?:                    string
				custom_encryption_algorithm?:        string
				is_ike_established:                  bool
				remaining_lifetime_last_retrieved:   string
			}]
			dpd_mode:            string
			time_status_updated: string
			encryption_domain_config?: [...{
				cpe_traffic_selector?: [...string]
				oracle_traffic_selector?: [...string]
			}]
			associated_virtual_circuits: [...string]
			routing?: string
			dpd_config?: [...{
				dpd_mode?:           string
				dpd_timeout_in_sec?: int
			}]
			oracle_can_initiate?: string
			cpe_ip:               string
			display_name?:        string
		}
		subnet: {
			time_created:                string
			availability_domain?:        string
			prohibit_public_ip_on_vnic?: bool
			ipv6virtual_router_ip:       string
			subnet_domain_name:          string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			virtual_router_mac: string
			security_list_ids?: [...string]
			prohibit_internet_ingress?: bool
			state:                      string
			display_name?:              string
			dhcp_options_id?:           string
			compartment_id!:            string
			ipv6cidr_blocks?: [...string]
			route_table_id?:   string
			virtual_router_ip: string
			vcn_id!:           string
			cidr_block!:       string
			dns_label?:        string
			ipv6cidr_block?:   string
		}
		volume: {
			time_created: string
			block_volume_replicas?: [...{
				kms_key_id:              string
				availability_domain!:    string
				display_name?:           string
				xrr_kms_key_id?:         string
				block_volume_replica_id: string
			}]
			display_name?:               string
			is_hydrated:                 bool
			kms_key_id?:                 string
			vpus_per_gb?:                string
			cluster_placement_group_id?: string
			state:                       string
			defined_tags?: [_]: string
			is_auto_tune_enabled?: bool
			xrc_kms_key_id?:       string
			compartment_id!:       string
			backup_policy_id?:     string
			availability_domain!:  string
			system_tags: [_]: string
			size_in_gbs?:           string
			auto_tuned_vpus_per_gb: string
			freeform_tags?: [_]: string
			volume_group_id: string
			size_in_mbs?:    string
			source_details?: [...{
				second_backup_id?:           string
				type!:                       string
				change_block_size_in_bytes?: string
				first_backup_id?:            string
				id?:                         string
			}]
			volume_backup_id?:               string
			block_volume_replicas_deletion?: bool
			autotune_policies?: [...{
				autotune_type!:   string
				max_vpus_per_gb?: string
			}]
		}
		drg_attachments_list: {
			attachment_type?:  string
			is_cross_tenancy?: bool
			drg_all_attachments: [...{
				id: string
			}]
			drg_id!: string
		}
		drg_route_distribution_statement: {
			drg_route_distribution_id!: string
			action!:                    string
			priority!:                  int
			match_criteria!: [...{
				match_type?:        string
				attachment_type?:   string
				drg_attachment_id?: string
			}]
		}
		instance_configuration: {
			instance_id?: string
			time_created: string
			deferred_fields: [...string]
			defined_tags?: [_]: string
			display_name?:   string
			compartment_id!: string
			freeform_tags?: [_]: string
			instance_details?: [...{
				block_volumes?: [...{
					attach_details?: [...{
						is_read_only?:                        bool
						is_shareable?:                        bool
						use_chap?:                            bool
						type!:                                string
						device?:                              string
						display_name?:                        string
						is_pv_encryption_in_transit_enabled?: bool
					}]
					create_details?: [...{
						is_auto_tune_enabled?:       bool
						xrc_kms_key_id?:             string
						kms_key_id?:                 string
						cluster_placement_group_id?: string
						freeform_tags?: [_]: string
						block_volume_replicas?: [...{
							display_name?:        string
							availability_domain!: string
						}]
						defined_tags?: [_]: string
						display_name?: string
						source_details?: [...{
							type!: string
							id?:   string
						}]
						autotune_policies?: [...{
							autotune_type!:   string
							max_vpus_per_gb?: string
						}]
						backup_policy_id?:    string
						compartment_id?:      string
						size_in_gbs?:         string
						availability_domain?: string
						vpus_per_gb?:         string
					}]
					volume_id?: string
				}]
				launch_details?: [...{
					fault_domain?:            string
					capacity_reservation_id?: string
					freeform_tags?: [_]: string
					source_details?: [...{
						kms_key_id?:              string
						source_type!:             string
						boot_volume_id?:          string
						boot_volume_size_in_gbs?: string
						boot_volume_vpus_per_gb?: string
						image_id?:                string
						instance_source_image_filter_details?: [...{
							compartment_id?: string
							defined_tags_filter?: [_]: string
							operating_system?:         string
							operating_system_version?: string
						}]
					}]
					compartment_id?: string
					launch_options?: [...{
						network_type?:                        string
						remote_data_volume_type?:             string
						boot_volume_type?:                    string
						firmware?:                            string
						is_consistent_volume_naming_enabled?: bool
						is_pv_encryption_in_transit_enabled?: bool
					}]
					preemptible_instance_config?: [...{
						preemption_action?: [...{
							type!: string, preserve_boot_volume?: bool
						}]
					}]
					security_attributes?: [_]: string
					instance_options?: [...{
						are_legacy_imds_endpoints_disabled?: bool
					}]
					shape_config?: [...{
						ocpus?:                     float
						vcpus?:                     int
						baseline_ocpu_utilization?: string
						memory_in_gbs?:             float
						nvmes?:                     int
					}]
					launch_mode?: string
					extended_metadata?: [_]: string
					ipxe_script?:                         string
					shape?:                               string
					is_pv_encryption_in_transit_enabled?: bool
					agent_config?: [...{
						are_all_plugins_disabled?: bool
						is_management_disabled?:   bool
						is_monitoring_disabled?:   bool
						plugins_config?: [...{
							desired_state?: string
							name?:          string
						}]
					}]
					cluster_placement_group_id?: string
					platform_config?: [...{
						is_access_control_service_enabled?:              bool
						is_input_output_memory_management_unit_enabled?: bool
						config_map?: [_]: string
						is_measured_boot_enabled?:             bool
						is_trusted_platform_module_enabled?:   bool
						type!:                                 string
						is_symmetric_multi_threading_enabled?: bool
						is_memory_encryption_enabled?:         bool
						numa_nodes_per_socket?:                string
						percentage_of_cores_enabled?:          int
						are_virtual_instructions_enabled?:     bool
						is_secure_boot_enabled?:               bool
					}]
					preferred_maintenance_action?: string
					display_name?:                 string
					dedicated_vm_host_id?:         string
					availability_domain?:          string
					create_vnic_details?: [...{
						display_name?: string
						freeform_tags?: [_]: string
						subnet_id?:        string
						assign_ipv6ip?:    bool
						assign_public_ip?: bool
						security_attributes?: [_]: string
						hostname_label?:            string
						private_ip?:                string
						skip_source_dest_check?:    bool
						assign_private_dns_record?: *true | bool
						defined_tags?: [_]: string
						ipv6address_ipv6subnet_cidr_pair_details?: [...{
							ipv6address?:     string
							ipv6subnet_cidr?: string
						}]
						nsg_ids?: [...string]
					}]
					defined_tags?: [_]: string
					availability_config?: [...{
						recovery_action?:             string
						is_live_migration_preferred?: bool
					}]
					metadata?: [_]: string
				}]
				options?: [...{
					secondary_vnics?: [...{
						create_vnic_details?: [...{
							hostname_label?: string
							nsg_ids?: [...string]
							subnet_id?: string
							defined_tags?: [_]: string
							display_name?: string
							security_attributes?: [_]: string
							skip_source_dest_check?: bool
							assign_public_ip?:       bool
							private_ip?:             string
							freeform_tags?: [_]: string
							ipv6address_ipv6subnet_cidr_pair_details?: [...{
								ipv6address?:     string
								ipv6subnet_cidr?: string
							}]
							assign_ipv6ip?:             bool
							assign_private_dns_record?: bool
						}]
						display_name?: string
						nic_index?:    int
					}]
					block_volumes?: [...{
						attach_details?: [...{
							is_pv_encryption_in_transit_enabled?: bool
							is_read_only?:                        bool
							is_shareable?:                        bool
							use_chap?:                            bool
							type!:                                string
							device?:                              string
							display_name?:                        string
						}]
						create_details?: [...{
							cluster_placement_group_id?: string
							block_volume_replicas?: [...{
								availability_domain!: string
								display_name?:        string
							}]
							size_in_gbs?:      string
							backup_policy_id?: string
							kms_key_id?:       string
							autotune_policies?: [...{
								autotune_type!:   string
								max_vpus_per_gb?: string
							}]
							defined_tags?: [_]: string
							display_name?: string
							source_details?: [...{
								type!: string
								id?:   string
							}]
							vpus_per_gb?:          string
							compartment_id?:       string
							is_auto_tune_enabled?: bool
							freeform_tags?: [_]: string
							availability_domain?: string
							xrc_kms_key_id?:      string
						}]
						volume_id?: string
					}]
					launch_details?: [...{
						preemptible_instance_config?: [...{
							preemption_action?: [...{
								type!: string, preserve_boot_volume?: bool
							}]
						}]
						preferred_maintenance_action?: string
						shape_config?: [...{
							baseline_ocpu_utilization?: string
							memory_in_gbs?:             float
							nvmes?:                     int
							ocpus?:                     float
							vcpus?:                     int
						}]
						create_vnic_details?: [...{
							assign_public_ip?: bool
							defined_tags?: [_]: string
							subnet_id?: string
							nsg_ids?: [...string]
							skip_source_dest_check?: bool
							display_name?:           string
							ipv6address_ipv6subnet_cidr_pair_details?: [...{
								ipv6subnet_cidr?: string
								ipv6address?:     string
							}]
							security_attributes?: [_]: string
							assign_private_dns_record?: bool
							assign_ipv6ip?:             bool
							freeform_tags?: [_]: string
							hostname_label?: string
							private_ip?:     string
						}]
						dedicated_vm_host_id?: string
						agent_config?: [...{
							is_management_disabled?: bool
							is_monitoring_disabled?: bool
							plugins_config?: [...{
								desired_state?: string
								name?:          string
							}]
							are_all_plugins_disabled?: bool
						}]
						capacity_reservation_id?: string
						launch_mode?:             string
						security_attributes?: [_]: string
						availability_config?: [...{
							is_live_migration_preferred?: bool
							recovery_action?:             string
						}]
						platform_config?: [...{
							are_virtual_instructions_enabled?:               bool
							is_access_control_service_enabled?:              bool
							is_input_output_memory_management_unit_enabled?: bool
							is_measured_boot_enabled?:                       bool
							numa_nodes_per_socket?:                          string
							is_trusted_platform_module_enabled?:             bool
							type!:                                           string
							is_secure_boot_enabled?:                         bool
							is_symmetric_multi_threading_enabled?:           bool
							is_memory_encryption_enabled?:                   bool
							percentage_of_cores_enabled?:                    int
						}]
						source_details?: [...{
							boot_volume_id?:          string
							boot_volume_size_in_gbs?: string
							boot_volume_vpus_per_gb?: string
							image_id?:                string
							kms_key_id?:              string
							instance_source_image_filter_details?: [...{
								defined_tags_filter?: [_]: string
								operating_system?:         string
								operating_system_version?: string
								compartment_id?:           string
							}]
							source_type!: string
						}]
						availability_domain?: string
						shape?:               string
						instance_options?: [...{
							are_legacy_imds_endpoints_disabled?: bool
						}]
						ipxe_script?:                         string
						is_pv_encryption_in_transit_enabled?: bool
						extended_metadata?: [_]: string
						metadata?: [_]: string
						cluster_placement_group_id?: string
						compartment_id?:             string
						fault_domain?:               string
						defined_tags?: [_]: string
						display_name?: string
						launch_options?: [...{
							boot_volume_type?:                    string
							firmware?:                            string
							is_consistent_volume_naming_enabled?: bool
							is_pv_encryption_in_transit_enabled?: bool
							network_type?:                        string
							remote_data_volume_type?:             string
						}]
						freeform_tags?: [_]: string
					}]
				}]
				secondary_vnics?: [...{
					create_vnic_details?: [...{
						nsg_ids?: [...string]
						security_attributes?: [_]: string
						skip_source_dest_check?: bool
						private_ip?:             string
						assign_ipv6ip?:          bool
						hostname_label?:         string
						ipv6address_ipv6subnet_cidr_pair_details?: [...{
							ipv6address?:     string
							ipv6subnet_cidr?: string
						}]
						subnet_id?:                 string
						assign_private_dns_record?: *true | bool
						assign_public_ip?:          bool
						defined_tags?: [_]: string
						display_name?: string
						freeform_tags?: [_]: string
					}]
					display_name?: string
					nic_index?:    int
				}]
				instance_type!: string
			}]
			source?: string
		}
		private_ip: {
			is_primary: bool
			defined_tags?: [_]: string
			display_name?: string
			vlan_id?:      string
			freeform_tags?: [_]: string
			hostname_label?:     string
			ip_address?:         string
			compartment_id:      string
			time_created:        string
			is_reserved:         bool
			vnic_id?:            string
			availability_domain: string
			subnet_id:           string
		}
		vtap: {
			display_name?:             string
			vxlan_network_identifier?: string
			encapsulation_protocol?:   string
			capture_filter_id!:        string
			source_id!:                string
			vcn_id!:                   string
			freeform_tags?: [_]: string
			compartment_id!:                    string
			source_private_endpoint_subnet_id?: string
			lifecycle_state_details:            string
			target_type?:                       string
			traffic_mode?:                      string
			time_created:                       string
			is_vtap_enabled?:                   bool
			defined_tags?: [_]: string
			max_packet_size?:            int
			state:                       string
			source_private_endpoint_ip?: string
			target_id?:                  string
			source_type?:                string
			target_ip?:                  string
		}
		compute_cluster: {
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			state:                string
			time_created:         string
			availability_domain!: string
			compartment_id!:      string
		}
		compute_image_capability_schema: {
			time_created:                              string
			compartment_id!:                           string
			compute_global_image_capability_schema_id: string
			image_id!:                                 string
			defined_tags?: [_]: string
			compute_global_image_capability_schema_version_name!: string
			display_name?:                                        string
			freeform_tags?: [_]: string
			schema_data!: [_]: string
		}
		vcn: {
			vcn_domain_name: string
			byoipv6cidr_blocks: [...string]
			time_created: string
			ipv6private_cidr_blocks?: [...string]
			byoipv6cidr_details?: [...{
				byoipv6range_id!: string
				ipv6cidr_block!:  string
			}]
			defined_tags?: [_]: string
			ipv6cidr_blocks: [...string]
			dns_label?:                        string
			state:                             string
			default_dhcp_options_id:           string
			display_name?:                     string
			default_route_table_id:            string
			compartment_id!:                   string
			is_ipv6enabled?:                   bool
			is_oracle_gua_allocation_enabled?: bool
			default_security_list_id:          string
			cidr_block?:                       string
			freeform_tags?: [_]: string
			cidr_blocks?: [...string]
			security_attributes?: [_]: string
		}
		vlan: {
			freeform_tags?: [_]: string
			nsg_ids?: [...string]
			state: string
			defined_tags?: [_]: string
			route_table_id?:      string
			compartment_id!:      string
			availability_domain?: string
			vlan_tag?:            int
			vcn_id!:              string
			display_name?:        string
			time_created:         string
			cidr_block!:          string
		}
		cpe: {
			cpe_device_shape_id?: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			is_private?:     bool
			time_created:    string
			compartment_id!: string
			ip_address!:     string
		}
		drg_attachment: {
			defined_tags?: [_]: string
			drg_route_table_id?: string
			freeform_tags?: [_]: string
			state: string
			network_details?: [...{
				ids: [...string]
				ipsec_connection_id:     string
				transport_attachment_id: string
				transport_only_mode:     bool
				type!:                   string
				id?:                     string
				route_table_id?:         string
				vcn_route_type?:         string
			}]
			vcn_id?:                                       string
			display_name?:                                 string
			route_table_id?:                               string
			time_created:                                  string
			compartment_id:                                string
			remove_export_drg_route_distribution_trigger?: bool
			export_drg_route_distribution_id?:             string
			is_cross_tenancy:                              bool
			drg_id!:                                       string
		}
		drg_route_table_route_rule: {
			next_hop_drg_attachment_id!: string
			is_blackhole:                bool
			destination!:                string
			route_provenance:            string
			drg_route_table_id!:         string
			destination_type!:           string
			attributes: [_]: string
			is_conflict: bool
			route_type:  string
		}
		remote_peering_connection: {
			peer_tenancy_id: string
			freeform_tags?: [_]: string
			state:             string
			peer_id?:          string
			peer_region_name?: string
			compartment_id!:   string
			drg_id!:           string
			defined_tags?: [_]: string
			display_name?:            string
			time_created:             string
			is_cross_tenancy_peering: bool
			peering_status:           string
		}
		security_list: {
			ingress_security_rules?: [...{
				source!:      string
				description?: string
				icmp_options?: [...{
					code?: *-1 | int
					type!: int
				}]
				source_type?: string
				stateless?:   *false | bool
				tcp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
				udp_options?: [...{
					min?: int
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
				}]
				protocol!: string
			}]
			display_name?:   string
			compartment_id!: string
			vcn_id!:         string
			egress_security_rules?: [...{
				udp_options?: [...{
					max?: int
					min?: int
					source_port_range?: [...{
						max!: int
						min!: int
					}]
				}]
				destination!:      string
				protocol!:         string
				description?:      string
				destination_type?: string
				icmp_options?: [...{
					type!: int
					code?: *-1 | int
				}]
				stateless?: bool
				tcp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
			}]
			freeform_tags?: [_]: string
			time_created: string
			defined_tags?: [_]: string
			state: string
		}
		route_table_attachment: {
			subnet_id!:      string
			route_table_id!: string
		}
		virtual_circuit: {
			state:           string
			is_bfd_enabled?: bool
			bgp_management:  string
			routing_policy?: [...string]
			is_transport_mode?:    bool
			reference_comment:     string
			bandwidth_shape_name?: string
			type!:                 string
			oracle_bgp_asn:        int
			provider_service_id?:  string
			region?:               string
			bgp_session_state:     string
			ip_mtu?:               string
			cross_connect_mappings?: [...{
				customer_bgp_peering_ipv6?:               string
				oracle_bgp_peering_ip?:                   string
				oracle_bgp_peering_ipv6?:                 string
				vlan?:                                    int
				bgp_md5auth_key?:                         string
				cross_connect_or_cross_connect_group_id?: string
				customer_bgp_peering_ip?:                 string
			}]
			display_name?: string
			gateway_id?:   string
			public_prefixes?: [...{
				cidr_block!: string
			}]
			customer_asn?:   string
			compartment_id!: string
			freeform_tags?: [_]: string
			time_created:      string
			service_type:      string
			customer_bgp_asn?: int
			virtual_circuit_redundancy_metadata: [...{
				configured_redundancy_level:       string
				ipv4bgp_session_redundancy_status: string
				ipv6bgp_session_redundancy_status: string
			}]
			provider_state: string
			defined_tags?: [_]: string
			provider_service_key_name?: string
			bgp_admin_state?:           string
			bgp_ipv6session_state:      string
		}
		volume_group_backup: {
			source_volume_group_backup_id: string
			expiration_time:               string
			size_in_mbs:                   string
			unique_size_in_gbs:            string
			type?:                         string
			size_in_gbs:                   string
			source_type:                   string
			compartment_id?:               string
			volume_backup_ids: [...string]
			volume_group_id?:      string
			state:                 string
			time_created:          string
			time_request_received: string
			source_details?: [...{
				kms_key_id?:             string
				region!:                 string
				volume_group_backup_id!: string
			}]
			display_name?:      string
			unique_size_in_mbs: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
		}
		instance_console_connection: {
			freeform_tags?: [_]: string
			compartment_id: string
			defined_tags?: [_]: string
			connection_string:            string
			fingerprint:                  string
			service_host_key_fingerprint: string
			state:                        string
			vnc_connection_string:        string
			public_key!:                  string
			instance_id!:                 string
		}
		volume_backup_policy: {
			compartment_id!: string
			defined_tags?: [_]: string
			destination_region?: string
			display_name?:       string
			freeform_tags?: [_]: string
			schedules?: [...{
				offset_type?:       string
				time_zone?:         string
				period!:            string
				day_of_month?:      *-1 | int
				offset_seconds?:    int
				backup_type!:       string
				retention_seconds!: int
				day_of_week?:       string
				hour_of_day?:       *-1 | int
				month?:             string
			}]
			time_created: string
		}
		instance_maintenance_event: {
			compartment_id:     string
			time_finished:      string
			time_window_start?: string
			additional_details: [_]: string
			instance_action:                string
			alternative_resolution_action?: string
			maintenance_reason:             string
			time_started:                   string
			correlation_token:              string
			maintenance_category:           string
			start_window_duration:          string
			alternative_resolution_actions: [...string]
			time_created:                   string
			can_delete_local_storage?:      bool
			instance_maintenance_event_id!: string
			freeform_tags?: [_]: string
			created_by:         string
			display_name?:      string
			can_reschedule:     bool
			estimated_duration: string
			time_hard_due_date: string
			instance_id:        string
			state:              string
			defined_tags?: [_]: string
			description: string
		}
		public_ip_pool_capacity: {
			public_ip_pool_id!: string
			byoip_id!:          string
			cidr_block!:        string
		}
		drg: {
			display_name?:                            string
			default_export_drg_route_distribution_id: string
			time_created:                             string
			defined_tags?: [_]: string
			state:           string
			compartment_id!: string
			freeform_tags?: [_]: string
			default_drg_route_tables: [...{
				ipsec_tunnel:              string
				remote_peering_connection: string
				vcn:                       string
				virtual_circuit:           string
			}]
			redundancy_status: string
		}
		drg_route_table: {
			drg_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			is_ecmp_enabled?:                  bool
			compartment_id:                    string
			state:                             string
			time_created:                      string
			import_drg_route_distribution_id?: string
			remove_import_trigger?:            bool
		}
		network_security_group: {
			time_created:    string
			compartment_id!: string
			vcn_id!:         string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			state: string
		}
		public_ip_pool: {
			cidr_blocks: [...string]
			state:           string
			time_created:    string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
		vnic_attachment: {
			nic_index?:     int
			time_created:   string
			vlan_id:        string
			instance_id!:   string
			compartment_id: string
			display_name?:  string
			create_vnic_details!: [...{
				display_name?:              string
				private_ip?:                string
				assign_private_dns_record?: bool
				skip_source_dest_check?:    bool
				hostname_label?:            string
				freeform_tags?: [_]: string
				security_attributes?: [_]: string
				ipv6address_ipv6subnet_cidr_pair_details?: [...{
					ipv6_address?:     string
					ipv6_subnet_cidr?: string
				}]
				nsg_ids?: [...string]
				assign_ipv6ip?:    bool
				subnet_id?:        string
				vlan_id?:          string
				assign_public_ip?: *"false" | string
				defined_tags?: [_]: string
			}]
			state:               string
			vnic_id:             string
			availability_domain: string
			subnet_id:           string
			vlan_tag:            int
		}
	}
	arguments: {
		volume_group: {
			volume_group_replicas?: [...{
				availability_domain!: string
				display_name?:        string
				xrr_kms_key_id?:      string
			}]
			source_details!: [...{
				volume_group_id?:         string
				volume_group_replica_id?: string
				volume_ids?: [...string]
				type!:                   string
				volume_group_backup_id?: string
			}]
			preserve_volume_replica?:        bool
			display_name?:                   string
			availability_domain!:            string
			cluster_placement_group_id?:     string
			xrc_kms_key_id?:                 string
			volume_group_replicas_deletion?: bool
			volume_ids?: [...string]
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			backup_policy_id?: string
		}
		app_catalog_subscription: {
			oracle_terms_of_use_link!: string
			eula_link?:                string
			listing_id!:               string
			signature!:                string
			time_retrieved!:           string
			compartment_id!:           string
			listing_resource_version!: string
		}
		boot_volume_backup: {
			boot_volume_id?: string
			defined_tags?: [_]: string
			source_details?: [...{
				boot_volume_backup_id!: string
				kms_key_id?:            string
				region!:                string
			}]
			type?: string
			freeform_tags?: [_]: string
			display_name?:   string
			compartment_id?: string
			kms_key_id?:     string
		}
		drg_attachment_management: {
			freeform_tags?: [_]: string
			drg_route_table_id?:                           string
			vcn_id?:                                       string
			export_drg_route_distribution_id?:             string
			attachment_type!:                              string
			display_name?:                                 string
			remove_export_drg_route_distribution_trigger?: bool
			compartment_id!:                               string
			defined_tags?: [_]: string
			network_details?: [...{
				id!:             string
				type!:           string
				route_table_id?: string
			}]
			route_table_id?: string
			drg_id!:         string
			network_id?:     string
		}
		image: {
			image_source_details?: [...{
				namespace_name?:           string
				object_name?:              string
				operating_system?:         string
				operating_system_version?: string
				source_image_type?:        string
				source_uri?:               string
				source_type!:              string
				bucket_name?:              string
			}]
			instance_id?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			launch_mode?:    string
			compartment_id!: string
			display_name?:   string
		}
		local_peering_gateway: {
			route_table_id?: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			peer_id?:        string
			compartment_id!: string
			vcn_id!:         string
		}
		volume_attachment: {
			is_pv_encryption_in_transit_enabled?: bool
			is_agent_auto_iscsi_login_enabled?:   bool
			is_read_only?:                        bool
			use_chap?:                            bool
			volume_id!:                           string
			device?:                              string
			display_name?:                        string
			attachment_type!:                     string
			compartment_id?:                      string
			is_shareable?:                        bool
			encryption_in_transit_type?:          string
			instance_id!:                         string
		}
		capture_filter: {
			filter_type!:  string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
			flow_log_capture_filter_rules?: [...{
				icmp_options?: [...{
					type!: int
					code?: int
				}]
				udp_options?: [...{
					destination_port_range?: [...{
						max!: int
						min!: int
					}]
					source_port_range?: [...{
						max!: int
						min!: int
					}]
				}]
				source_cidr?: string
				tcp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					destination_port_range?: [...{
						max!: int
						min!: int
					}]
				}]
				destination_cidr?: string
				priority?:         int
				sampling_rate?:    int
				rule_action?:      string
				is_enabled?:       bool
				protocol?:         string
				flow_log_type?:    string
			}]
			vtap_capture_filter_rules?: [...{
				udp_options?: [...{
					destination_port_range?: [...{
						max!: int
						min!: int
					}]
					source_port_range?: [...{
						min!: int
						max!: int
					}]
				}]
				traffic_direction!: string
				destination_cidr?:  string
				icmp_options?: [...{
					type!: int
					code?: int
				}]
				protocol?:    string
				rule_action?: string
				source_cidr?: string
				tcp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					destination_port_range?: [...{
						max!: int
						min!: int
					}]
				}]
			}]
		}
		instance: {
			subnet_id?:            string
			preserve_boot_volume?: bool
			create_vnic_details?: [...{
				nsg_ids?: [...string]
				vlan_id?: string
				security_attributes?: [_]: string
				freeform_tags?: [_]: string
				private_ip?:    string
				assign_ipv6ip?: bool
				ipv6address_ipv6subnet_cidr_pair_details?: [...{
					ipv6address?:     string
					ipv6subnet_cidr?: string
				}]
				defined_tags?: [_]: string
				subnet_id?:                 string
				assign_public_ip?:          *"true" | string
				hostname_label?:            string
				assign_private_dns_record?: bool
				skip_source_dest_check?:    bool
				display_name?:              string
			}]
			shape?: string
			launch_volume_attachments?: [...{
				is_pv_encryption_in_transit_enabled?: bool
				volume_id?:                           string
				is_agent_auto_iscsi_login_enabled?:   bool
				is_read_only?:                        bool
				is_shareable?:                        bool
				launch_create_volume_details?: [...{
					size_in_gbs!:          string
					volume_creation_type!: string
					compartment_id?:       string
					display_name?:         string
					kms_key_id?:           string
					vpus_per_gb?:          string
				}]
				use_chap?:                   bool
				type!:                       string
				device?:                     string
				display_name?:               string
				encryption_in_transit_type?: string
			}]
			state?:                               string
			display_name?:                        string
			is_pv_encryption_in_transit_enabled?: bool
			async?:                               bool
			update_operation_constraint?:         string
			image?:                               string
			defined_tags?: [_]: string
			launch_options?: [...{
				is_consistent_volume_naming_enabled?: bool
				is_pv_encryption_in_transit_enabled?: bool
				network_type?:                        string
				remote_data_volume_type?:             string
				boot_volume_type?:                    string
				firmware?:                            string
			}]
			instance_configuration_id?:  string
			cluster_placement_group_id?: string
			shape_config?: [...{
				vcpus?:                     int
				nvmes?:                     int
				ocpus?:                     float
				baseline_ocpu_utilization?: string
				memory_in_gbs?:             float
			}]
			hostname_label?: string
			availability_config?: [...{
				is_live_migration_preferred?: bool
				recovery_action?:             string
			}]
			preemptible_instance_config?: [...{
				preemption_action!: [...{
					type!: string, preserve_boot_volume?: bool
				}]
			}]
			source_details?: [...{
				is_preserve_boot_volume_enabled?: bool
				source_type!:                     string
				source_id?:                       string
				boot_volume_size_in_gbs?:         string
				boot_volume_vpus_per_gb?:         string
				instance_source_image_filter_details?: [...{
					compartment_id!: string
					defined_tags_filter?: [_]: string
					operating_system?:         string
					operating_system_version?: string
				}]
				kms_key_id?: string
			}]
			dedicated_vm_host_id?: string
			extended_metadata?: [_]: string
			fault_domain?: string
			platform_config?: [...{
				is_memory_encryption_enabled?:                   bool
				type!:                                           string
				is_secure_boot_enabled?:                         bool
				are_virtual_instructions_enabled?:               bool
				is_measured_boot_enabled?:                       bool
				is_input_output_memory_management_unit_enabled?: bool
				percentage_of_cores_enabled?:                    int
				config_map?: [_]: string
				is_trusted_platform_module_enabled?:   bool
				is_symmetric_multi_threading_enabled?: bool
				numa_nodes_per_socket?:                string
				is_access_control_service_enabled?:    bool
			}]
			ipxe_script?:                             string
			compute_cluster_id?:                      string
			availability_domain!:                     string
			preserve_data_volumes_created_at_launch?: bool
			capacity_reservation_id?:                 string
			security_attributes?: [_]: string
			freeform_tags?: [_]: string
			instance_options?: [...{
				are_legacy_imds_endpoints_disabled?: bool
			}]
			compartment_id!: string
			metadata?: [_]: string
			agent_config?: [...{
				are_all_plugins_disabled?: bool
				is_management_disabled?:   bool
				is_monitoring_disabled?:   bool
				plugins_config?: [...{
					desired_state!: string
					name!:          string
				}]
			}]
		}
		instance_pool: {
			instance_configuration_id!:   string
			instance_hostname_formatter?: string
			load_balancers?: [...{
				port!:             int
				vnic_selection!:   string
				backend_set_name!: string
				load_balancer_id!: string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state?:                           string
			size!:                            int
			instance_display_name_formatter?: string
			display_name?:                    string
			placement_configurations!: [...{
				availability_domain!: string
				fault_domains?: [...string]
				primary_subnet_id?: string
				primary_vnic_subnets?: [...{
					is_assign_ipv6ip?: bool
					subnet_id!:        string
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
				}]
				secondary_vnic_subnets?: [...{
					display_name?: string
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
					is_assign_ipv6ip?: bool
					subnet_id!:        string
				}]
			}]
		}
		route_table: {
			compartment_id!: string
			vcn_id!:         string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			route_rules?: [...{
				route_type?:        string
				network_entity_id!: string
				cidr_block?:        string
				description?:       string
				destination?:       string
				destination_type?:  string
			}]
		}
		shape_management: {
			compartment_id!: string
			image_id!:       string
			shape_name!:     string
		}
		compute_capacity_reservation: {
			availability_domain!: string
			compartment_id!:      string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			instance_reservation_configs!: [...{
				instance_shape!: string
				reserved_count!: string
				cluster_config?: [...{
					network_block_ids?: [...string]
					hpc_island_id!: string
				}]
				cluster_placement_group_id?: string
				fault_domain?:               string
				instance_shape_config?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
			}]
			is_default_reservation?: bool
		}
		default_route_table: {
			display_name?:               string
			manage_default_resource_id!: string
			compartment_id?:             string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			route_rules?: [...{
				network_entity_id!: string
				cidr_block?:        string
				description?:       string
				destination?:       string
				destination_type?:  string
				route_type?:        string
			}]
		}
		volume_backup: {
			display_name?: string
			defined_tags?: [_]: string
			type?: string
			source_details?: [...{
				region!:           string
				volume_backup_id!: string
				kms_key_id?:       string
			}]
			freeform_tags?: [_]: string
			kms_key_id?:     string
			volume_id?:      string
			compartment_id?: string
		}
		boot_volume: {
			freeform_tags?: [_]: string
			source_details!: [...{
				type!:                       string
				change_block_size_in_bytes?: string
				first_backup_id?:            string
				id?:                         string
				second_backup_id?:           string
			}]
			defined_tags?: [_]: string
			display_name?:     string
			backup_policy_id?: string
			xrc_kms_key_id?:   string
			boot_volume_replicas?: [...{
				xrr_kms_key_id?:      string
				availability_domain!: string
				display_name?:        string
			}]
			autotune_policies?: [...{
				autotune_type!:   string
				max_vpus_per_gb?: string
			}]
			vpus_per_gb?:                   string
			availability_domain!:           string
			is_auto_tune_enabled?:          bool
			boot_volume_replicas_deletion?: bool
			cluster_placement_group_id?:    string
			kms_key_id?:                    string
			compartment_id!:                string
			size_in_gbs?:                   string
		}
		ipsec: {
			static_routes!: [...string]
			cpe_id!:               string
			drg_id!:               string
			cpe_local_identifier?: string
			tunnel_configuration?: [...{
				oracle_tunnel_ip?: string
				associated_virtual_circuits?: [...string]
				drg_route_table_id?: string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?:              string
			cpe_local_identifier_type?: string
			freeform_tags?: [_]: string
		}
		nat_gateway: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			vcn_id!:         string
			block_traffic?:  bool
			public_ip_id?:   string
			route_table_id?: string
		}
		public_ip: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			private_ip_id?:     string
			display_name?:      string
			public_ip_pool_id?: string
			compartment_id!:    string
			lifetime!:          string
		}
		app_catalog_listing_resource_version_agreement: {
			listing_id!:               string
			listing_resource_version!: string
		}
		cross_connect: {
			defined_tags?: [_]: string
			is_active?: bool
			freeform_tags?: [_]: string
			macsec_properties?: [...{
				state!:                          string
				encryption_cipher?:              string
				is_unprotected_traffic_allowed?: bool
				primary_key?: [...{
					connectivity_association_key_secret_id!:  string
					connectivity_association_name_secret_id!: string
				}]
			}]
			compartment_id!:                               string
			display_name?:                                 string
			customer_reference_name?:                      string
			near_cross_connect_or_cross_connect_group_id?: string
			port_speed_shape_name!:                        string
			far_cross_connect_or_cross_connect_group_id?:  string
			location_name!:                                string
			cross_connect_group_id?:                       string
		}
		cluster_network: {
			placement_configuration!: [...{
				availability_domain!:  string
				primary_subnet_id?:    string
				placement_constraint?: string
				primary_vnic_subnets?: [...{
					is_assign_ipv6ip?: bool
					subnet_id!:        string
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
				}]
				secondary_vnic_subnets?: [...{
					subnet_id!:    string
					display_name?: string
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
					is_assign_ipv6ip?: bool
				}]
			}]
			cluster_configuration?: [...{
				network_block_ids?: [...string]
				hpc_island_id!: string
			}]
			defined_tags?: [_]: string
			compartment_id!: string
			display_name?:   string
			freeform_tags?: [_]: string
			instance_pools!: [...{
				display_name?: string
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
				instance_configuration_id!: string
				size!:                      int
			}]
		}
		console_history: {
			display_name?: string
			freeform_tags?: [_]: string
			instance_id!: string
			defined_tags?: [_]: string
		}
		instance_pool_instance: {
			instance_pool_id!:                  string
			decrement_size_on_delete?:          bool
			instance_id!:                       string
			auto_terminate_instance_on_delete?: bool
		}
		ipv6: {
			defined_tags?: [_]: string
			ip_address?:   string
			display_name?: string
			freeform_tags?: [_]: string
			ipv6subnet_cidr?: string
			vnic_id!:         string
		}
		compute_capacity_report: {
			availability_domain!: string
			compartment_id!:      string
			shape_availabilities!: [...{
				fault_domain?: string
				instance_shape_config?: [...{
					memory_in_gbs?: float
					nvmes?:         int
					ocpus?:         float
				}]
				instance_shape!: string
			}]
		}
		default_dhcp_options: {
			domain_name_type?: string
			freeform_tags?: [_]: string
			display_name?:               string
			manage_default_resource_id!: string
			compartment_id?:             string
			options!: [...{
				type!: string
				custom_dns_servers?: [...string]
				search_domain_names?: [...string]
				server_type?: string
			}]
			defined_tags?: [_]: string
		}
		dhcp_options: {
			options!: [...{
				type!: string
				custom_dns_servers?: [...string]
				search_domain_names?: [...string]
				server_type?: string
			}]
			display_name?: string
			freeform_tags?: [_]: string
			vcn_id!: string
			defined_tags?: [_]: string
			domain_name_type?: string
			compartment_id!:   string
		}
		internet_gateway: {
			defined_tags?: [_]: string
			vcn_id!:         string
			display_name?:   string
			enabled?:        *true | bool
			compartment_id!: string
			freeform_tags?: [_]: string
			route_table_id?: string
		}
		volume_backup_policy_assignment: {
			asset_id!:       string
			policy_id!:      string
			xrc_kms_key_id?: string
		}
		service_gateway: {
			services!: [...{
				service_id!: string
			}]
			vcn_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			route_table_id?: string
			compartment_id!: string
		}
		compute_capacity_topology: {
			capacity_source!: [...{
				capacity_type!:  string
				compartment_id?: string
			}]
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!:      string
			availability_domain!: string
		}
		default_security_list: {
			freeform_tags?: [_]: string
			compartment_id?: string
			defined_tags?: [_]: string
			display_name?: string
			egress_security_rules?: [...{
				stateless?: bool
				tcp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
				udp_options?: [...{
					max?: int
					min?: int
					source_port_range?: [...{
						max!: int
						min!: int
					}]
				}]
				destination!:      string
				protocol!:         string
				description?:      string
				destination_type?: string
				icmp_options?: [...{
					code?: *-1 | int
					type!: int
				}]
			}]
			ingress_security_rules?: [...{
				stateless?: *false | bool
				tcp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
				udp_options?: [...{
					min?: int
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
				}]
				protocol!:    string
				source!:      string
				description?: string
				icmp_options?: [...{
					type!: int
					code?: *-1 | int
				}]
				source_type?: string
			}]
			manage_default_resource_id!: string
		}
		dedicated_vm_host: {
			dedicated_vm_host_shape!: string
			defined_tags?: [_]: string
			fault_domain?:        string
			availability_domain!: string
			display_name?:        string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		listing_resource_version_agreement: {
			listing_id!:               string
			listing_resource_version!: string
		}
		network_security_group_security_rule: {
			direction!:        string
			description?:      string
			destination_type?: string
			source_type?:      string
			tcp_options?: [...{
				source_port_range?: [...{
					max!: int
					min!: int
				}]
				destination_port_range?: [...{
					max!: int
					min!: int
				}]
			}]
			network_security_group_id!: string
			destination?:               string
			source?:                    string
			udp_options?: [...{
				destination_port_range?: [...{
					max!: int
					min!: int
				}]
				source_port_range?: [...{
					max!: int
					min!: int
				}]
			}]
			icmp_options?: [...{
				code?: *-1 | int
				type!: int
			}]
			stateless?: bool
			protocol!:  string
		}
		cross_connect_group: {
			display_name?:   string
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			macsec_properties?: [...{
				state!:                          string
				encryption_cipher?:              string
				is_unprotected_traffic_allowed?: bool
				primary_key?: [...{
					connectivity_association_key_secret_id!:       string
					connectivity_association_name_secret_id!:      string
					connectivity_association_key_secret_version?:  string
					connectivity_association_name_secret_version?: string
				}]
			}]
			customer_reference_name?: string
		}
		drg_route_distribution: {
			freeform_tags?: [_]: string
			distribution_type!: string
			drg_id!:            string
			defined_tags?: [_]: string
			display_name?: string
		}
		ipsec_connection_tunnel_management: {
			encryption_domain_config?: [...{
				oracle_traffic_selector?: [...string]
				cpe_traffic_selector?: [...string]
			}]
			nat_translation_enabled?: string
			phase_one_details?: [...{
				custom_dh_group?:                 string
				lifetime?:                        int
				custom_authentication_algorithm?: string
				custom_encryption_algorithm?:     string
				is_custom_phase_one_config?:      bool
			}]
			phase_two_details?: [...{
				custom_authentication_algorithm?: string
				lifetime?:                        int
				custom_encryption_algorithm?:     string
				dh_group?:                        string
				is_custom_phase_two_config?:      bool
				is_pfs_enabled?:                  bool
			}]
			ipsec_id!:            string
			display_name?:        string
			oracle_can_initiate?: string
			tunnel_id!:           string
			shared_secret?:       string
			routing?:             string
			bgp_session_info?: [...{
				oracle_interface_ip?:     string
				customer_interface_ipv6?: string
				customer_bgp_asn?:        string
				oracle_interface_ipv6?:   string
				customer_interface_ip?:   string
			}]
			ike_version?: string
			dpd_config?: [...{
				dpd_mode?:           string
				dpd_timeout_in_sec?: int
			}]
		}
		subnet: {
			dhcp_options_id?:            string
			prohibit_public_ip_on_vnic?: bool
			security_list_ids?: [...string]
			cidr_block!: string
			ipv6cidr_blocks?: [...string]
			availability_domain?:       string
			display_name?:              string
			dns_label?:                 string
			prohibit_internet_ingress?: bool
			compartment_id!:            string
			vcn_id!:                    string
			ipv6cidr_block?:            string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			route_table_id?: string
		}
		volume: {
			source_details?: [...{
				first_backup_id?:            string
				id?:                         string
				second_backup_id?:           string
				type!:                       string
				change_block_size_in_bytes?: string
			}]
			vpus_per_gb?:      string
			kms_key_id?:       string
			volume_backup_id?: string
			backup_policy_id?: string
			block_volume_replicas?: [...{
				availability_domain!: string
				display_name?:        string
				xrr_kms_key_id?:      string
			}]
			availability_domain!:            string
			cluster_placement_group_id?:     string
			is_auto_tune_enabled?:           bool
			xrc_kms_key_id?:                 string
			block_volume_replicas_deletion?: bool
			display_name?:                   string
			size_in_gbs?:                    string
			size_in_mbs?:                    string
			compartment_id!:                 string
			defined_tags?: [_]: string
			autotune_policies?: [...{
				autotune_type!:   string
				max_vpus_per_gb?: string
			}]
			freeform_tags?: [_]: string
		}
		drg_attachments_list: {
			drg_id!:           string
			attachment_type?:  string
			is_cross_tenancy?: bool
		}
		drg_route_distribution_statement: {
			priority!: int
			match_criteria!: [...{
				match_type?:        string
				attachment_type?:   string
				drg_attachment_id?: string
			}]
			drg_route_distribution_id!: string
			action!:                    string
		}
		instance_configuration: {
			source?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name?:   string
			instance_details?: [...{
				instance_type!: string
				block_volumes?: [...{
					attach_details?: [...{
						display_name?:                        string
						is_pv_encryption_in_transit_enabled?: bool
						is_read_only?:                        bool
						is_shareable?:                        bool
						use_chap?:                            bool
						type!:                                string
						device?:                              string
					}]
					create_details?: [...{
						source_details?: [...{
							type!: string
							id?:   string
						}]
						is_auto_tune_enabled?: bool
						xrc_kms_key_id?:       string
						display_name?:         string
						autotune_policies?: [...{
							autotune_type!:   string
							max_vpus_per_gb?: string
						}]
						freeform_tags?: [_]: string
						block_volume_replicas?: [...{
							availability_domain!: string
							display_name?:        string
						}]
						defined_tags?: [_]: string
						kms_key_id?:                 string
						cluster_placement_group_id?: string
						compartment_id?:             string
						backup_policy_id?:           string
						size_in_gbs?:                string
						vpus_per_gb?:                string
						availability_domain?:        string
					}]
					volume_id?: string
				}]
				launch_details?: [...{
					security_attributes?: [_]: string
					create_vnic_details?: [...{
						skip_source_dest_check?: bool
						security_attributes?: [_]: string
						defined_tags?: [_]: string
						assign_public_ip?: bool
						display_name?:     string
						freeform_tags?: [_]: string
						hostname_label?:            string
						private_ip?:                string
						assign_private_dns_record?: *true | bool
						nsg_ids?: [...string]
						subnet_id?: string
						ipv6address_ipv6subnet_cidr_pair_details?: [...{
							ipv6address?:     string
							ipv6subnet_cidr?: string
						}]
						assign_ipv6ip?: bool
					}]
					display_name?: string
					extended_metadata?: [_]: string
					ipxe_script?: string
					instance_options?: [...{
						are_legacy_imds_endpoints_disabled?: bool
					}]
					metadata?: [_]: string
					compartment_id?: string
					launch_options?: [...{
						network_type?:                        string
						remote_data_volume_type?:             string
						boot_volume_type?:                    string
						firmware?:                            string
						is_consistent_volume_naming_enabled?: bool
						is_pv_encryption_in_transit_enabled?: bool
					}]
					platform_config?: [...{
						is_access_control_service_enabled?:              bool
						is_input_output_memory_management_unit_enabled?: bool
						is_trusted_platform_module_enabled?:             bool
						type!:                                           string
						is_measured_boot_enabled?:                       bool
						is_secure_boot_enabled?:                         bool
						is_symmetric_multi_threading_enabled?:           bool
						numa_nodes_per_socket?:                          string
						percentage_of_cores_enabled?:                    int
						are_virtual_instructions_enabled?:               bool
						config_map?: [_]: string
						is_memory_encryption_enabled?: bool
					}]
					preemptible_instance_config?: [...{
						preemption_action?: [...{
							type!: string, preserve_boot_volume?: bool
						}]
					}]
					availability_domain?: string
					defined_tags?: [_]: string
					availability_config?: [...{
						is_live_migration_preferred?: bool
						recovery_action?:             string
					}]
					is_pv_encryption_in_transit_enabled?: bool
					fault_domain?:                        string
					launch_mode?:                         string
					dedicated_vm_host_id?:                string
					freeform_tags?: [_]: string
					agent_config?: [...{
						is_monitoring_disabled?: bool
						plugins_config?: [...{
							desired_state?: string
							name?:          string
						}]
						are_all_plugins_disabled?: bool
						is_management_disabled?:   bool
					}]
					shape_config?: [...{
						baseline_ocpu_utilization?: string
						memory_in_gbs?:             float
						nvmes?:                     int
						ocpus?:                     float
						vcpus?:                     int
					}]
					cluster_placement_group_id?:   string
					preferred_maintenance_action?: string
					source_details?: [...{
						instance_source_image_filter_details?: [...{
							defined_tags_filter?: [_]: string
							operating_system?:         string
							operating_system_version?: string
							compartment_id?:           string
						}]
						kms_key_id?:              string
						source_type!:             string
						boot_volume_id?:          string
						boot_volume_size_in_gbs?: string
						boot_volume_vpus_per_gb?: string
						image_id?:                string
					}]
					shape?:                   string
					capacity_reservation_id?: string
				}]
				options?: [...{
					block_volumes?: [...{
						create_details?: [...{
							autotune_policies?: [...{
								autotune_type!:   string
								max_vpus_per_gb?: string
							}]
							compartment_id?:             string
							cluster_placement_group_id?: string
							size_in_gbs?:                string
							display_name?:               string
							availability_domain?:        string
							freeform_tags?: [_]: string
							block_volume_replicas?: [...{
								availability_domain!: string
								display_name?:        string
							}]
							backup_policy_id?: string
							source_details?: [...{
								type!: string
								id?:   string
							}]
							xrc_kms_key_id?:       string
							is_auto_tune_enabled?: bool
							defined_tags?: [_]: string
							kms_key_id?:  string
							vpus_per_gb?: string
						}]
						volume_id?: string
						attach_details?: [...{
							is_shareable?:                        bool
							use_chap?:                            bool
							type!:                                string
							device?:                              string
							display_name?:                        string
							is_pv_encryption_in_transit_enabled?: bool
							is_read_only?:                        bool
						}]
					}]
					launch_details?: [...{
						capacity_reservation_id?: string
						fault_domain?:            string
						availability_domain?:     string
						metadata?: [_]: string
						launch_mode?: string
						agent_config?: [...{
							are_all_plugins_disabled?: bool
							is_management_disabled?:   bool
							is_monitoring_disabled?:   bool
							plugins_config?: [...{
								desired_state?: string
								name?:          string
							}]
						}]
						availability_config?: [...{
							recovery_action?:             string
							is_live_migration_preferred?: bool
						}]
						shape_config?: [...{
							nvmes?:                     int
							ocpus?:                     float
							vcpus?:                     int
							baseline_ocpu_utilization?: string
							memory_in_gbs?:             float
						}]
						extended_metadata?: [_]: string
						launch_options?: [...{
							boot_volume_type?:                    string
							firmware?:                            string
							is_consistent_volume_naming_enabled?: bool
							is_pv_encryption_in_transit_enabled?: bool
							network_type?:                        string
							remote_data_volume_type?:             string
						}]
						display_name?: string
						preemptible_instance_config?: [...{
							preemption_action?: [...{
								type!: string, preserve_boot_volume?: bool
							}]
						}]
						preferred_maintenance_action?: string
						source_details?: [...{
							kms_key_id?: string
							instance_source_image_filter_details?: [...{
								compartment_id?: string
								defined_tags_filter?: [_]: string
								operating_system?:         string
								operating_system_version?: string
							}]
							source_type!:             string
							boot_volume_id?:          string
							boot_volume_size_in_gbs?: string
							boot_volume_vpus_per_gb?: string
							image_id?:                string
						}]
						create_vnic_details?: [...{
							skip_source_dest_check?:    bool
							assign_ipv6ip?:             bool
							assign_private_dns_record?: bool
							freeform_tags?: [_]: string
							hostname_label?: string
							ipv6address_ipv6subnet_cidr_pair_details?: [...{
								ipv6subnet_cidr?: string
								ipv6address?:     string
							}]
							defined_tags?: [_]: string
							subnet_id?: string
							nsg_ids?: [...string]
							private_ip?: string
							security_attributes?: [_]: string
							assign_public_ip?: bool
							display_name?:     string
						}]
						defined_tags?: [_]: string
						shape?: string
						instance_options?: [...{
							are_legacy_imds_endpoints_disabled?: bool
						}]
						ipxe_script?: string
						security_attributes?: [_]: string
						platform_config?: [...{
							is_input_output_memory_management_unit_enabled?: bool
							is_secure_boot_enabled?:                         bool
							is_memory_encryption_enabled?:                   bool
							numa_nodes_per_socket?:                          string
							is_symmetric_multi_threading_enabled?:           bool
							is_trusted_platform_module_enabled?:             bool
							type!:                                           string
							are_virtual_instructions_enabled?:               bool
							percentage_of_cores_enabled?:                    int
							is_access_control_service_enabled?:              bool
							is_measured_boot_enabled?:                       bool
						}]
						compartment_id?:                      string
						dedicated_vm_host_id?:                string
						is_pv_encryption_in_transit_enabled?: bool
						freeform_tags?: [_]: string
						cluster_placement_group_id?: string
					}]
					secondary_vnics?: [...{
						create_vnic_details?: [...{
							ipv6address_ipv6subnet_cidr_pair_details?: [...{
								ipv6subnet_cidr?: string
								ipv6address?:     string
							}]
							subnet_id?:                 string
							assign_ipv6ip?:             bool
							assign_private_dns_record?: bool
							security_attributes?: [_]: string
							defined_tags?: [_]: string
							freeform_tags?: [_]: string
							nsg_ids?: [...string]
							private_ip?:             string
							assign_public_ip?:       bool
							hostname_label?:         string
							skip_source_dest_check?: bool
							display_name?:           string
						}]
						display_name?: string
						nic_index?:    int
					}]
				}]
				secondary_vnics?: [...{
					create_vnic_details?: [...{
						nsg_ids?: [...string]
						security_attributes?: [_]: string
						display_name?: string
						ipv6address_ipv6subnet_cidr_pair_details?: [...{
							ipv6address?:     string
							ipv6subnet_cidr?: string
						}]
						freeform_tags?: [_]: string
						hostname_label?:         string
						private_ip?:             string
						assign_ipv6ip?:          bool
						subnet_id?:              string
						skip_source_dest_check?: bool
						assign_public_ip?:       bool
						defined_tags?: [_]: string
						assign_private_dns_record?: *true | bool
					}]
					display_name?: string
					nic_index?:    int
				}]
			}]
			instance_id?: string
		}
		private_ip: {
			ip_address?: string
			vnic_id?:    string
			defined_tags?: [_]: string
			display_name?: string
			vlan_id?:      string
			freeform_tags?: [_]: string
			hostname_label?: string
		}
		vtap: {
			target_ip?: string
			defined_tags?: [_]: string
			source_private_endpoint_subnet_id?: string
			target_id?:                         string
			vxlan_network_identifier?:          string
			is_vtap_enabled?:                   bool
			freeform_tags?: [_]: string
			encapsulation_protocol?:     string
			display_name?:               string
			vcn_id!:                     string
			max_packet_size?:            int
			source_id!:                  string
			compartment_id!:             string
			source_private_endpoint_ip?: string
			source_type?:                string
			target_type?:                string
			traffic_mode?:               string
			capture_filter_id!:          string
		}
		compute_cluster: {
			availability_domain!: string
			compartment_id!:      string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
		compute_image_capability_schema: {
			defined_tags?: [_]: string
			image_id!: string
			schema_data!: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!:                                      string
			compute_global_image_capability_schema_version_name!: string
		}
		vcn: {
			defined_tags?: [_]: string
			cidr_block?: string
			freeform_tags?: [_]: string
			cidr_blocks?: [...string]
			ipv6private_cidr_blocks?: [...string]
			is_ipv6enabled?:                   bool
			is_oracle_gua_allocation_enabled?: bool
			byoipv6cidr_details?: [...{
				byoipv6range_id!: string
				ipv6cidr_block!:  string
			}]
			security_attributes?: [_]: string
			compartment_id!: string
			display_name?:   string
			dns_label?:      string
		}
		vlan: {
			vcn_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			route_table_id?:      string
			cidr_block!:          string
			compartment_id!:      string
			availability_domain?: string
			nsg_ids?: [...string]
			vlan_tag?: int
		}
		cpe: {
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			is_private?:          bool
			compartment_id!:      string
			ip_address!:          string
			cpe_device_shape_id?: string
		}
		drg_attachment: {
			freeform_tags?: [_]: string
			network_details?: [...{
				type!:           string
				id?:             string
				route_table_id?: string
				vcn_route_type?: string
			}]
			export_drg_route_distribution_id?: string
			vcn_id?:                           string
			defined_tags?: [_]: string
			display_name?:                                 string
			drg_id!:                                       string
			drg_route_table_id?:                           string
			remove_export_drg_route_distribution_trigger?: bool
			route_table_id?:                               string
		}
		drg_route_table_route_rule: {
			destination!:                string
			next_hop_drg_attachment_id!: string
			drg_route_table_id!:         string
			destination_type!:           string
		}
		remote_peering_connection: {
			peer_id?: string
			drg_id!:  string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!:   string
			peer_region_name?: string
		}
		security_list: {
			compartment_id!: string
			vcn_id!:         string
			ingress_security_rules?: [...{
				udp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
				protocol!:    string
				source!:      string
				description?: string
				icmp_options?: [...{
					type!: int
					code?: *-1 | int
				}]
				source_type?: string
				stateless?:   *false | bool
				tcp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
			}]
			defined_tags?: [_]: string
			display_name?: string
			egress_security_rules?: [...{
				destination!:      string
				protocol!:         string
				description?:      string
				destination_type?: string
				icmp_options?: [...{
					type!: int
					code?: *-1 | int
				}]
				stateless?: bool
				tcp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
				udp_options?: [...{
					min?: int
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
				}]
			}]
			freeform_tags?: [_]: string
		}
		route_table_attachment: {
			subnet_id!:      string
			route_table_id!: string
		}
		virtual_circuit: {
			customer_asn?:     string
			customer_bgp_asn?: int
			ip_mtu?:           string
			bgp_admin_state?:  string
			is_bfd_enabled?:   bool
			defined_tags?: [_]: string
			type!: string
			public_prefixes?: [...{
				cidr_block!: string
			}]
			freeform_tags?: [_]: string
			is_transport_mode?:         bool
			compartment_id!:            string
			provider_service_key_name?: string
			gateway_id?:                string
			provider_service_id?:       string
			routing_policy?: [...string]
			region?:               string
			bandwidth_shape_name?: string
			cross_connect_mappings?: [...{
				cross_connect_or_cross_connect_group_id?: string
				customer_bgp_peering_ip?:                 string
				customer_bgp_peering_ipv6?:               string
				oracle_bgp_peering_ip?:                   string
				oracle_bgp_peering_ipv6?:                 string
				vlan?:                                    int
				bgp_md5auth_key?:                         string
			}]
			display_name?: string
		}
		volume_group_backup: {
			display_name?:    string
			volume_group_id?: string
			freeform_tags?: [_]: string
			compartment_id?: string
			defined_tags?: [_]: string
			type?: string
			source_details?: [...{
				region!:                 string
				volume_group_backup_id!: string
				kms_key_id?:             string
			}]
		}
		instance_console_connection: {
			public_key!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			instance_id!: string
		}
		volume_backup_policy: {
			compartment_id!: string
			defined_tags?: [_]: string
			destination_region?: string
			display_name?:       string
			freeform_tags?: [_]: string
			schedules?: [...{
				period!:            string
				day_of_month?:      *-1 | int
				day_of_week?:       string
				backup_type!:       string
				offset_seconds?:    int
				offset_type?:       string
				time_zone?:         string
				hour_of_day?:       *-1 | int
				month?:             string
				retention_seconds!: int
			}]
		}
		instance_maintenance_event: {
			time_window_start?:             string
			alternative_resolution_action?: string
			can_delete_local_storage?:      bool
			defined_tags?: [_]: string
			instance_maintenance_event_id!: string
			freeform_tags?: [_]: string
			display_name?: string
		}
		public_ip_pool_capacity: {
			byoip_id!:          string
			cidr_block!:        string
			public_ip_pool_id!: string
		}
		drg: {
			display_name?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		drg_route_table: {
			drg_id!: string
			defined_tags?: [_]: string
			display_name?:                     string
			import_drg_route_distribution_id?: string
			remove_import_trigger?:            bool
			freeform_tags?: [_]: string
			is_ecmp_enabled?: bool
		}
		network_security_group: {
			vcn_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
		public_ip_pool: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
		vnic_attachment: {
			create_vnic_details!: [...{
				subnet_id?:    string
				display_name?: string
				freeform_tags?: [_]: string
				assign_public_ip?: *"false" | string
				nsg_ids?: [...string]
				private_ip?:             string
				vlan_id?:                string
				skip_source_dest_check?: bool
				defined_tags?: [_]: string
				hostname_label?:            string
				assign_private_dns_record?: bool
				security_attributes?: [_]: string
				ipv6address_ipv6subnet_cidr_pair_details?: [...{
					ipv6_subnet_cidr?: string
					ipv6_address?:     string
				}]
				assign_ipv6ip?: bool
			}]
			display_name?: string
			nic_index?:    int
			instance_id!:  string
		}
	}
}
#data: {
	ipv6s: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		ip_address?: string
		subnet_id?:  string
		vnic_id?:    string
	}
	network_security_group_security_rules: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		direction?:                 string
		network_security_group_id!: string
	}
	tunnel_security_associations: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		ipsec_id!:  string
		tunnel_id!: string
	}
	virtual_circuit_bandwidth_shapes: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		provider_service_id!: string
	}
	boot_volume_backups: {
		boot_volume_id?:               string
		compartment_id!:               string
		display_name?:                 string
		source_boot_volume_backup_id?: string
		state?:                        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	dedicated_vm_hosts_instances: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain?:  string
		compartment_id!:       string
		dedicated_vm_host_id!: string
	}
	instance_pool_instances: {
		instance_pool_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	instance_measured_boot_report: instance_id!: string
	route_tables: {
		display_name?: string
		state?:        string
		vcn_id?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	vcn: vcn_id!: string
	virtual_circuit_public_prefixes: {
		virtual_circuit_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		verification_state?: string
	}
	app_catalog_listing_resource_version: {
		resource_version!: string
		listing_id!:       string
	}
	capture_filters: {
		display_name?: string
		filter_type?:  string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	fast_connect_provider_service_key: {
		provider_service_id!:       string
		provider_service_key_name!: string
	}
	internet_gateways: {
		display_name?: string
		state?:        string
		vcn_id?:       string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	vcns: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	virtual_circuit_associated_tunnels: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		virtual_circuit_id!: string
	}
	volume_attachments: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain?: string
		compartment_id!:      string
		instance_id?:         string
		volume_id?:           string
	}
	cluster_networks: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	compute_capacity_topology_compute_bare_metal_hosts: {
		compute_local_block_id?:   string
		compute_network_block_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?:          string
		compartment_id?:               string
		compute_capacity_topology_id!: string
		compute_hpc_island_id?:        string
	}
	compute_capacity_topology_compute_hpc_islands: {
		compute_capacity_topology_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id?:      string
	}
	public_ip: {
		id?:            string
		private_ip_id?: string
		ip_address?:    string
	}
	subnet: subnet_id!: string
	volume_groups: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
		display_name?:        string
		state?:               string
	}
	public_ips: {
		compartment_id!:    string
		lifetime?:          string
		public_ip_pool_id?: string
		scope!:             string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
	}
	service_gateways: {
		vcn_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		state?:          string
	}
	vcn_dns_resolver_association: vcn_id!: string
	nat_gateway: nat_gateway_id!: string
	network_security_group_vnics: {
		network_security_group_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	private_ips: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		ip_address?: string
		subnet_id?:  string
		vlan_id?:    string
		vnic_id?:    string
	}
	instance_configurations: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	byoip_ranges: {
		display_name?: string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	cluster_network: cluster_network_id!: string
	cross_connects: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:         string
		cross_connect_group_id?: string
		display_name?:           string
		state?:                  string
	}
	shapes: {
		compartment_id!: string
		image_id?:       string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
	}
	volume_backup_policy_assignments: {
		asset_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	drg_route_distribution_statements: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		drg_route_distribution_id!: string
	}
	image_shape: {
		image_id!:   string
		shape_name!: string
	}
	security_lists: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		vcn_id?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	instance_pool: instance_pool_id!: string
	ip_inventory_subnet_cidr: subnet_id!: string
	compute_capacity_reservation_instances: {
		availability_domain?:     string
		capacity_reservation_id!: string
		compartment_id?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	compute_capacity_topology: compute_capacity_topology_id!: string
	cross_connect_groups: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	dedicated_vm_host_instance_shapes: {
		dedicated_vm_host_shape?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain?: string
		compartment_id!:      string
	}
	app_catalog_subscriptions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		listing_id?:     string
	}
	compute_capacity_reservation: capacity_reservation_id!: string
	console_histories: {
		compartment_id!: string
		instance_id?:    string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain?: string
	}
	boot_volume_attachments: {
		boot_volume_id?: string
		compartment_id!: string
		instance_id?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain!: string
	}
	compute_cluster: compute_cluster_id!: string
	images: {
		display_name?:     string
		state?:            string
		sort_by?:          string
		sort_order?:       string
		operating_system?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:           string
		operating_system_version?: string
		shape?:                    string
	}
	network_security_groups: {
		vcn_id?:  string
		vlan_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		state?:          string
	}
	services: filter?: [...{
		name!: string
		values!: [...string]
		regex?: *false | bool
	}]
	volume_group_backups: {
		volume_group_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	compute_global_image_capability_schema: compute_global_image_capability_schema_id!: string
	cross_connect_locations: {
		compartment_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	cross_connect_status: cross_connect_id!: string
	boot_volume_backup: boot_volume_backup_id!: string
	drg_attachments: {
		drg_id?:     string
		network_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		vcn_id?:             string
		attachment_type?:    string
		compartment_id!:     string
		drg_route_table_id?: string
		display_name?:       string
		state?:              string
	}
	ipsec_status: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		ipsec_id!: string
	}
	image_shapes: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		image_id!: string
	}
	ipsec_connection_tunnel: {
		tunnel_id!: string
		ipsec_id!:  string
	}
	app_catalog_listing_resource_versions: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		listing_id!: string
	}
	app_catalog_listings: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?:   string
		publisher_name?: string
		publisher_type?: string
	}
	compute_global_image_capability_schemas_version: {
		compute_global_image_capability_schema_id!:           string
		compute_global_image_capability_schema_version_name!: string
	}
	capture_filter: capture_filter_id!: string
	drgs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	block_volume_replicas: {
		display_name?:            string
		state?:                   string
		volume_group_replica_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id?:      string
	}
	boot_volume_replica: boot_volume_replica_id!: string
	virtual_circuit: virtual_circuit_id!: string
	cross_connect_port_speed_shapes: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	peer_region_for_remote_peerings: filter?: [...{
		name!: string
		values!: [...string]
		regex?: *false | bool
	}]
	instance_maintenance_event: instance_maintenance_event_id!: string
	ipsec_connection_tunnel_error: {
		tunnel_id!: string
		ipsec_id!:  string
	}
	ipv6: ipv6id!: string
	app_catalog_listing: listing_id!: string
	dedicated_vm_host_shapes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id!:      string
		instance_shape_name?: string
	}
	instance_configuration: instance_configuration_id!: string
	fast_connect_provider_services: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	instances: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?:     string
		capacity_reservation_id?: string
		compartment_id!:          string
		compute_cluster_id?:      string
	}
	ipsec_config: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		ipsec_id!: string
	}
	ipsec_connections: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		cpe_id?:         string
		drg_id?:         string
	}
	nat_gateways: {
		state?:  string
		vcn_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	compute_capacity_reservation_instance_shapes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
		display_name?:        string
	}
	compute_image_capability_schema: {
		compute_image_capability_schema_id!: string
		is_merge_enabled?:                   string
	}
	dedicated_vm_hosts: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		instance_shape_name?:                              string
		remaining_memory_in_gbs_greater_than_or_equal_to?: float
		remaining_ocpus_greater_than_or_equal_to?:         float
		state?:                                            string
		availability_domain?:                              string
		compartment_id!:                                   string
		display_name?:                                     string
	}
	volume_backups: {
		source_volume_backup_id?: string
		state?:                   string
		volume_id?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	volume_group_replica: volume_group_replica_id!: string
	compute_capacity_reservations: {
		display_name?: string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id!:      string
	}
	instance_pools: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	vtap: vtap_id!: string
	byoip_range: byoip_range_id!: string
	private_ip: private_ip_id!: string
	boot_volumes: {
		volume_group_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain?: string
		compartment_id?:      string
	}
	compute_global_image_capability_schemas_versions: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compute_global_image_capability_schema_id!: string
		display_name?:                              string
	}
	instance_console_connections: {
		compartment_id!: string
		instance_id?:    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	drg_route_table_route_rules: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		drg_route_table_id!: string
		route_type?:         string
	}
	ipsec_connection_tunnels: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		ipsec_id!: string
	}
	vlan: vlan_id!: string
	vnic_attachments: {
		availability_domain?: string
		compartment_id!:      string
		instance_id?:         string
		vnic_id?:             string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	volume: volume_id!: string
	drg_route_distributions: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
		drg_id!:       string
	}
	fast_connect_provider_service: provider_service_id!: string
	instance: instance_id!: string
	vtaps: {
		vcn_id?:    string
		source?:    string
		target_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		is_vtap_enabled?: bool
		display_name?:    string
		state?:           string
		target_ip?:       string
	}
	compute_capacity_topologies: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
		display_name?:        string
	}
	compute_image_capability_schemas: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		image_id?:       string
	}
	instance_credentials: instance_id!: string
	dedicated_vm_host: dedicated_vm_host_id!: string
	public_ip_pools: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		byoip_range_id?: string
		compartment_id!: string
		display_name?:   string
	}
	boot_volume: boot_volume_id!: string
	byoip_allocated_ranges: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		byoip_range_id!: string
	}
	cpe_device_shape: cpe_device_shape_id!: string
	cross_connect: cross_connect_id!: string
	instance_maintenance_events: {
		instance_action?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		time_window_start_greater_than_or_equal_to?: string
		time_window_start_less_than_or_equal_to?:    string
		instance_id?:                                string
		state?:                                      string
		compartment_id!:                             string
		correlation_token?:                          string
	}
	ipsec_connection_tunnel_routes: {
		advertiser?: string
		ipsec_id!:   string
		tunnel_id!:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	letter_of_authority: cross_connect_id!: string
	vlans: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
		vcn_id?:         string
	}
	cluster_network_instances: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		cluster_network_id!: string
		compartment_id!:     string
		display_name?:       string
	}
	compute_capacity_topology_compute_network_blocks: {
		compute_capacity_topology_id!: string
		compute_hpc_island_id?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id?:      string
	}
	cpe_device_shapes: filter?: [...{
		name!: string
		values!: [...string]
		regex?: *false | bool
	}]
	volumes: {
		compartment_id?:  string
		display_name?:    string
		state?:           string
		volume_group_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?:        string
		cluster_placement_group_id?: string
	}
	network_security_group: network_security_group_id!: string
	subnets: {
		state?:  string
		vcn_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	volume_backup_policies: {
		compartment_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	image: image_id!: string
	instance_pool_load_balancer_attachment: {
		instance_pool_id!:                          string
		instance_pool_load_balancer_attachment_id!: string
	}
	volume_group_replicas: {
		availability_domain!: string
		compartment_id!:      string
		display_name?:        string
		state?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	compute_clusters: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id!:      string
		display_name?:        string
	}
	dhcp_options: {
		display_name?: string
		state?:        string
		vcn_id?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	drg_route_table: drg_route_table_id!: string
	vnic: vnic_id!: string
	ip_inventory_subnet: subnet_id!: string
	public_ip_pool: public_ip_pool_id!: string
	block_volume_replica: block_volume_replica_id!: string
	compute_global_image_capability_schemas: {
		display_name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	instance_maintenance_reboot: instance_id!: string
	ip_inventory_vcn_overlaps: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_list!: [...string]
		region_list!: [...string]
		vcn_id!: string
	}
	ipsec_algorithm: {}
	local_peering_gateways: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		vcn_id?:         string
	}
	remote_peering_connections: {
		drg_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	virtual_circuits: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	cross_connect_group: cross_connect_group_id!: string
	drg_route_tables: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:                     string
		drg_id!:                           string
		import_drg_route_distribution_id?: string
		state?:                            string
	}
	instance_devices: {
		instance_id!:  string
		is_available?: bool
		name?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	drg_route_distribution: drg_route_distribution_id!: string
	boot_volume_replicas: {
		compartment_id?:          string
		display_name?:            string
		state?:                   string
		volume_group_replica_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
	}
	console_history_data: {
		console_history_id!: string
		length?:             int
		offset?:             int
	}
	cpes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
}

