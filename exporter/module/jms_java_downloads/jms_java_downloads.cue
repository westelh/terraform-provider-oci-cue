package jms_java_downloads

#resource: {
	attributes: {
		java_download_report: {
			time_created:   string
			checksum_value: string
			checksum_type:  string
			time_end?:      string
			sort_by:        string
			freeform_tags?: [_]: string
			display_name: string
			system_tags: [_]: string
			time_start?: string
			created_by: [...{
				display_name: string
				email:        string
				id:           string
			}]
			file_size_in_bytes: string
			state:              string
			format!:            string
			compartment_id!:    string
			sort_order:         string
			defined_tags?: [_]: string
		}
		java_download_token: {
			compartment_id!: string
			time_last_used:  string
			time_updated:    string
			license_type!: [...string]
			description!:  string
			display_name!: string
			created_by: [...{
				display_name: string
				email:        string
				id:           string
			}]
			defined_tags?: [_]: string
			java_version!: string
			time_expires!: string
			value:         string
			freeform_tags?: [_]: string
			is_default?:       bool
			lifecycle_details: string
			system_tags: [_]: string
			last_updated_by: [...{
				id:           string
				display_name: string
				email:        string
			}]
			state:        string
			time_created: string
		}
		java_license_acceptance_record: {
			time_accepted:              string
			time_last_updated:          string
			license_type!:              string
			license_acceptance_status!: string
			defined_tags?: [_]: string
			last_updated_by: [...{
				display_name: string
				email:        string
				id:           string
			}]
			compartment_id!: string
			created_by: [...{
				display_name: string
				email:        string
				id:           string
			}]
			freeform_tags: [_]: string
			state: string
			system_tags: [_]: string
		}
	}
	arguments: {
		java_download_report: {
			time_end?: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			format!:         string
			time_start?:     string
			compartment_id!: string
		}
		java_download_token: {
			defined_tags?: [_]: string
			is_default?: bool
			license_type!: [...string]
			description!:    string
			time_expires!:   string
			compartment_id!: string
			freeform_tags?: [_]: string
			java_version!: string
			display_name!: string
		}
		java_license_acceptance_record: {
			license_acceptance_status!: string
			license_type!:              string
			defined_tags?: [_]: string
			compartment_id!: string
		}
	}
}
#data: {
	java_license: license_type!: string
	java_license_acceptance_record: java_license_acceptance_record_id!: string
	java_license_acceptance_records: {
		license_type?:   string
		search_by_user?: string
		status?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		id?:             string
	}
	java_download_report: java_download_report_id!: string
	java_download_token: java_download_token_id!: string
	java_download_tokens: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		value?:          string
		family_version?: string
		id?:             string
		display_name?:   string
		search_by_user?: string
	}
	java_licenses: {
		license_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
	}
	java_download_records: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		time_end?:            string
		family_version?:      string
		package_type_detail?: string
		time_start?:          string
		release_version?:     string
		architecture?:        string
		compartment_id!:      string
		os_family?:           string
	}
	java_download_report_content: java_download_report_id!: string
	java_download_reports: {
		java_download_report_id?: string
		state?:                   string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
	}
}

