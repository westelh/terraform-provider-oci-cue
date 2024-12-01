package operator_access_control

#resource: {
	attributes: {
		operator_control: {
			approver_groups_list!: [...string]
			operator_control_name!: string
			time_of_creation:       string
			description?:           string
			approvers_list?: [...string]
			system_message?: string
			approval_required_op_action_list: [...string]
			freeform_tags?: [_]: string
			number_of_approvers?: int
			pre_approved_op_action_list?: [...string]
			last_modified_info: string
			resource_type!:     string
			defined_tags?: [_]: string
			email_id_list?: [...string]
			state:                       string
			is_default_operator_control: bool
			time_of_modification:        string
			is_fully_pre_approved!:      bool
			compartment_id!:             string
			time_of_deletion:            string
		}
		operator_control_assignment: {
			assigner_id:   string
			error_message: string
			defined_tags?: [_]: string
			time_assignment_to?:                 string
			resource_name!:                      string
			comment?:                            string
			time_assignment_from?:               string
			error_code:                          int
			remote_syslog_server_port?:          int
			compartment_id!:                     string
			detachment_description:              string
			unassigner_id:                       string
			is_auto_approve_during_maintenance?: bool
			time_of_deletion:                    string
			is_log_forwarded?:                   bool
			operator_control_id!:                string
			remote_syslog_server_ca_cert?:       string
			lifecycle_details:                   string
			remote_syslog_server_address?:       string
			resource_type!:                      string
			op_control_name:                     string
			validate_assignment_trigger?:        int
			state:                               string
			resource_id!:                        string
			resource_compartment_id!:            string
			is_enforced_always!:                 bool
			time_of_assignment:                  string
			freeform_tags?: [_]: string
			is_hypervisor_log_forwarded?: bool
			is_default_assignment:        bool
		}
	}
	arguments: {
		operator_control: {
			freeform_tags?: [_]: string
			number_of_approvers?: int
			pre_approved_op_action_list?: [...string]
			compartment_id!: string
			approvers_list?: [...string]
			resource_type!: string
			email_id_list?: [...string]
			system_message?:        string
			operator_control_name!: string
			approver_groups_list!: [...string]
			defined_tags?: [_]: string
			is_fully_pre_approved!: bool
			description?:           string
		}
		operator_control_assignment: {
			time_assignment_from?:               string
			operator_control_id!:                string
			remote_syslog_server_port?:          int
			resource_name!:                      string
			resource_compartment_id!:            string
			is_log_forwarded?:                   bool
			is_auto_approve_during_maintenance?: bool
			remote_syslog_server_address?:       string
			defined_tags?: [_]: string
			is_hypervisor_log_forwarded?: bool
			compartment_id!:              string
			resource_id!:                 string
			comment?:                     string
			freeform_tags?: [_]: string
			validate_assignment_trigger?:  int
			time_assignment_to?:           string
			remote_syslog_server_ca_cert?: string
			is_enforced_always!:           bool
			resource_type!:                string
		}
	}
}
#data: {
	access_request_audit_log_report: {
		access_request_id!:   string
		enable_process_tree?: int
	}
	access_requests: {
		time_end?:   string
		time_start?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		resource_name?:  string
		resource_type?:  string
		state?:          string
	}
	operator_actions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
		resource_type?:  string
		state?:          string
	}
	operator_control: operator_control_id!: string
	operator_control_assignments: {
		operator_control_name?: string
		resource_name?:         string
		resource_type?:         string
		state?:                 string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	operator_controls: {
		display_name?:  string
		resource_type?: string
		state?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	access_request: access_request_id!: string
	access_request_history: access_request_id!: string
	operator_action: operator_action_id!: string
	operator_control_assignment: operator_control_assignment_id!: string
}

