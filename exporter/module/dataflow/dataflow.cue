package dataflow

#resource: {
	attributes: {
		application: {
			defined_tags?: [_]: string
			idle_timeout_in_minutes?: string
			private_endpoint_id?:     string
			display_name!:            string
			logs_bucket_uri?:         string
			language!:                string
			description?:             string
			max_duration_in_minutes?: string
			file_uri?:                string
			owner_principal_id:       string
			archive_uri?:             string
			type?:                    string
			driver_shape!:            string
			executor_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			state:          string
			time_created:   string
			spark_version!: string
			num_executors!: int
			configuration?: [_]: string
			arguments?: [...string]
			parameters?: [...{
				value!: string
				name!:  string
			}]
			warehouse_bucket_uri?: string
			owner_user_name:       string
			time_updated:          string
			driver_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			executor_shape!: string
			freeform_tags?: [_]: string
			pool_id?:        string
			metastore_id?:   string
			compartment_id!: string
			class_name?:     string
			execute?:        string
			application_log_config?: [...{
				log_group_id!: string
				log_id!:       string
			}]
		}
		invoke_run: {
			driver_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			freeform_tags?: [_]: string
			parameters?: [...{
				name!:  string
				value!: string
			}]
			data_written_in_bytes: string
			time_updated:          string
			language:              string
			class_name:            string
			arguments?: [...string]
			total_ocpu:                   int
			opc_parent_rpt_url?:          string
			run_duration_in_milliseconds: string
			spark_version?:               string
			state:                        string
			driver_shape?:                string
			logs_bucket_uri?:             string
			private_endpoint_nsg_ids: [...string]
			warehouse_bucket_uri?: string
			application_log_config?: [...{
				log_group_id!: string
				log_id!:       string
			}]
			display_name?:                   string
			idle_timeout_in_minutes?:        string
			type?:                           string
			max_duration_in_minutes?:        string
			asynchronous?:                   *true | bool
			pool_id?:                        string
			owner_user_name:                 string
			owner_principal_id:              string
			private_endpoint_subnet_id:      string
			lifecycle_details:               string
			time_created:                    string
			compartment_id!:                 string
			application_id?:                 string
			file_uri:                        string
			execute?:                        string
			archive_uri?:                    string
			num_executors?:                  int
			data_read_in_bytes:              string
			private_endpoint_max_host_count: int
			private_endpoint_dns_zones: [...string]
			executor_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			defined_tags?: [_]: string
			metastore_id?:   string
			executor_shape?: string
			configuration?: [_]: string
			opc_request_id:      string
			private_endpoint_id: string
		}
		pool: {
			lifecycle_details: string
			description?:      string
			display_name!:     string
			owner_user_name:   string
			time_created:      string
			state?:            string
			time_updated:      string
			pool_metrics: [...{
				active_runs_count: string
				actively_used_node_count: [...{
					pool_count:    int
					logical_shape: string
				}]
				time_last_metrics_updated: string
				time_last_started:         string
				time_last_stopped:         string
				time_last_used:            string
			}]
			freeform_tags?: [_]: string
			idle_timeout_in_minutes?: int
			defined_tags?: [_]: string
			schedules?: [...{
				day_of_week?: string
				start_time?:  int
				stop_time?:   int
			}]
			owner_principal_id: string
			compartment_id!:    string
			configurations!: [...{
				min?:   int
				shape?: string
				shape_config?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				max?: int
			}]
		}
		private_endpoint: {
			description?: string
			scan_details?: [...{
				port?: string
				fqdn?: string
			}]
			owner_principal_id: string
			nsg_ids?: [...string]
			freeform_tags?: [_]: string
			time_created: string
			defined_tags?: [_]: string
			state:             string
			max_host_count?:   int
			lifecycle_details: string
			owner_user_name:   string
			subnet_id!:        string
			dns_zones!: [...string]
			time_updated:    string
			display_name?:   string
			compartment_id!: string
		}
		run_statement: {
			run_id!: string
			output: [...{
				data: [...{
					type:  string
					value: string
				}]
				error_name:  string
				error_value: string
				status:      string
				traceback: [...string]
			}]
			progress:       float
			state:          string
			time_completed: string
			time_created:   string
			code!:          string
		}
		sql_endpoint: {
			state_message:       string
			min_executor_count!: int
			network_configuration!: [...{
				public_endpoint_ip: string
				subnet_id?:         string
				vcn_id?:            string
				network_type!:      string
				access_control_rules?: [...{
					value?:       string
					vcn_ips?:     string
					ip_notation?: string
				}]
				host_name_prefix?:   string
				private_endpoint_ip: string
			}]
			driver_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			compartment_id!:       string
			metastore_id!:         string
			max_executor_count!:   int
			sql_endpoint_version!: string
			system_tags: [_]: string
			time_created:    string
			executor_shape!: string
			executor_shape_config?: [...{
				ocpus?:         float
				memory_in_gbs?: float
			}]
			display_name!:        string
			warehouse_bucket_uri: string
			description?:         string
			time_updated:         string
			freeform_tags?: [_]: string
			driver_shape!: string
			lake_id:       string
			spark_advanced_configurations?: [_]: string
			jdbc_endpoint_url: string
			defined_tags?: [_]: string
			state?: string
		}
	}
	arguments: {
		application: {
			class_name?:           string
			warehouse_bucket_uri?: string
			arguments?: [...string]
			logs_bucket_uri?: string
			execute?:         string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			parameters?: [...{
				name!:  string
				value!: string
			}]
			spark_version!:           string
			idle_timeout_in_minutes?: string
			compartment_id!:          string
			application_log_config?: [...{
				log_id!:       string
				log_group_id!: string
			}]
			description?: string
			file_uri?:    string
			configuration?: [_]: string
			archive_uri?: string
			executor_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			language!:                string
			pool_id?:                 string
			private_endpoint_id?:     string
			metastore_id?:            string
			max_duration_in_minutes?: string
			display_name!:            string
			num_executors!:           int
			executor_shape!:          string
			driver_shape!:            string
			type?:                    string
			driver_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
		}
		invoke_run: {
			driver_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			warehouse_bucket_uri?:    string
			display_name?:            string
			application_id?:          string
			max_duration_in_minutes?: string
			executor_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			freeform_tags?: [_]: string
			logs_bucket_uri?:    string
			pool_id?:            string
			opc_parent_rpt_url?: string
			type?:               string
			execute?:            string
			spark_version?:      string
			asynchronous?:       *true | bool
			compartment_id!:     string
			application_log_config?: [...{
				log_id!:       string
				log_group_id!: string
			}]
			num_executors?:  int
			executor_shape?: string
			defined_tags?: [_]: string
			archive_uri?: string
			arguments?: [...string]
			metastore_id?: string
			parameters?: [...{
				name!:  string
				value!: string
			}]
			configuration?: [_]: string
			idle_timeout_in_minutes?: string
			driver_shape?:            string
		}
		pool: {
			state?: string
			freeform_tags?: [_]: string
			idle_timeout_in_minutes?: int
			defined_tags?: [_]: string
			schedules?: [...{
				start_time?:  int
				stop_time?:   int
				day_of_week?: string
			}]
			compartment_id!: string
			configurations!: [...{
				max?:   int
				min?:   int
				shape?: string
				shape_config?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
			}]
			description?:  string
			display_name!: string
		}
		private_endpoint: {
			display_name?: string
			defined_tags?: [_]: string
			description?: string
			freeform_tags?: [_]: string
			dns_zones!: [...string]
			subnet_id!: string
			nsg_ids?: [...string]
			scan_details?: [...{
				fqdn?: string
				port?: string
			}]
			max_host_count?: int
			compartment_id!: string
		}
		run_statement: {
			code!:   string
			run_id!: string
		}
		sql_endpoint: {
			min_executor_count!:   int
			state?:                string
			compartment_id!:       string
			sql_endpoint_version!: string
			driver_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			executor_shape!: string
			executor_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			spark_advanced_configurations?: [_]: string
			metastore_id!: string
			freeform_tags?: [_]: string
			network_configuration!: [...{
				subnet_id?:    string
				vcn_id?:       string
				network_type!: string
				access_control_rules?: [...{
					vcn_ips?:     string
					ip_notation?: string
					value?:       string
				}]
				host_name_prefix?: string
			}]
			driver_shape!: string
			defined_tags?: [_]: string
			description?:        string
			display_name!:       string
			max_executor_count!: int
		}
	}
}
#data: {
	invoke_run: run_id!: string
	pool: pool_id!: string
	private_endpoints: {
		display_name?:             string
		display_name_starts_with?: string
		owner_principal_id?:       string
		state?:                    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	run_logs: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		run_id!: string
	}
	run_statement: {
		run_id!:       string
		statement_id!: string
	}
	application: application_id!: string
	sql_endpoints: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:  string
		display_name?:    string
		sql_endpoint_id?: string
		state?:           string
	}
	pools: {
		compartment_id!:           string
		display_name?:             string
		display_name_starts_with?: string
		owner_principal_id?:       string
		state?:                    string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	private_endpoint: private_endpoint_id!: string
	run_statements: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		run_id!: string
		state?:  string
	}
	applications: {
		owner_principal_id?: string
		spark_version?:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:           string
		display_name?:             string
		display_name_starts_with?: string
	}
	invoke_runs: {
		application_id?:     string
		compartment_id!:     string
		display_name?:       string
		owner_principal_id?: string
		pool_id?:            string
		state?:              string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name_starts_with?:  string
		time_created_greater_than?: string
	}
	run_log: {
		name!:                  string
		run_id!:                string
		base64_encode_content?: *false | bool
	}
	sql_endpoint: sql_endpoint_id!: string
}

