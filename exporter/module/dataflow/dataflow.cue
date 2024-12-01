package dataflow

#resource: {
	attributes: {
		pool: {
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
			display_name!: string
			description?:  string
			schedules?: [...{
				start_time?:  int
				stop_time?:   int
				day_of_week?: string
			}]
			configurations!: [...{
				min?:   int
				shape?: string
				shape_config?: [...{
					memory_in_gbs?: float
					ocpus?:         float
				}]
				max?: int
			}]
			freeform_tags?: [_]: string
			idle_timeout_in_minutes?: int
			lifecycle_details:        string
			time_updated:             string
			time_created:             string
			owner_principal_id:       string
			compartment_id!:          string
			state?:                   string
			owner_user_name:          string
			defined_tags?: [_]: string
		}
		private_endpoint: {
			lifecycle_details:  string
			compartment_id!:    string
			owner_principal_id: string
			description?:       string
			max_host_count?:    int
			time_updated:       string
			dns_zones!: [...string]
			subnet_id!:    string
			state:         string
			time_created:  string
			display_name?: string
			freeform_tags?: [_]: string
			scan_details?: [...{
				fqdn?: string
				port?: string
			}]
			owner_user_name: string
			nsg_ids?: [...string]
			defined_tags?: [_]: string
		}
		run_statement: {
			output: [...{
				error_name:  string
				error_value: string
				status:      string
				traceback: [...string]
				data: [...{
					type:  string
					value: string
				}]
			}]
			progress:       float
			state:          string
			time_completed: string
			time_created:   string
			code!:          string
			run_id!:        string
		}
		sql_endpoint: {
			state_message: string
			system_tags: [_]: string
			state?: string
			defined_tags?: [_]: string
			executor_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			spark_advanced_configurations?: [_]: string
			min_executor_count!:   int
			warehouse_bucket_uri:  string
			time_updated:          string
			executor_shape!:       string
			sql_endpoint_version!: string
			lake_id:               string
			description?:          string
			freeform_tags?: [_]: string
			jdbc_endpoint_url: string
			display_name!:     string
			driver_shape_config?: [...{
				ocpus?:         float
				memory_in_gbs?: float
			}]
			max_executor_count!: int
			time_created:        string
			metastore_id!:       string
			compartment_id!:     string
			driver_shape!:       string
			network_configuration!: [...{
				subnet_id?:    string
				vcn_id?:       string
				network_type!: string
				access_control_rules?: [...{
					value?:       string
					vcn_ips?:     string
					ip_notation?: string
				}]
				host_name_prefix?:   string
				private_endpoint_ip: string
				public_endpoint_ip:  string
			}]
		}
		application: {
			parameters?: [...{
				name!:  string
				value!: string
			}]
			spark_version!:       string
			type?:                string
			archive_uri?:         string
			private_endpoint_id?: string
			description?:         string
			compartment_id!:      string
			display_name!:        string
			driver_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			pool_id?:       string
			num_executors!: int
			defined_tags?: [_]: string
			configuration?: [_]: string
			time_updated: string
			class_name?:  string
			freeform_tags?: [_]: string
			executor_shape!:    string
			owner_principal_id: string
			driver_shape!:      string
			logs_bucket_uri?:   string
			arguments?: [...string]
			idle_timeout_in_minutes?: string
			metastore_id?:            string
			execute?:                 string
			executor_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			application_log_config?: [...{
				log_group_id!: string
				log_id!:       string
			}]
			owner_user_name:          string
			max_duration_in_minutes?: string
			language!:                string
			time_created:             string
			state:                    string
			warehouse_bucket_uri?:    string
			file_uri?:                string
		}
		invoke_run: {
			pool_id?:              string
			asynchronous?:         *true | bool
			data_written_in_bytes: string
			num_executors?:        int
			time_created:          string
			arguments?: [...string]
			state:                    string
			time_updated:             string
			archive_uri?:             string
			language:                 string
			idle_timeout_in_minutes?: string
			defined_tags?: [_]: string
			parameters?: [...{
				name!:  string
				value!: string
			}]
			type?: string
			private_endpoint_dns_zones: [...string]
			application_id?:          string
			class_name:               string
			file_uri:                 string
			spark_version?:           string
			owner_user_name:          string
			display_name?:            string
			executor_shape?:          string
			max_duration_in_minutes?: string
			freeform_tags?: [_]: string
			private_endpoint_max_host_count: int
			owner_principal_id:              string
			private_endpoint_nsg_ids: [...string]
			executor_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			private_endpoint_subnet_id:   string
			run_duration_in_milliseconds: string
			lifecycle_details:            string
			metastore_id?:                string
			opc_parent_rpt_url?:          string
			warehouse_bucket_uri?:        string
			execute?:                     string
			data_read_in_bytes:           string
			configuration?: [_]: string
			driver_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			private_endpoint_id: string
			compartment_id!:     string
			application_log_config?: [...{
				log_group_id!: string
				log_id!:       string
			}]
			driver_shape?:    string
			opc_request_id:   string
			total_ocpu:       int
			logs_bucket_uri?: string
		}
	}
	arguments: {
		pool: {
			schedules?: [...{
				day_of_week?: string
				start_time?:  int
				stop_time?:   int
			}]
			description?: string
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name!:   string
			defined_tags?: [_]: string
			idle_timeout_in_minutes?: int
			configurations!: [...{
				max?:   int
				min?:   int
				shape?: string
				shape_config?: [...{
					ocpus?:         float
					memory_in_gbs?: float
				}]
			}]
			state?: string
		}
		private_endpoint: {
			compartment_id!: string
			defined_tags?: [_]: string
			dns_zones!: [...string]
			display_name?: string
			description?:  string
			nsg_ids?: [...string]
			scan_details?: [...{
				port?: string
				fqdn?: string
			}]
			freeform_tags?: [_]: string
			subnet_id!:      string
			max_host_count?: int
		}
		run_statement: {
			code!:   string
			run_id!: string
		}
		sql_endpoint: {
			state?: string
			executor_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			executor_shape!:     string
			min_executor_count!: int
			driver_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			freeform_tags?: [_]: string
			driver_shape!: string
			network_configuration!: [...{
				network_type!: string
				access_control_rules?: [...{
					vcn_ips?:     string
					ip_notation?: string
					value?:       string
				}]
				host_name_prefix?: string
				subnet_id?:        string
				vcn_id?:           string
			}]
			display_name!: string
			metastore_id!: string
			spark_advanced_configurations?: [_]: string
			max_executor_count!:   int
			description?:          string
			sql_endpoint_version!: string
			defined_tags?: [_]: string
			compartment_id!: string
		}
		application: {
			pool_id?:                 string
			idle_timeout_in_minutes?: string
			type?:                    string
			private_endpoint_id?:     string
			executor_shape!:          string
			warehouse_bucket_uri?:    string
			arguments?: [...string]
			compartment_id!: string
			spark_version!:  string
			metastore_id?:   string
			executor_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			driver_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			max_duration_in_minutes?: string
			num_executors!:           int
			archive_uri?:             string
			parameters?: [...{
				name!:  string
				value!: string
			}]
			class_name?:      string
			execute?:         string
			logs_bucket_uri?: string
			display_name!:    string
			language!:        string
			configuration?: [_]: string
			driver_shape!: string
			freeform_tags?: [_]: string
			file_uri?: string
			defined_tags?: [_]: string
			application_log_config?: [...{
				log_id!:       string
				log_group_id!: string
			}]
			description?: string
		}
		invoke_run: {
			arguments?: [...string]
			compartment_id!:          string
			warehouse_bucket_uri?:    string
			idle_timeout_in_minutes?: string
			defined_tags?: [_]: string
			execute?:       string
			num_executors?: int
			configuration?: [_]: string
			driver_shape?:       string
			type?:               string
			logs_bucket_uri?:    string
			opc_parent_rpt_url?: string
			parameters?: [...{
				value!: string
				name!:  string
			}]
			archive_uri?: string
			freeform_tags?: [_]: string
			max_duration_in_minutes?: string
			pool_id?:                 string
			asynchronous?:            *true | bool
			application_log_config?: [...{
				log_id!:       string
				log_group_id!: string
			}]
			spark_version?:  string
			application_id?: string
			driver_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			executor_shape_config?: [...{
				memory_in_gbs?: float
				ocpus?:         float
			}]
			display_name?:   string
			metastore_id?:   string
			executor_shape?: string
		}
	}
}
#data: {
	run_statement: {
		run_id!:       string
		statement_id!: string
	}
	pools: {
		display_name_starts_with?: string
		owner_principal_id?:       string
		state?:                    string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
	}
	private_endpoints: {
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
	run_log: {
		run_id!:                string
		base64_encode_content?: *false | bool
		name!:                  string
	}
	run_logs: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		run_id!: string
	}
	run_statements: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		run_id!: string
	}
	sql_endpoints: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?:  string
		display_name?:    string
		sql_endpoint_id?: string
		state?:           string
	}
	application: application_id!: string
	applications: {
		display_name?:             string
		display_name_starts_with?: string
		owner_principal_id?:       string
		spark_version?:            string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	private_endpoint: private_endpoint_id!: string
	sql_endpoint: sql_endpoint_id!: string
	invoke_run: run_id!: string
	invoke_runs: {
		application_id?: string
		compartment_id!: string
		pool_id?:        string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:              string
		display_name_starts_with?:  string
		time_created_greater_than?: string
		owner_principal_id?:        string
		state?:                     string
	}
	pool: pool_id!: string
}

