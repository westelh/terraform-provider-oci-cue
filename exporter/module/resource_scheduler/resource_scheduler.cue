package resource_scheduler

#resource: {
	attributes: schedule: {
		description?:  string
		display_name?: string
		resources?: [...{
			id!: string
			metadata?: [_]: string
		}]
		resource_filters?: [...{
			attribute!:                         string
			condition?:                         string
			should_include_child_compartments?: bool
			value?: [...{
				tag_key?:   string
				value?:     string
				namespace?: string
			}]
		}]
		recurrence_type!: string
		system_tags: [_]: string
		compartment_id!: string
		state?:          string
		time_last_run:   string
		action!:         string
		time_updated:    string
		time_next_run:   string
		freeform_tags?: [_]: string
		time_ends?:          string
		time_starts?:        string
		time_created:        string
		recurrence_details!: string
		defined_tags?: [_]: string
	}
	arguments: schedule: {
		time_ends?:      string
		state?:          string
		time_starts?:    string
		description?:    string
		display_name?:   string
		compartment_id!: string
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
		resources?: [...{
			metadata?: [_]: string
			id!: string
		}]
		action!:             string
		recurrence_details!: string
		resource_filters?: [...{
			attribute!:                         string
			condition?:                         string
			should_include_child_compartments?: bool
			value?: [...{
				value?:     string
				namespace?: string
				tag_key?:   string
			}]
		}]
		recurrence_type!: string
	}
}
#data: {
	schedule: schedule_id!: string
	schedules: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?: string
		display_name?:   string
		schedule_id?:    string
		state?:          string
	}
}

