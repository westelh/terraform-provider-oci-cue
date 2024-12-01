package events

#resource: {
	attributes: rule: {
		condition!:    string
		display_name!: string
		freeform_tags?: [_]: string
		lifecycle_message: string
		is_enabled!:       bool
		compartment_id!:   string
		defined_tags?: [_]: string
		description?: string
		actions!: [...{
			actions!: [...{
				id: string, stream_id?: string, action_type!: string, is_enabled!: bool, description?: string, function_id?: string, topic_id?: string, lifecycle_message: string, state: string
			}]
		}]
		state:        string
		time_created: string
	}
	arguments: rule: {
		actions!: [...{
			actions!: [...{
				action_type!: string, is_enabled!: bool, description?: string, function_id?: string, stream_id?: string, topic_id?: string
			}]
		}]
		compartment_id!: string
		condition!:      string
		display_name!:   string
		is_enabled!:     bool
		defined_tags?: [_]: string
		description?: string
		freeform_tags?: [_]: string
	}
}
#data: {
	rules: {
		compartment_id!: string
		display_name?:   string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	rule: rule_id!: string
}

