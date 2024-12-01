package blockchain

#resource: {
	attributes: {
		blockchain_platform: {
			total_ocpu_capacity?: int
			replicas?: [...{
				ca_count?:      int
				console_count?: int
				proxy_count?:   int
			}]
			state:                string
			is_byol?:             bool
			compartment_id!:      string
			service_version:      string
			description?:         string
			compute_shape!:       string
			service_endpoint:     string
			load_balancer_shape?: string
			time_updated:         string
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
					host: string
					ocpu_allocation_param: [...{
						ocpu_allocation_number: float
					}]
					peer_key: string
					role:     string
					state:    string
					ad:       string
					alias:    string
				}]
			}]
			platform_shape_type: string
			platform_role!:      string
			storage_used_in_tbs: float
			display_name!:       string
			platform_version?:   string
			defined_tags?: [_]: string
			federated_user_id?:   string
			storage_size_in_tbs?: float
			host_ocpu_utilization_info: [...{
				host:                    string
				ocpu_capacity_number:    float
				ocpu_utilization_number: float
			}]
			idcs_access_token!: string
			freeform_tags?: [_]: string
			time_created:          string
			ca_cert_archive_text?: string
			lifecycle_details:     string
			is_multi_ad:           bool
		}
		osn: {
			blockchain_platform_id!: string
			ocpu_allocation_param?: [...{
				ocpu_allocation_number!: float
			}]
			osn_key: string
			state:   string
			ad!:     string
		}
		peer: {
			ocpu_allocation_param!: [...{
				ocpu_allocation_number!: float
			}]
			role!:                   string
			alias?:                  string
			host:                    string
			peer_key:                string
			state:                   string
			ad!:                     string
			blockchain_platform_id!: string
		}
	}
	arguments: {
		blockchain_platform: {
			compute_shape!:        string
			ca_cert_archive_text?: string
			federated_user_id?:    string
			total_ocpu_capacity?:  int
			replicas?: [...{
				ca_count?:      int
				console_count?: int
				proxy_count?:   int
			}]
			idcs_access_token!:   string
			load_balancer_shape?: string
			compartment_id!:      string
			defined_tags?: [_]: string
			platform_version?:    string
			storage_size_in_tbs?: float
			display_name!:        string
			platform_role!:       string
			freeform_tags?: [_]: string
			description?: string
			is_byol?:     bool
		}
		osn: {
			blockchain_platform_id!: string
			ocpu_allocation_param?: [...{
				ocpu_allocation_number!: float
			}]
			ad!: string
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
	blockchain_platform: blockchain_platform_id!: string
	blockchain_platform_patches: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		blockchain_platform_id!: string
	}
	blockchain_platforms: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
	osn: {
		osn_id!:                 string
		blockchain_platform_id!: string
	}
	osns: {
		blockchain_platform_id!: string
		display_name?:           string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	peer: {
		blockchain_platform_id!: string
		peer_id!:                string
	}
	peers: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		blockchain_platform_id!: string
		display_name?:           string
	}
}

