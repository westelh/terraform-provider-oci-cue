package adm

#resource: {
	attributes: {
		knowledge_base: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			state: string
			system_tags: [_]: string
			time_created: string
			time_updated: string
		}
		remediation_recipe: {
			network_configuration!: [...{
				nsg_ids?: [...string]
				subnet_id!: string
			}]
			scm_configuration!: [...{
				oci_code_repository_id?: string
				pat_secret_id?:          string
				scm_type!:               string
				repository_url?:         string
				external_scm_type?:      string
				username?:               string
				is_automerge_enabled!:   bool
				build_file_location?:    string
				branch!:                 string
			}]
			freeform_tags?: [_]: string
			detect_configuration!: [...{
				max_permissible_cvss_v3score?: float
				max_permissible_severity?:     string
				upgrade_policy?:               string
				exclusions?: [...string]
				max_permissible_cvss_v2score?: float
			}]
			display_name?: string
			system_tags: [_]: string
			compartment_id!:                string
			knowledge_base_id!:             string
			is_run_triggered_on_kb_change!: bool
			defined_tags?: [_]: string
			verify_configuration!: [...{
				jenkins_url?:        string
				pipeline_id?:        string
				trigger_secret_id?:  string
				username?:           string
				build_service_type!: string
				additional_parameters?: [_]: string
				pat_secret_id?:  string
				workflow_name?:  string
				job_name?:       string
				repository_url?: string
			}]
			time_updated: string
			time_created: string
			state?:       string
		}
		remediation_run: {
			remediation_run_source: string
			display_name?:          string
			remediation_recipe_id!: string
			system_tags: [_]: string
			time_updated: string
			defined_tags?: [_]: string
			time_created:       string
			time_started:       string
			time_finished:      string
			current_stage_type: string
			freeform_tags?: [_]: string
			compartment_id?: string
			stages: [...{
				time_created:  string
				time_finished: string
				time_started:  string
				type:          string
				summary:       string
			}]
			state: string
		}
		vulnerability_audit: {
			is_success:                         bool
			display_name?:                      string
			max_observed_severity_with_ignored: string
			configuration?: [...{
				max_permissible_severity?: string
				exclusions?: [...string]
				max_permissible_cvss_v2score?: float
				max_permissible_cvss_v3score?: float
			}]
			defined_tags?: [_]: string
			max_observed_cvss_v2score:              float
			max_observed_cvss_v2score_with_ignored: float
			system_tags: [_]: string
			vulnerable_artifacts_count: int
			max_observed_cvss_v3score:  float
			max_observed_severity:      string
			time_created:               string
			application_dependencies?: [...{
				node_id!: string
				application_dependency_node_ids?: [...string]
				gav?:  string
				purl?: string
			}]
			compartment_id?: string
			source?: [...{
				type!:            string
				description?:     string
				oci_resource_id?: string
			}]
			knowledge_base_id!:                      string
			build_type?:                             string
			max_observed_cvss_v3score_with_ignored:  float
			vulnerable_artifacts_count_with_ignored: int
			state:                                   string
			time_updated:                            string
			lifecycle_details:                       string
			freeform_tags?: [_]: string
			vulnerabilities: [...{
				severity:          string
				source:            string
				cvss_v2score:      float
				cvss_v3score:      float
				id:                string
				is_false_positive: bool
				is_ignored:        bool
			}]
			usage_data?: [...{
				namespace!:   string
				object!:      string
				source_type!: string
				bucket!:      string
			}]
		}
	}
	arguments: {
		knowledge_base: {
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
		}
		remediation_recipe: {
			knowledge_base_id!: string
			state?:             string
			detect_configuration!: [...{
				max_permissible_cvss_v3score?: float
				max_permissible_severity?:     string
				upgrade_policy?:               string
				exclusions?: [...string]
				max_permissible_cvss_v2score?: float
			}]
			is_run_triggered_on_kb_change!: bool
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			scm_configuration!: [...{
				build_file_location?:    string
				oci_code_repository_id?: string
				is_automerge_enabled!:   bool
				scm_type!:               string
				branch!:                 string
				external_scm_type?:      string
				repository_url?:         string
				username?:               string
				pat_secret_id?:          string
			}]
			verify_configuration!: [...{
				job_name?: string
				additional_parameters?: [_]: string
				jenkins_url?:        string
				workflow_name?:      string
				build_service_type!: string
				pipeline_id?:        string
				repository_url?:     string
				trigger_secret_id?:  string
				username?:           string
				pat_secret_id?:      string
			}]
			network_configuration!: [...{
				subnet_id!: string
				nsg_ids?: [...string]
			}]
			compartment_id!: string
		}
		remediation_run: {
			compartment_id?: string
			display_name?:   string
			defined_tags?: [_]: string
			remediation_recipe_id!: string
			freeform_tags?: [_]: string
		}
		vulnerability_audit: {
			build_type?: string
			defined_tags?: [_]: string
			compartment_id?:    string
			knowledge_base_id!: string
			configuration?: [...{
				max_permissible_severity?: string
				exclusions?: [...string]
				max_permissible_cvss_v2score?: float
				max_permissible_cvss_v3score?: float
			}]
			display_name?: string
			freeform_tags?: [_]: string
			application_dependencies?: [...{
				gav?:     string
				purl?:    string
				node_id!: string
				application_dependency_node_ids?: [...string]
			}]
			usage_data?: [...{
				source_type!: string
				bucket!:      string
				namespace!:   string
				object!:      string
			}]
			source?: [...{
				oci_resource_id?: string
				type!:            string
				description?:     string
			}]
		}
	}
}
#data: {
	remediation_run_application_dependency_recommendations: {
		gav?:                string
		purl?:               string
		remediation_run_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	remediation_run_stage: {
		remediation_run_id!: string
		stage_type!:         string
	}
	remediation_runs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:        string
		display_name?:          string
		id?:                    string
		remediation_recipe_id?: string
		state?:                 string
	}
	knowledge_base: knowledge_base_id!: string
	knowledge_bases: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
	}
	remediation_recipe: remediation_recipe_id!: string
	remediation_recipes: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
	}
	remediation_run: remediation_run_id!: string
	vulnerability_audit: vulnerability_audit_id!: string
	vulnerability_audits: {
		knowledge_base_id?:                     string
		is_success?:                            bool
		state?:                                 string
		time_created_greater_than_or_equal_to?: string
		time_created_less_than_or_equal_to?:    string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:                                   string
		id?:                                             string
		compartment_id?:                                 string
		max_observed_severity_greater_than_or_equal_to?: string
	}
	remediation_run_stages: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		remediation_run_id!: string
		status?:             string
		type?:               string
	}
	vulnerability_audit_application_dependency_vulnerabilities: {
		purl?:                           string
		cvss_v3greater_than_or_equal?:   float
		root_node_id?:                   string
		severity_greater_than_or_equal?: string
		vulnerability_id?:               string
		sort_by?:                        string
		gav?:                            string
		vulnerability_audit_id!:         string
		depth?:                          int
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		cvss_v2greater_than_or_equal?: float
	}
	vulnerability_audit_application_dependency_vulnerability: {
		severity_greater_than_or_equal?: string
		vulnerability_audit_id!:         string
		sort_by?:                        string
		cvss_v2greater_than_or_equal?:   float
		gav?:                            string
		root_node_id?:                   string
		vulnerability_id?:               string
		cvss_v3greater_than_or_equal?:   float
		depth?:                          int
		purl?:                           string
	}
}

