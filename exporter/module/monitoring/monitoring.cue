package monitoring

#resource: {
	attributes: {
		alarm: {
			query!:     string
			namespace!: string
			destinations!: [...string]
			state:                             string
			metric_compartment_id_in_subtree?: bool
			resource_group?:                   string
			compartment_id!:                   string
			message_format?:                   string
			resolution?:                       string
			pending_duration?:                 string
			freeform_tags?: [_]: string
			time_created: string
			is_enabled!:  bool
			defined_tags?: [_]: string
			notification_version?:      string
			body?:                      string
			metric_compartment_id!:     string
			notification_title?:        string
			evaluation_slack_duration?: string
			suppression?: [...{
				description?:         string
				time_suppress_from!:  string
				time_suppress_until!: string
			}]
			time_updated: string
			severity!:    string
			overrides?: [...{
				body?:             string
				pending_duration?: string
				query?:            string
				rule_name?:        string
				severity?:         string
			}]
			is_notifications_per_metric_dimension_enabled?: bool
			display_name!:                                  string
			rule_name?:                                     string
			alarm_summary?:                                 string
			repeat_notification_duration?:                  string
		}
		alarm_suppression: {
			time_suppress_until!: string
			time_updated:         string
			defined_tags?: [_]: string
			description?:   string
			time_created:   string
			compartment_id: string
			state:          string
			suppression_conditions?: [...{
				condition_type!:         string
				suppression_duration!:   string
				suppression_recurrence!: string
			}]
			display_name!: string
			alarm_suppression_target!: [...{
				target_type!:               string
				alarm_id?:                  string
				compartment_id?:            string
				compartment_id_in_subtree?: bool
			}]
			time_suppress_from!: string
			freeform_tags?: [_]: string
			dimensions?: [_]: string
			level?: string
		}
	}
	arguments: {
		alarm: {
			namespace!:                                     string
			is_enabled!:                                    bool
			is_notifications_per_metric_dimension_enabled?: bool
			pending_duration?:                              string
			body?:                                          string
			metric_compartment_id!:                         string
			severity!:                                      string
			evaluation_slack_duration?:                     string
			compartment_id!:                                string
			destinations!: [...string]
			defined_tags?: [_]: string
			suppression?: [...{
				description?:         string
				time_suppress_from!:  string
				time_suppress_until!: string
			}]
			query!:                string
			resource_group?:       string
			resolution?:           string
			notification_version?: string
			alarm_summary?:        string
			freeform_tags?: [_]: string
			metric_compartment_id_in_subtree?: bool
			message_format?:                   string
			overrides?: [...{
				rule_name?:        string
				severity?:         string
				body?:             string
				pending_duration?: string
				query?:            string
			}]
			repeat_notification_duration?: string
			display_name!:                 string
			notification_title?:           string
			rule_name?:                    string
		}
		alarm_suppression: {
			suppression_conditions?: [...{
				suppression_recurrence!: string
				condition_type!:         string
				suppression_duration!:   string
			}]
			freeform_tags?: [_]: string
			time_suppress_until!: string
			time_suppress_from!:  string
			display_name!:        string
			alarm_suppression_target!: [...{
				alarm_id?:                  string
				compartment_id?:            string
				compartment_id_in_subtree?: bool
				target_type!:               string
			}]
			defined_tags?: [_]: string
			dimensions?: [_]: string
			level?:       string
			description?: string
		}
	}
}
#data: {
	alarms: {
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
		state?:                     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	metric_data: {
		compartment_id!:            string
		resolution?:                string
		end_time?:                  string
		namespace!:                 string
		resource_group?:            string
		start_time?:                string
		query!:                     string
		compartment_id_in_subtree?: bool
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	metrics: {
		compartment_id!: string
		group_by?: [...string]
		name?:           string
		namespace?:      string
		resource_group?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
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
		compartment_id_in_subtree?: bool
		display_name?:              string
		entity_id?:                 string
		resource_id?:               string
		service_name?:              string
		status?:                    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	alarm_suppression: alarm_suppression_id!: string
	alarm_suppressions: {
		display_name?:        string
		level?:               string
		is_all_suppressions?: bool
		state?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		alarm_id?:                  string
		target_type?:               string
		compartment_id?:            string
		compartment_id_in_subtree?: bool
	}
}

