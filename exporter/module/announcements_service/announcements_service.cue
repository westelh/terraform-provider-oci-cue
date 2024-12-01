package announcements_service

#resource: {
	attributes: {
		announcement_subscription: {
			freeform_tags?: [_]: string
			description?:         string
			state:                string
			time_created:         string
			preferred_time_zone?: string
			lifecycle_details:    string
			compartment_id!:      string
			preferred_language?:  string
			defined_tags?: [_]: string
			display_name!: string
			ons_topic_id!: string
			system_tags: [_]: string
			time_updated: string
			filter_groups?: [...{
				filters!: [...{
					value!: string
					type!:  string
				}]
				name: string
			}]
		}
		announcement_subscriptions_actions_change_compartment: {
			compartment_id!:               string
			announcement_subscription_id!: string
		}
		announcement_subscriptions_filter_group: {
			announcement_subscription_id!: string
			filters!: [...{
				type!:  string
				value!: string
			}]
			name!: string
		}
	}
	arguments: {
		announcement_subscription: {
			compartment_id!:      string
			display_name!:        string
			preferred_time_zone?: string
			ons_topic_id!:        string
			description?:         string
			preferred_language?:  string
			freeform_tags?: [_]: string
			filter_groups?: [...{
				filters!: [...{
					type!: string, value!: string
				}]
			}]
			defined_tags?: [_]: string
		}
		announcement_subscriptions_actions_change_compartment: {
			announcement_subscription_id!: string
			compartment_id!:               string
		}
		announcement_subscriptions_filter_group: {
			name!:                         string
			announcement_subscription_id!: string
			filters!: [...{
				type!:  string
				value!: string
			}]
		}
	}
}
#data: {
	announcement_subscription: announcement_subscription_id!: string
	announcement_subscriptions: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	services: {
		platform_type?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		comms_manager_name?: string
		compartment_id!:     string
	}
}

