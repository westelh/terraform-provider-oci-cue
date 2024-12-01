package adm

#resource: {
	attributes: {
		knowledge_base: {
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			state: string
			system_tags: [_]: string
			time_created:    string
			time_updated:    string
			compartment_id!: string
		}
		remediation_recipe: {
			network_configuration!: [...{
				subnet_id!: string
				nsg_ids?: [...string]
			}]
			defined_tags?: [_]: string
			time_created:    string
			compartment_id!: string
			verify_configuration!: [...{
				pipeline_id?: string
				additional_parameters?: [_]: string
				jenkins_url?:        string
				workflow_name?:      string
				trigger_secret_id?:  string
				job_name?:           string
				pat_secret_id?:      string
				repository_url?:     string
				username?:           string
				build_service_type!: string
			}]
			freeform_tags?: [_]: string
			knowledge_base_id!: string
			scm_configuration!: [...{
				build_file_location?:    string
				oci_code_repository_id?: string
				repository_url?:         string
				is_automerge_enabled!:   bool
				pat_secret_id?:          string
				branch!:                 string
				scm_type!:               string
				external_scm_type?:      string
				username?:               string
			}]
			detect_configuration!: [...{
				exclusions?: [...string]
				max_permissible_cvss_v2score?: float
				max_permissible_cvss_v3score?: float
				max_permissible_severity?:     string
				upgrade_policy?:               string
			}]
			is_run_triggered_on_kb_change!: bool
			state?:                         string
			system_tags: [_]: string
			time_updated:  string
			display_name?: string
		}
		remediation_run: {
			freeform_tags?: [_]: string
			current_stage_type:     string
			remediation_recipe_id!: string
			system_tags: [_]: string
			time_finished:          string
			time_updated:           string
			time_started:           string
			compartment_id?:        string
			remediation_run_source: string
			state:                  string
			stages: [...{
				summary:       string
				time_created:  string
				time_finished: string
				time_started:  string
				type:          string
			}]
			defined_tags?: [_]: string
			display_name?: string
			time_created:  string
		}
		vulnerability_audit: {
			vulnerable_artifacts_count_with_ignored: int
			time_created:                            string
			time_updated:                            string
			max_observed_cvss_v2score:               float
			max_observed_cvss_v2score_with_ignored:  float
			max_observed_severity:                   string
			vulnerabilities: [...{
				is_ignored:        bool
				severity:          string
				source:            string
				cvss_v2score:      float
				cvss_v3score:      float
				id:                string
				is_false_positive: bool
			}]
			max_observed_cvss_v3score_with_ignored: float
			vulnerable_artifacts_count:             int
			freeform_tags?: [_]: string
			build_type?: string
			usage_data?: [...{
				namespace!:   string
				object!:      string
				source_type!: string
				bucket!:      string
			}]
			lifecycle_details: string
			source?: [...{
				oci_resource_id?: string
				type!:            string
				description?:     string
			}]
			max_observed_cvss_v3score: float
			system_tags: [_]: string
			configuration?: [...{
				exclusions?: [...string]
				max_permissible_cvss_v2score?: float
				max_permissible_cvss_v3score?: float
				max_permissible_severity?:     string
			}]
			defined_tags?: [_]: string
			knowledge_base_id!: string
			application_dependencies?: [...{
				node_id!: string
				application_dependency_node_ids?: [...string]
				gav?:  string
				purl?: string
			}]
			is_success:                         bool
			display_name?:                      string
			max_observed_severity_with_ignored: string
			compartment_id?:                    string
			state:                              string
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
			network_configuration!: [...{
				subnet_id!: string
				nsg_ids?: [...string]
			}]
			knowledge_base_id!: string
			scm_configuration!: [...{
				build_file_location?:    string
				repository_url?:         string
				username?:               string
				is_automerge_enabled!:   bool
				pat_secret_id?:          string
				branch!:                 string
				scm_type!:               string
				external_scm_type?:      string
				oci_code_repository_id?: string
			}]
			defined_tags?: [_]: string
			detect_configuration!: [...{
				upgrade_policy?: string
				exclusions?: [...string]
				max_permissible_cvss_v2score?: float
				max_permissible_cvss_v3score?: float
				max_permissible_severity?:     string
			}]
			verify_configuration!: [...{
				username?:           string
				jenkins_url?:        string
				workflow_name?:      string
				trigger_secret_id?:  string
				build_service_type!: string
				additional_parameters?: [_]: string
				job_name?:       string
				pat_secret_id?:  string
				pipeline_id?:    string
				repository_url?: string
			}]
			freeform_tags?: [_]: string
			display_name?:                  string
			state?:                         string
			compartment_id!:                string
			is_run_triggered_on_kb_change!: bool
		}
		remediation_run: {
			display_name?:          string
			remediation_recipe_id!: string
			compartment_id?:        string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
		}
		vulnerability_audit: {
			knowledge_base_id!: string
			build_type?:        string
			defined_tags?: [_]: string
			compartment_id?: string
			application_dependencies?: [...{
				application_dependency_node_ids?: [...string]
				gav?:     string
				purl?:    string
				node_id!: string
			}]
			freeform_tags?: [_]: string
			display_name?: string
			source?: [...{
				oci_resource_id?: string
				type!:            string
				description?:     string
			}]
			usage_data?: [...{
				source_type!: string
				bucket!:      string
				namespace!:   string
				object!:      string
			}]
			configuration?: [...{
				exclusions?: [...string]
				max_permissible_cvss_v2score?: float
				max_permissible_cvss_v3score?: float
				max_permissible_severity?:     string
			}]
		}
	}
}
#data: {
	vulnerability_audit_application_dependency_vulnerabilities: {
		severity_greater_than_or_equal?: string
		gav?:                            string
		root_node_id?:                   string
		vulnerability_audit_id!:         string
		cvss_v2greater_than_or_equal?:   float
		depth?:                          int
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		purl?:                         string
		cvss_v3greater_than_or_equal?: float
		vulnerability_id?:             string
		sort_by?:                      string
	}
	vulnerability_audits: {
		is_success?: bool
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		id?:                                             string
		state?:                                          string
		knowledge_base_id?:                              string
		time_created_greater_than_or_equal_to?:          string
		time_created_less_than_or_equal_to?:             string
		compartment_id?:                                 string
		display_name?:                                   string
		max_observed_severity_greater_than_or_equal_to?: string
	}
	knowledge_bases: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		display_name?:   string
		id?:             string
		state?:          string
	}
	remediation_run_application_dependency_recommendations: {
		gav?:                string
		purl?:               string
		remediation_run_id!: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	remediation_run_stage: {
		remediation_run_id!: string
		stage_type!:         string
	}
	remediation_run_stages: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		remediation_run_id!: string
		status?:             string
		type?:               string
	}
	vulnerability_audit: vulnerability_audit_id!: string
	vulnerability_audit_application_dependency_vulnerability: {
		depth?:                          int
		purl?:                           string
		cvss_v2greater_than_or_equal?:   float
		cvss_v3greater_than_or_equal?:   float
		gav?:                            string
		vulnerability_audit_id!:         string
		severity_greater_than_or_equal?: string
		sort_by?:                        string
		root_node_id?:                   string
		vulnerability_id?:               string
	}
	knowledge_base: knowledge_base_id!: string
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
	remediation_runs: {
		state?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id?:        string
		display_name?:          string
		id?:                    string
		remediation_recipe_id?: string
	}
}

