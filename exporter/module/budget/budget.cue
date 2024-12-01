package budget

#resource: {
	attributes: {
		alert_rule: {
			recipients?: string
			state:       string
			freeform_tags?: [_]: string
			version:      int
			time_updated: string
			time_created: string
			type!:        string
			defined_tags?: [_]: string
			display_name?:   string
			threshold!:      float
			budget_id!:      string
			message?:        string
			threshold_type!: string
			description?:    string
		}
		budget: {
			amount!:                 int
			forecasted_spend:        float
			description?:            string
			processing_period_type?: string
			reset_period!:           string
			freeform_tags?: [_]: string
			display_name?:          string
			time_created:           string
			version:                int
			target_compartment_id?: string
			targets?: [...string]
			budget_processing_period_start_offset?: int
			compartment_id!:                        string
			alert_rule_count:                       int
			start_date?:                            string
			actual_spend:                           float
			target_type?:                           string
			end_date?:                              string
			time_spend_computed:                    string
			defined_tags?: [_]: string
			state:        string
			time_updated: string
		}
	}
	arguments: {
		alert_rule: {
			message?:        string
			threshold_type!: string
			description?:    string
			type!:           string
			defined_tags?: [_]: string
			recipients?: string
			freeform_tags?: [_]: string
			budget_id!:    string
			threshold!:    float
			display_name?: string
		}
		budget: {
			amount!:                 int
			compartment_id!:         string
			start_date?:             string
			processing_period_type?: string
			target_type?:            string
			description?:            string
			targets?: [...string]
			budget_processing_period_start_offset?: int
			freeform_tags?: [_]: string
			end_date?:              string
			target_compartment_id?: string
			reset_period!:          string
			defined_tags?: [_]: string
			display_name?: string
		}
	}
}
#data: {
	alert_rule: {
		budget_id!:     string
		alert_rule_id!: string
	}
	alert_rules: {
		budget_id!:    string
		display_name?: string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	budget: budget_id!: string
	budgets: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		target_type?:    string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
}

