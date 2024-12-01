package budget

#resource: {
	attributes: {
		alert_rule: {
			type!:           string
			message?:        string
			version:         int
			state:           string
			threshold!:      float
			threshold_type!: string
			budget_id!:      string
			recipients?:     string
			freeform_tags?: [_]: string
			time_created:  string
			display_name?: string
			defined_tags?: [_]: string
			description?: string
			time_updated: string
		}
		budget: {
			version:                int
			reset_period!:          string
			target_compartment_id?: string
			freeform_tags?: [_]: string
			state:                                  string
			time_created:                           string
			description?:                           string
			start_date?:                            string
			forecasted_spend:                       float
			end_date?:                              string
			time_updated:                           string
			time_spend_computed:                    string
			actual_spend:                           float
			budget_processing_period_start_offset?: int
			processing_period_type?:                string
			target_type?:                           string
			display_name?:                          string
			compartment_id!:                        string
			defined_tags?: [_]: string
			alert_rule_count: int
			amount!:          int
			targets?: [...string]
		}
	}
	arguments: {
		alert_rule: {
			threshold!:    float
			message?:      string
			budget_id!:    string
			type!:         string
			display_name?: string
			freeform_tags?: [_]: string
			recipients?:     string
			threshold_type!: string
			defined_tags?: [_]: string
			description?: string
		}
		budget: {
			amount!: int
			freeform_tags?: [_]: string
			processing_period_type?: string
			target_type?:            string
			defined_tags?: [_]: string
			compartment_id!:                        string
			start_date?:                            string
			budget_processing_period_start_offset?: int
			reset_period!:                          string
			end_date?:                              string
			targets?: [...string]
			target_compartment_id?: string
			display_name?:          string
			description?:           string
		}
	}
}
#data: {
	alert_rule: {
		alert_rule_id!: string
		budget_id!:     string
	}
	alert_rules: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		budget_id!:    string
		display_name?: string
		state?:        string
	}
	budget: budget_id!: string
	budgets: {
		target_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		state?:          string
	}
}

