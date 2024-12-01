package core

#resource: {
	attributes: {
		ipsec_connection_tunnel_management: {
			oracle_can_initiate?: string
			shared_secret?:       string
			encryption_domain_config?: [...{
				cpe_traffic_selector?: [...string]
				oracle_traffic_selector?: [...string]
			}]
			phase_one_details?: [...{
				negotiated_authentication_algorithm: string
				negotiated_dh_group:                 string
				remaining_lifetime:                  string
				remaining_lifetime_last_retrieved:   string
				custom_dh_group?:                    string
				custom_encryption_algorithm?:        string
				negotiated_encryption_algorithm:     string
				is_custom_phase_one_config?:         bool
				remaining_lifetime_int:              int
				lifetime?:                           int
				is_ike_established:                  bool
				custom_authentication_algorithm?:    string
			}]
			status:                   string
			time_created:             string
			cpe_ip:                   string
			state:                    string
			routing?:                 string
			nat_translation_enabled?: string
			ike_version?:             string
			bgp_session_info?: [...{
				oracle_bgp_asn:           string
				customer_bgp_asn?:        string
				customer_interface_ip?:   string
				bgp_state:                string
				oracle_interface_ip?:     string
				customer_interface_ipv6?: string
				bgp_ipv6state:            string
				oracle_interface_ipv6?:   string
				bgp_ipv6_state:           string
			}]
			display_name?: string
			dpd_mode:      string
			associated_virtual_circuits: [...string]
			dpd_timeout_in_sec: int
			phase_two_details?: [...{
				custom_authentication_algorithm?:    string
				remaining_lifetime_last_retrieved:   string
				remaining_lifetime:                  string
				is_custom_phase_two_config?:         bool
				dh_group?:                           string
				is_esp_established:                  bool
				negotiated_authentication_algorithm: string
				negotiated_dh_group:                 string
				negotiated_encryption_algorithm:     string
				remaining_lifetime_int:              int
				custom_encryption_algorithm?:        string
				is_pfs_enabled?:                     bool
				lifetime?:                           int
			}]
			vpn_ip:              string
			compartment_id:      string
			time_status_updated: string
			ipsec_id!:           string
			tunnel_id!:          string
			dpd_config?: [...{
				dpd_mode?:           string
				dpd_timeout_in_sec?: int
			}]
		}
		volume_backup_policy: {
			defined_tags?: [_]: string
			destination_region?: string
			display_name?:       string
			freeform_tags?: [_]: string
			schedules?: [...{
				offset_type?:       string
				time_zone?:         string
				backup_type!:       string
				hour_of_day?:       *-1 | int
				offset_seconds?:    int
				retention_seconds!: int
				day_of_week?:       string
				month?:             string
				period!:            string
				day_of_month?:      *-1 | int
			}]
			time_created:    string
			compartment_id!: string
		}
		volume_backup_policy_assignment: {
			asset_id!:       string
			policy_id!:      string
			xrc_kms_key_id?: string
			time_created:    string
		}
		compute_cluster: {
			freeform_tags?: [_]: string
			state:                string
			time_created:         string
			availability_domain!: string
			compartment_id!:      string
			defined_tags?: [_]: string
			display_name?: string
		}
		drg_attachment: {
			display_name?:   string
			route_table_id?: string
			drg_id!:         string
			freeform_tags?: [_]: string
			remove_export_drg_route_distribution_trigger?: bool
			network_details?: [...{
				transport_attachment_id: string
				transport_only_mode:     bool
				type!:                   string
				id?:                     string
				route_table_id?:         string
				vcn_route_type?:         string
				ids: [...string]
				ipsec_connection_id: string
			}]
			defined_tags?: [_]: string
			export_drg_route_distribution_id?: string
			state:                             string
			is_cross_tenancy:                  bool
			drg_route_table_id?:               string
			vcn_id?:                           string
			compartment_id:                    string
			time_created:                      string
		}
		drg_route_table: {
			display_name?:                     string
			time_created:                      string
			remove_import_trigger?:            bool
			state:                             string
			import_drg_route_distribution_id?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			drg_id!:          string
			is_ecmp_enabled?: bool
			compartment_id:   string
		}
		ipv6: {
			vnic_id!:         string
			time_created:     string
			ipv6subnet_cidr?: string
			compartment_id:   string
			state:            string
			freeform_tags?: [_]: string
			subnet_id: string
			defined_tags?: [_]: string
			ip_address?:   string
			display_name?: string
		}
		route_table: {
			time_created:    string
			compartment_id!: string
			vcn_id!:         string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			route_rules?: [...{
				destination_type?:  string
				route_type?:        string
				network_entity_id!: string
				cidr_block?:        string
				description?:       string
				destination?:       string
			}]
			state: string
		}
		compute_capacity_reservation: {
			used_instance_count: string
			compartment_id!:     string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_default_reservation?: bool
			time_updated:            string
			display_name?:           string
			availability_domain!:    string
			state:                   string
			instance_reservation_configs!: [...{
				instance_shape!: string
				reserved_count!: string
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
				used_count: string
			}]
			reserved_instance_count: string
			time_created:            string
		}
		drg_attachments_list: {
			drg_id!:           string
			attachment_type?:  string
			is_cross_tenancy?: bool
			drg_all_attachments: [...{
				id: string
			}]
		}
		instance_pool_instance: {
			state:                              string
			time_created:                       string
			instance_id!:                       string
			instance_configuration_id:          string
			compartment_id:                     string
			shape:                              string
			display_name:                       string
			instance_pool_id!:                  string
			auto_terminate_instance_on_delete?: bool
			region:                             string
			load_balancer_backends: [...{
				backend_name:          string
				backend_set_name:      string
				load_balancer_id:      string
				state:                 string
				backend_health_status: string
			}]
			availability_domain:       string
			decrement_size_on_delete?: bool
			fault_domain:              string
		}
		drg: {
			display_name?: string
			default_drg_route_tables: [...{
				remote_peering_connection: string
				vcn:                       string
				virtual_circuit:           string
				ipsec_tunnel:              string
			}]
			redundancy_status: string
			time_created:      string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state:                                    string
			compartment_id!:                          string
			default_export_drg_route_distribution_id: string
		}
		instance_console_connection: {
			freeform_tags?: [_]: string
			compartment_id:               string
			service_host_key_fingerprint: string
			state:                        string
			fingerprint:                  string
			vnc_connection_string:        string
			instance_id!:                 string
			defined_tags?: [_]: string
			connection_string: string
			public_key!:       string
		}
		subnet: {
			prohibit_public_ip_on_vnic?: bool
			security_list_ids?: [...string]
			freeform_tags?: [_]: string
			dns_label?:                 string
			subnet_domain_name:         string
			availability_domain?:       string
			state:                      string
			ipv6virtual_router_ip:      string
			cidr_block!:                string
			ipv6cidr_block?:            string
			prohibit_internet_ingress?: bool
			defined_tags?: [_]: string
			display_name?:     string
			route_table_id?:   string
			virtual_router_ip: string
			compartment_id!:   string
			vcn_id!:           string
			ipv6cidr_blocks?: [...string]
			dhcp_options_id?:   string
			time_created:       string
			virtual_router_mac: string
		}
		app_catalog_subscription: {
			listing_id!:               string
			time_retrieved!:           string
			eula_link?:                string
			time_created:              string
			compartment_id!:           string
			signature!:                string
			publisher_name:            string
			summary:                   string
			oracle_terms_of_use_link!: string
			display_name:              string
			listing_resource_id:       string
			listing_resource_version!: string
		}
		compute_capacity_topology: {
			capacity_source!: [...{
				capacity_type!:  string
				compartment_id?: string
			}]
			display_name?: string
			time_created:  string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			state:                string
			time_updated:         string
			availability_domain!: string
			compartment_id!:      string
		}
		cpe: {
			is_private?:          bool
			time_created:         string
			compartment_id!:      string
			ip_address!:          string
			cpe_device_shape_id?: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
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
		volume_attachment: {
			is_agent_auto_iscsi_login_enabled?:   bool
			instance_id!:                         string
			time_created:                         string
			encryption_in_transit_type?:          string
			is_multipath:                         bool
			port:                                 int
			is_volume_created_during_launch:      bool
			iscsi_login_state:                    string
			is_read_only?:                        bool
			availability_domain:                  string
			chap_username:                        string
			chap_secret:                          string
			volume_id!:                           string
			compartment_id?:                      string
			iqn:                                  string
			device?:                              string
			ipv4:                                 string
			is_shareable?:                        bool
			state:                                string
			attachment_type!:                     string
			display_name?:                        string
			is_pv_encryption_in_transit_enabled?: bool
			multipath_devices: [...{
				iqn:  string
				port: int
				ipv4: string
			}]
			use_chap?: bool
		}
		volume_backup: {
			freeform_tags?: [_]: string
			time_created:    string
			compartment_id?: string
			defined_tags?: [_]: string
			state: string
			system_tags: [_]: string
			expiration_time:    string
			size_in_mbs:        string
			kms_key_id?:        string
			type?:              string
			source_type:        string
			unique_size_in_mbs: string
			size_in_gbs:        string
			source_details?: [...{
				region!:           string
				volume_backup_id!: string
				kms_key_id?:       string
			}]
			display_name?:           string
			source_volume_backup_id: string
			unique_size_in_gbs:      string
			volume_id?:              string
			time_request_received:   string
		}
		cross_connect: {
			port_speed_shape_name!:                       string
			display_name?:                                string
			location_name!:                               string
			far_cross_connect_or_cross_connect_group_id?: string
			state:                                        string
			cross_connect_group_id?:                      string
			macsec_properties?: [...{
				is_unprotected_traffic_allowed?: bool
				primary_key?: [...{
					connectivity_association_name_secret_version: string
					connectivity_association_key_secret_id!:      string
					connectivity_association_name_secret_id!:     string
					connectivity_association_key_secret_version:  string
				}]
				state!:             string
				encryption_cipher?: string
			}]
			freeform_tags?: [_]: string
			port_name:                                     string
			near_cross_connect_or_cross_connect_group_id?: string
			customer_reference_name?:                      string
			time_created:                                  string
			oci_physical_device_name:                      string
			compartment_id!:                               string
			oci_logical_device_name:                       string
			is_active?:                                    bool
			defined_tags?: [_]: string
		}
		drg_route_table_route_rule: {
			next_hop_drg_attachment_id!: string
			attributes: [_]: string
			drg_route_table_id!: string
			destination!:        string
			is_blackhole:        bool
			is_conflict:         bool
			destination_type!:   string
			route_provenance:    string
			route_type:          string
		}
		local_peering_gateway: {
			peer_advertised_cidr: string
			display_name?:        string
			route_table_id?:      string
			state:                string
			peering_status:       string
			peer_id?:             string
			time_created:         string
			defined_tags?: [_]: string
			compartment_id!:          string
			is_cross_tenancy_peering: bool
			peer_advertised_cidr_details: [...string]
			peering_status_details: string
			vcn_id!:                string
			freeform_tags?: [_]: string
		}
		shape_management: {
			compartment_id!: string
			image_id!:       string
			shape_name!:     string
		}
		vtap: {
			target_type?:                       string
			source_private_endpoint_subnet_id?: string
			vxlan_network_identifier?:          string
			encapsulation_protocol?:            string
			defined_tags?: [_]: string
			target_ip?:                  string
			time_created:                string
			capture_filter_id!:          string
			source_id!:                  string
			vcn_id!:                     string
			display_name?:               string
			max_packet_size?:            int
			source_private_endpoint_ip?: string
			source_type?:                string
			is_vtap_enabled?:            bool
			state:                       string
			traffic_mode?:               string
			lifecycle_state_details:     string
			compartment_id!:             string
			freeform_tags?: [_]: string
			target_id?: string
		}
		app_catalog_listing_resource_version_agreement: {
			signature:                 string
			time_retrieved:            string
			listing_id!:               string
			listing_resource_version!: string
			eula_link:                 string
			oracle_terms_of_use_link:  string
		}
		boot_volume_backup: {
			boot_volume_id?: string
			kms_key_id?:     string
			time_created:    string
			source_type:     string
			freeform_tags?: [_]: string
			type?:              string
			unique_size_in_gbs: string
			defined_tags?: [_]: string
			source_boot_volume_backup_id: string
			display_name?:                string
			compartment_id?:              string
			time_request_received:        string
			expiration_time:              string
			state:                        string
			system_tags: [_]: string
			image_id:    string
			size_in_gbs: string
			source_details?: [...{
				kms_key_id?:            string
				region!:                string
				boot_volume_backup_id!: string
			}]
		}
		nat_gateway: {
			state:           string
			compartment_id!: string
			defined_tags?: [_]: string
			route_table_id?: string
			nat_ip:          string
			vcn_id!:         string
			block_traffic?:  bool
			freeform_tags?: [_]: string
			public_ip_id?: string
			time_created:  string
			display_name?: string
		}
		volume_group: {
			source_details!: [...{
				volume_group_replica_id?: string
				volume_ids?: [...string]
				type!:                   string
				volume_group_backup_id?: string
				volume_group_id?:        string
			}]
			state:                           string
			backup_policy_id?:               string
			preserve_volume_replica?:        bool
			volume_group_replicas_deletion?: bool
			compartment_id!:                 string
			size_in_mbs:                     string
			volume_group_replicas?: [...{
				xrr_kms_key_id?:         string
				volume_group_replica_id: string
				availability_domain!:    string
				display_name?:           string
			}]
			time_created:                string
			is_hydrated:                 bool
			cluster_placement_group_id?: string
			availability_domain!:        string
			display_name?:               string
			xrc_kms_key_id?:             string
			size_in_gbs:                 string
			volume_ids?: [...string]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		drg_attachment_management: {
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!:     string
			state:               string
			time_created:        string
			network_id?:         string
			drg_route_table_id?: string
			network_details?: [...{
				id!:                 string
				type!:               string
				route_table_id?:     string
				ipsec_connection_id: string
			}]
			vcn_id?:                                       string
			export_drg_route_distribution_id?:             string
			remove_export_drg_route_distribution_trigger?: bool
			defined_tags?: [_]: string
			route_table_id?:  string
			is_cross_tenancy: bool
			drg_id!:          string
			attachment_type!: string
		}
		instance_configuration: {
			freeform_tags?: [_]: string
			instance_details?: [...{
				launch_details?: [...{
					availability_domain?: string
					freeform_tags?: [_]: string
					metadata?: [_]: string
					preferred_maintenance_action?: string
					compartment_id?:               string
					launch_options?: [...{
						is_pv_encryption_in_transit_enabled?: bool
						network_type?:                        string
						remote_data_volume_type?:             string
						boot_volume_type?:                    string
						firmware?:                            string
						is_consistent_volume_naming_enabled?: bool
					}]
					shape?: string
					create_vnic_details?: [...{
						assign_private_dns_record?: *true | bool
						security_attributes?: [_]: string
						skip_source_dest_check?: bool
						assign_ipv6ip?:          bool
						display_name?:           string
						freeform_tags?: [_]: string
						assign_public_ip?: bool
						defined_tags?: [_]: string
						hostname_label?: string
						private_ip?:     string
						ipv6address_ipv6subnet_cidr_pair_details?: [...{
							ipv6address?:     string
							ipv6subnet_cidr?: string
						}]
						nsg_ids?: [...string]
						subnet_id?: string
					}]
					dedicated_vm_host_id?: string
					platform_config?: [...{
						is_secure_boot_enabled?:                         bool
						is_symmetric_multi_threading_enabled?:           bool
						is_input_output_memory_management_unit_enabled?: bool
						is_memory_encryption_enabled?:                   bool
						is_measured_boot_enabled?:                       bool
						config_map?: [_]: string
						is_access_control_service_enabled?:  bool
						are_virtual_instructions_enabled?:   bool
						is_trusted_platform_module_enabled?: bool
						numa_nodes_per_socket?:              string
						percentage_of_cores_enabled?:        int
						type!:                               string
					}]
					instance_options?: [...{
						are_legacy_imds_endpoints_disabled?: bool
					}]
					fault_domain?: string
					security_attributes?: [_]: string
					preemptible_instance_config?: [...{
						preemption_action?: [...{
							type!: string, preserve_boot_volume?: bool
						}]
					}]
					agent_config?: [...{
						is_monitoring_disabled?: bool
						plugins_config?: [...{
							desired_state?: string
							name?:          string
						}]
						are_all_plugins_disabled?: bool
						is_management_disabled?:   bool
					}]
					extended_metadata?: [_]: string
					source_details?: [...{
						boot_volume_size_in_gbs?: string
						boot_volume_vpus_per_gb?: string
						image_id?:                string
						instance_source_image_filter_details?: [...{
							compartment_id?: string
							defined_tags_filter?: [_]: string
							operating_system?:         string
							operating_system_version?: string
						}]
						kms_key_id?:     string
						source_type!:    string
						boot_volume_id?: string
					}]
					is_pv_encryption_in_transit_enabled?: bool
					availability_config?: [...{
						is_live_migration_preferred?: bool
						recovery_action?:             string
					}]
					shape_config?: [...{
						memory_in_gbs?:             float
						nvmes?:                     int
						ocpus?:                     float
						vcpus?:                     int
						baseline_ocpu_utilization?: string
					}]
					cluster_placement_group_id?: string
					ipxe_script?:                string
					capacity_reservation_id?:    string
					defined_tags?: [_]: string
					display_name?: string
					launch_mode?:  string
				}]
				options?: [...{
					block_volumes?: [...{
						volume_id?: string
						attach_details?: [...{
							device?:                              string
							display_name?:                        string
							is_pv_encryption_in_transit_enabled?: bool
							is_read_only?:                        bool
							is_shareable?:                        bool
							use_chap?:                            bool
							type!:                                string
						}]
						create_details?: [...{
							availability_domain?: string
							defined_tags?: [_]: string
							is_auto_tune_enabled?: bool
							source_details?: [...{
								type!: string
								id?:   string
							}]
							display_name?: string
							size_in_gbs?:  string
							autotune_policies?: [...{
								autotune_type!:   string
								max_vpus_per_gb?: string
							}]
							cluster_placement_group_id?: string
							compartment_id?:             string
							freeform_tags?: [_]: string
							vpus_per_gb?:      string
							backup_policy_id?: string
							kms_key_id?:       string
							xrc_kms_key_id?:   string
							block_volume_replicas?: [...{
								availability_domain!: string
								display_name?:        string
							}]
						}]
					}]
					launch_details?: [...{
						platform_config?: [...{
							is_measured_boot_enabled?:                       bool
							is_secure_boot_enabled?:                         bool
							numa_nodes_per_socket?:                          string
							is_trusted_platform_module_enabled?:             bool
							percentage_of_cores_enabled?:                    int
							are_virtual_instructions_enabled?:               bool
							is_access_control_service_enabled?:              bool
							type!:                                           string
							is_input_output_memory_management_unit_enabled?: bool
							is_memory_encryption_enabled?:                   bool
							is_symmetric_multi_threading_enabled?:           bool
						}]
						shape_config?: [...{
							baseline_ocpu_utilization?: string
							memory_in_gbs?:             float
							nvmes?:                     int
							ocpus?:                     float
							vcpus?:                     int
						}]
						capacity_reservation_id?: string
						availability_domain?:     string
						freeform_tags?: [_]: string
						security_attributes?: [_]: string
						compartment_id?: string
						launch_options?: [...{
							is_consistent_volume_naming_enabled?: bool
							is_pv_encryption_in_transit_enabled?: bool
							network_type?:                        string
							remote_data_volume_type?:             string
							boot_volume_type?:                    string
							firmware?:                            string
						}]
						instance_options?: [...{
							are_legacy_imds_endpoints_disabled?: bool
						}]
						is_pv_encryption_in_transit_enabled?: bool
						availability_config?: [...{
							recovery_action?:             string
							is_live_migration_preferred?: bool
						}]
						create_vnic_details?: [...{
							nsg_ids?: [...string]
							skip_source_dest_check?:    bool
							assign_private_dns_record?: bool
							display_name?:              string
							hostname_label?:            string
							ipv6address_ipv6subnet_cidr_pair_details?: [...{
								ipv6address?:     string
								ipv6subnet_cidr?: string
							}]
							assign_ipv6ip?: bool
							defined_tags?: [_]: string
							security_attributes?: [_]: string
							subnet_id?:        string
							assign_public_ip?: bool
							freeform_tags?: [_]: string
							private_ip?: string
						}]
						dedicated_vm_host_id?: string
						agent_config?: [...{
							is_monitoring_disabled?: bool
							plugins_config?: [...{
								name?:          string
								desired_state?: string
							}]
							are_all_plugins_disabled?: bool
							is_management_disabled?:   bool
						}]
						preemptible_instance_config?: [...{
							preemption_action?: [...{
								type!: string, preserve_boot_volume?: bool
							}]
						}]
						preferred_maintenance_action?: string
						fault_domain?:                 string
						ipxe_script?:                  string
						metadata?: [_]: string
						shape?: string
						defined_tags?: [_]: string
						cluster_placement_group_id?: string
						display_name?:               string
						launch_mode?:                string
						extended_metadata?: [_]: string
						source_details?: [...{
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
							kms_key_id?:              string
						}]
					}]
					secondary_vnics?: [...{
						nic_index?: int
						create_vnic_details?: [...{
							assign_public_ip?: bool
							hostname_label?:   string
							ipv6address_ipv6subnet_cidr_pair_details?: [...{
								ipv6address?:     string
								ipv6subnet_cidr?: string
							}]
							security_attributes?: [_]: string
							assign_ipv6ip?: bool
							defined_tags?: [_]: string
							skip_source_dest_check?: bool
							subnet_id?:              string
							private_ip?:             string
							display_name?:           string
							freeform_tags?: [_]: string
							assign_private_dns_record?: bool
							nsg_ids?: [...string]
						}]
						display_name?: string
					}]
				}]
				secondary_vnics?: [...{
					create_vnic_details?: [...{
						assign_private_dns_record?: *true | bool
						display_name?:              string
						assign_public_ip?:          bool
						nsg_ids?: [...string]
						subnet_id?:      string
						hostname_label?: string
						private_ip?:     string
						security_attributes?: [_]: string
						skip_source_dest_check?: bool
						defined_tags?: [_]: string
						ipv6address_ipv6subnet_cidr_pair_details?: [...{
							ipv6address?:     string
							ipv6subnet_cidr?: string
						}]
						assign_ipv6ip?: bool
						freeform_tags?: [_]: string
					}]
					display_name?: string
					nic_index?:    int
				}]
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
						size_in_gbs?:                string
						kms_key_id?:                 string
						cluster_placement_group_id?: string
						defined_tags?: [_]: string
						is_auto_tune_enabled?: bool
						vpus_per_gb?:          string
						source_details?: [...{
							id?:   string
							type!: string
						}]
						block_volume_replicas?: [...{
							availability_domain!: string
							display_name?:        string
						}]
						backup_policy_id?: string
						display_name?:     string
						xrc_kms_key_id?:   string
						freeform_tags?: [_]: string
						autotune_policies?: [...{
							autotune_type!:   string
							max_vpus_per_gb?: string
						}]
						availability_domain?: string
						compartment_id?:      string
					}]
					volume_id?: string
				}]
			}]
			instance_id?:  string
			time_created:  string
			source?:       string
			display_name?: string
			defined_tags?: [_]: string
			deferred_fields: [...string]
			compartment_id!: string
		}
		network_security_group_security_rule: {
			protocol!:    string
			is_valid:     bool
			time_created: string
			destination?: string
			source_type?: string
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
			stateless?: bool
			icmp_options?: [...{
				type!: int
				code?: *-1 | int
			}]
			source?:    string
			direction!: string
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
			description?:               string
			network_security_group_id!: string
			destination_type?:          string
		}
		compute_image_capability_schema: {
			image_id!:                                            string
			compute_global_image_capability_schema_id:            string
			time_created:                                         string
			compute_global_image_capability_schema_version_name!: string
			freeform_tags?: [_]: string
			schema_data!: [_]: string
			display_name?:   string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		default_route_table: {
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
			state:                       string
			time_created:                string
			manage_default_resource_id!: string
			compartment_id?:             string
		}
		vlan: {
			time_created:         string
			vcn_id!:              string
			availability_domain?: string
			nsg_ids?: [...string]
			freeform_tags?: [_]: string
			vlan_tag?:       int
			route_table_id?: string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			state:         string
			cidr_block!:   string
		}
		instance: {
			availability_domain!: string
			extended_metadata?: [_]: string
			fault_domain?:      string
			is_cross_numa_node: bool
			preemptible_instance_config?: [...{
				preemption_action!: [...{
					type!: string, preserve_boot_volume?: bool
				}]
			}]
			instance_configuration_id?: string
			security_attributes?: [_]: string
			platform_config?: [...{
				is_input_output_memory_management_unit_enabled?: bool
				is_symmetric_multi_threading_enabled?:           bool
				type!:                                           string
				are_virtual_instructions_enabled?:               bool
				config_map?: [_]: string
				is_measured_boot_enabled?:           bool
				is_secure_boot_enabled?:             bool
				numa_nodes_per_socket?:              string
				is_trusted_platform_module_enabled?: bool
				percentage_of_cores_enabled?:        int
				is_memory_encryption_enabled?:       bool
				is_access_control_service_enabled?:  bool
			}]
			boot_volume_id: string
			instance_options?: [...{
				are_legacy_imds_endpoints_disabled?: bool
			}]
			availability_config?: [...{
				recovery_action?:             string
				is_live_migration_preferred?: bool
			}]
			async?: bool
			state?: string
			create_vnic_details?: [...{
				skip_source_dest_check?: bool
				hostname_label?:         string
				assign_public_ip?:       *"true" | string
				subnet_id?:              string
				vlan_id?:                string
				nsg_ids?: [...string]
				private_ip?: string
				freeform_tags?: [_]: string
				assign_ipv6ip?: bool
				display_name?:  string
				defined_tags?: [_]: string
				ipv6address_ipv6subnet_cidr_pair_details?: [...{
					ipv6address?:     string
					ipv6subnet_cidr?: string
				}]
				assign_private_dns_record?: bool
				security_attributes?: [_]: string
			}]
			agent_config?: [...{
				are_all_plugins_disabled?: bool
				is_management_disabled?:   bool
				is_monitoring_disabled?:   bool
				plugins_config?: [...{
					name!:          string
					desired_state!: string
				}]
			}]
			launch_options?: [...{
				is_consistent_volume_naming_enabled?: bool
				is_pv_encryption_in_transit_enabled?: bool
				network_type?:                        string
				remote_data_volume_type?:             string
				boot_volume_type?:                    string
				firmware?:                            string
			}]
			hostname_label?:                          string
			subnet_id?:                               string
			private_ip:                               string
			dedicated_vm_host_id?:                    string
			security_attributes_state:                string
			preserve_data_volumes_created_at_launch?: bool
			launch_volume_attachments?: [...{
				is_pv_encryption_in_transit_enabled?: bool
				type!:                                string
				device?:                              string
				display_name?:                        string
				use_chap?:                            bool
				encryption_in_transit_type?:          string
				is_agent_auto_iscsi_login_enabled?:   bool
				is_shareable?:                        bool
				volume_id?:                           string
				is_read_only?:                        bool
				launch_create_volume_details?: [...{
					kms_key_id?:           string
					vpus_per_gb?:          string
					size_in_gbs!:          string
					volume_creation_type!: string
					compartment_id?:       string
					display_name?:         string
				}]
			}]
			is_pv_encryption_in_transit_enabled?: bool
			shape_config?: [...{
				memory_in_gbs?:                float
				ocpus?:                        float
				vcpus?:                        int
				nvmes?:                        int
				gpu_description:               string
				local_disks:                   int
				max_vnic_attachments:          int
				processor_description:         string
				gpus:                          int
				local_disk_description:        string
				local_disks_total_size_in_gbs: float
				networking_bandwidth_in_gbps:  float
				baseline_ocpu_utilization?:    string
			}]
			ipxe_script?:                 string
			update_operation_constraint?: string
			time_created:                 string
			public_ip:                    string
			system_tags: [_]: string
			region:        string
			image?:        string
			display_name?: string
			defined_tags?: [_]: string
			metadata?: [_]: string
			launch_mode: string
			source_details?: [...{
				source_type!:             string
				source_id?:               string
				boot_volume_size_in_gbs?: string
				boot_volume_vpus_per_gb?: string
				instance_source_image_filter_details?: [...{
					operating_system?:         string
					operating_system_version?: string
					compartment_id!:           string
					defined_tags_filter?: [_]: string
				}]
				kms_key_id?:                      string
				is_preserve_boot_volume_enabled?: bool
			}]
			capacity_reservation_id?: string
			compartment_id!:          string
			compute_cluster_id?:      string
			preserve_boot_volume?:    bool
			freeform_tags?: [_]: string
			time_maintenance_reboot_due: string
			cluster_placement_group_id?: string
			shape?:                      string
		}
		route_table_attachment: {
			subnet_id!:      string
			route_table_id!: string
		}
		security_list: {
			vcn_id!: string
			freeform_tags?: [_]: string
			state:         string
			display_name?: string
			egress_security_rules?: [...{
				protocol!:         string
				description?:      string
				destination_type?: string
				icmp_options?: [...{
					code?: *-1 | int
					type!: int
				}]
				stateless?: bool
				tcp_options?: [...{
					min?: int
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
				}]
				udp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
				destination!: string
			}]
			time_created:    string
			compartment_id!: string
			defined_tags?: [_]: string
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
						min!: int
						max!: int
					}]
					max?: int
					min?: int
				}]
			}]
		}
		virtual_circuit: {
			public_prefixes?: [...{
				cidr_block!: string
			}]
			service_type: string
			routing_policy?: [...string]
			customer_asn?:         string
			gateway_id?:           string
			reference_comment:     string
			time_created:          string
			display_name?:         string
			bgp_management:        string
			region?:               string
			bgp_ipv6session_state: string
			customer_bgp_asn?:     int
			virtual_circuit_redundancy_metadata: [...{
				ipv6bgp_session_redundancy_status: string
				configured_redundancy_level:       string
				ipv4bgp_session_redundancy_status: string
			}]
			bgp_admin_state?:           string
			provider_service_key_name?: string
			type!:                      string
			bandwidth_shape_name?:      string
			oracle_bgp_asn:             int
			provider_service_id?:       string
			bgp_session_state:          string
			state:                      string
			is_bfd_enabled?:            bool
			freeform_tags?: [_]: string
			ip_mtu?: string
			cross_connect_mappings?: [...{
				oracle_bgp_peering_ipv6?:                 string
				vlan?:                                    int
				bgp_md5auth_key?:                         string
				cross_connect_or_cross_connect_group_id?: string
				customer_bgp_peering_ip?:                 string
				customer_bgp_peering_ipv6?:               string
				oracle_bgp_peering_ip?:                   string
			}]
			provider_state:     string
			is_transport_mode?: bool
			defined_tags?: [_]: string
			compartment_id!: string
		}
		volume: {
			autotune_policies?: [...{
				autotune_type!:   string
				max_vpus_per_gb?: string
			}]
			is_auto_tune_enabled?: bool
			display_name?:         string
			source_details?: [...{
				change_block_size_in_bytes?: string
				first_backup_id?:            string
				id?:                         string
				second_backup_id?:           string
				type!:                       string
			}]
			volume_group_id: string
			system_tags: [_]: string
			compartment_id!:                 string
			backup_policy_id?:               string
			cluster_placement_group_id?:     string
			time_created:                    string
			size_in_gbs?:                    string
			block_volume_replicas_deletion?: bool
			size_in_mbs?:                    string
			availability_domain!:            string
			block_volume_replicas?: [...{
				xrr_kms_key_id?:         string
				block_volume_replica_id: string
				kms_key_id:              string
				availability_domain!:    string
				display_name?:           string
			}]
			vpus_per_gb?:           string
			auto_tuned_vpus_per_gb: string
			kms_key_id?:            string
			xrc_kms_key_id?:        string
			freeform_tags?: [_]: string
			is_hydrated:       bool
			volume_backup_id?: string
			defined_tags?: [_]: string
			state: string
		}
		compute_capacity_report: {
			time_created:         string
			availability_domain!: string
			compartment_id!:      string
			shape_availabilities!: [...{
				availability_status: string
				available_count:     string
				instance_shape!:     string
				fault_domain?:       string
				instance_shape_config?: [...{
					memory_in_gbs?: float
					nvmes?:         int
					ocpus?:         float
				}]
			}]
		}
		drg_route_distribution_statement: {
			match_criteria!: [...{
				attachment_type?:   string
				drg_attachment_id?: string
				match_type?:        string
			}]
			drg_route_distribution_id!: string
			action!:                    string
			priority!:                  int
		}
		listing_resource_version_agreement: {
			listing_id!:               string
			listing_resource_version!: string
			eula_link:                 string
			oracle_terms_of_use_link:  string
			signature:                 string
			time_retrieved:            string
		}
		remote_peering_connection: {
			is_cross_tenancy_peering: bool
			peer_tenancy_id:          string
			time_created:             string
			compartment_id!:          string
			drg_id!:                  string
			peer_id?:                 string
			peer_region_name?:        string
			state:                    string
			display_name?:            string
			peering_status:           string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		default_dhcp_options: {
			state: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			time_created:                string
			display_name?:               string
			manage_default_resource_id!: string
			compartment_id?:             string
			domain_name_type?:           string
			options!: [...{
				type!: string
				custom_dns_servers?: [...string]
				search_domain_names?: [...string]
				server_type?: string
			}]
		}
		default_security_list: {
			time_created: string
			freeform_tags?: [_]: string
			manage_default_resource_id!: string
			egress_security_rules?: [...{
				destination_type?: string
				icmp_options?: [...{
					code?: *-1 | int
					type!: int
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
				destination!: string
				protocol!:    string
				description?: string
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
					max?: int
					min?: int
					source_port_range?: [...{
						max!: int
						min!: int
					}]
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
			state:           string
			compartment_id?: string
			display_name?:   string
			defined_tags?: [_]: string
		}
		dedicated_vm_host: {
			fault_domain?: string
			freeform_tags?: [_]: string
			availability_domain!:     string
			remaining_memory_in_gbs:  float
			remaining_ocpus:          float
			dedicated_vm_host_shape!: string
			state:                    string
			total_memory_in_gbs:      float
			defined_tags?: [_]: string
			display_name?:   string
			time_created:    string
			total_ocpus:     float
			compartment_id!: string
		}
		internet_gateway: {
			time_created:  string
			display_name?: string
			enabled?:      *true | bool
			freeform_tags?: [_]: string
			state:           string
			vcn_id!:         string
			route_table_id?: string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		network_security_group: {
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			state:           string
			time_created:    string
			compartment_id!: string
			vcn_id!:         string
		}
		console_history: {
			freeform_tags?: [_]: string
			availability_domain: string
			compartment_id:      string
			state:               string
			time_created:        string
			instance_id!:        string
			defined_tags?: [_]: string
			display_name?: string
		}
		dhcp_options: {
			vcn_id!:           string
			domain_name_type?: string
			state:             string
			options!: [...{
				server_type?: string
				type!:        string
				custom_dns_servers?: [...string]
				search_domain_names?: [...string]
			}]
			freeform_tags?: [_]: string
			time_created:    string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
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
		vnic_attachment: {
			create_vnic_details!: [...{
				assign_ipv6ip?: bool
				freeform_tags?: [_]: string
				assign_public_ip?: *"false" | string
				display_name?:     string
				nsg_ids?: [...string]
				hostname_label?: string
				subnet_id?:      string
				defined_tags?: [_]: string
				ipv6address_ipv6subnet_cidr_pair_details?: [...{
					ipv6_subnet_cidr?: string
					ipv6_address?:     string
				}]
				private_ip?:                string
				assign_private_dns_record?: bool
				vlan_id?:                   string
				security_attributes?: [_]: string
				skip_source_dest_check?: bool
			}]
			compartment_id:      string
			vlan_tag:            int
			time_created:        string
			vlan_id:             string
			subnet_id:           string
			vnic_id:             string
			instance_id!:        string
			availability_domain: string
			state:               string
			display_name?:       string
			nic_index?:          int
		}
		private_ip: {
			availability_domain: string
			time_created:        string
			subnet_id:           string
			display_name?:       string
			ip_address?:         string
			defined_tags?: [_]: string
			vnic_id?:        string
			hostname_label?: string
			vlan_id?:        string
			compartment_id:  string
			is_primary:      bool
			freeform_tags?: [_]: string
			is_reserved: bool
		}
		service_gateway: {
			route_table_id?: string
			state:           string
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			vcn_id!:       string
			display_name?: string
			block_traffic: bool
			time_created:  string
			services!: [...{
				service_name: string
				service_id!:  string
			}]
		}
		vcn: {
			display_name?: string
			byoipv6cidr_blocks: [...string]
			time_created:    string
			vcn_domain_name: string
			freeform_tags?: [_]: string
			ipv6cidr_blocks: [...string]
			default_route_table_id:            string
			default_security_list_id:          string
			compartment_id!:                   string
			cidr_block?:                       string
			dns_label?:                        string
			state:                             string
			is_oracle_gua_allocation_enabled?: bool
			default_dhcp_options_id:           string
			cidr_blocks?: [...string]
			ipv6private_cidr_blocks?: [...string]
			defined_tags?: [_]: string
			is_ipv6enabled?: bool
			security_attributes?: [_]: string
			byoipv6cidr_details?: [...{
				byoipv6range_id!: string
				ipv6cidr_block!:  string
			}]
		}
		capture_filter: {
			filter_type!: string
			vtap_capture_filter_rules?: [...{
				source_cidr?: string
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
				traffic_direction!: string
				destination_cidr?:  string
				icmp_options?: [...{
					type!: int
					code?: int
				}]
				protocol?:    string
				rule_action?: string
			}]
			state: string
			flow_log_capture_filter_rules?: [...{
				icmp_options?: [...{
					type!: int
					code?: int
				}]
				priority?:         int
				destination_cidr?: string
				flow_log_type?:    string
				protocol?:         string
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
				is_enabled?:  bool
				rule_action?: string
				udp_options?: [...{
					source_port_range?: [...{
						min!: int
						max!: int
					}]
					destination_port_range?: [...{
						max!: int
						min!: int
					}]
				}]
				sampling_rate?: int
				source_cidr?:   string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			time_created:  string
			display_name?: string
		}
		ipsec: {
			freeform_tags?: [_]: string
			time_created:    string
			transport_type:  string
			compartment_id!: string
			tunnel_configuration?: [...{
				oracle_tunnel_ip?: string
				associated_virtual_circuits?: [...string]
				drg_route_table_id?: string
			}]
			display_name?: string
			cpe_id!:       string
			drg_id!:       string
			static_routes!: [...string]
			cpe_local_identifier?:      string
			state:                      string
			cpe_local_identifier_type?: string
			defined_tags?: [_]: string
		}
		public_ip_pool_capacity: {
			public_ip_pool_id!: string
			byoip_id!:          string
			cidr_block!:        string
		}
		instance_pool: {
			state?: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
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
			instance_configuration_id!: string
			size!:                      int
			time_created:               string
			compartment_id!:            string
			placement_configurations!: [...{
				fault_domains?: [...string]
				primary_subnet_id?: string
				primary_vnic_subnets?: [...{
					subnet_id!: string
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
					is_assign_ipv6ip?: bool
				}]
				secondary_vnic_subnets?: [...{
					display_name?: string
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
					is_assign_ipv6ip?: bool
					subnet_id!:        string
				}]
				availability_domain!: string
			}]
			instance_display_name_formatter?: string
			actual_size:                      int
		}
		public_ip: {
			time_created:        string
			public_ip_pool_id?:  string
			availability_domain: string
			state:               string
			lifetime!:           string
			defined_tags?: [_]: string
			ip_address:      string
			compartment_id!: string
			display_name?:   string
			scope:           string
			freeform_tags?: [_]: string
			assigned_entity_type: string
			private_ip_id?:       string
			assigned_entity_id:   string
		}
		cross_connect_group: {
			display_name?: string
			state:         string
			time_created:  string
			macsec_properties?: [...{
				primary_key?: [...{
					connectivity_association_key_secret_id!:       string
					connectivity_association_name_secret_id!:      string
					connectivity_association_key_secret_version?:  string
					connectivity_association_name_secret_version?: string
				}]
				state!:                          string
				encryption_cipher?:              string
				is_unprotected_traffic_allowed?: bool
			}]
			oci_logical_device_name: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			oci_physical_device_name: string
			compartment_id!:          string
			customer_reference_name?: string
		}
		image: {
			operating_system_version: string
			launch_mode?:             string
			base_image_id:            string
			time_created:             string
			size_in_mbs:              string
			defined_tags?: [_]: string
			billable_size_in_gbs: string
			instance_id?:         string
			compartment_id!:      string
			agent_features: [...{
				is_management_supported: bool
				is_monitoring_supported: bool
			}]
			launch_options: [...{
				boot_volume_type:                    string
				firmware:                            string
				is_consistent_volume_naming_enabled: bool
				is_pv_encryption_in_transit_enabled: bool
				network_type:                        string
				remote_data_volume_type:             string
			}]
			image_source_details?: [...{
				source_type!:              string
				bucket_name?:              string
				namespace_name?:           string
				object_name?:              string
				operating_system?:         string
				operating_system_version?: string
				source_image_type?:        string
				source_uri?:               string
			}]
			display_name?:        string
			state:                string
			create_image_allowed: bool
			freeform_tags?: [_]: string
			operating_system: string
			listing_type:     string
		}
		instance_maintenance_event: {
			time_finished:             string
			estimated_duration:        string
			created_by:                string
			description:               string
			time_created:              string
			can_delete_local_storage?: bool
			defined_tags?: [_]: string
			maintenance_category:           string
			time_hard_due_date:             string
			time_window_start?:             string
			alternative_resolution_action?: string
			instance_id:                    string
			additional_details: [_]: string
			display_name?:      string
			correlation_token:  string
			time_started:       string
			instance_action:    string
			maintenance_reason: string
			freeform_tags?: [_]: string
			alternative_resolution_actions: [...string]
			start_window_duration:          string
			compartment_id:                 string
			state:                          string
			instance_maintenance_event_id!: string
			can_reschedule:                 bool
		}
		boot_volume: {
			is_auto_tune_enabled?:  bool
			auto_tuned_vpus_per_gb: string
			time_created:           string
			system_tags: [_]: string
			kms_key_id?: string
			state:       string
			freeform_tags?: [_]: string
			availability_domain!: string
			volume_group_id:      string
			image_id:             string
			size_in_mbs:          string
			size_in_gbs?:         string
			vpus_per_gb?:         string
			source_details!: [...{
				first_backup_id?:            string
				id?:                         string
				second_backup_id?:           string
				type!:                       string
				change_block_size_in_bytes?: string
			}]
			autotune_policies?: [...{
				autotune_type!:   string
				max_vpus_per_gb?: string
			}]
			backup_policy_id?: string
			boot_volume_replicas?: [...{
				display_name?:          string
				xrr_kms_key_id?:        string
				boot_volume_replica_id: string
				kms_key_id:             string
				availability_domain!:   string
			}]
			is_hydrated:                 bool
			cluster_placement_group_id?: string
			defined_tags?: [_]: string
			boot_volume_replicas_deletion?: bool
			xrc_kms_key_id?:                string
			compartment_id!:                string
			display_name?:                  string
		}
		cluster_network: {
			time_updated:    string
			display_name?:   string
			time_created:    string
			compartment_id!: string
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
			instance_pools!: [...{
				instance_hostname_formatter: string
				placement_configurations: [...{
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
						display_name: string
						ipv6address_ipv6subnet_cidr_pair_details: [...{
							ipv6subnet_cidr: string
						}]
						is_assign_ipv6ip: bool
						subnet_id:        string
					}]
					availability_domain: string
				}]
				state:        string
				time_created: string
				freeform_tags?: [_]: string
				id:                         string
				instance_configuration_id!: string
				size!:                      int
				display_name?:              string
				compartment_id:             string
				load_balancers: [...{
					instance_pool_id: string
					load_balancer_id: string
					port:             int
					state:            string
					vnic_selection:   string
					backend_set_name: string
					id:               string
				}]
				instance_display_name_formatter: string
				defined_tags?: [_]: string
			}]
			cluster_configuration?: [...{
				hpc_island_id!: string
				network_block_ids?: [...string]
			}]
			defined_tags?: [_]: string
			hpc_island_id: string
			state:         string
			freeform_tags?: [_]: string
			network_block_ids: [...string]
		}
		volume_group_backup: {
			type?:              string
			size_in_gbs:        string
			source_type:        string
			size_in_mbs:        string
			volume_group_id?:   string
			compartment_id?:    string
			unique_size_in_mbs: string
			source_details?: [...{
				kms_key_id?:             string
				region!:                 string
				volume_group_backup_id!: string
			}]
			volume_backup_ids: [...string]
			time_created:          string
			time_request_received: string
			defined_tags?: [_]: string
			expiration_time: string
			state:           string
			freeform_tags?: [_]: string
			unique_size_in_gbs:            string
			display_name?:                 string
			source_volume_group_backup_id: string
		}
	}
	arguments: {
		ipsec_connection_tunnel_management: {
			bgp_session_info?: [...{
				oracle_interface_ipv6?:   string
				customer_bgp_asn?:        string
				customer_interface_ip?:   string
				oracle_interface_ip?:     string
				customer_interface_ipv6?: string
			}]
			dpd_config?: [...{
				dpd_mode?:           string
				dpd_timeout_in_sec?: int
			}]
			oracle_can_initiate?:     string
			routing?:                 string
			nat_translation_enabled?: string
			tunnel_id!:               string
			ike_version?:             string
			phase_one_details?: [...{
				custom_authentication_algorithm?: string
				custom_dh_group?:                 string
				custom_encryption_algorithm?:     string
				lifetime?:                        int
				is_custom_phase_one_config?:      bool
			}]
			encryption_domain_config?: [...{
				cpe_traffic_selector?: [...string]
				oracle_traffic_selector?: [...string]
			}]
			display_name?: string
			phase_two_details?: [...{
				is_custom_phase_two_config?:      bool
				dh_group?:                        string
				custom_encryption_algorithm?:     string
				is_pfs_enabled?:                  bool
				lifetime?:                        int
				custom_authentication_algorithm?: string
			}]
			shared_secret?: string
			ipsec_id!:      string
		}
		volume_backup_policy: {
			freeform_tags?: [_]: string
			schedules?: [...{
				day_of_week?:       string
				offset_type?:       string
				period!:            string
				offset_seconds?:    int
				backup_type!:       string
				retention_seconds!: int
				day_of_month?:      *-1 | int
				time_zone?:         string
				hour_of_day?:       *-1 | int
				month?:             string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			destination_region?: string
			display_name?:       string
		}
		volume_backup_policy_assignment: {
			xrc_kms_key_id?: string
			asset_id!:       string
			policy_id!:      string
		}
		compute_cluster: {
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			availability_domain!: string
			compartment_id!:      string
		}
		drg_attachment: {
			display_name?:                     string
			export_drg_route_distribution_id?: string
			freeform_tags?: [_]: string
			drg_route_table_id?: string
			network_details?: [...{
				type!:           string
				id?:             string
				route_table_id?: string
				vcn_route_type?: string
			}]
			route_table_id?: string
			drg_id!:         string
			defined_tags?: [_]: string
			vcn_id?:                                       string
			remove_export_drg_route_distribution_trigger?: bool
		}
		drg_route_table: {
			drg_id!:                string
			remove_import_trigger?: bool
			freeform_tags?: [_]: string
			import_drg_route_distribution_id?: string
			is_ecmp_enabled?:                  bool
			defined_tags?: [_]: string
			display_name?: string
		}
		ipv6: {
			defined_tags?: [_]: string
			ipv6subnet_cidr?: string
			vnic_id!:         string
			display_name?:    string
			freeform_tags?: [_]: string
			ip_address?: string
		}
		route_table: {
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			route_rules?: [...{
				destination?:       string
				destination_type?:  string
				route_type?:        string
				network_entity_id!: string
				cidr_block?:        string
				description?:       string
			}]
			compartment_id!: string
			vcn_id!:         string
		}
		compute_capacity_reservation: {
			freeform_tags?: [_]: string
			is_default_reservation?: bool
			display_name?:           string
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
				instance_shape!: string
				reserved_count!: string
			}]
			availability_domain!: string
			compartment_id!:      string
			defined_tags?: [_]: string
		}
		drg_attachments_list: {
			is_cross_tenancy?: bool
			drg_id!:           string
			attachment_type?:  string
		}
		instance_pool_instance: {
			instance_pool_id!:                  string
			auto_terminate_instance_on_delete?: bool
			decrement_size_on_delete?:          bool
			instance_id!:                       string
		}
		drg: {
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name?: string
		}
		instance_console_connection: {
			defined_tags?: [_]: string
			instance_id!: string
			freeform_tags?: [_]: string
			public_key!: string
		}
		subnet: {
			vcn_id!:                    string
			dhcp_options_id?:           string
			route_table_id?:            string
			prohibit_internet_ingress?: bool
			compartment_id!:            string
			ipv6cidr_blocks?: [...string]
			prohibit_public_ip_on_vnic?: bool
			security_list_ids?: [...string]
			availability_domain?: string
			defined_tags?: [_]: string
			ipv6cidr_block?: string
			display_name?:   string
			cidr_block!:     string
			dns_label?:      string
			freeform_tags?: [_]: string
		}
		app_catalog_subscription: {
			listing_resource_version!: string
			signature!:                string
			compartment_id!:           string
			oracle_terms_of_use_link!: string
			time_retrieved!:           string
			eula_link?:                string
			listing_id!:               string
		}
		compute_capacity_topology: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			capacity_source!: [...{
				compartment_id?: string
				capacity_type!:  string
			}]
			availability_domain!: string
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
		public_ip_pool: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
		volume_attachment: {
			volume_id!:                           string
			compartment_id?:                      string
			instance_id!:                         string
			display_name?:                        string
			encryption_in_transit_type?:          string
			attachment_type!:                     string
			is_read_only?:                        bool
			is_shareable?:                        bool
			device?:                              string
			is_pv_encryption_in_transit_enabled?: bool
			use_chap?:                            bool
			is_agent_auto_iscsi_login_enabled?:   bool
		}
		volume_backup: {
			defined_tags?: [_]: string
			volume_id?: string
			source_details?: [...{
				region!:           string
				volume_backup_id!: string
				kms_key_id?:       string
			}]
			display_name?: string
			freeform_tags?: [_]: string
			kms_key_id?:     string
			type?:           string
			compartment_id?: string
		}
		cross_connect: {
			is_active?:     bool
			location_name!: string
			defined_tags?: [_]: string
			near_cross_connect_or_cross_connect_group_id?: string
			port_speed_shape_name!:                        string
			freeform_tags?: [_]: string
			macsec_properties?: [...{
				encryption_cipher?:              string
				is_unprotected_traffic_allowed?: bool
				primary_key?: [...{
					connectivity_association_key_secret_id!:  string
					connectivity_association_name_secret_id!: string
				}]
				state!: string
			}]
			display_name?:                                string
			customer_reference_name?:                     string
			far_cross_connect_or_cross_connect_group_id?: string
			compartment_id!:                              string
			cross_connect_group_id?:                      string
		}
		drg_route_table_route_rule: {
			destination!:                string
			destination_type!:           string
			next_hop_drg_attachment_id!: string
			drg_route_table_id!:         string
		}
		local_peering_gateway: {
			route_table_id?: string
			defined_tags?: [_]: string
			peer_id?:        string
			compartment_id!: string
			vcn_id!:         string
			display_name?:   string
			freeform_tags?: [_]: string
		}
		shape_management: {
			compartment_id!: string
			image_id!:       string
			shape_name!:     string
		}
		vtap: {
			source_id!:                         string
			source_private_endpoint_subnet_id?: string
			display_name?:                      string
			defined_tags?: [_]: string
			capture_filter_id!:          string
			source_private_endpoint_ip?: string
			max_packet_size?:            int
			is_vtap_enabled?:            bool
			traffic_mode?:               string
			freeform_tags?: [_]: string
			target_type?:              string
			encapsulation_protocol?:   string
			target_id?:                string
			target_ip?:                string
			source_type?:              string
			vxlan_network_identifier?: string
			compartment_id!:           string
			vcn_id!:                   string
		}
		app_catalog_listing_resource_version_agreement: {
			listing_id!:               string
			listing_resource_version!: string
		}
		boot_volume_backup: {
			source_details?: [...{
				region!:                string
				boot_volume_backup_id!: string
				kms_key_id?:            string
			}]
			display_name?:   string
			compartment_id?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			type?:           string
			kms_key_id?:     string
			boot_volume_id?: string
		}
		nat_gateway: {
			vcn_id!:         string
			block_traffic?:  bool
			display_name?:   string
			route_table_id?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			public_ip_id?:   string
			compartment_id!: string
		}
		volume_group: {
			freeform_tags?: [_]: string
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
			cluster_placement_group_id?: string
			backup_policy_id?:           string
			defined_tags?: [_]: string
			volume_group_replicas_deletion?: bool
			display_name?:                   string
			xrc_kms_key_id?:                 string
			availability_domain!:            string
			preserve_volume_replica?:        bool
			volume_ids?: [...string]
			compartment_id!: string
		}
		drg_attachment_management: {
			network_details?: [...{
				id!:             string
				type!:           string
				route_table_id?: string
			}]
			vcn_id?:         string
			compartment_id!: string
			network_id?:     string
			defined_tags?: [_]: string
			route_table_id?: string
			display_name?:   string
			freeform_tags?: [_]: string
			drg_route_table_id?:                           string
			export_drg_route_distribution_id?:             string
			attachment_type!:                              string
			remove_export_drg_route_distribution_trigger?: bool
			drg_id!:                                       string
		}
		instance_configuration: {
			freeform_tags?: [_]: string
			instance_details?: [...{
				block_volumes?: [...{
					attach_details?: [...{
						type!:                                string
						device?:                              string
						display_name?:                        string
						is_pv_encryption_in_transit_enabled?: bool
						is_read_only?:                        bool
						is_shareable?:                        bool
						use_chap?:                            bool
					}]
					create_details?: [...{
						cluster_placement_group_id?: string
						source_details?: [...{
							type!: string
							id?:   string
						}]
						compartment_id?: string
						autotune_policies?: [...{
							autotune_type!:   string
							max_vpus_per_gb?: string
						}]
						backup_policy_id?:    string
						size_in_gbs?:         string
						availability_domain?: string
						kms_key_id?:          string
						defined_tags?: [_]: string
						display_name?:   string
						xrc_kms_key_id?: string
						block_volume_replicas?: [...{
							availability_domain!: string
							display_name?:        string
						}]
						is_auto_tune_enabled?: bool
						vpus_per_gb?:          string
						freeform_tags?: [_]: string
					}]
					volume_id?: string
				}]
				launch_details?: [...{
					capacity_reservation_id?: string
					defined_tags?: [_]: string
					launch_options?: [...{
						boot_volume_type?:                    string
						firmware?:                            string
						is_consistent_volume_naming_enabled?: bool
						is_pv_encryption_in_transit_enabled?: bool
						network_type?:                        string
						remote_data_volume_type?:             string
					}]
					preemptible_instance_config?: [...{
						preemption_action?: [...{
							type!: string, preserve_boot_volume?: bool
						}]
					}]
					fault_domain?: string
					freeform_tags?: [_]: string
					ipxe_script?: string
					platform_config?: [...{
						is_input_output_memory_management_unit_enabled?: bool
						is_memory_encryption_enabled?:                   bool
						is_symmetric_multi_threading_enabled?:           bool
						config_map?: [_]: string
						is_access_control_service_enabled?:  bool
						percentage_of_cores_enabled?:        int
						are_virtual_instructions_enabled?:   bool
						is_secure_boot_enabled?:             bool
						type!:                               string
						is_measured_boot_enabled?:           bool
						is_trusted_platform_module_enabled?: bool
						numa_nodes_per_socket?:              string
					}]
					instance_options?: [...{
						are_legacy_imds_endpoints_disabled?: bool
					}]
					source_details?: [...{
						boot_volume_vpus_per_gb?: string
						image_id?:                string
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
					}]
					availability_config?: [...{
						recovery_action?:             string
						is_live_migration_preferred?: bool
					}]
					shape_config?: [...{
						vcpus?:                     int
						baseline_ocpu_utilization?: string
						memory_in_gbs?:             float
						nvmes?:                     int
						ocpus?:                     float
					}]
					shape?: string
					agent_config?: [...{
						are_all_plugins_disabled?: bool
						is_management_disabled?:   bool
						is_monitoring_disabled?:   bool
						plugins_config?: [...{
							name?:          string
							desired_state?: string
						}]
					}]
					preferred_maintenance_action?:        string
					compartment_id?:                      string
					is_pv_encryption_in_transit_enabled?: bool
					display_name?:                        string
					dedicated_vm_host_id?:                string
					metadata?: [_]: string
					cluster_placement_group_id?: string
					create_vnic_details?: [...{
						defined_tags?: [_]: string
						hostname_label?:         string
						private_ip?:             string
						skip_source_dest_check?: bool
						assign_ipv6ip?:          bool
						display_name?:           string
						ipv6address_ipv6subnet_cidr_pair_details?: [...{
							ipv6subnet_cidr?: string
							ipv6address?:     string
						}]
						nsg_ids?: [...string]
						security_attributes?: [_]: string
						subnet_id?:                 string
						assign_public_ip?:          bool
						assign_private_dns_record?: *true | bool
						freeform_tags?: [_]: string
					}]
					extended_metadata?: [_]: string
					launch_mode?: string
					security_attributes?: [_]: string
					availability_domain?: string
				}]
				options?: [...{
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
							compartment_id?:             string
							display_name?:               string
							cluster_placement_group_id?: string
							source_details?: [...{
								type!: string
								id?:   string
							}]
							block_volume_replicas?: [...{
								availability_domain!: string
								display_name?:        string
							}]
							size_in_gbs?:         string
							availability_domain?: string
							freeform_tags?: [_]: string
							is_auto_tune_enabled?: bool
							vpus_per_gb?:          string
							kms_key_id?:           string
							backup_policy_id?:     string
							xrc_kms_key_id?:       string
							autotune_policies?: [...{
								max_vpus_per_gb?: string
								autotune_type!:   string
							}]
							defined_tags?: [_]: string
						}]
						volume_id?: string
					}]
					launch_details?: [...{
						compartment_id?: string
						ipxe_script?:    string
						launch_mode?:    string
						create_vnic_details?: [...{
							assign_ipv6ip?:    bool
							assign_public_ip?: bool
							defined_tags?: [_]: string
							ipv6address_ipv6subnet_cidr_pair_details?: [...{
								ipv6address?:     string
								ipv6subnet_cidr?: string
							}]
							nsg_ids?: [...string]
							private_ip?:                string
							skip_source_dest_check?:    bool
							assign_private_dns_record?: bool
							display_name?:              string
							hostname_label?:            string
							subnet_id?:                 string
							freeform_tags?: [_]: string
							security_attributes?: [_]: string
						}]
						metadata?: [_]: string
						shape?:                      string
						availability_domain?:        string
						cluster_placement_group_id?: string
						fault_domain?:               string
						extended_metadata?: [_]: string
						freeform_tags?: [_]: string
						security_attributes?: [_]: string
						agent_config?: [...{
							is_management_disabled?: bool
							is_monitoring_disabled?: bool
							plugins_config?: [...{
								desired_state?: string
								name?:          string
							}]
							are_all_plugins_disabled?: bool
						}]
						launch_options?: [...{
							is_pv_encryption_in_transit_enabled?: bool
							network_type?:                        string
							remote_data_volume_type?:             string
							boot_volume_type?:                    string
							firmware?:                            string
							is_consistent_volume_naming_enabled?: bool
						}]
						is_pv_encryption_in_transit_enabled?: bool
						availability_config?: [...{
							is_live_migration_preferred?: bool
							recovery_action?:             string
						}]
						display_name?:            string
						capacity_reservation_id?: string
						dedicated_vm_host_id?:    string
						defined_tags?: [_]: string
						preemptible_instance_config?: [...{
							preemption_action?: [...{
								type!: string, preserve_boot_volume?: bool
							}]
						}]
						platform_config?: [...{
							type!:                                           string
							are_virtual_instructions_enabled?:               bool
							is_access_control_service_enabled?:              bool
							is_secure_boot_enabled?:                         bool
							numa_nodes_per_socket?:                          string
							is_symmetric_multi_threading_enabled?:           bool
							percentage_of_cores_enabled?:                    int
							is_measured_boot_enabled?:                       bool
							is_input_output_memory_management_unit_enabled?: bool
							is_memory_encryption_enabled?:                   bool
							is_trusted_platform_module_enabled?:             bool
						}]
						preferred_maintenance_action?: string
						instance_options?: [...{
							are_legacy_imds_endpoints_disabled?: bool
						}]
						shape_config?: [...{
							memory_in_gbs?:             float
							nvmes?:                     int
							ocpus?:                     float
							vcpus?:                     int
							baseline_ocpu_utilization?: string
						}]
						source_details?: [...{
							image_id?:   string
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
						}]
					}]
					secondary_vnics?: [...{
						create_vnic_details?: [...{
							subnet_id?:                 string
							assign_private_dns_record?: bool
							hostname_label?:            string
							ipv6address_ipv6subnet_cidr_pair_details?: [...{
								ipv6address?:     string
								ipv6subnet_cidr?: string
							}]
							assign_ipv6ip?: bool
							defined_tags?: [_]: string
							freeform_tags?: [_]: string
							security_attributes?: [_]: string
							assign_public_ip?: bool
							nsg_ids?: [...string]
							display_name?:           string
							private_ip?:             string
							skip_source_dest_check?: bool
						}]
						display_name?: string
						nic_index?:    int
					}]
				}]
				secondary_vnics?: [...{
					nic_index?: int
					create_vnic_details?: [...{
						nsg_ids?: [...string]
						assign_ipv6ip?:             bool
						assign_public_ip?:          bool
						private_ip?:                string
						skip_source_dest_check?:    bool
						assign_private_dns_record?: *true | bool
						defined_tags?: [_]: string
						display_name?: string
						ipv6address_ipv6subnet_cidr_pair_details?: [...{
							ipv6address?:     string
							ipv6subnet_cidr?: string
						}]
						security_attributes?: [_]: string
						hostname_label?: string
						subnet_id?:      string
						freeform_tags?: [_]: string
					}]
					display_name?: string
				}]
				instance_type!: string
			}]
			instance_id?:  string
			display_name?: string
			defined_tags?: [_]: string
			source?:         string
			compartment_id!: string
		}
		network_security_group_security_rule: {
			network_security_group_id!: string
			destination?:               string
			destination_type?:          string
			description?:               string
			icmp_options?: [...{
				code?: *-1 | int
				type!: int
			}]
			protocol!:    string
			direction!:   string
			source_type?: string
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
			udp_options?: [...{
				destination_port_range?: [...{
					min!: int
					max!: int
				}]
				source_port_range?: [...{
					max!: int
					min!: int
				}]
			}]
			stateless?: bool
			source?:    string
		}
		compute_image_capability_schema: {
			image_id!: string
			schema_data!: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!:                                      string
			compute_global_image_capability_schema_version_name!: string
			defined_tags?: [_]: string
		}
		default_route_table: {
			defined_tags?: [_]: string
			manage_default_resource_id!: string
			compartment_id?:             string
			route_rules?: [...{
				cidr_block?:        string
				description?:       string
				destination?:       string
				destination_type?:  string
				route_type?:        string
				network_entity_id!: string
			}]
			display_name?: string
			freeform_tags?: [_]: string
		}
		vlan: {
			vlan_tag?:            int
			route_table_id?:      string
			availability_domain?: string
			compartment_id!:      string
			vcn_id!:              string
			nsg_ids?: [...string]
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			cidr_block!: string
		}
		instance: {
			availability_config?: [...{
				is_live_migration_preferred?: bool
				recovery_action?:             string
			}]
			preserve_data_volumes_created_at_launch?: bool
			launch_volume_attachments?: [...{
				launch_create_volume_details?: [...{
					compartment_id?:       string
					display_name?:         string
					kms_key_id?:           string
					vpus_per_gb?:          string
					size_in_gbs!:          string
					volume_creation_type!: string
				}]
				use_chap?:                            bool
				type!:                                string
				display_name?:                        string
				encryption_in_transit_type?:          string
				is_pv_encryption_in_transit_enabled?: bool
				is_agent_auto_iscsi_login_enabled?:   bool
				volume_id?:                           string
				is_read_only?:                        bool
				is_shareable?:                        bool
				device?:                              string
			}]
			state?:                   string
			capacity_reservation_id?: string
			shape_config?: [...{
				memory_in_gbs?:             float
				ocpus?:                     float
				vcpus?:                     int
				nvmes?:                     int
				baseline_ocpu_utilization?: string
			}]
			hostname_label?: string
			preemptible_instance_config?: [...{
				preemption_action!: [...{
					preserve_boot_volume?: bool, type!: string
				}]
			}]
			compartment_id!: string
			subnet_id?:      string
			security_attributes?: [_]: string
			preserve_boot_volume?:      bool
			instance_configuration_id?: string
			source_details?: [...{
				boot_volume_size_in_gbs?: string
				boot_volume_vpus_per_gb?: string
				instance_source_image_filter_details?: [...{
					operating_system?:         string
					operating_system_version?: string
					compartment_id!:           string
					defined_tags_filter?: [_]: string
				}]
				kms_key_id?:                      string
				is_preserve_boot_volume_enabled?: bool
				source_type!:                     string
				source_id?:                       string
			}]
			create_vnic_details?: [...{
				skip_source_dest_check?: bool
				ipv6address_ipv6subnet_cidr_pair_details?: [...{
					ipv6subnet_cidr?: string
					ipv6address?:     string
				}]
				nsg_ids?: [...string]
				private_ip?:       string
				assign_public_ip?: *"true" | string
				vlan_id?:          string
				freeform_tags?: [_]: string
				assign_ipv6ip?:             bool
				subnet_id?:                 string
				display_name?:              string
				assign_private_dns_record?: bool
				defined_tags?: [_]: string
				hostname_label?: string
				security_attributes?: [_]: string
			}]
			availability_domain!: string
			freeform_tags?: [_]: string
			is_pv_encryption_in_transit_enabled?: bool
			ipxe_script?:                         string
			update_operation_constraint?:         string
			dedicated_vm_host_id?:                string
			async?:                               bool
			compute_cluster_id?:                  string
			agent_config?: [...{
				is_monitoring_disabled?: bool
				plugins_config?: [...{
					desired_state!: string
					name!:          string
				}]
				are_all_plugins_disabled?: bool
				is_management_disabled?:   bool
			}]
			extended_metadata?: [_]: string
			launch_options?: [...{
				is_pv_encryption_in_transit_enabled?: bool
				network_type?:                        string
				remote_data_volume_type?:             string
				boot_volume_type?:                    string
				firmware?:                            string
				is_consistent_volume_naming_enabled?: bool
			}]
			metadata?: [_]: string
			shape?: string
			defined_tags?: [_]: string
			platform_config?: [...{
				is_measured_boot_enabled?:                       bool
				is_memory_encryption_enabled?:                   bool
				numa_nodes_per_socket?:                          string
				percentage_of_cores_enabled?:                    int
				is_input_output_memory_management_unit_enabled?: bool
				is_symmetric_multi_threading_enabled?:           bool
				is_access_control_service_enabled?:              bool
				config_map?: [_]: string
				is_secure_boot_enabled?:             bool
				type!:                               string
				is_trusted_platform_module_enabled?: bool
				are_virtual_instructions_enabled?:   bool
			}]
			cluster_placement_group_id?: string
			fault_domain?:               string
			image?:                      string
			instance_options?: [...{
				are_legacy_imds_endpoints_disabled?: bool
			}]
			display_name?: string
		}
		route_table_attachment: {
			subnet_id!:      string
			route_table_id!: string
		}
		security_list: {
			display_name?: string
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
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
				destination!:      string
				protocol!:         string
				description?:      string
				destination_type?: string
			}]
			ingress_security_rules?: [...{
				description?: string
				icmp_options?: [...{
					type!: int
					code?: *-1 | int
				}]
				source_type?: string
				stateless?:   *false | bool
				tcp_options?: [...{
					max?: int
					min?: int
					source_port_range?: [...{
						min!: int
						max!: int
					}]
				}]
				udp_options?: [...{
					max?: int
					min?: int
					source_port_range?: [...{
						max!: int
						min!: int
					}]
				}]
				protocol!: string
				source!:   string
			}]
			compartment_id!: string
			vcn_id!:         string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		virtual_circuit: {
			ip_mtu?:           string
			customer_bgp_asn?: int
			is_bfd_enabled?:   bool
			cross_connect_mappings?: [...{
				vlan?:                                    int
				bgp_md5auth_key?:                         string
				cross_connect_or_cross_connect_group_id?: string
				customer_bgp_peering_ip?:                 string
				customer_bgp_peering_ipv6?:               string
				oracle_bgp_peering_ip?:                   string
				oracle_bgp_peering_ipv6?:                 string
			}]
			bgp_admin_state?: string
			customer_asn?:    string
			public_prefixes?: [...{
				cidr_block!: string
			}]
			routing_policy?: [...string]
			region?:              string
			gateway_id?:          string
			provider_service_id?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!:            string
			bandwidth_shape_name?:      string
			provider_service_key_name?: string
			display_name?:              string
			type!:                      string
			is_transport_mode?:         bool
		}
		volume: {
			autotune_policies?: [...{
				autotune_type!:   string
				max_vpus_per_gb?: string
			}]
			size_in_gbs?:         string
			availability_domain!: string
			compartment_id!:      string
			size_in_mbs?:         string
			defined_tags?: [_]: string
			backup_policy_id?: string
			freeform_tags?: [_]: string
			source_details?: [...{
				first_backup_id?:            string
				id?:                         string
				second_backup_id?:           string
				type!:                       string
				change_block_size_in_bytes?: string
			}]
			vpus_per_gb?:      string
			volume_backup_id?: string
			kms_key_id?:       string
			xrc_kms_key_id?:   string
			block_volume_replicas?: [...{
				display_name?:        string
				xrr_kms_key_id?:      string
				availability_domain!: string
			}]
			display_name?:                   string
			cluster_placement_group_id?:     string
			is_auto_tune_enabled?:           bool
			block_volume_replicas_deletion?: bool
		}
		compute_capacity_report: {
			availability_domain!: string
			compartment_id!:      string
			shape_availabilities!: [...{
				instance_shape!: string
				fault_domain?:   string
				instance_shape_config?: [...{
					memory_in_gbs?: float
					nvmes?:         int
					ocpus?:         float
				}]
			}]
		}
		drg_route_distribution_statement: {
			priority!: int
			match_criteria!: [...{
				drg_attachment_id?: string
				match_type?:        string
				attachment_type?:   string
			}]
			drg_route_distribution_id!: string
			action!:                    string
		}
		listing_resource_version_agreement: {
			listing_id!:               string
			listing_resource_version!: string
		}
		remote_peering_connection: {
			peer_region_name?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			peer_id?:        string
			compartment_id!: string
			drg_id!:         string
			display_name?:   string
		}
		default_dhcp_options: {
			compartment_id?: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			options!: [...{
				server_type?: string
				type!:        string
				custom_dns_servers?: [...string]
				search_domain_names?: [...string]
			}]
			domain_name_type?:           string
			manage_default_resource_id!: string
		}
		default_security_list: {
			compartment_id?: string
			display_name?:   string
			freeform_tags?: [_]: string
			ingress_security_rules?: [...{
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
				udp_options?: [...{
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
					min?: int
				}]
				protocol!: string
				source!:   string
			}]
			defined_tags?: [_]: string
			egress_security_rules?: [...{
				destination_type?: string
				icmp_options?: [...{
					code?: *-1 | int
					type!: int
				}]
				stateless?: bool
				tcp_options?: [...{
					min?: int
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
				}]
				udp_options?: [...{
					min?: int
					source_port_range?: [...{
						max!: int
						min!: int
					}]
					max?: int
				}]
				destination!: string
				protocol!:    string
				description?: string
			}]
			manage_default_resource_id!: string
		}
		dedicated_vm_host: {
			availability_domain!:     string
			compartment_id!:          string
			dedicated_vm_host_shape!: string
			defined_tags?: [_]: string
			display_name?: string
			fault_domain?: string
			freeform_tags?: [_]: string
		}
		internet_gateway: {
			display_name?:   string
			enabled?:        *true | bool
			route_table_id?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			vcn_id!:         string
			defined_tags?: [_]: string
		}
		network_security_group: {
			freeform_tags?: [_]: string
			compartment_id!: string
			vcn_id!:         string
			defined_tags?: [_]: string
			display_name?: string
		}
		console_history: {
			freeform_tags?: [_]: string
			instance_id!: string
			defined_tags?: [_]: string
			display_name?: string
		}
		dhcp_options: {
			display_name?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			options!: [...{
				search_domain_names?: [...string]
				server_type?: string
				type!:        string
				custom_dns_servers?: [...string]
			}]
			defined_tags?: [_]: string
			vcn_id!:           string
			domain_name_type?: string
		}
		drg_route_distribution: {
			distribution_type!: string
			drg_id!:            string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
		vnic_attachment: {
			create_vnic_details!: [...{
				display_name?: string
				freeform_tags?: [_]: string
				ipv6address_ipv6subnet_cidr_pair_details?: [...{
					ipv6_subnet_cidr?: string
					ipv6_address?:     string
				}]
				defined_tags?: [_]: string
				private_ip?: string
				security_attributes?: [_]: string
				assign_private_dns_record?: bool
				assign_ipv6ip?:             bool
				assign_public_ip?:          *"false" | string
				nsg_ids?: [...string]
				skip_source_dest_check?: bool
				vlan_id?:                string
				hostname_label?:         string
				subnet_id?:              string
			}]
			instance_id!:  string
			display_name?: string
			nic_index?:    int
		}
		private_ip: {
			display_name?:   string
			hostname_label?: string
			ip_address?:     string
			vlan_id?:        string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			vnic_id?: string
		}
		service_gateway: {
			services!: [...{
				service_id!: string
			}]
			vcn_id!:         string
			display_name?:   string
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			route_table_id?: string
		}
		vcn: {
			dns_label?:      string
			is_ipv6enabled?: bool
			security_attributes?: [_]: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			is_oracle_gua_allocation_enabled?: bool
			ipv6private_cidr_blocks?: [...string]
			display_name?:   string
			compartment_id!: string
			byoipv6cidr_details?: [...{
				byoipv6range_id!: string
				ipv6cidr_block!:  string
			}]
			cidr_block?: string
			cidr_blocks?: [...string]
		}
		capture_filter: {
			filter_type!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			vtap_capture_filter_rules?: [...{
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
						min!: int
						max!: int
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
			}]
			display_name?: string
			flow_log_capture_filter_rules?: [...{
				is_enabled?:    bool
				sampling_rate?: int
				source_cidr?:   string
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
				protocol?:         string
				rule_action?:      string
				udp_options?: [...{
					destination_port_range?: [...{
						min!: int
						max!: int
					}]
					source_port_range?: [...{
						max!: int
						min!: int
					}]
				}]
				icmp_options?: [...{
					type!: int
					code?: int
				}]
				priority?:      int
				flow_log_type?: string
			}]
			compartment_id!: string
		}
		ipsec: {
			freeform_tags?: [_]: string
			cpe_local_identifier_type?: string
			cpe_id!:                    string
			cpe_local_identifier?:      string
			display_name?:              string
			defined_tags?: [_]: string
			tunnel_configuration?: [...{
				associated_virtual_circuits?: [...string]
				drg_route_table_id?: string
				oracle_tunnel_ip?:   string
			}]
			drg_id!: string
			static_routes!: [...string]
			compartment_id!: string
		}
		public_ip_pool_capacity: {
			byoip_id!:          string
			cidr_block!:        string
			public_ip_pool_id!: string
		}
		instance_pool: {
			compartment_id!: string
			placement_configurations!: [...{
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
				secondary_vnic_subnets?: [...{
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
					is_assign_ipv6ip?: bool
					subnet_id!:        string
					display_name?:     string
				}]
			}]
			freeform_tags?: [_]: string
			load_balancers?: [...{
				backend_set_name!: string
				load_balancer_id!: string
				port!:             int
				vnic_selection!:   string
			}]
			instance_display_name_formatter?: string
			state?:                           string
			defined_tags?: [_]: string
			display_name?:                string
			instance_hostname_formatter?: string
			instance_configuration_id!:   string
			size!:                        int
		}
		public_ip: {
			public_ip_pool_id?: string
			private_ip_id?:     string
			compartment_id!:    string
			lifetime!:          string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
		cross_connect_group: {
			compartment_id!:          string
			customer_reference_name?: string
			macsec_properties?: [...{
				state!:                          string
				encryption_cipher?:              string
				is_unprotected_traffic_allowed?: bool
				primary_key?: [...{
					connectivity_association_name_secret_version?: string
					connectivity_association_key_secret_id!:       string
					connectivity_association_name_secret_id!:      string
					connectivity_association_key_secret_version?:  string
				}]
			}]
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
		image: {
			freeform_tags?: [_]: string
			launch_mode?: string
			image_source_details?: [...{
				operating_system_version?: string
				source_image_type?:        string
				source_uri?:               string
				source_type!:              string
				bucket_name?:              string
				namespace_name?:           string
				object_name?:              string
				operating_system?:         string
			}]
			instance_id?:    string
			compartment_id!: string
			display_name?:   string
			defined_tags?: [_]: string
		}
		instance_maintenance_event: {
			instance_maintenance_event_id!: string
			alternative_resolution_action?: string
			freeform_tags?: [_]: string
			can_delete_local_storage?: bool
			defined_tags?: [_]: string
			display_name?:      string
			time_window_start?: string
		}
		boot_volume: {
			availability_domain!: string
			source_details!: [...{
				first_backup_id?:            string
				id?:                         string
				second_backup_id?:           string
				type!:                       string
				change_block_size_in_bytes?: string
			}]
			autotune_policies?: [...{
				autotune_type!:   string
				max_vpus_per_gb?: string
			}]
			display_name?:               string
			cluster_placement_group_id?: string
			freeform_tags?: [_]: string
			xrc_kms_key_id?: string
			boot_volume_replicas?: [...{
				availability_domain!: string
				display_name?:        string
				xrr_kms_key_id?:      string
			}]
			is_auto_tune_enabled?:          bool
			boot_volume_replicas_deletion?: bool
			backup_policy_id?:              string
			defined_tags?: [_]: string
			size_in_gbs?:    string
			vpus_per_gb?:    string
			compartment_id!: string
			kms_key_id?:     string
		}
		cluster_network: {
			cluster_configuration?: [...{
				hpc_island_id!: string
				network_block_ids?: [...string]
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
			placement_configuration!: [...{
				secondary_vnic_subnets?: [...{
					display_name?: string
					ipv6address_ipv6subnet_cidr_pair_details?: [...{
						ipv6subnet_cidr?: string
					}]
					is_assign_ipv6ip?: bool
					subnet_id!:        string
				}]
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
			}]
			display_name?: string
			instance_pools!: [...{
				display_name?:              string
				instance_configuration_id!: string
				size!:                      int
				freeform_tags?: [_]: string
				defined_tags?: [_]: string
			}]
		}
		volume_group_backup: {
			volume_group_id?: string
			compartment_id?:  string
			display_name?:    string
			type?:            string
			source_details?: [...{
				volume_group_backup_id!: string
				kms_key_id?:             string
				region!:                 string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	cross_connects: {
		cross_connect_group_id?: string
		display_name?:           string
		state?:                  string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	dedicated_vm_hosts: {
		instance_shape_name?:                              string
		remaining_memory_in_gbs_greater_than_or_equal_to?: float
		availability_domain?:                              string
		remaining_ocpus_greater_than_or_equal_to?:         float
		state?:                                            string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	drg_route_distribution: drg_route_distribution_id!: string
	virtual_circuit_public_prefixes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		verification_state?: string
		virtual_circuit_id!: string
	}
	boot_volumes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id?:      string
		volume_group_id?:     string
	}
	cluster_network: cluster_network_id!: string
	instance_pool_instances: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:   string
		display_name?:     string
		instance_pool_id!: string
	}
	virtual_circuit: virtual_circuit_id!: string
	boot_volume_attachments: {
		availability_domain!: string
		boot_volume_id?:      string
		compartment_id!:      string
		instance_id?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	dedicated_vm_host_instance_shapes: {
		availability_domain?:     string
		compartment_id!:          string
		dedicated_vm_host_shape?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	instance_maintenance_events: {
		correlation_token?:                          string
		time_window_start_greater_than_or_equal_to?: string
		time_window_start_less_than_or_equal_to?:    string
		compartment_id!:                             string
		instance_id?:                                string
		instance_action?:                            string
		state?:                                      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	ip_inventory_subnet_cidr: subnet_id!: string
	network_security_groups: {
		display_name?: string
		state?:        string
		vcn_id?:       string
		vlan_id?:      string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
	}
	public_ip_pool: public_ip_pool_id!: string
	volume: volume_id!: string
	vtaps: {
		state?:     string
		target_id?: string
		target_ip?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		source?:          string
		compartment_id!:  string
		is_vtap_enabled?: bool
		vcn_id?:          string
		display_name?:    string
	}
	compute_capacity_topology_compute_network_blocks: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain?:          string
		compartment_id?:               string
		compute_capacity_topology_id!: string
		compute_hpc_island_id?:        string
	}
	compute_global_image_capability_schemas_versions: {
		display_name?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compute_global_image_capability_schema_id!: string
	}
	cpe_device_shape: cpe_device_shape_id!: string
	cpes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	fast_connect_provider_service_key: {
		provider_service_id!:       string
		provider_service_key_name!: string
	}
	instance_pool_load_balancer_attachment: {
		instance_pool_id!:                          string
		instance_pool_load_balancer_attachment_id!: string
	}
	vlan: vlan_id!: string
	app_catalog_listing_resource_versions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		listing_id!: string
	}
	boot_volume_replica: boot_volume_replica_id!: string
	cluster_network_instances: {
		cluster_network_id!: string
		compartment_id!:     string
		display_name?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	ipv6: ipv6id!: string
	local_peering_gateways: {
		compartment_id!: string
		vcn_id?:         string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
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
	byoip_ranges: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	network_security_group_vnics: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		network_security_group_id!: string
	}
	public_ips: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
		lifetime?:            string
		public_ip_pool_id?:   string
		scope!:               string
	}
	vcn_dns_resolver_association: vcn_id!: string
	compute_capacity_reservations: {
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
	instance_pool: instance_pool_id!: string
	public_ip: {
		ip_address?:    string
		private_ip_id?: string
		id?:            string
	}
	capture_filter: capture_filter_id!: string
	cross_connect_locations: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	service_gateways: {
		compartment_id!: string
		state?:          string
		vcn_id?:         string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	app_catalog_listings: {
		publisher_type?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:   string
		publisher_name?: string
	}
	image: image_id!: string
	public_ip_pools: {
		display_name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		byoip_range_id?: string
		compartment_id!: string
	}
	virtual_circuit_associated_tunnels: {
		virtual_circuit_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	volume_attachments: {
		compartment_id!: string
		instance_id?:    string
		volume_id?:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
	}
	capture_filters: {
		filter_type?: string
		state?:       string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
	}
	instance_maintenance_reboot: instance_id!: string
	instance_pools: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	ip_inventory_vcn_overlaps: {
		region_list!: [...string]
		vcn_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_list!: [...string]
	}
	network_security_group: network_security_group_id!: string
	services: filter?: [...{
		name!: string
		values!: [...string]
		regex?: *false | bool
	}]
	boot_volume_backups: {
		compartment_id!:               string
		display_name?:                 string
		source_boot_volume_backup_id?: string
		state?:                        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		boot_volume_id?: string
	}
	compute_capacity_reservation_instance_shapes: {
		compartment_id!: string
		display_name?:   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
	}
	drgs: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	instance_credentials: instance_id!: string
	letter_of_authority: cross_connect_id!: string
	shapes: {
		image_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
	}
	volume_backup_policies: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
	}
	compute_capacity_reservation_instances: {
		compartment_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?:     string
		capacity_reservation_id!: string
	}
	compute_global_image_capability_schema: compute_global_image_capability_schema_id!: string
	console_histories: {
		instance_id?: string
		state?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id!:      string
	}
	subnet: subnet_id!: string
	virtual_circuits: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	cpe_device_shapes: filter?: [...{
		regex?: *false | bool
		name!:  string
		values!: [...string]
	}]
	dedicated_vm_host_shapes: {
		compartment_id!:      string
		instance_shape_name?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
	}
	ip_inventory_subnet: subnet_id!: string
	ipsec_connection_tunnels: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		ipsec_id!: string
	}
	peer_region_for_remote_peerings: filter?: [...{
		regex?: *false | bool
		name!:  string
		values!: [...string]
	}]
	boot_volume: boot_volume_id!: string
	compute_capacity_reservation: capacity_reservation_id!: string
	fast_connect_provider_service: provider_service_id!: string
	volume_group_replicas: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain!: string
		compartment_id!:      string
		display_name?:        string
		state?:               string
	}
	instances: {
		compartment_id!:     string
		compute_cluster_id?: string
		display_name?:       string
		state?:              string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?:     string
		capacity_reservation_id?: string
	}
	ipsec_connection_tunnel_error: {
		ipsec_id!:  string
		tunnel_id!: string
	}
	private_ip: private_ip_id!: string
	tunnel_security_associations: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		ipsec_id!:  string
		tunnel_id!: string
	}
	compute_global_image_capability_schemas: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
	}
	compute_image_capability_schemas: {
		image_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
	}
	vtap: vtap_id!: string
	compute_capacity_topology: compute_capacity_topology_id!: string
	cross_connect_port_speed_shapes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	drg_route_distribution_statements: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		drg_route_distribution_id!: string
	}
	instance_console_connections: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		instance_id?:    string
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
	instance_maintenance_event: instance_maintenance_event_id!: string
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
	compute_global_image_capability_schemas_version: {
		compute_global_image_capability_schema_id!:           string
		compute_global_image_capability_schema_version_name!: string
	}
	volume_backups: {
		display_name?:            string
		source_volume_backup_id?: string
		state?:                   string
		volume_id?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	byoip_allocated_ranges: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		byoip_range_id!: string
	}
	byoip_range: byoip_range_id!: string
	compute_cluster: compute_cluster_id!: string
	vlans: {
		state?:  string
		vcn_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
	volume_group_replica: volume_group_replica_id!: string
	app_catalog_subscriptions: {
		listing_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	compute_capacity_topology_compute_hpc_islands: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?:          string
		compartment_id?:               string
		compute_capacity_topology_id!: string
	}
	compute_image_capability_schema: {
		compute_image_capability_schema_id!: string
		is_merge_enabled?:                   string
	}
	cross_connect_groups: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	instance_configurations: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	ipsec_connection_tunnel: {
		tunnel_id!: string
		ipsec_id!:  string
	}
	ipv6s: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		ip_address?: string
		subnet_id?:  string
		vnic_id?:    string
	}
	subnets: {
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
	app_catalog_listing: listing_id!: string
	cross_connect: cross_connect_id!: string
	instance: instance_id!: string
	vnic: vnic_id!: string
	volumes: {
		availability_domain?:        string
		cluster_placement_group_id?: string
		compartment_id?:             string
		display_name?:               string
		state?:                      string
		volume_group_id?:            string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	dedicated_vm_hosts_instances: {
		availability_domain?:  string
		compartment_id!:       string
		dedicated_vm_host_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	dhcp_options: {
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
	drg_route_table_route_rules: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		drg_route_table_id!: string
		route_type?:         string
	}
	images: {
		shape?:                    string
		sort_order?:               string
		compartment_id!:           string
		operating_system_version?: string
		sort_by?:                  string
		operating_system?:         string
		display_name?:             string
		state?:                    string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	remote_peering_connections: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		drg_id?:         string
	}
	volume_group_backups: {
		display_name?:    string
		volume_group_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	drg_route_tables: {
		drg_id!:                           string
		import_drg_route_distribution_id?: string
		state?:                            string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?: string
	}
	fast_connect_provider_services: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	image_shape: {
		image_id!:   string
		shape_name!: string
	}
	ipsec_algorithm: {}
	private_ips: {
		subnet_id?: string
		vlan_id?:   string
		vnic_id?:   string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		ip_address?: string
	}
	virtual_circuit_bandwidth_shapes: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		provider_service_id!: string
	}
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
	cluster_networks: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	dedicated_vm_host: dedicated_vm_host_id!: string
	instance_configuration: instance_configuration_id!: string
	ipsec_status: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		ipsec_id!: string
	}
	boot_volume_replicas: {
		volume_group_replica_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
		compartment_id?:      string
		display_name?:        string
		state?:               string
	}
	drg_route_distributions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
		drg_id!:       string
		state?:        string
	}
	internet_gateways: {
		vcn_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	nat_gateway: nat_gateway_id!: string
	route_tables: {
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
	compute_clusters: {
		display_name?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain?: string
		compartment_id!:      string
	}
	console_history_data: {
		offset?:             int
		console_history_id!: string
		length?:             int
	}
	drg_route_table: drg_route_table_id!: string
	ipsec_config: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		ipsec_id!: string
	}
	vcn: vcn_id!: string
	block_volume_replica: block_volume_replica_id!: string
	boot_volume_backup: boot_volume_backup_id!: string
	cross_connect_group: cross_connect_group_id!: string
	cross_connect_status: cross_connect_id!: string
	drg_attachments: {
		drg_id?:       string
		display_name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		drg_route_table_id?: string
		state?:              string
		compartment_id!:     string
		vcn_id?:             string
		network_id?:         string
		attachment_type?:    string
	}
	image_shapes: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		image_id!: string
	}
	instance_measured_boot_report: instance_id!: string
	ipsec_connections: {
		cpe_id?: string
		drg_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	network_security_group_security_rules: {
		network_security_group_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		direction?: string
	}
	volume_backup_policy_assignments: {
		asset_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	app_catalog_listing_resource_version: {
		listing_id!:       string
		resource_version!: string
	}
	compute_capacity_topology_compute_bare_metal_hosts: {
		availability_domain?:          string
		compartment_id?:               string
		compute_capacity_topology_id!: string
		compute_hpc_island_id?:        string
		compute_local_block_id?:       string
		compute_network_block_id?:     string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	ipsec_connection_tunnel_routes: {
		ipsec_id!:  string
		tunnel_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		advertiser?: string
	}
	nat_gateways: {
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
	security_lists: {
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
	vcns: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
}

