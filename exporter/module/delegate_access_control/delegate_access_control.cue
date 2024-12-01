package delegate_access_control

#resource: {
	attributes: {
		delegation_control: {
			time_deleted: string
			delegation_subscription_ids!: [...string]
			vault_key_id?:           string
			description?:            string
			lifecycle_state_details: string
			notification_topic_id!:  string
			vault_id?:               string
			time_created:            string
			pre_approved_service_provider_action_names?: [...string]
			notification_message_format!: string
			compartment_id!:              string
			resource_ids!: [...string]
			state:         string
			display_name!: string
			freeform_tags?: [_]: string
			system_tags: [_]: string
			time_updated:                        string
			is_auto_approve_during_maintenance?: bool
			num_approvals_required?:             int
			resource_type!:                      string
			defined_tags?: [_]: string
		}
		delegation_subscription: {
			time_created:             string
			state:                    string
			service_provider_id!:     string
			subscribed_service_type!: string
			description?:             string
			time_updated:             string
			defined_tags?: [_]: string
			lifecycle_state_details: string
			freeform_tags?: [_]: string
			display_name: string
			system_tags: [_]: string
			compartment_id!: string
		}
	}
	arguments: {
		delegation_control: {
			freeform_tags?: [_]: string
			notification_topic_id!: string
			resource_type!:         string
			defined_tags?: [_]: string
			num_approvals_required?:             int
			vault_id?:                           string
			display_name!:                       string
			notification_message_format!:        string
			vault_key_id?:                       string
			description?:                        string
			is_auto_approve_during_maintenance?: bool
			compartment_id!:                     string
			pre_approved_service_provider_action_names?: [...string]
			delegation_subscription_ids!: [...string]
			resource_ids!: [...string]
		}
		delegation_subscription: {
			service_provider_id!:     string
			subscribed_service_type!: string
			description?:             string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			compartment_id!: string
		}
	}
}
#data: {
	delegation_controls: {
		resource_id?:   string
		resource_type?: string
		state?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
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
	delegated_resource_access_request_audit_log_report: {
		is_process_tree_enabled?:              bool
		delegated_resource_access_request_id!: string
	}
	delegated_resource_access_request_histories: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		delegated_resource_access_request_id!: string
	}
	delegated_resource_access_requests: {
		time_end?:   string
		time_start?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:        string
		delegation_control_id?: string
		request_status?:        string
		resource_id?:           string
		state?:                 string
	}
	delegation_control_resources: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		delegation_control_id!: string
	}
	service_provider: service_provider_id!: string
	service_provider_action: service_provider_action_id!: string
	service_provider_actions: {
		resource_type?: string
		service_provider_service_type?: [...string]
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		name?:           string
	}
	delegated_resource_access_request: delegated_resource_access_request_id!: string
	delegation_control: delegation_control_id!: string
	delegation_subscription: delegation_subscription_id!: string
	delegation_subscriptions: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
}

