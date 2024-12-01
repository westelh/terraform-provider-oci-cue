package monitoring

#resource: {
	attributes: {
		alarm: {
			notification_title?: string
			time_updated:        string
			body?:               string
			resolution?:         string
			query!:              string
			suppression?: [...{
				time_suppress_until!: string
				description?:         string
				time_suppress_from!:  string
			}]
			alarm_summary?:    string
			namespace!:        string
			severity!:         string
			time_created:      string
			compartment_id!:   string
			pending_duration?: string
			overrides?: [...{
				rule_name?:        string
				severity?:         string
				body?:             string
				pending_duration?: string
				query?:            string
			}]
			repeat_notification_duration?: string
			metric_compartment_id!:        string
			rule_name?:                    string
			message_format?:               string
			freeform_tags?: [_]: string
			metric_compartment_id_in_subtree?: bool
			display_name!:                     string
			destinations!: [...string]
			is_enabled!:           bool
			resource_group?:       string
			notification_version?: string
			defined_tags?: [_]: string
			evaluation_slack_duration?:                     string
			is_notifications_per_metric_dimension_enabled?: bool
			state:                                          string
		}
		alarm_suppression: {
			compartment_id:       string
			level?:               string
			time_suppress_until!: string
			state:                string
			time_suppress_from!:  string
			description?:         string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			time_created: string
			alarm_suppression_target!: [...{
				target_type!:               string
				alarm_id?:                  string
				compartment_id?:            string
				compartment_id_in_subtree?: bool
			}]
			time_updated: string
			dimensions?: [_]: string
			suppression_conditions?: [...{
				suppression_duration!:   string
				suppression_recurrence!: string
				condition_type!:         string
			}]
			display_name!: string
		}
	}
	arguments: {
		alarm: {
			pending_duration?: string
			overrides?: [...{
				body?:             string
				pending_duration?: string
				query?:            string
				rule_name?:        string
				severity?:         string
			}]
			metric_compartment_id!:     string
			evaluation_slack_duration?: string
			defined_tags?: [_]: string
			message_format?: string
			resource_group?: string
			rule_name?:      string
			destinations!: [...string]
			suppression?: [...{
				time_suppress_from!:  string
				time_suppress_until!: string
				description?:         string
			}]
			notification_version?:             string
			repeat_notification_duration?:     string
			metric_compartment_id_in_subtree?: bool
			notification_title?:               string
			display_name!:                     string
			alarm_summary?:                    string
			is_enabled!:                       bool
			query!:                            string
			freeform_tags?: [_]: string
			body?:                                          string
			is_notifications_per_metric_dimension_enabled?: bool
			resolution?:                                    string
			severity!:                                      string
			compartment_id!:                                string
			namespace!:                                     string
		}
		alarm_suppression: {
			time_suppress_until!: string
			defined_tags?: [_]: string
			display_name!: string
			suppression_conditions?: [...{
				condition_type!:         string
				suppression_duration!:   string
				suppression_recurrence!: string
			}]
			alarm_suppression_target!: [...{
				compartment_id?:            string
				compartment_id_in_subtree?: bool
				target_type!:               string
				alarm_id?:                  string
			}]
			level?:              string
			time_suppress_from!: string
			description?:        string
			dimensions?: [_]: string
			freeform_tags?: [_]: string
		}
	}
}
#data: {
	metrics: {
		group_by?: [...string]
		namespace?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		name?:                      string
		resource_group?:            string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		dimension_filters?: [_]: string
	}
	alarm: alarm_id!: string
	alarm_history_collection: {
		timestamp_less_than?:                string
		alarm_historytype?:                  string
		alarm_id!:                           string
		timestamp_greater_than_or_equal_to?: string
	}
	alarm_statuses: {
		compartment_id!: string
		entity_id?:      string
		display_name?:   string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id_in_subtree?: bool
		resource_id?:               string
		service_name?:              string
		status?:                    string
	}
	alarm_suppression: alarm_suppression_id!: string
	alarm_suppressions: {
		alarm_id?:                  string
		compartment_id?:            string
		level?:                     string
		target_type?:               string
		state?:                     string
		is_all_suppressions?:       bool
		compartment_id_in_subtree?: bool
		display_name?:              string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	alarms: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
		state?:                     string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	metric_data: {
		start_time?:     string
		compartment_id!: string
		end_time?:       string
		resolution?:     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		query!:                     string
		resource_group?:            string
		namespace!:                 string
		compartment_id_in_subtree?: bool
	}
}

