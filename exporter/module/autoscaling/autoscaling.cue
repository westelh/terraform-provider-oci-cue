package autoscaling

#resource: {
	attributes: auto_scaling_configuration: {
		defined_tags?: [_]: string
		is_enabled?:        bool
		max_resource_count: int
		min_resource_count: int
		compartment_id!:    string
		time_created:       string
		auto_scaling_resources!: [...{
			id!:   string
			type!: string
		}]
		freeform_tags?: [_]: string
		cool_down_in_seconds?: int
		display_name?:         string
		policies!: [...{
			policy_type!: string
			rules?: [...{
				display_name!: string
				action?: [...{
					type?:  string
					value?: int
				}]
				metric?: [...{
					metric_type?: string
					threshold?: [...{
						value?:    int
						operator?: string
					}]
				}]
				id: string
			}]
			capacity?: [...{
				min?:     int
				initial?: int
				max?:     int
			}]
			execution_schedule?: [...{
				expression!: string
				timezone!:   string
				type!:       string
			}]
			is_enabled?: bool
			resource_action?: [...{
				action!:      string
				action_type!: string
			}]
			display_name?: string
			id:            string
			time_created:  string
		}]
	}
	arguments: auto_scaling_configuration: {
		auto_scaling_resources!: [...{
			id!:   string
			type!: string
		}]
		policies!: [...{
			is_enabled?: bool
			resource_action?: [...{
				action!:      string
				action_type!: string
			}]
			policy_type!:  string
			display_name?: string
			rules?: [...{
				display_name!: string
				action?: [...{
					type?:  string
					value?: int
				}]
				metric?: [...{
					metric_type?: string
					threshold?: [...{
						operator?: string
						value?:    int
					}]
				}]
			}]
			capacity?: [...{
				initial?: int
				max?:     int
				min?:     int
			}]
			execution_schedule?: [...{
				expression!: string
				timezone!:   string
				type!:       string
			}]
		}]
		defined_tags?: [_]: string
		freeform_tags?: [_]: string
		compartment_id!:       string
		cool_down_in_seconds?: int
		display_name?:         string
		is_enabled?:           bool
	}
}
#data: {
	auto_scaling_configuration: auto_scaling_configuration_id!: string
	auto_scaling_configurations: {
		display_name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
}

