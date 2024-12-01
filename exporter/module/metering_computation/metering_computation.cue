package metering_computation

#resource: {
	attributes: {
		custom_table: {
			compartment_id!: string
			saved_custom_table!: [...{
				display_name!: string
				column_group_by?: [...string]
				compartment_depth?: float
				group_by_tag?: [...{
					key?:       string
					namespace?: string
					value?:     string
				}]
				row_group_by?: [...string]
				version?: float
			}]
			saved_report_id!: string
		}
		query: {
			compartment_id!: string
			query_definition!: [...{
				cost_analysis_ui!: [...{
					graph?:               string
					is_cumulative_graph?: bool
				}]
				display_name!: string
				report_query!: [...{
					group_by_tag?: [...{
						value?:     string
						key?:       string
						namespace?: string
					}]
					time_usage_started?: string
					granularity!:        string
					query_type?:         string
					tenant_id!:          string
					forecast?: [...{
						time_forecast_ended!:   string
						forecast_type?:         string
						time_forecast_started?: string
					}]
					time_usage_ended?:  string
					compartment_depth?: float
					group_by?: [...string]
					is_aggregate_by_time?: bool
					date_range_name?:      string
					filter?:               string
				}]
				version!: float
			}]
		}
		schedule: {
			output_file_format?: string
			system_tags: [_]: string
			saved_report_id?: string
			time_next_run:    string
			query_properties?: [...{
				query_type?: string
				date_range!: [...{
					time_usage_ended?:        string
					time_usage_started?:      string
					date_range_type!:         string
					dynamic_date_range_type?: string
				}]
				granularity!:       string
				compartment_depth?: float
				filter?:            string
				group_by?: [...string]
				group_by_tag?: [...{
					key?:       string
					namespace?: string
					value?:     string
				}]
				is_aggregate_by_time?: bool
			}]
			freeform_tags?: [_]: string
			name!:           string
			compartment_id!: string
			result_location!: [...{
				bucket!:        string
				location_type!: string
				namespace!:     string
				region!:        string
			}]
			description?:          string
			time_created:          string
			time_scheduled!:       string
			schedule_recurrences!: string
			defined_tags?: [_]: string
			state: string
		}
		usage: {
			query_type?: string
			items: [...{
				computed_amount:    float
				ad:                 string
				compartment_name:   string
				subscription_id:    string
				tenant_id:          string
				attributed_cost:    string
				platform:           string
				region:             string
				time_usage_started: string
				list_rate:          float
				tenant_name:        string
				computed_quantity:  float
				weight:             float
				sku_name:           string
				shape:              string
				compartment_id:     string
				compartment_path:   string
				resource_name:      string
				service:            string
				currency:           string
				tags: [...{
					key:       string
					namespace: string
					value:     string
				}]
				sku_part_number:  string
				is_forecast:      bool
				unit_price:       float
				time_usage_ended: string
				overage:          string
				attributed_usage: string
				resource_id:      string
				overages_flag:    string
				discount:         float
				unit:             string
			}]
			group_by_tag?: [...{
				key?:       string
				namespace?: string
				value?:     string
			}]
			tenant_id!: string
			filter?:    string
			forecast?: [...{
				forecast_type?:         string
				time_forecast_started?: string
				time_forecast_ended!:   string
			}]
			group_by?: [...string]
			granularity!:          string
			time_usage_started!:   string
			is_aggregate_by_time?: bool
			time_usage_ended!:     string
			compartment_depth?:    float
		}
		usage_carbon_emission: {
			group_by_tag?: [...{
				key?:       string
				namespace?: string
				value?:     string
			}]
			group_by?: [...string]
			usage_carbon_emission_filter?: string
			compartment_depth?:            int
			items: [...{
				sku_part_number:    string
				compartment_name:   string
				tenant_name:        string
				time_usage_started: string
				ad:                 string
				compartment_path:   string
				compartment_id:     string
				tags: [...{
					key:       string
					namespace: string
					value:     string
				}]
				region:                      string
				time_usage_ended:            string
				subscription_id:             string
				tenant_id:                   string
				sku_name:                    string
				computed_carbon_emission:    float
				emission_calculation_method: string
				resource_id:                 string
				platform:                    string
				resource_name:               string
				service:                     string
			}]
			tenant_id!:            string
			time_usage_ended!:     string
			is_aggregate_by_time?: bool
			time_usage_started!:   string
		}
		usage_carbon_emissions_query: {
			compartment_id!: string
			query_definition!: [...{
				version!: int
				cost_analysis_ui!: [...{
					is_cumulative_graph?: bool
					graph?:               string
				}]
				display_name!: string
				report_query!: [...{
					tenant_id!:                           string
					is_aggregate_by_time?:                bool
					time_usage_started?:                  string
					usage_carbon_emissions_query_filter?: string
					compartment_depth?:                   int
					group_by?: [...string]
					date_range_name?: string
					group_by_tag?: [...{
						key?:       string
						namespace?: string
						value?:     string
					}]
					time_usage_ended?: string
				}]
			}]
		}
		usage_statement_email_recipients_group: {
			state:           string
			compartment_id!: string
			recipients_list!: [...{
				state!:      string
				first_name?: string
				last_name?:  string
				email_id!:   string
			}]
			subscription_id!:           string
			email_recipients_group_id?: string
		}
	}
	arguments: {
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
					tenant_id!: string
					filter?:    string
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
					time_usage_ended?:   string
					time_usage_started?: string
					date_range_name?:    string
					group_by?: [...string]
					compartment_depth?:    float
					granularity!:          string
					is_aggregate_by_time?: bool
					query_type?:           string
				}]
				version!: float
				cost_analysis_ui!: [...{
					graph?:               string
					is_cumulative_graph?: bool
				}]
			}]
		}
		schedule: {
			query_properties?: [...{
				query_type?: string
				date_range!: [...{
					date_range_type!:         string
					dynamic_date_range_type?: string
					time_usage_ended?:        string
					time_usage_started?:      string
				}]
				granularity!:       string
				compartment_depth?: float
				filter?:            string
				group_by?: [...string]
				group_by_tag?: [...{
					key?:       string
					namespace?: string
					value?:     string
				}]
				is_aggregate_by_time?: bool
			}]
			result_location!: [...{
				location_type!: string
				namespace!:     string
				region!:        string
				bucket!:        string
			}]
			schedule_recurrences!: string
			description?:          string
			time_scheduled!:       string
			output_file_format?:   string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!:  string
			name!:            string
			saved_report_id?: string
		}
		usage: {
			time_usage_ended!: string
			forecast?: [...{
				time_forecast_ended!:   string
				forecast_type?:         string
				time_forecast_started?: string
			}]
			group_by?: [...string]
			query_type?:           string
			tenant_id!:            string
			time_usage_started!:   string
			is_aggregate_by_time?: bool
			compartment_depth?:    float
			filter?:               string
			group_by_tag?: [...{
				key?:       string
				namespace?: string
				value?:     string
			}]
			granularity!: string
		}
		usage_carbon_emission: {
			is_aggregate_by_time?: bool
			time_usage_started!:   string
			time_usage_ended!:     string
			group_by_tag?: [...{
				key?:       string
				namespace?: string
				value?:     string
			}]
			usage_carbon_emission_filter?: string
			tenant_id!:                    string
			compartment_depth?:            int
			group_by?: [...string]
		}
		usage_carbon_emissions_query: {
			compartment_id!: string
			query_definition!: [...{
				version!: int
				cost_analysis_ui!: [...{
					graph?:               string
					is_cumulative_graph?: bool
				}]
				display_name!: string
				report_query!: [...{
					group_by?: [...string]
					tenant_id!: string
					group_by_tag?: [...{
						key?:       string
						namespace?: string
						value?:     string
					}]
					is_aggregate_by_time?:                bool
					time_usage_ended?:                    string
					usage_carbon_emissions_query_filter?: string
					time_usage_started?:                  string
					date_range_name?:                     string
					compartment_depth?:                   int
				}]
			}]
		}
		usage_statement_email_recipients_group: {
			recipients_list!: [...{
				email_id!:   string
				state!:      string
				first_name?: string
				last_name?:  string
			}]
			subscription_id!:           string
			email_recipients_group_id?: string
			compartment_id!:            string
		}
	}
}
#data: {
	clean_energy_usage: region!: string
	query: query_id!: string
	usage_carbon_emissions_config: tenant_id!: string
	usage_carbon_emissions_queries: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
	}
	custom_table: custom_table_id!: string
	custom_tables: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		saved_report_id!: string
	}
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
	usage_statement_email_recipients_group: {
		subscription_id!:           string
		email_recipients_group_id!: string
		compartment_id!:            string
	}
	average_carbon_emission: sku_part_number!: string
	configuration: tenant_id!: string
	queries: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
	}
	schedule: schedule_id!: string
	scheduled_run: scheduled_run_id!: string
	scheduled_runs: {
		schedule_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
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
}

