package announcements_service

#resource: {
	attributes: {
		announcement_subscriptions_actions_change_compartment: {
			announcement_subscription_id!: string
			compartment_id!:               string
		}
		announcement_subscriptions_filter_group: {
			announcement_subscription_id!: string
			filters!: [...{
				type!:  string
				value!: string
			}]
			name!: string
		}
		announcement_subscription: {
			ons_topic_id!: string
			display_name!: string
			freeform_tags?: [_]: string
			lifecycle_details:    string
			description?:         string
			preferred_time_zone?: string
			preferred_language?:  string
			defined_tags?: [_]: string
			time_created:    string
			compartment_id!: string
			filter_groups?: [...{
				filters!: [...{
					type!:  string
					value!: string
				}]
				name: string
			}]
			time_updated: string
			state:        string
			system_tags: [_]: string
		}
	}
	arguments: {
		announcement_subscriptions_actions_change_compartment: {
			announcement_subscription_id!: string
			compartment_id!:               string
		}
		announcement_subscriptions_filter_group: {
			name!:                         string
			announcement_subscription_id!: string
			filters!: [...{
				value!: string
				type!:  string
			}]
		}
		announcement_subscription: {
			display_name!: string
			defined_tags?: [_]: string
			description?: string
			filter_groups?: [...{
				filters!: [...{
					value!: string, type!: string
				}]
			}]
			preferred_time_zone?: string
			ons_topic_id!:        string
			freeform_tags?: [_]: string
			preferred_language?: string
			compartment_id!:     string
		}
	}
}
#data: {
	announcement_subscription: announcement_subscription_id!: string
	announcement_subscriptions: {
		display_name?: string
		id?:           string
		state?:        string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	services: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		comms_manager_name?: string
		compartment_id!:     string
		platform_type?:      string
	}
}

