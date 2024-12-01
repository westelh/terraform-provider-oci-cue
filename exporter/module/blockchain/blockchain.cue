package blockchain

#resource: {
	attributes: {
		blockchain_platform: {
			storage_size_in_tbs?: float
			defined_tags?: [_]: string
			total_ocpu_capacity?: int
			service_endpoint:     string
			replicas?: [...{
				ca_count?:      int
				console_count?: int
				proxy_count?:   int
			}]
			platform_shape_type: string
			component_details: [...{
				osns: [...{
					state: string
					ad:    string
					ocpu_allocation_param: [...{
						ocpu_allocation_number: float
					}]
					osn_key: string
				}]
				peers: [...{
					role:  string
					state: string
					ad:    string
					alias: string
					host:  string
					ocpu_allocation_param: [...{
						ocpu_allocation_number: float
					}]
					peer_key: string
				}]
			}]
			compute_shape!:        string
			ca_cert_archive_text?: string
			storage_used_in_tbs:   float
			platform_version?:     string
			idcs_access_token!:    string
			platform_role!:        string
			is_byol?:              bool
			description?:          string
			state:                 string
			is_multi_ad:           bool
			display_name!:         string
			federated_user_id?:    string
			time_updated:          string
			load_balancer_shape?:  string
			compartment_id!:       string
			service_version:       string
			host_ocpu_utilization_info: [...{
				host:                    string
				ocpu_capacity_number:    float
				ocpu_utilization_number: float
			}]
			lifecycle_details: string
			time_created:      string
			freeform_tags?: [_]: string
		}
		osn: {
			ocpu_allocation_param?: [...{
				ocpu_allocation_number!: float
			}]
			osn_key:                 string
			state:                   string
			ad!:                     string
			blockchain_platform_id!: string
		}
		peer: {
			peer_key:                string
			state:                   string
			ad!:                     string
			blockchain_platform_id!: string
			ocpu_allocation_param!: [...{
				ocpu_allocation_number!: float
			}]
			role!:  string
			alias?: string
			host:   string
		}
	}
	arguments: {
		blockchain_platform: {
			compartment_id!: string
			replicas?: [...{
				ca_count?:      int
				console_count?: int
				proxy_count?:   int
			}]
			storage_size_in_tbs?:  float
			display_name!:         string
			platform_role!:        string
			ca_cert_archive_text?: string
			freeform_tags?: [_]: string
			load_balancer_shape?: string
			total_ocpu_capacity?: int
			idcs_access_token!:   string
			federated_user_id?:   string
			platform_version?:    string
			defined_tags?: [_]: string
			is_byol?:       bool
			description?:   string
			compute_shape!: string
		}
		osn: {
			ocpu_allocation_param?: [...{
				ocpu_allocation_number!: float
			}]
			ad!:                     string
			blockchain_platform_id!: string
		}
		peer: {
			ad!:                     string
			blockchain_platform_id!: string
			ocpu_allocation_param!: [...{
				ocpu_allocation_number!: float
			}]
			role!:  string
			alias?: string
		}
	}
}
#data: {
	osn: {
		blockchain_platform_id!: string
		osn_id!:                 string
	}
	osns: {
		display_name?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		blockchain_platform_id!: string
	}
	peer: {
		peer_id!:                string
		blockchain_platform_id!: string
	}
	peers: {
		display_name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		blockchain_platform_id!: string
	}
	blockchain_platform: blockchain_platform_id!: string
	blockchain_platform_patches: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		blockchain_platform_id!: string
	}
	blockchain_platforms: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
}

