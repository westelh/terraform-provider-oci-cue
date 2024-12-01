package license_manager

#resource: {
	attributes: {
		configuration: {
			compartment_id!: string
			email_ids!: [...string]
			time_created: string
			time_updated: string
		}
		license_record: {
			state: string
			freeform_tags?: [_]: string
			product_id?: string
			defined_tags?: [_]: string
			time_created:        string
			is_unlimited!:       bool
			is_perpetual!:       bool
			support_end_date?:   string
			time_updated:        string
			display_name!:       string
			product_license_id!: string
			expiration_date?:    string
			system_tags: [_]: string
			license_count?:  int
			compartment_id:  string
			license_unit:    string
			product_license: string
		}
		product_license: {
			vendor_name?:                 string
			is_unlimited:                 bool
			total_license_units_consumed: float
			images?: [...{
				package_version!: string
				id:               string
				listing_name:     string
				publisher:        string
				listing_id!:      string
			}]
			total_license_record_count:  int
			time_created:                string
			time_updated:                string
			is_vendor_oracle!:           bool
			status_description:          string
			license_unit!:               string
			active_license_record_count: int
			state:                       string
			display_name!:               string
			status:                      string
			defined_tags?: [_]: string
			is_over_subscribed:              bool
			total_active_license_unit_count: int
			system_tags: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
		}
	}
	arguments: {
		configuration: {
			compartment_id!: string
			email_ids!: [...string]
		}
		license_record: {
			is_perpetual!: bool
			freeform_tags?: [_]: string
			support_end_date?:   string
			license_count?:      int
			display_name!:       string
			product_license_id!: string
			product_id?:         string
			defined_tags?: [_]: string
			expiration_date?: string
			is_unlimited!:    bool
		}
		product_license: {
			license_unit!:   string
			vendor_name?:    string
			compartment_id!: string
			images?: [...{
				listing_id!:      string
				package_version!: string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name!:     string
			is_vendor_oracle!: bool
		}
	}
}
#data: {
	configuration: compartment_id!: string
	license_record: license_record_id!: string
	product_license: product_license_id!: string
	product_licenses: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:               string
		is_compartment_id_in_subtree?: bool
	}
	top_utilized_resources: {
		compartment_id!:               string
		is_compartment_id_in_subtree?: bool
		resource_unit_type?:           string
	}
	license_metric: {
		compartment_id!:               string
		is_compartment_id_in_subtree?: bool
	}
	license_records: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		product_license_id!: string
	}
	product_license_consumers: {
		compartment_id!:               string
		is_compartment_id_in_subtree?: bool
		product_license_id!:           string
	}
	top_utilized_product_licenses: {
		compartment_id!:               string
		is_compartment_id_in_subtree?: bool
	}
}

