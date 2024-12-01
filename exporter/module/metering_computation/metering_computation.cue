package metering_computation

#resource: {
	attributes: {
		usage_statement_email_recipients_group: {
			email_recipients_group_id?: string
			state:                      string
			compartment_id!:            string
			recipients_list!: [...{
				state!:      string
				first_name?: string
				last_name?:  string
				email_id!:   string
			}]
			subscription_id!: string
		}
		custom_table: {
			saved_report_id!: string
			compartment_id!:  string
			saved_custom_table!: [...{
				row_group_by?: [...string]
				version?:      float
				display_name!: string
				column_group_by?: [...string]
				compartment_depth?: float
				group_by_tag?: [...{
					key?:       string
					namespace?: string
					value?:     string
				}]
			}]
		}
		query: {
			compartment_id!: string
			query_definition!: [...{
				display_name!: string
				report_query!: [...{
					date_range_name?: string
					forecast?: [...{
						time_forecast_ended!:   string
						forecast_type?:         string
						time_forecast_started?: string
					}]
					group_by_tag?: [...{
						key?:       string
						namespace?: string
						value?:     string
					}]
					granularity!:       string
					compartment_depth?: float
					group_by?: [...string]
					filter?:               string
					is_aggregate_by_time?: bool
					query_type?:           string
					tenant_id!:            string
					time_usage_ended?:     string
					time_usage_started?:   string
				}]
				version!: float
				cost_analysis_ui!: [...{
					graph?:               string
					is_cumulative_graph?: bool
				}]
			}]
		}
		schedule: {
			time_scheduled!:       string
			output_file_format?:   string
			compartment_id!:       string
			schedule_recurrences!: string
			result_location!: [...{
				bucket!:        string
				location_type!: string
				namespace!:     string
				region!:        string
			}]
			defined_tags?: [_]: string
			query_properties?: [...{
				compartment_depth?: float
				filter?:            string
				group_by?: [...string]
				group_by_tag?: [...{
					key?:       string
					namespace?: string
					value?:     string
				}]
				is_aggregate_by_time?: bool
				query_type?:           string
				date_range!: [...{
					date_range_type!:         string
					dynamic_date_range_type?: string
					time_usage_ended?:        string
					time_usage_started?:      string
				}]
				granularity!: string
			}]
			time_created: string
			name!:        string
			description?: string
			freeform_tags?: [_]: string
			saved_report_id?: string
			state:            string
			system_tags: [_]: string
			time_next_run: string
		}
		usage: {
			filter?: string
			group_by?: [...string]
			group_by_tag?: [...{
				key?:       string
				namespace?: string
				value?:     string
			}]
			time_usage_started!: string
			compartment_depth?:  float
			forecast?: [...{
				time_forecast_ended!:   string
				forecast_type?:         string
				time_forecast_started?: string
			}]
			tenant_id!:            string
			is_aggregate_by_time?: bool
			items: [...{
				currency:           string
				resource_name:      string
				overages_flag:      string
				unit:               string
				attributed_usage:   string
				compartment_name:   string
				resource_id:        string
				weight:             float
				sku_part_number:    string
				computed_amount:    float
				ad:                 string
				overage:            string
				tenant_id:          string
				compartment_path:   string
				attributed_cost:    string
				shape:              string
				region:             string
				time_usage_ended:   string
				service:            string
				is_forecast:        bool
				time_usage_started: string
				tenant_name:        string
				tags: [...{
					namespace: string
					value:     string
					key:       string
				}]
				discount:          float
				platform:          string
				unit_price:        float
				list_rate:         float
				subscription_id:   string
				computed_quantity: float
				sku_name:          string
				compartment_id:    string
			}]
			query_type?:       string
			granularity!:      string
			time_usage_ended!: string
		}
		usage_carbon_emission: {
			time_usage_ended!:     string
			is_aggregate_by_time?: bool
			time_usage_started!:   string
			compartment_depth?:    int
			group_by?: [...string]
			group_by_tag?: [...{
				key?:       string
				namespace?: string
				value?:     string
			}]
			items: [...{
				compartment_path:   string
				time_usage_started: string
				resource_name:      string
				sku_name:           string
				sku_part_number:    string
				ad:                 string
				time_usage_ended:   string
				tags: [...{
					key:       string
					namespace: string
					value:     string
				}]
				compartment_name:            string
				compartment_id:              string
				platform:                    string
				tenant_id:                   string
				computed_carbon_emission:    float
				service:                     string
				resource_id:                 string
				emission_calculation_method: string
				region:                      string
				tenant_name:                 string
				subscription_id:             string
			}]
			tenant_id!:                    string
			usage_carbon_emission_filter?: string
		}
		usage_carbon_emissions_query: {
			compartment_id!: string
			query_definition!: [...{
				cost_analysis_ui!: [...{
					graph?:               string
					is_cumulative_graph?: bool
				}]
				display_name!: string
				report_query!: [...{
					group_by?: [...string]
					group_by_tag?: [...{
						key?:       string
						namespace?: string
						value?:     string
					}]
					is_aggregate_by_time?:                bool
					time_usage_ended?:                    string
					usage_carbon_emissions_query_filter?: string
					tenant_id!:                           string
					time_usage_started?:                  string
					compartment_depth?:                   int
					date_range_name?:                     string
				}]
				version!: int
			}]
		}
	}
	arguments: {
		usage_statement_email_recipients_group: {
			compartment_id!: string
			recipients_list!: [...{
				first_name?: string
				last_name?:  string
				email_id!:   string
				state!:      string
			}]
			subscription_id!:           string
			email_recipients_group_id?: string
		}
		custom_table: {
			saved_custom_table!: [...{
				group_by_tag?: [...{
					namespace?: string
					value?:     string
					key?:       string
				}]
				row_group_by?: [...string]
				version?:      float
				display_name!: string
				column_group_by?: [...string]
				compartment_depth?: float
			}]
			saved_report_id!: string
			compartment_id!:  string
		}
		query: {
			compartment_id!: string
			query_definition!: [...{
				version!: float
				cost_analysis_ui!: [...{
					graph?:               string
					is_cumulative_graph?: bool
				}]
				display_name!: string
				report_query!: [...{
					query_type?:        string
					tenant_id!:         string
					compartment_depth?: float
					date_range_name?:   string
					filter?:            string
					group_by_tag?: [...{
						key?:       string
						namespace?: string
						value?:     string
					}]
					is_aggregate_by_time?: bool
					granularity!:          string
					group_by?: [...string]
					time_usage_ended?:   string
					time_usage_started?: string
					forecast?: [...{
						time_forecast_ended!:   string
						forecast_type?:         string
						time_forecast_started?: string
					}]
				}]
			}]
		}
		schedule: {
			freeform_tags?: [_]: string
			name!: string
			defined_tags?: [_]: string
			description?:          string
			schedule_recurrences!: string
			time_scheduled!:       string
			output_file_format?:   string
			result_location!: [...{
				bucket!:        string
				location_type!: string
				namespace!:     string
				region!:        string
			}]
			query_properties?: [...{
				is_aggregate_by_time?: bool
				query_type?:           string
				date_range!: [...{
					dynamic_date_range_type?: string
					time_usage_ended?:        string
					time_usage_started?:      string
					date_range_type!:         string
				}]
				granularity!:       string
				compartment_depth?: float
				filter?:            string
				group_by?: [...string]
				group_by_tag?: [...{
					value?:     string
					key?:       string
					namespace?: string
				}]
			}]
			saved_report_id?: string
			compartment_id!:  string
		}
		usage: {
			compartment_depth?: float
			forecast?: [...{
				time_forecast_ended!:   string
				forecast_type?:         string
				time_forecast_started?: string
			}]
			group_by?: [...string]
			tenant_id!:            string
			granularity!:          string
			time_usage_ended!:     string
			time_usage_started!:   string
			filter?:               string
			is_aggregate_by_time?: bool
			group_by_tag?: [...{
				value?:     string
				key?:       string
				namespace?: string
			}]
			query_type?: string
		}
		usage_carbon_emission: {
			time_usage_ended!:             string
			is_aggregate_by_time?:         bool
			usage_carbon_emission_filter?: string
			time_usage_started!:           string
			compartment_depth?:            int
			group_by?: [...string]
			group_by_tag?: [...{
				key?:       string
				namespace?: string
				value?:     string
			}]
			tenant_id!: string
		}
		usage_carbon_emissions_query: {
			compartment_id!: string
			query_definition!: [...{
				display_name!: string
				report_query!: [...{
					time_usage_ended?:   string
					time_usage_started?: string
					tenant_id!:          string
					compartment_depth?:  int
					group_by?: [...string]
					group_by_tag?: [...{
						key?:       string
						namespace?: string
						value?:     string
					}]
					date_range_name?:                     string
					usage_carbon_emissions_query_filter?: string
					is_aggregate_by_time?:                bool
				}]
				version!: int
				cost_analysis_ui!: [...{
					graph?:               string
					is_cumulative_graph?: bool
				}]
			}]
		}
	}
}
#data: {
	custom_table: custom_table_id!: string
	schedules: {
		compartment_id!: string
		name?:           string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	usage_carbon_emissions_query: usage_carbon_emissions_query_id!: string
	configuration: tenant_id!: string
	queries: {
		compartment_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	usage_carbon_emissions_config: tenant_id!: string
	usage_carbon_emissions_queries: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	average_carbon_emission: sku_part_number!: string
	clean_energy_usage: region!: string
	schedule: schedule_id!: string
	scheduled_runs: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		schedule_id!: string
	}
	usage_statement_email_recipients_groups: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		subscription_id!: string
	}
	custom_tables: {
		compartment_id!:  string
		saved_report_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	query: query_id!: string
	scheduled_run: scheduled_run_id!: string
	usage_statement_email_recipients_group: {
		subscription_id!:           string
		email_recipients_group_id!: string
		compartment_id!:            string
	}
}

