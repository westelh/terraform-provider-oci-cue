package service_mesh

#resource: {
	attributes: {
		mesh: {
			compartment_id!: string
			freeform_tags?: [_]: string
			mtls?: [...{
				minimum!: string
			}]
			state: string
			system_tags: [_]: string
			certificate_authorities!: [...{
				id!: string
			}]
			time_created:      string
			display_name!:     string
			description?:      string
			lifecycle_details: string
			time_updated:      string
			defined_tags?: [_]: string
		}
		virtual_deployment: {
			virtual_service_id!: string
			time_updated:        string
			description?:        string
			system_tags: [_]: string
			service_discovery?: [...{
				type!:     string
				hostname?: string
			}]
			listeners?: [...{
				port!:                  int
				protocol!:              string
				idle_timeout_in_ms?:    string
				request_timeout_in_ms?: string
			}]
			compartment_id!: string
			name!:           string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			time_created:      string
			state:             string
			lifecycle_details: string
			access_logging?: [...{
				is_enabled?: bool
			}]
		}
		virtual_service: {
			lifecycle_details: string
			time_updated:      string
			state:             string
			time_created:      string
			description?:      string
			compartment_id!:   string
			mesh_id!:          string
			hosts?: [...string]
			default_routing_policy?: [...{
				type!: string
			}]
			mtls?: [...{
				maximum_validity?: int
				certificate_id:    string
				mode!:             string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			name!: string
			system_tags: [_]: string
		}
		virtual_service_route_table: {
			freeform_tags?: [_]: string
			lifecycle_details: string
			time_created:      string
			description?:      string
			priority?:         int
			state:             string
			name!:             string
			route_rules!: [...{
				is_grpc?:               bool
				path?:                  string
				path_type?:             string
				request_timeout_in_ms?: string
				destinations!: [...{
					port?:                  int
					virtual_deployment_id!: string
					weight!:                int
				}]
				type!: string
			}]
			virtual_service_id!: string
			defined_tags?: [_]: string
			time_updated:    string
			compartment_id!: string
			system_tags: [_]: string
		}
		access_policy: {
			time_created: string
			time_updated: string
			state:        string
			system_tags: [_]: string
			description?: string
			freeform_tags?: [_]: string
			lifecycle_details: string
			compartment_id!:   string
			mesh_id!:          string
			rules!: [...{
				action!: string
				destination!: [...{
					hostnames?: [...string]
					ingress_gateway_id?: string
					ip_addresses?: [...string]
					ports?: [...int]
					protocol?:           string
					virtual_service_id?: string
					type!:               string
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
			}]
			defined_tags?: [_]: string
			name!: string
		}
		ingress_gateway: {
			mtls?: [...{
				maximum_validity?: int
				certificate_id:    string
			}]
			access_logging?: [...{
				is_enabled?: bool
			}]
			defined_tags?: [_]: string
			description?:      string
			time_created:      string
			name!:             string
			lifecycle_details: string
			freeform_tags?: [_]: string
			state: string
			hosts!: [...{
				listeners!: [...{
					tls?: [...{
						mode!: string
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
					}]
					port!:     int
					protocol!: string
				}]
				name!: string
				hostnames?: [...string]
			}]
			system_tags: [_]: string
			mesh_id!:        string
			compartment_id!: string
			time_updated:    string
		}
		ingress_gateway_route_table: {
			priority?: int
			state:     string
			system_tags: [_]: string
			ingress_gateway_id!: string
			route_rules!: [...{
				is_host_rewrite_enabled?: bool
				request_timeout_in_ms?:   string
				ingress_gateway_host?: [...{
					name!: string
					port?: int
				}]
				is_grpc?: bool
				destinations!: [...{
					port?:               int
					weight?:             int
					virtual_service_id!: string
				}]
				type!:                    string
				is_path_rewrite_enabled?: bool
				path?:                    string
				path_type?:               string
			}]
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			compartment_id!:   string
			time_created:      string
			lifecycle_details: string
			time_updated:      string
			name!:             string
		}
	}
	arguments: {
		mesh: {
			mtls?: [...{
				minimum!: string
			}]
			certificate_authorities!: [...{
				id!: string
			}]
			display_name!:   string
			compartment_id!: string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
		}
		virtual_deployment: {
			name!: string
			defined_tags?: [_]: string
			description?: string
			service_discovery?: [...{
				type!:     string
				hostname?: string
			}]
			listeners?: [...{
				port!:                  int
				protocol!:              string
				idle_timeout_in_ms?:    string
				request_timeout_in_ms?: string
			}]
			freeform_tags?: [_]: string
			compartment_id!: string
			access_logging?: [...{
				is_enabled?: bool
			}]
			virtual_service_id!: string
		}
		virtual_service: {
			hosts?: [...string]
			default_routing_policy?: [...{
				type!: string
			}]
			freeform_tags?: [_]: string
			name!: string
			mtls?: [...{
				maximum_validity?: int
				mode!:             string
			}]
			defined_tags?: [_]: string
			description?:    string
			compartment_id!: string
			mesh_id!:        string
		}
		virtual_service_route_table: {
			name!: string
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
			virtual_service_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			priority?:       int
			compartment_id!: string
			description?:    string
		}
		access_policy: {
			freeform_tags?: [_]: string
			compartment_id!: string
			mesh_id!:        string
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
					protocol?:           string
					virtual_service_id?: string
					type!:               string
					hostnames?: [...string]
					ingress_gateway_id?: string
					ip_addresses?: [...string]
					ports?: [...int]
				}]
				action!: string
			}]
			defined_tags?: [_]: string
			name!:        string
			description?: string
		}
		ingress_gateway: {
			mtls?: [...{
				maximum_validity?: int
			}]
			access_logging?: [...{
				is_enabled?: bool
			}]
			defined_tags?: [_]: string
			description?:    string
			name!:           string
			compartment_id!: string
			freeform_tags?: [_]: string
			hosts!: [...{
				hostnames?: [...string]
				listeners!: [...{
					protocol!: string
					tls?: [...{
						mode!: string
						client_validation?: [...{
							trusted_ca_bundle?: [...{
								ca_bundle_id?: string
								secret_name?:  string
								type!:         string
							}]
							subject_alternate_names?: [...string]
						}]
						server_certificate?: [...{
							type!:           string
							certificate_id?: string
							secret_name?:    string
						}]
					}]
					port!: int
				}]
				name!: string
			}]
			mesh_id!: string
		}
		ingress_gateway_route_table: {
			ingress_gateway_id!: string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			priority?:       int
			compartment_id!: string
			name!:           string
			route_rules!: [...{
				is_host_rewrite_enabled?: bool
				type!:                    string
				path?:                    string
				path_type?:               string
				ingress_gateway_host?: [...{
					name!: string
					port?: int
				}]
				is_grpc?:               bool
				request_timeout_in_ms?: string
				destinations!: [...{
					virtual_service_id!: string
					port?:               int
					weight?:             int
				}]
				is_path_rewrite_enabled?: bool
			}]
		}
	}
}
#data: {
	access_policies: {
		mesh_id?: string
		name?:    string
		state?:   string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		id?:             string
	}
	ingress_gateway: ingress_gateway_id!: string
	ingress_gateway_route_table: ingress_gateway_route_table_id!: string
	ingress_gateway_route_tables: {
		id?:                 string
		ingress_gateway_id?: string
		name?:               string
		state?:              string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
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
	proxy_detail: {}
	access_policy: access_policy_id!: string
	meshes: {
		display_name?: string
		id?:           string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	virtual_service_route_table: virtual_service_route_table_id!: string
	mesh: mesh_id!: string
	virtual_deployment: virtual_deployment_id!: string
	virtual_deployments: {
		virtual_service_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		id?:             string
		name?:           string
		state?:          string
	}
	virtual_service: virtual_service_id!: string
	virtual_service_route_tables: {
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
	virtual_services: {
		compartment_id!: string
		id?:             string
		mesh_id?:        string
		name?:           string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
}

