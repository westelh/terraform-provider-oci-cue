package delegate_access_control

#resource: {
	attributes: {
		delegation_control: {
			compartment_id!: string
			delegation_subscription_ids!: [...string]
			system_tags: [_]: string
			resource_type!: string
			freeform_tags?: [_]: string
			lifecycle_state_details: string
			description?:            string
			time_updated:            string
			num_approvals_required?: int
			pre_approved_service_provider_action_names?: [...string]
			is_auto_approve_during_maintenance?: bool
			vault_id?:                           string
			notification_topic_id!:              string
			defined_tags?: [_]: string
			vault_key_id?:                string
			state:                        string
			display_name!:                string
			notification_message_format!: string
			resource_ids!: [...string]
			time_created: string
			time_deleted: string
		}
		delegation_subscription: {
			description?:             string
			subscribed_service_type!: string
			compartment_id!:          string
			system_tags: [_]: string
			time_created: string
			freeform_tags?: [_]: string
			display_name:         string
			service_provider_id!: string
			defined_tags?: [_]: string
			lifecycle_state_details: string
			state:                   string
			time_updated:            string
		}
	}
	arguments: {
		delegation_control: {
			compartment_id!: string
			resource_ids!: [...string]
			freeform_tags?: [_]: string
			vault_id?:     string
			display_name!: string
			defined_tags?: [_]: string
			is_auto_approve_during_maintenance?: bool
			vault_key_id?:                       string
			notification_message_format!:        string
			resource_type!:                      string
			pre_approved_service_provider_action_names?: [...string]
			delegation_subscription_ids!: [...string]
			notification_topic_id!:  string
			num_approvals_required?: int
			description?:            string
		}
		delegation_subscription: {
			service_provider_id!: string
			description?:         string
			freeform_tags?: [_]: string
			compartment_id!:          string
			subscribed_service_type!: string
			defined_tags?: [_]: string
		}
	}
}
#data: {
	delegated_resource_access_request_audit_log_report: {
		is_process_tree_enabled?:              bool
		delegated_resource_access_request_id!: string
	}
	delegated_resource_access_requests: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		delegation_control_id?: string
		request_status?:        string
		resource_id?:           string
		time_end?:              string
		time_start?:            string
		compartment_id!:        string
		state?:                 string
	}
	delegation_control: delegation_control_id!: string
	delegation_controls: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		resource_id?:    string
		resource_type?:  string
	}
	delegation_subscription: delegation_subscription_id!: string
	service_providers: {
		service_provider_type?:   string
		state?:                   string
		supported_resource_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
	}
	delegated_resource_access_request: delegated_resource_access_request_id!: string
	delegation_control_resources: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		delegation_control_id!: string
	}
	delegation_subscriptions: {
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	service_provider: service_provider_id!: string
	service_provider_action: service_provider_action_id!: string
	service_provider_actions: {
		compartment_id!: string
		name?:           string
		resource_type?:  string
		service_provider_service_type?: [...string]
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	delegated_resource_access_request_histories: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		delegated_resource_access_request_id!: string
	}
}

