package optimizer

#resource: {
	attributes: {
		recommendation: {
			recommendation_id!:    string
			state:                 string
			status!:               string
			time_status_begin:     string
			estimated_cost_saving: float
			description:           string
			importance:            string
			resource_counts: [...{
				status: string
				count:  int
			}]
			name: string
			supported_levels: [...{
				items: [...{
					name: string
				}]
			}]
			time_status_end?: string
			time_created:     string
			compartment_id:   string
			extended_metadata: [_]: string
			time_updated: string
			category_id:  string
		}
		resource_action: {
			estimated_cost_saving: float
			status!:               string
			extended_metadata: [_]: string
			compartment_name:    string
			name:                string
			resource_action_id!: string
			resource_id:         string
			resource_type:       string
			time_status_begin:   string
			time_status_end?:    string
			category_id:         string
			compartment_id:      string
			action: [...{
				description: string
				type:        string
				url:         string
			}]
			state:             string
			recommendation_id: string
			time_updated:      string
			time_created:      string
			metadata: [_]: string
		}
		enrollment_status: {
			compartment_id:        string
			state:                 string
			status_reason:         string
			time_created:          string
			time_updated:          string
			enrollment_status_id!: string
			status!:               string
		}
		profile: {
			description!: string
			name!:        string
			levels_configuration!: [...{
				items?: [...{
					level?: string, recommendation_id?: string
				}]
			}]
			aggregation_interval_in_days?: int
			freeform_tags?: [_]: string
			target_tags?: [...{
				items!: [...{
					tag_definition_name!: string, tag_namespace_name!: string, tag_value_type!: string, tag_values?: [...string]
				}]
			}]
			state:        string
			time_created: string
			time_updated: string
			target_compartments?: [...{
				items!: [...string]
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			system_tags: [_]: string
		}
	}
	arguments: {
		recommendation: {
			recommendation_id!: string
			time_status_end?:   string
			status!:            string
		}
		resource_action: {
			resource_action_id!: string
			time_status_end?:    string
			status!:             string
		}
		enrollment_status: {
			enrollment_status_id!: string
			status!:               string
		}
		profile: {
			description!: string
			name!:        string
			freeform_tags?: [_]: string
			target_tags?: [...{
				items!: [...{
					tag_definition_name!: string, tag_namespace_name!: string, tag_value_type!: string, tag_values?: [...string]
				}]
			}]
			target_compartments?: [...{
				items!: [...string]
			}]
			compartment_id!: string
			levels_configuration!: [...{
				items?: [...{
					level?: string, recommendation_id?: string
				}]
			}]
			aggregation_interval_in_days?: int
			defined_tags?: [_]: string
		}
	}
}
#data: {
	recommendations: {
		name?:          string
		category_id?:   string
		category_name?: string
		child_tenancy_ids?: [...string]
		status?:                    string
		compartment_id_in_subtree!: bool
		include_organization?:      bool
		state?:                     string
		compartment_id!:            string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	resource_action: {
		resource_action_id!:        string
		include_resource_metadata?: bool
	}
	resource_actions: {
		include_organization?:      bool
		recommendation_id?:         string
		recommendation_name?:       string
		include_resource_metadata?: bool
		name?:                      string
		state?:                     string
		status?:                    string
		compartment_id!:            string
		compartment_id_in_subtree!: bool
		resource_type?:             string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		child_tenancy_ids?: [...string]
	}
	enrollment_status: enrollment_status_id!: string
	enrollment_statuses: {
		state?:  string
		status?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	profile: profile_id!: string
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
	recommendation_strategy: {
		recommendation_name?:       string
		compartment_id!:            string
		compartment_id_in_subtree!: bool
		name?:                      string
	}
	histories: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		recommendation_id?:         string
		state?:                     string
		status?:                    string
		compartment_id!:            string
		compartment_id_in_subtree!: bool
		resource_type?:             string
		include_resource_metadata?: bool
		name?:                      string
		recommendation_name?:       string
	}
	profile_level: {
		recommendation_name?:       string
		compartment_id!:            string
		compartment_id_in_subtree!: bool
		name?:                      string
	}
	profile_levels: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:            string
		compartment_id_in_subtree!: bool
		name?:                      string
		recommendation_name?:       string
	}
	profiles: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		name?:           string
		state?:          string
	}
	recommendation: recommendation_id!: string
	categories: {
		compartment_id_in_subtree!: bool
		include_organization?:      bool
		name?:                      string
		state?:                     string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		child_tenancy_ids?: [...string]
		compartment_id!: string
	}
	category: category_id!: string
}

