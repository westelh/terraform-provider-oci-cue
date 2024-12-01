package jms_java_downloads

#resource: {
	attributes: {
		java_download_report: {
			state:              string
			sort_order:         string
			time_end?:          string
			checksum_type:      string
			display_name:       string
			checksum_value:     string
			sort_by:            string
			file_size_in_bytes: string
			system_tags: [_]: string
			time_start?: string
			defined_tags?: [_]: string
			created_by: [...{
				display_name: string
				email:        string
				id:           string
			}]
			compartment_id!: string
			freeform_tags?: [_]: string
			time_created: string
			format!:      string
		}
		java_download_token: {
			license_type!: [...string]
			state:        string
			time_created: string
			description!: string
			freeform_tags?: [_]: string
			display_name!:     string
			value:             string
			java_version!:     string
			lifecycle_details: string
			system_tags: [_]: string
			time_expires!: string
			created_by: [...{
				display_name: string
				email:        string
				id:           string
			}]
			last_updated_by: [...{
				id:           string
				display_name: string
				email:        string
			}]
			time_last_used:  string
			compartment_id!: string
			is_default?:     bool
			defined_tags?: [_]: string
			time_updated: string
		}
		java_license_acceptance_record: {
			license_type!: string
			system_tags: [_]: string
			created_by: [...{
				display_name: string
				email:        string
				id:           string
			}]
			last_updated_by: [...{
				email:        string
				id:           string
				display_name: string
			}]
			license_acceptance_status!: string
			defined_tags?: [_]: string
			state:             string
			time_last_updated: string
			compartment_id!:   string
			freeform_tags: [_]: string
			time_accepted: string
		}
	}
	arguments: {
		java_download_report: {
			defined_tags?: [_]: string
			time_end?:       string
			compartment_id!: string
			time_start?:     string
			freeform_tags?: [_]: string
			format!: string
		}
		java_download_token: {
			license_type!: [...string]
			defined_tags?: [_]: string
			description!:    string
			is_default?:     bool
			compartment_id!: string
			display_name!:   string
			time_expires!:   string
			freeform_tags?: [_]: string
			java_version!: string
		}
		java_license_acceptance_record: {
			license_type!: string
			defined_tags?: [_]: string
			compartment_id!:            string
			license_acceptance_status!: string
		}
	}
}
#data: {
	java_license_acceptance_records: {
		compartment_id!: string
		id?:             string
		license_type?:   string
		search_by_user?: string
		status?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	java_download_records: {
		release_version?:     string
		time_end?:            string
		package_type_detail?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		os_family?:      string
		time_start?:     string
		architecture?:   string
		compartment_id!: string
		family_version?: string
	}
	java_download_report: java_download_report_id!: string
	java_download_report_content: java_download_report_id!: string
	java_download_reports: {
		compartment_id!:          string
		display_name?:            string
		java_download_report_id?: string
		state?:                   string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	java_download_tokens: {
		compartment_id!: string
		display_name?:   string
		family_version?: string
		id?:             string
		search_by_user?: string
		state?:          string
		value?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	java_license_acceptance_record: java_license_acceptance_record_id!: string
	java_download_token: java_download_token_id!: string
	java_license: license_type!: string
	java_licenses: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
		license_type?: string
	}
}

