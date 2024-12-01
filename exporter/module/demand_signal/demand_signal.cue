package demand_signal

#resource: {
	attributes: occ_demand_signal: {
		lifecycle_details:     string
		state:                 string
		time_created:          string
		time_updated:          string
		occ_demand_signal_id?: string
		freeform_tags?: [_]: string
		defined_tags?: [_]: string
		display_name?: string
		system_tags: [_]: string
		is_active!: bool
		occ_demand_signals!: [...{
			resource_type!: string
			units!:         string
			values!: [...{
				time_expected!: string
				value!:         float
				comments?:      string
			}]
		}]
		compartment_id!: string
		patch_operations?: [...{
			value!:         _
			position?:      string
			selected_item?: string
			from!:          string
			operation!:     string
			selection!:     string
		}]
	}
	arguments: occ_demand_signal: {
		occ_demand_signal_id?: string
		freeform_tags?: [_]: string
		patch_operations?: [...{
			operation!:     string
			selection!:     string
			value!:         _
			position?:      string
			selected_item?: string
			from!:          string
		}]
		is_active!: bool
		occ_demand_signals!: [...{
			resource_type!: string
			units!:         string
			values!: [...{
				value!:         float
				comments?:      string
				time_expected!: string
			}]
		}]
		defined_tags?: [_]: string
		display_name?:   string
		compartment_id!: string
	}
}
#data: {
	occ_demand_signal: occ_demand_signal_id!: string
	occ_demand_signals: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
	}
}

