package demand_signal

#resource: {
	attributes: occ_demand_signal: {
		patch_operations?: [...{
			selected_item?: string
			from!:          string
			operation!:     string
			selection!:     string
			value!:         _|_
			position?:      string
		}]
		time_updated: string
		occ_demand_signals!: [...{
			units!: string
			values!: [...{
				comments?:      string
				time_expected!: string
				value!:         float
			}]
			resource_type!: string
		}]
		defined_tags?: [_]: string
		display_name?: string
		time_created:  string
		freeform_tags?: [_]: string
		lifecycle_details: string
		state:             string
		system_tags: [_]: string
		compartment_id!:       string
		occ_demand_signal_id?: string
		is_active!:            bool
	}
	arguments: occ_demand_signal: {
		occ_demand_signal_id?: string
		occ_demand_signals!: [...{
			resource_type!: string
			units!:         string
			values!: [...{
				time_expected!: string
				value!:         float
				comments?:      string
			}]
		}]
		defined_tags?: [_]: string
		display_name?:   string
		compartment_id!: string
		freeform_tags?: [_]: string
		patch_operations?: [...{
			selected_item?: string
			from!:          string
			operation!:     string
			selection!:     string
			value!:         _|_
			position?:      string
		}]
		is_active!: bool
	}
}
#data: {
	occ_demand_signal: occ_demand_signal_id!: string
	occ_demand_signals: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
	}
}

