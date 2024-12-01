package service_mesh

#resource: {
	attributes: {
		ingress_gateway_route_table: {
			priority?:         int
			lifecycle_details: string
			state:             string
			system_tags: [_]: string
			ingress_gateway_id!: string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			time_created:    string
			time_updated:    string
			name!:           string
			route_rules!: [...{
				ingress_gateway_host?: [...{
					name!: string
					port?: int
				}]
				is_path_rewrite_enabled?: bool
				is_grpc?:                 bool
				is_host_rewrite_enabled?: bool
				path?:                    string
				type!:                    string
				destinations!: [...{
					virtual_service_id!: string
					port?:               int
					weight?:             int
				}]
				path_type?:             string
				request_timeout_in_ms?: string
			}]
		}
		mesh: {
			state:        string
			time_updated: string
			description?: string
			mtls?: [...{
				minimum!: string
			}]
			certificate_authorities!: [...{
				id!: string
			}]
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			system_tags: [_]: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			time_created:      string
		}
		virtual_deployment: {
			description?:    string
			compartment_id!: string
			access_logging?: [...{
				is_enabled?: bool
			}]
			freeform_tags?: [_]: string
			name!:        string
			time_updated: string
			time_created: string
			service_discovery?: [...{
				type!:     string
				hostname?: string
			}]
			system_tags: [_]: string
			defined_tags?: [_]: string
			state: string
			listeners?: [...{
				request_timeout_in_ms?: string
				port!:                  int
				protocol!:              string
				idle_timeout_in_ms?:    string
			}]
			virtual_service_id!: string
			lifecycle_details:   string
		}
		virtual_service: {
			system_tags: [_]: string
			time_updated:    string
			compartment_id!: string
			defined_tags?: [_]: string
			hosts?: [...string]
			freeform_tags?: [_]: string
			mtls?: [...{
				mode!:             string
				maximum_validity?: int
				certificate_id:    string
			}]
			state:             string
			description?:      string
			time_created:      string
			lifecycle_details: string
			name!:             string
			mesh_id!:          string
			default_routing_policy?: [...{
				type!: string
			}]
		}
		virtual_service_route_table: {
			route_rules!: [...{
				path?:                  string
				path_type?:             string
				request_timeout_in_ms?: string
				destinations!: [...{
					virtual_deployment_id!: string
					weight!:                int
					port?:                  int
				}]
				type!:    string
				is_grpc?: bool
			}]
			freeform_tags?: [_]: string
			time_updated:        string
			virtual_service_id!: string
			state:               string
			defined_tags?: [_]: string
			description?:      string
			priority?:         int
			lifecycle_details: string
			system_tags: [_]: string
			name!:           string
			time_created:    string
			compartment_id!: string
		}
		access_policy: {
			mesh_id!: string
			system_tags: [_]: string
			rules!: [...{
				destination!: [...{
					type!: string
					hostnames?: [...string]
					ingress_gateway_id?: string
					ip_addresses?: [...string]
					ports?: [...int]
					protocol?:           string
					virtual_service_id?: string
				}]
				source!: [...{
					virtual_service_id?: string
					type!:               string
					hostnames?: [...string]
					ingress_gateway_id?: string
					ip_addresses?: [...string]
					ports?: [...int]
					protocol?: string
				}]
				action!: string
			}]
			defined_tags?: [_]: string
			description?: string
			time_updated: string
			state:        string
			freeform_tags?: [_]: string
			lifecycle_details: string
			time_created:      string
			compartment_id!:   string
			name!:             string
		}
		ingress_gateway: {
			mtls?: [...{
				maximum_validity?: int
				certificate_id:    string
			}]
			mesh_id!: string
			freeform_tags?: [_]: string
			name!:        string
			time_created: string
			description?: string
			access_logging?: [...{
				is_enabled?: bool
			}]
			state: string
			hosts!: [...{
				name!: string
				hostnames?: [...string]
				listeners!: [...{
					port!:     int
					protocol!: string
					tls?: [...{
						mode!: string
						client_validation?: [...{
							subject_alternate_names?: [...string]
							trusted_ca_bundle?: [...{
								secret_name?:  string
								type!:         string
								ca_bundle_id?: string
							}]
						}]
						server_certificate?: [...{
							type!:           string
							certificate_id?: string
							secret_name?:    string
						}]
					}]
				}]
			}]
			defined_tags?: [_]: string
			compartment_id!: string
			system_tags: [_]: string
			lifecycle_details: string
			time_updated:      string
		}
	}
	arguments: {
		ingress_gateway_route_table: {
			ingress_gateway_id!: string
			freeform_tags?: [_]: string
			priority?: int
			name!:     string
			route_rules!: [...{
				type!:                    string
				path_type?:               string
				request_timeout_in_ms?:   string
				is_grpc?:                 bool
				is_path_rewrite_enabled?: bool
				ingress_gateway_host?: [...{
					name!: string
					port?: int
				}]
				is_host_rewrite_enabled?: bool
				path?:                    string
				destinations!: [...{
					virtual_service_id!: string
					port?:               int
					weight?:             int
				}]
			}]
			defined_tags?: [_]: string
			description?:    string
			compartment_id!: string
		}
		mesh: {
			mtls?: [...{
				minimum!: string
			}]
			description?: string
			freeform_tags?: [_]: string
			display_name!: string
			defined_tags?: [_]: string
			certificate_authorities!: [...{
				id!: string
			}]
			compartment_id!: string
		}
		virtual_deployment: {
			description?: string
			freeform_tags?: [_]: string
			name!: string
			listeners?: [...{
				idle_timeout_in_ms?:    string
				request_timeout_in_ms?: string
				port!:                  int
				protocol!:              string
			}]
			virtual_service_id!: string
			compartment_id!:     string
			access_logging?: [...{
				is_enabled?: bool
			}]
			defined_tags?: [_]: string
			service_discovery?: [...{
				hostname?: string
				type!:     string
			}]
		}
		virtual_service: {
			freeform_tags?: [_]: string
			mtls?: [...{
				mode!:             string
				maximum_validity?: int
			}]
			hosts?: [...string]
			compartment_id!: string
			defined_tags?: [_]: string
			description?: string
			mesh_id!:     string
			name!:        string
			default_routing_policy?: [...{
				type!: string
			}]
		}
		virtual_service_route_table: {
			defined_tags?: [_]: string
			description?:        string
			compartment_id!:     string
			virtual_service_id!: string
			freeform_tags?: [_]: string
			priority?: int
			name!:     string
			route_rules!: [...{
				path_type?:             string
				request_timeout_in_ms?: string
				destinations!: [...{
					weight!:                int
					port?:                  int
					virtual_deployment_id!: string
				}]
				type!:    string
				is_grpc?: bool
				path?:    string
			}]
		}
		access_policy: {
			description?: string
			freeform_tags?: [_]: string
			mesh_id!:        string
			compartment_id!: string
			name!:           string
			rules!: [...{
				action!: string
				destination!: [...{
					type!: string
					hostnames?: [...string]
					ingress_gateway_id?: string
					ip_addresses?: [...string]
					ports?: [...int]
					protocol?:           string
					virtual_service_id?: string
				}]
				source!: [...{
					protocol?:           string
					virtual_service_id?: string
					type!:               string
					hostnames?: [...string]
					ingress_gateway_id?: string
					ip_addresses?: [...string]
					ports?: [...int]
				}]
			}]
			defined_tags?: [_]: string
		}
		ingress_gateway: {
			freeform_tags?: [_]: string
			name!: string
			mtls?: [...{
				maximum_validity?: int
			}]
			defined_tags?: [_]: string
			access_logging?: [...{
				is_enabled?: bool
			}]
			mesh_id!:        string
			description?:    string
			compartment_id!: string
			hosts!: [...{
				listeners!: [...{
					port!:     int
					protocol!: string
					tls?: [...{
						client_validation?: [...{
							subject_alternate_names?: [...string]
							trusted_ca_bundle?: [...{
								ca_bundle_id?: string
								secret_name?:  string
								type!:         string
							}]
						}]
						server_certificate?: [...{
							secret_name?:    string
							type!:           string
							certificate_id?: string
						}]
						mode!: string
					}]
				}]
				name!: string
				hostnames?: [...string]
			}]
		}
	}
}
#data: {
	access_policies: {
		compartment_id!: string
		id?:             string
		mesh_id?:        string
		name?:           string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	ingress_gateway: ingress_gateway_id!: string
	ingress_gateways: {
		compartment_id!: string
		id?:             string
		mesh_id?:        string
		name?:           string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	virtual_service_route_tables: {
		name?:               string
		state?:              string
		virtual_service_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		id?:             string
	}
	access_policy: access_policy_id!: string
	proxy_detail: {}
	virtual_deployments: {
		id?:                 string
		name?:               string
		state?:              string
		virtual_service_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	virtual_service: virtual_service_id!: string
	ingress_gateway_route_table: ingress_gateway_route_table_id!: string
	meshes: {
		display_name?: string
		id?:           string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	virtual_service_route_table: virtual_service_route_table_id!: string
	virtual_services: {
		mesh_id?: string
		name?:    string
		state?:   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		id?:             string
	}
	ingress_gateway_route_tables: {
		ingress_gateway_id?: string
		name?:               string
		state?:              string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		id?:             string
	}
	mesh: mesh_id!: string
	virtual_deployment: virtual_deployment_id!: string
}

