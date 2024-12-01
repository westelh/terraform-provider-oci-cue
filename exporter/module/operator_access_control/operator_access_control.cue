package operator_access_control

#resource: {
	attributes: {
		operator_control: {
			last_modified_info: string
			pre_approved_op_action_list?: [...string]
			freeform_tags?: [_]: string
			time_of_modification:        string
			description?:                string
			is_default_operator_control: bool
			number_of_approvers?:        int
			system_message?:             string
			state:                       string
			compartment_id!:             string
			email_id_list?: [...string]
			approvers_list?: [...string]
			time_of_deletion: string
			resource_type!:   string
			approval_required_op_action_list: [...string]
			approver_groups_list!: [...string]
			time_of_creation: string
			defined_tags?: [_]: string
			is_fully_pre_approved!: bool
			operator_control_name!: string
		}
		operator_control_assignment: {
			detachment_description:        string
			is_hypervisor_log_forwarded?:  bool
			comment?:                      string
			operator_control_id!:          string
			resource_type!:                string
			error_code:                    int
			state:                         string
			lifecycle_details:             string
			time_assignment_to?:           string
			resource_id!:                  string
			resource_compartment_id!:      string
			remote_syslog_server_address?: string
			validate_assignment_trigger?:  int
			time_of_assignment:            string
			remote_syslog_server_ca_cert?: string
			assigner_id:                   string
			time_of_deletion:              string
			time_assignment_from?:         string
			op_control_name:               string
			resource_name!:                string
			error_message:                 string
			is_enforced_always!:           bool
			compartment_id!:               string
			is_log_forwarded?:             bool
			defined_tags?: [_]: string
			is_auto_approve_during_maintenance?: bool
			is_default_assignment:               bool
			freeform_tags?: [_]: string
			unassigner_id:              string
			remote_syslog_server_port?: int
		}
	}
	arguments: {
		operator_control: {
			email_id_list?: [...string]
			system_message?: string
			approver_groups_list!: [...string]
			compartment_id!: string
			resource_type!:  string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			is_fully_pre_approved!: bool
			operator_control_name!: string
			description?:           string
			number_of_approvers?:   int
			approvers_list?: [...string]
			pre_approved_op_action_list?: [...string]
		}
		operator_control_assignment: {
			resource_name!:                      string
			is_enforced_always!:                 bool
			comment?:                            string
			operator_control_id!:                string
			validate_assignment_trigger?:        int
			is_auto_approve_during_maintenance?: bool
			is_hypervisor_log_forwarded?:        bool
			compartment_id!:                     string
			resource_type!:                      string
			remote_syslog_server_ca_cert?:       string
			time_assignment_to?:                 string
			remote_syslog_server_port?:          int
			time_assignment_from?:               string
			remote_syslog_server_address?:       string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			resource_id!:             string
			resource_compartment_id!: string
			is_log_forwarded?:        bool
		}
	}
}
#data: {
	access_request_history: access_request_id!: string
	operator_control_assignments: {
		compartment_id!:        string
		operator_control_name?: string
		resource_name?:         string
		resource_type?:         string
		state?:                 string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	operator_controls: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		resource_type?:  string
		state?:          string
	}
	operator_control_assignment: operator_control_assignment_id!: string
	access_request: access_request_id!: string
	access_request_audit_log_report: {
		access_request_id!:   string
		enable_process_tree?: int
	}
	access_requests: {
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
		time_end?:       string
	}
	operator_action: operator_action_id!: string
	operator_actions: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		name?:           string
		resource_type?:  string
		state?:          string
	}
	operator_control: operator_control_id!: string
}

