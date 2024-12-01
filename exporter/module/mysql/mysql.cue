package mysql

#resource: {
	attributes: {
		channel: {
			lifecycle_details: string
			state:             string
			time_created:      string
			source!: [...{
				anonymous_transactions_handling?: [...{
					uuid?:                         string
					policy!:                       string
					last_configured_log_filename?: string
					last_configured_log_offset?:   string
				}]
				port?: int
				ssl_ca_certificate?: [...{
					certificate_type!: string
					contents!:         string
				}]
				hostname!:    string
				password!:    string
				source_type!: string
				ssl_mode!:    string
				username!:    string
			}]
			target!: [...{
				delay_in_seconds?: int
				filters?: [...{
					type!:  string
					value!: string
				}]
				tables_without_primary_key_handling?: string
				db_system_id!:                        string
				target_type!:                         string
				applier_username?:                    string
				channel_name?:                        string
			}]
			display_name?: string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			is_enabled?:     bool
			time_updated:    string
			description?:    string
			compartment_id?: string
		}
		heat_wave_cluster: {
			db_system_id!: string
			cluster_size!: int
			time_updated:  string
			cluster_nodes: [...{
				node_id:      string
				state:        string
				time_created: string
				time_updated: string
			}]
			time_created:          string
			state?:                string
			lifecycle_details:     string
			is_lakehouse_enabled?: bool
			shape_name!:           string
		}
		mysql_backup: {
			backup_type?: string
			description?: string
			db_system_snapshot_summary?: [...{
				display_name?: string
				id?:           string
				region?:       string
			}]
			display_name?:             string
			time_copy_created:         string
			creation_type:             string
			original_source_backup_id: string
			backup_size_in_gbs:        int
			time_updated:              string
			compartment_id?:           string
			db_system_id?:             string
			source_details?: [...{
				compartment_id!: string
				region!:         string
				backup_id!:      string
			}]
			data_storage_size_in_gb: int
			db_system_snapshot: [...{
				fault_domain:  string
				mysql_version: string
				region:        string
				endpoints: [...{
					ip_address:     string
					resource_id:    string
					status_details: string
					hostname:       string
					status:         string
					modes: [...string]
					port_x:        int
					resource_type: string
					port:          int
				}]
				display_name:        string
				shape_name:          string
				is_highly_available: bool
				port:                int
				crash_recovery:      string
				database_management: string
				defined_tags: [_]: string
				description: string
				data_storage: [...{
					allocated_storage_size_in_gbs:  int
					data_storage_size_in_gb:        int
					data_storage_size_limit_in_gbs: int
					is_auto_expand_storage_enabled: bool
					max_storage_size_in_gbs:        int
				}]
				deletion_policy: [...{
					final_backup:               string
					is_delete_protected:        bool
					automatic_backup_retention: string
				}]
				secure_connections: [...{
					certificate_generation_type: string
					certificate_id:              string
				}]
				id:                  string
				availability_domain: string
				maintenance: [...{
					window_start_time: string
				}]
				ip_address: string
				freeform_tags: [_]: string
				data_storage_size_in_gb: int
				hostname_label:          string
				configuration_id:        string
				compartment_id?:         string
				port_x:                  int
				backup_policy: [...{
					window_start_time: string
					defined_tags: [_]: string
					freeform_tags: [_]: string
					is_enabled: bool
					pitr_policy: [...{
						is_enabled: bool
					}]
					retention_in_days: int
				}]
				subnet_id:      string
				admin_username: string
			}]
			immediate_source_backup_id: string
			state:                      string
			time_created:               string
			mysql_version:              string
			lifecycle_details:          string
			shape_name:                 string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			retention_in_days?: int
		}
		mysql_configuration: {
			description?:             string
			parent_configuration_id?: string
			time_created:             string
			time_updated:             string
			type:                     string
			variables?: [...{
				wait_timeout?:                                int
				connection_memory_chunk_size?:                int
				mysqlx_deflate_default_compression_level?:    int
				sort_buffer_size?:                            string
				mysqlx_zstd_default_compression_level?:       int
				innodb_ft_num_word_optimize?:                 int
				innodb_max_purge_lag_delay?:                  int
				max_prepared_stmt_count?:                     int
				mysqlx_connect_timeout?:                      int
				transaction_isolation?:                       string
				mysqlx_read_timeout?:                         int
				max_connect_errors?:                          string
				innodb_lock_wait_timeout?:                    int
				default_authentication_plugin?:               string
				innodb_ddl_buffer_size?:                      string
				big_tables?:                                  bool
				local_infile?:                                bool
				net_read_timeout?:                            int
				mysqlx_max_allowed_packet?:                   int
				net_write_timeout?:                           int
				innodb_buffer_pool_instances?:                int
				thread_pool_max_transactions_limit?:          int
				innodb_ft_server_stopword_table?:             string
				innodb_log_writer_threads?:                   bool
				mysqlx_document_id_unique_prefix?:            int
				sql_warnings?:                                bool
				max_heap_table_size?:                         string
				connect_timeout?:                             int
				mysqlx_lz4default_compression_level?:         int
				binlog_transaction_compression?:              bool
				information_schema_stats_expiry?:             int
				completion_type?:                             string
				mysqlx_interactive_timeout?:                  int
				mysql_firewall_mode?:                         bool
				innodb_ddl_threads?:                          int
				innodb_ft_min_token_size?:                    int
				sql_require_primary_key?:                     bool
				parser_max_mem_size?:                         string
				mandatory_roles?:                             string
				mysql_zstd_default_compression_level?:        int
				global_connection_memory_tracking?:           bool
				innodb_buffer_pool_dump_pct?:                 int
				regexp_time_limit?:                           int
				innodb_stats_transient_sample_pages?:         string
				mysqlx_enable_hello_notice?:                  bool
				binlog_row_metadata?:                         string
				innodb_stats_persistent_sample_pages?:        string
				max_connections?:                             int
				innodb_ft_result_cache_limit?:                string
				autocommit?:                                  bool
				global_connection_memory_limit?:              string
				mysqlx_min_worker_threads?:                   int
				mysqlx_deflate_max_client_compression_level?: int
				time_zone?:                                   string
				max_execution_time?:                          string
				mysqlx_write_timeout?:                        int
				mysqlx_idle_worker_thread_timeout?:           int
				mysqlx_lz4max_client_compression_level?:      int
				binlog_row_value_options?:                    string
				foreign_key_checks?:                          bool
				max_binlog_cache_size?:                       string
				query_alloc_block_size?:                      string
				innodb_ft_enable_stopword?:                   bool
				max_allowed_packet?:                          int
				mysqlx_wait_timeout?:                         int
				thread_pool_dedicated_listeners?:             bool
				sql_mode?:                                    string
				binlog_expire_logs_seconds?:                  int
				tmp_table_size?:                              string
				query_prealloc_size?:                         string
				mysqlx_zstd_max_client_compression_level?:    int
				connection_memory_limit?:                     string
				interactive_timeout?:                         int
				group_replication_consistency?:               string
				innodb_buffer_pool_size?:                     string
				generated_random_password_length?:            int
				innodb_max_purge_lag?:                        string
				cte_max_recursion_depth?:                     string
				innodb_ft_max_token_size?:                    int
			}]
			state: string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			init_variables?: [...{
				lower_case_table_names?: string
			}]
			compartment_id!: string
			shape_name!:     string
		}
		mysql_db_system: {
			freeform_tags?: [_]: string
			deletion_policy?: [...{
				automatic_backup_retention?: string
				final_backup?:               string
				is_delete_protected?:        bool
			}]
			point_in_time_recovery_details: [...{
				time_earliest_recovery_point: string
				time_latest_recovery_point:   string
			}]
			defined_tags?: [_]: string
			state?:            string
			subnet_id!:        string
			lifecycle_details: string
			endpoints: [...{
				status:     string
				ip_address: string
				modes: [...string]
				status_details: string
				resource_id:    string
				resource_type:  string
				hostname:       string
				port:           int
				port_x:         int
			}]
			ip_address?:    string
			mysql_version?: string
			maintenance?: [...{
				window_start_time!: string
			}]
			description?: string
			channels: [...{
				display_name:      string
				lifecycle_details: string
				target: [...{
					channel_name:     string
					db_system_id:     string
					delay_in_seconds: int
					filters: [...{
						type:  string
						value: string
					}]
					tables_without_primary_key_handling: string
					target_type:                         string
					applier_username:                    string
				}]
				compartment_id: string
				state:          string
				time_created:   string
				time_updated:   string
				freeform_tags: [_]: string
				id: string
				source: [...{
					anonymous_transactions_handling: [...{
						last_configured_log_filename: string
						last_configured_log_offset:   string
						policy:                       string
						uuid:                         string
					}]
					hostname:    string
					port:        int
					source_type: string
					ssl_ca_certificate: [...{
						certificate_type: string
						contents:         string
					}]
					ssl_mode: string
					username: string
				}]
				defined_tags: [_]: string
				is_enabled: bool
			}]
			time_updated:         string
			is_highly_available?: bool
			secure_connections?: [...{
				certificate_id?:              string
				certificate_generation_type!: string
			}]
			shape_name!: string
			port?:       int
			heat_wave_cluster: [...{
				time_updated:         string
				cluster_size:         int
				is_lakehouse_enabled: bool
				shape_name:           string
				state:                string
				time_created:         string
			}]
			hostname_label?:          string
			database_management?:     string
			admin_username?:          string
			data_storage_size_in_gb?: int
			time_created:             string
			backup_policy?: [...{
				retention_in_days?: int
				window_start_time?: string
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
				is_enabled?: bool
				pitr_policy?: [...{
					is_enabled?: bool
				}]
			}]
			port_x?: int
			current_placement: [...{
				availability_domain: string
				fault_domain:        string
			}]
			display_name?:                 string
			is_heat_wave_cluster_attached: bool
			configuration_id?:             string
			fault_domain?:                 string
			shutdown_type?:                string
			compartment_id!:               string
			source?: [...{
				source_url?:     string
				source_type!:    string
				backup_id?:      string
				db_system_id?:   string
				recovery_point?: string
			}]
			crash_recovery?:      string
			availability_domain!: string
			admin_password?:      string
			customer_contacts?: [...{
				email!: string
			}]
			data_storage?: [...{
				allocated_storage_size_in_gbs:   int
				data_storage_size_in_gb:         int
				data_storage_size_limit_in_gbs:  int
				is_auto_expand_storage_enabled?: bool
				max_storage_size_in_gbs?:        int
			}]
		}
		replica: {
			replica_overrides?: [...{
				configuration_id?: string
				mysql_version?:    string
				shape_name?:       string
			}]
			configuration_id:     string
			fault_domain:         string
			port_x:               int
			is_delete_protected?: bool
			ip_address:           string
			port:                 int
			shape_name:           string
			defined_tags?: [_]: string
			availability_domain: string
			state:               string
			time_updated:        string
			display_name?:       string
			compartment_id:      string
			freeform_tags?: [_]: string
			description?:      string
			lifecycle_details: string
			mysql_version:     string
			time_created:      string
			secure_connections: [...{
				certificate_generation_type: string
				certificate_id:              string
			}]
			db_system_id!: string
		}
	}
	arguments: {
		channel: {
			target!: [...{
				filters?: [...{
					type!:  string
					value!: string
				}]
				tables_without_primary_key_handling?: string
				db_system_id!:                        string
				target_type!:                         string
				applier_username?:                    string
				channel_name?:                        string
				delay_in_seconds?:                    int
			}]
			description?:  string
			display_name?: string
			freeform_tags?: [_]: string
			is_enabled?:     bool
			compartment_id?: string
			defined_tags?: [_]: string
			source!: [...{
				ssl_mode!: string
				username!: string
				anonymous_transactions_handling?: [...{
					last_configured_log_offset?:   string
					uuid?:                         string
					policy!:                       string
					last_configured_log_filename?: string
				}]
				port?: int
				ssl_ca_certificate?: [...{
					certificate_type!: string
					contents!:         string
				}]
				hostname!:    string
				password!:    string
				source_type!: string
			}]
		}
		heat_wave_cluster: {
			cluster_size!:         int
			db_system_id!:         string
			shape_name!:           string
			state?:                string
			is_lakehouse_enabled?: bool
		}
		mysql_backup: {
			db_system_id?: string
			source_details?: [...{
				compartment_id!: string
				region!:         string
				backup_id!:      string
			}]
			backup_type?: string
			db_system_snapshot_summary?: [...{
				id?:           string
				region?:       string
				display_name?: string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id?:    string
			description?:       string
			display_name?:      string
			retention_in_days?: int
		}
		mysql_configuration: {
			display_name?:   string
			compartment_id!: string
			description?:    string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			variables?: [...{
				mysqlx_connect_timeout?:                      int
				innodb_buffer_pool_instances?:                int
				sql_mode?:                                    string
				global_connection_memory_tracking?:           bool
				sql_require_primary_key?:                     bool
				sql_warnings?:                                bool
				completion_type?:                             string
				group_replication_consistency?:               string
				sort_buffer_size?:                            string
				mysql_zstd_default_compression_level?:        int
				query_prealloc_size?:                         string
				mysqlx_enable_hello_notice?:                  bool
				thread_pool_dedicated_listeners?:             bool
				mysqlx_document_id_unique_prefix?:            int
				generated_random_password_length?:            int
				default_authentication_plugin?:               string
				mandatory_roles?:                             string
				innodb_ft_min_token_size?:                    int
				connect_timeout?:                             int
				thread_pool_max_transactions_limit?:          int
				innodb_ft_max_token_size?:                    int
				mysqlx_deflate_default_compression_level?:    int
				time_zone?:                                   string
				global_connection_memory_limit?:              string
				connection_memory_limit?:                     string
				max_connections?:                             int
				max_execution_time?:                          string
				binlog_row_value_options?:                    string
				net_read_timeout?:                            int
				mysql_firewall_mode?:                         bool
				innodb_ft_result_cache_limit?:                string
				information_schema_stats_expiry?:             int
				innodb_buffer_pool_size?:                     string
				big_tables?:                                  bool
				max_binlog_cache_size?:                       string
				max_connect_errors?:                          string
				interactive_timeout?:                         int
				connection_memory_chunk_size?:                int
				parser_max_mem_size?:                         string
				query_alloc_block_size?:                      string
				innodb_lock_wait_timeout?:                    int
				max_prepared_stmt_count?:                     int
				local_infile?:                                bool
				innodb_ddl_threads?:                          int
				transaction_isolation?:                       string
				innodb_ft_num_word_optimize?:                 int
				net_write_timeout?:                           int
				max_allowed_packet?:                          int
				innodb_max_purge_lag?:                        string
				mysqlx_write_timeout?:                        int
				cte_max_recursion_depth?:                     string
				foreign_key_checks?:                          bool
				mysqlx_read_timeout?:                         int
				binlog_row_metadata?:                         string
				mysqlx_max_allowed_packet?:                   int
				binlog_expire_logs_seconds?:                  int
				mysqlx_lz4default_compression_level?:         int
				mysqlx_zstd_default_compression_level?:       int
				wait_timeout?:                                int
				binlog_transaction_compression?:              bool
				autocommit?:                                  bool
				innodb_ft_enable_stopword?:                   bool
				innodb_stats_transient_sample_pages?:         string
				innodb_ft_server_stopword_table?:             string
				mysqlx_idle_worker_thread_timeout?:           int
				innodb_stats_persistent_sample_pages?:        string
				max_heap_table_size?:                         string
				mysqlx_zstd_max_client_compression_level?:    int
				mysqlx_wait_timeout?:                         int
				mysqlx_lz4max_client_compression_level?:      int
				innodb_log_writer_threads?:                   bool
				innodb_ddl_buffer_size?:                      string
				mysqlx_interactive_timeout?:                  int
				regexp_time_limit?:                           int
				tmp_table_size?:                              string
				mysqlx_min_worker_threads?:                   int
				mysqlx_deflate_max_client_compression_level?: int
				innodb_max_purge_lag_delay?:                  int
				innodb_buffer_pool_dump_pct?:                 int
			}]
			shape_name!: string
			init_variables?: [...{
				lower_case_table_names?: string
			}]
			parent_configuration_id?: string
		}
		mysql_db_system: {
			is_highly_available?: bool
			ip_address?:          string
			mysql_version?:       string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			shutdown_type?: string
			source?: [...{
				source_url?:     string
				source_type!:    string
				backup_id?:      string
				db_system_id?:   string
				recovery_point?: string
			}]
			description?:    string
			admin_password?: string
			fault_domain?:   string
			state?:          string
			shape_name!:     string
			maintenance?: [...{
				window_start_time!: string
			}]
			deletion_policy?: [...{
				automatic_backup_retention?: string
				final_backup?:               string
				is_delete_protected?:        bool
			}]
			hostname_label?: string
			customer_contacts?: [...{
				email!: string
			}]
			display_name?:            string
			compartment_id!:          string
			availability_domain!:     string
			database_management?:     string
			data_storage_size_in_gb?: int
			subnet_id!:               string
			configuration_id?:        string
			admin_username?:          string
			backup_policy?: [...{
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
				is_enabled?: bool
				pitr_policy?: [...{
					is_enabled?: bool
				}]
				retention_in_days?: int
				window_start_time?: string
			}]
			port?:           int
			crash_recovery?: string
			port_x?:         int
			data_storage?: [...{
				is_auto_expand_storage_enabled?: bool
				max_storage_size_in_gbs?:        int
			}]
			secure_connections?: [...{
				certificate_generation_type!: string
				certificate_id?:              string
			}]
		}
		replica: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			description?:         string
			is_delete_protected?: bool
			replica_overrides?: [...{
				configuration_id?: string
				mysql_version?:    string
				shape_name?:       string
			}]
			db_system_id!: string
			display_name?: string
		}
	}
}
#data: {
	channel: channel_id!: string
	mysql_configurations: {
		shape_name?: string
		state?:      string
		type?: [...string]
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!:   string
		configuration_id?: string
		display_name?:     string
	}
	mysql_db_system: db_system_id!: string
	mysql_db_systems: {
		database_management?: [...string]
		compartment_id!:   string
		db_system_id?:     string
		configuration_id?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		display_name?:                  string
		is_heat_wave_cluster_attached?: bool
		is_up_to_date?:                 bool
		state?:                         string
	}
	shapes: {
		compartment_id!: string
		is_supported_for?: [...string]
		name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain?: string
	}
	mysql_versions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	replica: replica_id!: string
	replicas: {
		replica_id?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		configuration_id?: string
		display_name?:     string
		compartment_id!:   string
		db_system_id?:     string
		state?:            string
		is_up_to_date?:    bool
	}
	channels: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		channel_id?:     string
		compartment_id!: string
		db_system_id?:   string
		display_name?:   string
		is_enabled?:     bool
	}
	heat_wave_cluster: db_system_id!: string
	mysql_backup: backup_id!: string
	mysql_backups: {
		db_system_id?: string
		display_name?: string
		state?:        string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		backup_id?:      string
		compartment_id!: string
		creation_type?:  string
	}
	mysql_configuration: configuration_id!: string
}

