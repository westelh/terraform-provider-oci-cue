package autoscaling

#resource: {
	attributes: auto_scaling_configuration: {
		min_resource_count: int
		auto_scaling_resources!: [...{
			id!:   string
			type!: string
		}]
		policies!: [...{
			rules?: [...{
				id:            string
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
			display_name?: string
			id:            string
			is_enabled?:   bool
			capacity?: [...{
				initial?: int
				max?:     int
				min?:     int
			}]
			execution_schedule?: [...{
				timezone!:   string
				type!:       string
				expression!: string
			}]
			time_created: string
			policy_type!: string
			resource_action?: [...{
				action!:      string
				action_type!: string
			}]
		}]
		cool_down_in_seconds?: int
		compartment_id!:       string
		max_resource_count:    int
		display_name?:         string
		freeform_tags?: [_]: string
		is_enabled?:  bool
		time_created: string
		defined_tags?: [_]: string
	}
	arguments: auto_scaling_configuration: {
		compartment_id!: string
		defined_tags?: [_]: string
		display_name?: string
		auto_scaling_resources!: [...{
			type!: string
			id!:   string
		}]
		policies!: [...{
			execution_schedule?: [...{
				expression!: string
				timezone!:   string
				type!:       string
			}]
			is_enabled?: bool
			rules?: [...{
				metric?: [...{
					threshold?: [...{
						operator?: string
						value?:    int
					}]
					metric_type?: string
				}]
				display_name!: string
				action?: [...{
					type?:  string
					value?: int
				}]
			}]
			policy_type!: string
			resource_action?: [...{
				action_type!: string
				action!:      string
			}]
			capacity?: [...{
				min?:     int
				initial?: int
				max?:     int
			}]
			display_name?: string
		}]
		cool_down_in_seconds?: int
		freeform_tags?: [_]: string
		is_enabled?: bool
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

