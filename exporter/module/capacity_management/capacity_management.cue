package capacity_management

#resource: {
	attributes: {
		occ_availability_catalog: {
			namespace!:                     string
			base64encoded_catalog_details!: string
			occ_customer_group_id!:         string
			lifecycle_details:              string
			defined_tags?: [_]: string
			description?: string
			metadata_details?: [...{
				format_version!: string
			}]
			catalog_state:   string
			compartment_id!: string
			freeform_tags?: [_]: string
			time_created:  string
			display_name!: string
			details: [...{
				resource_name:            string
				total_available_quantity: string
				available_quantity:       string
				resource_type:            string
				system_tags: [_]: string
				workload_type:                   string
				date_final_customer_order:       string
				catalog_id:                      string
				date_expected_capacity_handover: string
				demanded_quantity:               string
				namespace:                       string
				unit:                            string
			}]
			time_updated: string
			state:        string
			system_tags: [_]: string
		}
		occ_capacity_request: {
			occ_customer_group_id:            string
			state:                            string
			time_created:                     string
			time_updated:                     string
			availability_domain?:             string
			request_type?:                    string
			lifecycle_details?:               string
			date_expected_capacity_handover!: string
			compartment_id!:                  string
			region!:                          string
			details!: [...{
				date_expected_handover?:   string
				resource_type!:            string
				resource_name!:            string
				workload_type!:            string
				date_actual_handover?:     string
				actual_handover_quantity?: string
				associated_occ_handover_resource_block_list?: [...{
					handover_quantity?:              string
					occ_handover_resource_block_id?: string
				}]
				source_workload_type?:       string
				demand_quantity!:            string
				expected_handover_quantity?: string
				availability_domain?:        string
			}]
			system_tags: [_]: string
			namespace!:                   string
			occ_availability_catalog_id!: string
			defined_tags?: [_]: string
			request_state?: string
			display_name!:  string
			patch_operations?: [...{
				operation!:     string
				selection!:     string
				value!:         _|_
				position?:      string
				selected_item?: string
				from!:          string
			}]
			description?: string
			freeform_tags?: [_]: string
		}
		occ_customer_group: {
			system_tags: [_]: string
			display_name!:      string
			status?:            string
			description?:       string
			lifecycle_details?: string
			state:              string
			time_created:       string
			time_updated:       string
			customers_list?: [...{
				occ_customer_group_id: string
				display_name!:         string
				tenancy_id!:           string
				description?:          string
				status?:               string
			}]
			freeform_tags?: [_]: string
			compartment_id!: string
			defined_tags?: [_]: string
		}
		occ_customer_group_occ_customer: {
			display_name!:          string
			occ_customer_group_id!: string
			tenancy_id!:            string
			description?:           string
			status?:                string
		}
	}
	arguments: {
		occ_availability_catalog: {
			description?:                   string
			base64encoded_catalog_details!: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			namespace!:    string
			display_name!: string
			metadata_details?: [...{
				format_version!: string
			}]
			compartment_id!:        string
			occ_customer_group_id!: string
		}
		occ_capacity_request: {
			region!:                          string
			request_type?:                    string
			namespace!:                       string
			compartment_id!:                  string
			date_expected_capacity_handover!: string
			availability_domain?:             string
			lifecycle_details?:               string
			occ_availability_catalog_id!:     string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			request_state?: string
			details!: [...{
				expected_handover_quantity?: string
				workload_type!:              string
				availability_domain?:        string
				date_actual_handover?:       string
				source_workload_type?:       string
				associated_occ_handover_resource_block_list?: [...{
					handover_quantity?:              string
					occ_handover_resource_block_id?: string
				}]
				date_expected_handover?:   string
				demand_quantity!:          string
				resource_name!:            string
				resource_type!:            string
				actual_handover_quantity?: string
			}]
			display_name!: string
			patch_operations?: [...{
				from!:          string
				operation!:     string
				selection!:     string
				value!:         _|_
				position?:      string
				selected_item?: string
			}]
			description?: string
		}
		occ_customer_group: {
			lifecycle_details?: string
			compartment_id!:    string
			display_name!:      string
			freeform_tags?: [_]: string
			status?: string
			customers_list?: [...{
				description?:  string
				status?:       string
				display_name!: string
				tenancy_id!:   string
			}]
			defined_tags?: [_]: string
			description?: string
		}
		occ_customer_group_occ_customer: {
			description?:           string
			status?:                string
			display_name!:          string
			occ_customer_group_id!: string
			tenancy_id!:            string
		}
	}
}
#data: {
	internal_occ_handover_resource_blocks: {
		compartment_id!:                         string
		occ_customer_group_id!:                  string
		handover_date_greater_than_or_equal_to?: string
		handover_resource_name?:                 string
		handover_date_less_than_or_equal_to?:    string
		namespace!:                              string
		occ_handover_resource_block_id?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	occ_availability_catalog_content: occ_availability_catalog_id!: string
	occ_handover_resource_blocks: {
		handover_date_less_than_or_equal_to?: string
		handover_resource_name?:              string
		namespace?:                           string
		occ_handover_resource_block_id?:      string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?:                         string
		handover_date_greater_than_or_equal_to?: string
	}
	internal_occ_availability_catalogs: {
		occ_customer_group_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		catalog_state?:  string
		compartment_id!: string
		display_name?:   string
		id?:             string
		namespace?:      string
	}
	internal_occ_handover_resource_block_details: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		host_id?:                        string
		occ_handover_resource_block_id!: string
	}
	namespace_occ_overviews: {
		compartment_id!: string
		from?:           string
		namespace!:      string
		to?:             string
		workload_type?:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	occ_availability_catalog_occ_availabilities: {
		date_expected_capacity_handover?: string
		occ_availability_catalog_id!:     string
		resource_name?:                   string
		resource_type?:                   string
		workload_type?:                   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	occ_availability_catalogs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		catalog_state?:  string
		compartment_id!: string
		display_name?:   string
		id?:             string
		namespace?:      string
	}
	occ_capacity_requests: {
		occ_availability_catalog_id?: string
		request_type?:                string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		namespace?:      string
	}
	occ_customer_group: occ_customer_group_id!: string
	internal_namespace_occ_overviews: {
		from?:                  string
		namespace!:             string
		occ_customer_group_id!: string
		to?:                    string
		workload_type?:         string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	occ_customer_groups: {
		display_name?: string
		id?:           string
		status?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	occ_handover_resource_block_details: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		host_id?:                        string
		occ_handover_resource_block_id!: string
	}
	occ_availability_catalog: occ_availability_catalog_id!: string
	occ_capacity_request: occ_capacity_request_id!: string
}

