package optimizer

#resource: {
	attributes: {
		enrollment_status: {
			status_reason:         string
			time_created:          string
			time_updated:          string
			enrollment_status_id!: string
			status!:               string
			compartment_id:        string
			state:                 string
		}
		profile: {
			target_compartments?: [...{
				items!: [...string]
			}]
			description!:                  string
			name!:                         string
			aggregation_interval_in_days?: int
			state:                         string
			compartment_id!:               string
			system_tags: [_]: string
			target_tags?: [...{
				items!: [...{
					tag_definition_name!: string, tag_namespace_name!: string, tag_value_type!: string, tag_values?: [...string]
				}]
			}]
			time_created: string
			time_updated: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			levels_configuration!: [...{
				items?: [...{
					level?: string, recommendation_id?: string
				}]
			}]
		}
		recommendation: {
			time_updated: string
			supported_levels: [...{
				items: [...{
					name: string
				}]
			}]
			resource_counts: [...{
				status: string
				count:  int
			}]
			state:                 string
			recommendation_id!:    string
			time_created:          string
			status!:               string
			time_status_end?:      string
			category_id:           string
			description:           string
			estimated_cost_saving: float
			extended_metadata: [_]: string
			time_status_begin: string
			importance:        string
			compartment_id:    string
			name:              string
		}
		resource_action: {
			time_status_begin: string
			category_id:       string
			action: [...{
				description: string
				type:        string
				url:         string
			}]
			compartment_id:        string
			status!:               string
			compartment_name:      string
			resource_id:           string
			resource_action_id!:   string
			recommendation_id:     string
			state:                 string
			time_status_end?:      string
			estimated_cost_saving: float
			time_updated:          string
			metadata: [_]: string
			name:          string
			resource_type: string
			extended_metadata: [_]: string
			time_created: string
		}
	}
	arguments: {
		enrollment_status: {
			status!:               string
			enrollment_status_id!: string
		}
		profile: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
			levels_configuration!: [...{
				items?: [...{
					level?: string, recommendation_id?: string
				}]
			}]
			description!:                  string
			name!:                         string
			aggregation_interval_in_days?: int
			target_compartments?: [...{
				items!: [...string]
			}]
			target_tags?: [...{
				items!: [...{
					tag_definition_name!: string, tag_namespace_name!: string, tag_value_type!: string, tag_values?: [...string]
				}]
			}]
		}
		recommendation: {
			recommendation_id!: string
			status!:            string
			time_status_end?:   string
		}
		resource_action: {
			resource_action_id!: string
			status!:             string
			time_status_end?:    string
		}
	}
}
#data: {
	profile: profile_id!: string
	recommendation_strategy: {
		compartment_id_in_subtree!: bool
		name?:                      string
		recommendation_name?:       string
		compartment_id!:            string
	}
	recommendations: {
		compartment_id!:       string
		include_organization?: bool
		state?:                string
		child_tenancy_ids?: [...string]
		compartment_id_in_subtree!: bool
		name?:                      string
		status?:                    string
		category_name?:             string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		category_id?: string
	}
	resource_action: {
		resource_action_id!:        string
		include_resource_metadata?: bool
	}
	resource_actions: {
		include_resource_metadata?: bool
		recommendation_name?:       string
		recommendation_id?:         string
		state?:                     string
		compartment_id_in_subtree!: bool
		include_organization?:      bool
		child_tenancy_ids?: [...string]
		compartment_id!: string
		name?:           string
		resource_type?:  string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		status?: string
	}
	enrollment_status: enrollment_status_id!: string
	enrollment_statuses: {
		status?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		state?:          string
	}
	histories: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:            string
		recommendation_id?:         string
		compartment_id_in_subtree!: bool
		status?:                    string
		state?:                     string
		name?:                      string
		resource_type?:             string
		recommendation_name?:       string
		include_resource_metadata?: bool
	}
	profile_levels: {
		compartment_id!:            string
		compartment_id_in_subtree!: bool
		name?:                      string
		recommendation_name?:       string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	recommendation_strategies: {
		compartment_id!:            string
		compartment_id_in_subtree!: bool
		name?:                      string
		recommendation_name?:       string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	categories: {
		name?:  string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		child_tenancy_ids?: [...string]
		compartment_id!:            string
		compartment_id_in_subtree!: bool
		include_organization?:      bool
	}
	profile_level: {
		compartment_id!:            string
		compartment_id_in_subtree!: bool
		name?:                      string
		recommendation_name?:       string
	}
	profiles: {
		compartment_id!: string
		name?:           string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	category: category_id!: string
	recommendation: recommendation_id!: string
}

