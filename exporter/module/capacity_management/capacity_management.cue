package capacity_management

#resource: {
	attributes: {
		occ_availability_catalog: {
			compartment_id!: string
			details: [...{
				date_final_customer_order:       string
				unit:                            string
				date_expected_capacity_handover: string
				resource_name:                   string
				resource_type:                   string
				system_tags: [_]: string
				available_quantity:       string
				total_available_quantity: string
				catalog_id:               string
				namespace:                string
				demanded_quantity:        string
				workload_type:            string
			}]
			state:        string
			time_created: string
			namespace!:   string
			defined_tags?: [_]: string
			metadata_details?: [...{
				format_version!: string
			}]
			base64encoded_catalog_details!: string
			description?:                   string
			lifecycle_details:              string
			occ_customer_group_id!:         string
			freeform_tags?: [_]: string
			time_updated:  string
			display_name!: string
			system_tags: [_]: string
			catalog_state: string
		}
		occ_capacity_request: {
			date_expected_capacity_handover!: string
			details!: [...{
				expected_handover_quantity?: string
				resource_name!:              string
				associated_occ_handover_resource_block_list?: [...{
					occ_handover_resource_block_id?: string
					handover_quantity?:              string
				}]
				availability_domain?:      string
				date_actual_handover?:     string
				date_expected_handover?:   string
				resource_type!:            string
				source_workload_type?:     string
				workload_type!:            string
				actual_handover_quantity?: string
				demand_quantity!:          string
			}]
			request_state?:               string
			occ_customer_group_id:        string
			compartment_id!:              string
			namespace!:                   string
			occ_availability_catalog_id!: string
			time_created:                 string
			state:                        string
			availability_domain?:         string
			display_name!:                string
			description?:                 string
			region!:                      string
			system_tags: [_]: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			patch_operations?: [...{
				from!:          string
				operation!:     string
				selection!:     string
				value!:         _
				position?:      string
				selected_item?: string
			}]
			request_type?:      string
			lifecycle_details?: string
			time_updated:       string
		}
		occ_customer_group: {
			time_updated:    string
			compartment_id!: string
			freeform_tags?: [_]: string
			status?:      string
			time_created: string
			customers_list?: [...{
				display_name!:         string
				tenancy_id!:           string
				description?:          string
				status?:               string
				occ_customer_group_id: string
			}]
			defined_tags?: [_]: string
			state: string
			system_tags: [_]: string
			display_name!:      string
			description?:       string
			lifecycle_details?: string
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
			base64encoded_catalog_details!: string
			description?:                   string
			occ_customer_group_id!:         string
			defined_tags?: [_]: string
			namespace!: string
			metadata_details?: [...{
				format_version!: string
			}]
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
		}
		occ_capacity_request: {
			request_type?: string
			description?:  string
			region!:       string
			details!: [...{
				source_workload_type?:       string
				expected_handover_quantity?: string
				resource_name!:              string
				actual_handover_quantity?:   string
				availability_domain?:        string
				workload_type!:              string
				date_actual_handover?:       string
				demand_quantity!:            string
				resource_type!:              string
				associated_occ_handover_resource_block_list?: [...{
					occ_handover_resource_block_id?: string
					handover_quantity?:              string
				}]
				date_expected_handover?: string
			}]
			date_expected_capacity_handover!: string
			defined_tags?: [_]: string
			request_state?: string
			namespace!:     string
			patch_operations?: [...{
				selection!:     string
				value!:         _
				position?:      string
				selected_item?: string
				from!:          string
				operation!:     string
			}]
			lifecycle_details?:           string
			compartment_id!:              string
			occ_availability_catalog_id!: string
			freeform_tags?: [_]: string
			availability_domain?: string
			display_name!:        string
		}
		occ_customer_group: {
			lifecycle_details?: string
			compartment_id!:    string
			defined_tags?: [_]: string
			status?: string
			customers_list?: [...{
				tenancy_id!:   string
				description?:  string
				status?:       string
				display_name!: string
			}]
			display_name!: string
			description?:  string
			freeform_tags?: [_]: string
		}
		occ_customer_group_occ_customer: {
			tenancy_id!:            string
			description?:           string
			status?:                string
			display_name!:          string
			occ_customer_group_id!: string
		}
	}
}
#data: {
	occ_capacity_request: occ_capacity_request_id!: string
	occ_customer_groups: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		status?:         string
	}
	internal_namespace_occ_overviews: {
		to?:            string
		workload_type?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:        string
		from?:                  string
		namespace!:             string
		occ_customer_group_id!: string
	}
	internal_occ_availability_catalogs: {
		namespace?:             string
		occ_customer_group_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		catalog_state?:  string
		compartment_id!: string
		display_name?:   string
		id?:             string
	}
	occ_availability_catalog: occ_availability_catalog_id!: string
	occ_availability_catalogs: {
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
	occ_handover_resource_blocks: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:                         string
		handover_date_greater_than_or_equal_to?: string
		handover_date_less_than_or_equal_to?:    string
		handover_resource_name?:                 string
		namespace?:                              string
		occ_handover_resource_block_id?:         string
	}
	occ_availability_catalog_content: occ_availability_catalog_id!: string
	occ_availability_catalog_occ_availabilities: {
		resource_type?: string
		workload_type?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		date_expected_capacity_handover?: string
		occ_availability_catalog_id!:     string
		resource_name?:                   string
	}
	occ_capacity_requests: {
		request_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:              string
		display_name?:                string
		id?:                          string
		namespace?:                   string
		occ_availability_catalog_id?: string
	}
	internal_occ_handover_resource_block_details: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		host_id?:                        string
		occ_handover_resource_block_id!: string
	}
	internal_occ_handover_resource_blocks: {
		handover_date_greater_than_or_equal_to?: string
		handover_date_less_than_or_equal_to?:    string
		namespace!:                              string
		compartment_id!:                         string
		handover_resource_name?:                 string
		occ_customer_group_id!:                  string
		occ_handover_resource_block_id?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	namespace_occ_overviews: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		from?:           string
		namespace!:      string
		to?:             string
		workload_type?:  string
	}
	occ_customer_group: occ_customer_group_id!: string
	occ_handover_resource_block_details: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		host_id?:                        string
		occ_handover_resource_block_id!: string
	}
}

