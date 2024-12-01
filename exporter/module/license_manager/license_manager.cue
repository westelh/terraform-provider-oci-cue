package license_manager

#resource: {
	attributes: {
		product_license: {
			time_updated:                 string
			active_license_record_count:  int
			vendor_name?:                 string
			total_license_record_count:   int
			total_license_units_consumed: float
			is_unlimited:                 bool
			status_description:           string
			images?: [...{
				listing_name:     string
				publisher:        string
				listing_id!:      string
				package_version!: string
				id:               string
			}]
			system_tags: [_]: string
			is_over_subscribed:              bool
			total_active_license_unit_count: int
			compartment_id!:                 string
			display_name!:                   string
			time_created:                    string
			state:                           string
			status:                          string
			is_vendor_oracle!:               bool
			license_unit!:                   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
		}
		configuration: {
			compartment_id!: string
			email_ids!: [...string]
			time_created: string
			time_updated: string
		}
		license_record: {
			time_updated:      string
			support_end_date?: string
			is_perpetual!:     bool
			compartment_id:    string
			system_tags: [_]: string
			license_count?: int
			freeform_tags?: [_]: string
			product_license_id!: string
			display_name!:       string
			expiration_date?:    string
			is_unlimited!:       bool
			defined_tags?: [_]: string
			state:           string
			product_id?:     string
			product_license: string
			time_created:    string
			license_unit:    string
		}
	}
	arguments: {
		product_license: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name!: string
			images?: [...{
				listing_id!:      string
				package_version!: string
			}]
			vendor_name?:      string
			is_vendor_oracle!: bool
			compartment_id!:   string
			license_unit!:     string
		}
		configuration: {
			email_ids!: [...string]
			compartment_id!: string
		}
		license_record: {
			display_name!:    string
			expiration_date?: string
			is_unlimited!:    bool
			freeform_tags?: [_]: string
			license_count?:      int
			is_perpetual!:       bool
			product_id?:         string
			support_end_date?:   string
			product_license_id!: string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	product_licenses: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:               string
		is_compartment_id_in_subtree?: bool
	}
	top_utilized_product_licenses: {
		compartment_id!:               string
		is_compartment_id_in_subtree?: bool
	}
	top_utilized_resources: {
		compartment_id!:               string
		is_compartment_id_in_subtree?: bool
		resource_unit_type?:           string
	}
	configuration: compartment_id!: string
	license_metric: {
		compartment_id!:               string
		is_compartment_id_in_subtree?: bool
	}
	product_license: product_license_id!: string
	product_license_consumers: {
		product_license_id!:           string
		compartment_id!:               string
		is_compartment_id_in_subtree?: bool
	}
	license_record: license_record_id!: string
	license_records: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		product_license_id!: string
	}
}

