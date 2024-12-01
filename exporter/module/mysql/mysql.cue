package mysql

#resource: {
	attributes: {
		replica: {
			time_created:         string
			db_system_id!:        string
			is_delete_protected?: bool
			state:                string
			display_name?:        string
			replica_overrides?: [...{
				configuration_id?: string
				mysql_version?:    string
				shape_name?:       string
			}]
			lifecycle_details: string
			description?:      string
			fault_domain:      string
			defined_tags?: [_]: string
			mysql_version:    string
			port_x:           int
			configuration_id: string
			secure_connections: [...{
				certificate_generation_type: string
				certificate_id:              string
			}]
			availability_domain: string
			shape_name:          string
			compartment_id:      string
			port:                int
			ip_address:          string
			time_updated:        string
			freeform_tags?: [_]: string
		}
		channel: {
			source!: [...{
				source_type!: string
				ssl_mode!:    string
				username!:    string
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
				hostname!: string
				password!: string
			}]
			lifecycle_details: string
			target!: [...{
				db_system_id!:     string
				target_type!:      string
				applier_username?: string
				channel_name?:     string
				delay_in_seconds?: int
				filters?: [...{
					type!:  string
					value!: string
				}]
				tables_without_primary_key_handling?: string
			}]
			compartment_id?: string
			description?:    string
			time_created:    string
			time_updated:    string
			defined_tags?: [_]: string
			display_name?: string
			freeform_tags?: [_]: string
			is_enabled?: bool
			state:       string
		}
		heat_wave_cluster: {
			cluster_nodes: [...{
				state:        string
				time_created: string
				time_updated: string
				node_id:      string
			}]
			lifecycle_details:     string
			time_created:          string
			time_updated:          string
			shape_name!:           string
			cluster_size!:         int
			is_lakehouse_enabled?: bool
			state?:                string
			db_system_id!:         string
		}
		mysql_backup: {
			compartment_id?:            string
			creation_type:              string
			immediate_source_backup_id: string
			shape_name:                 string
			state:                      string
			time_created:               string
			freeform_tags?: [_]: string
			original_source_backup_id: string
			defined_tags?: [_]: string
			time_updated:            string
			data_storage_size_in_gb: int
			db_system_snapshot: [...{
				display_name:    string
				compartment_id?: string
				fault_domain:    string
				deletion_policy: [...{
					automatic_backup_retention: string
					final_backup:               string
					is_delete_protected:        bool
				}]
				database_management: string
				crash_recovery:      string
				shape_name:          string
				is_highly_available: bool
				ip_address:          string
				region:              string
				hostname_label:      string
				data_storage: [...{
					allocated_storage_size_in_gbs:  int
					data_storage_size_in_gb:        int
					data_storage_size_limit_in_gbs: int
					is_auto_expand_storage_enabled: bool
					max_storage_size_in_gbs:        int
				}]
				endpoints: [...{
					status_details: string
					hostname:       string
					port_x:         int
					modes: [...string]
					port:          int
					resource_id:   string
					status:        string
					ip_address:    string
					resource_type: string
				}]
				mysql_version:    string
				subnet_id:        string
				configuration_id: string
				maintenance: [...{
					window_start_time: string
				}]
				freeform_tags: [_]: string
				port:                    int
				data_storage_size_in_gb: int
				secure_connections: [...{
					certificate_id:              string
					certificate_generation_type: string
				}]
				port_x:              int
				admin_username:      string
				id:                  string
				availability_domain: string
				defined_tags: [_]: string
				description: string
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
			}]
			db_system_id?: string
			description?:  string
			backup_type?:  string
			db_system_snapshot_summary?: [...{
				region?:       string
				display_name?: string
				id?:           string
			}]
			time_copy_created: string
			source_details?: [...{
				region!:         string
				backup_id!:      string
				compartment_id!: string
			}]
			retention_in_days?: int
			lifecycle_details:  string
			display_name?:      string
			mysql_version:      string
			backup_size_in_gbs: int
		}
		mysql_configuration: {
			shape_name!: string
			defined_tags?: [_]: string
			parent_configuration_id?: string
			variables?: [...{
				mysqlx_wait_timeout?:                         int
				connect_timeout?:                             int
				wait_timeout?:                                int
				innodb_log_writer_threads?:                   bool
				mandatory_roles?:                             string
				innodb_stats_persistent_sample_pages?:        string
				max_prepared_stmt_count?:                     int
				sort_buffer_size?:                            string
				binlog_row_metadata?:                         string
				max_connections?:                             int
				innodb_buffer_pool_dump_pct?:                 int
				sql_warnings?:                                bool
				max_allowed_packet?:                          int
				connection_memory_chunk_size?:                int
				innodb_max_purge_lag?:                        string
				tmp_table_size?:                              string
				global_connection_memory_tracking?:           bool
				net_write_timeout?:                           int
				sql_mode?:                                    string
				mysqlx_idle_worker_thread_timeout?:           int
				mysqlx_lz4default_compression_level?:         int
				binlog_transaction_compression?:              bool
				connection_memory_limit?:                     string
				transaction_isolation?:                       string
				innodb_ft_server_stopword_table?:             string
				mysqlx_read_timeout?:                         int
				mysqlx_min_worker_threads?:                   int
				innodb_lock_wait_timeout?:                    int
				mysqlx_interactive_timeout?:                  int
				autocommit?:                                  bool
				local_infile?:                                bool
				max_binlog_cache_size?:                       string
				net_read_timeout?:                            int
				information_schema_stats_expiry?:             int
				max_execution_time?:                          string
				group_replication_consistency?:               string
				mysqlx_zstd_default_compression_level?:       int
				innodb_ft_enable_stopword?:                   bool
				binlog_expire_logs_seconds?:                  int
				completion_type?:                             string
				innodb_ft_result_cache_limit?:                string
				innodb_buffer_pool_instances?:                int
				mysqlx_deflate_max_client_compression_level?: int
				innodb_ft_num_word_optimize?:                 int
				generated_random_password_length?:            int
				thread_pool_max_transactions_limit?:          int
				mysqlx_enable_hello_notice?:                  bool
				default_authentication_plugin?:               string
				parser_max_mem_size?:                         string
				mysql_zstd_default_compression_level?:        int
				mysqlx_lz4max_client_compression_level?:      int
				mysql_firewall_mode?:                         bool
				mysqlx_write_timeout?:                        int
				mysqlx_max_allowed_packet?:                   int
				global_connection_memory_limit?:              string
				mysqlx_deflate_default_compression_level?:    int
				cte_max_recursion_depth?:                     string
				innodb_max_purge_lag_delay?:                  int
				binlog_row_value_options?:                    string
				innodb_buffer_pool_size?:                     string
				regexp_time_limit?:                           int
				time_zone?:                                   string
				innodb_ft_max_token_size?:                    int
				interactive_timeout?:                         int
				query_alloc_block_size?:                      string
				mysqlx_zstd_max_client_compression_level?:    int
				innodb_ddl_buffer_size?:                      string
				sql_require_primary_key?:                     bool
				foreign_key_checks?:                          bool
				big_tables?:                                  bool
				innodb_ft_min_token_size?:                    int
				max_connect_errors?:                          string
				query_prealloc_size?:                         string
				innodb_stats_transient_sample_pages?:         string
				innodb_ddl_threads?:                          int
				mysqlx_document_id_unique_prefix?:            int
				max_heap_table_size?:                         string
				mysqlx_connect_timeout?:                      int
				thread_pool_dedicated_listeners?:             bool
			}]
			init_variables?: [...{
				lower_case_table_names?: string
			}]
			time_created:    string
			time_updated:    string
			compartment_id!: string
			type:            string
			description?:    string
			display_name?:   string
			freeform_tags?: [_]: string
			state: string
		}
		mysql_db_system: {
			defined_tags?: [_]: string
			deletion_policy?: [...{
				automatic_backup_retention?: string
				final_backup?:               string
				is_delete_protected?:        bool
			}]
			shutdown_type?: string
			time_created:   string
			port?:          int
			endpoints: [...{
				resource_type:  string
				ip_address:     string
				hostname:       string
				status:         string
				status_details: string
				modes: [...string]
				port:        int
				port_x:      int
				resource_id: string
			}]
			state?: string
			source?: [...{
				source_type!:    string
				backup_id?:      string
				db_system_id?:   string
				recovery_point?: string
				source_url?:     string
			}]
			customer_contacts?: [...{
				email!: string
			}]
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
			maintenance?: [...{
				window_start_time!: string
			}]
			display_name?:                 string
			description?:                  string
			configuration_id?:             string
			database_management?:          string
			is_heat_wave_cluster_attached: bool
			freeform_tags?: [_]: string
			mysql_version?:    string
			lifecycle_details: string
			fault_domain?:     string
			secure_connections?: [...{
				certificate_generation_type!: string
				certificate_id?:              string
			}]
			heat_wave_cluster: [...{
				is_lakehouse_enabled: bool
				shape_name:           string
				state:                string
				time_created:         string
				time_updated:         string
				cluster_size:         int
			}]
			admin_password?: string
			data_storage?: [...{
				is_auto_expand_storage_enabled?: bool
				max_storage_size_in_gbs?:        int
				allocated_storage_size_in_gbs:   int
				data_storage_size_in_gb:         int
				data_storage_size_limit_in_gbs:  int
			}]
			availability_domain!: string
			subnet_id!:           string
			crash_recovery?:      string
			shape_name!:          string
			channels: [...{
				freeform_tags: [_]: string
				source: [...{
					source_type: string
					ssl_ca_certificate: [...{
						certificate_type: string
						contents:         string
					}]
					ssl_mode: string
					username: string
					anonymous_transactions_handling: [...{
						last_configured_log_offset:   string
						policy:                       string
						uuid:                         string
						last_configured_log_filename: string
					}]
					hostname: string
					port:     int
				}]
				compartment_id: string
				defined_tags: [_]: string
				display_name: string
				id:           string
				is_enabled:   bool
				target: [...{
					delay_in_seconds: int
					filters: [...{
						type:  string
						value: string
					}]
					tables_without_primary_key_handling: string
					target_type:                         string
					applier_username:                    string
					channel_name:                        string
					db_system_id:                        string
				}]
				time_created:      string
				time_updated:      string
				lifecycle_details: string
				state:             string
			}]
			admin_username?: string
			ip_address?:     string
			current_placement: [...{
				availability_domain: string
				fault_domain:        string
			}]
			is_highly_available?:     bool
			time_updated:             string
			compartment_id!:          string
			data_storage_size_in_gb?: int
			hostname_label?:          string
			port_x?:                  int
			point_in_time_recovery_details: [...{
				time_earliest_recovery_point: string
				time_latest_recovery_point:   string
			}]
		}
	}
	arguments: {
		replica: {
			display_name?: string
			replica_overrides?: [...{
				shape_name?:       string
				configuration_id?: string
				mysql_version?:    string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			description?:         string
			is_delete_protected?: bool
			db_system_id!:        string
		}
		channel: {
			compartment_id?: string
			description?:    string
			display_name?:   string
			freeform_tags?: [_]: string
			source!: [...{
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
				ssl_mode!:    string
			}]
			defined_tags?: [_]: string
			is_enabled?: bool
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
		}
		heat_wave_cluster: {
			cluster_size!:         int
			is_lakehouse_enabled?: bool
			shape_name!:           string
			state?:                string
			db_system_id!:         string
		}
		mysql_backup: {
			retention_in_days?: int
			db_system_snapshot_summary?: [...{
				display_name?: string
				id?:           string
				region?:       string
			}]
			db_system_id?: string
			source_details?: [...{
				region!:         string
				backup_id!:      string
				compartment_id!: string
			}]
			compartment_id?: string
			description?:    string
			display_name?:   string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			backup_type?: string
		}
		mysql_configuration: {
			freeform_tags?: [_]: string
			init_variables?: [...{
				lower_case_table_names?: string
			}]
			compartment_id!: string
			shape_name!:     string
			description?:    string
			defined_tags?: [_]: string
			display_name?:            string
			parent_configuration_id?: string
			variables?: [...{
				innodb_ft_result_cache_limit?:                string
				query_prealloc_size?:                         string
				connect_timeout?:                             int
				innodb_ddl_buffer_size?:                      string
				mysqlx_interactive_timeout?:                  int
				generated_random_password_length?:            int
				mysqlx_min_worker_threads?:                   int
				regexp_time_limit?:                           int
				thread_pool_max_transactions_limit?:          int
				mysql_firewall_mode?:                         bool
				time_zone?:                                   string
				sql_require_primary_key?:                     bool
				innodb_max_purge_lag_delay?:                  int
				innodb_buffer_pool_size?:                     string
				sql_mode?:                                    string
				innodb_ft_enable_stopword?:                   bool
				innodb_max_purge_lag?:                        string
				innodb_buffer_pool_dump_pct?:                 int
				innodb_ft_num_word_optimize?:                 int
				net_write_timeout?:                           int
				innodb_ft_server_stopword_table?:             string
				connection_memory_chunk_size?:                int
				mysqlx_lz4default_compression_level?:         int
				binlog_expire_logs_seconds?:                  int
				mysqlx_wait_timeout?:                         int
				mysqlx_document_id_unique_prefix?:            int
				connection_memory_limit?:                     string
				autocommit?:                                  bool
				max_prepared_stmt_count?:                     int
				mysqlx_read_timeout?:                         int
				foreign_key_checks?:                          bool
				innodb_ddl_threads?:                          int
				binlog_transaction_compression?:              bool
				mysqlx_deflate_max_client_compression_level?: int
				mysqlx_max_allowed_packet?:                   int
				information_schema_stats_expiry?:             int
				net_read_timeout?:                            int
				completion_type?:                             string
				binlog_row_metadata?:                         string
				mysqlx_idle_worker_thread_timeout?:           int
				max_execution_time?:                          string
				thread_pool_dedicated_listeners?:             bool
				mysqlx_deflate_default_compression_level?:    int
				mysqlx_lz4max_client_compression_level?:      int
				innodb_buffer_pool_instances?:                int
				default_authentication_plugin?:               string
				query_alloc_block_size?:                      string
				mysqlx_write_timeout?:                        int
				max_binlog_cache_size?:                       string
				sort_buffer_size?:                            string
				innodb_stats_transient_sample_pages?:         string
				mysqlx_zstd_default_compression_level?:       int
				innodb_ft_max_token_size?:                    int
				interactive_timeout?:                         int
				tmp_table_size?:                              string
				max_connections?:                             int
				sql_warnings?:                                bool
				cte_max_recursion_depth?:                     string
				innodb_log_writer_threads?:                   bool
				global_connection_memory_limit?:              string
				binlog_row_value_options?:                    string
				wait_timeout?:                                int
				big_tables?:                                  bool
				mysqlx_connect_timeout?:                      int
				max_heap_table_size?:                         string
				mysqlx_zstd_max_client_compression_level?:    int
				mandatory_roles?:                             string
				max_allowed_packet?:                          int
				global_connection_memory_tracking?:           bool
				innodb_stats_persistent_sample_pages?:        string
				local_infile?:                                bool
				parser_max_mem_size?:                         string
				transaction_isolation?:                       string
				innodb_ft_min_token_size?:                    int
				max_connect_errors?:                          string
				mysql_zstd_default_compression_level?:        int
				group_replication_consistency?:               string
				mysqlx_enable_hello_notice?:                  bool
				innodb_lock_wait_timeout?:                    int
			}]
		}
		mysql_db_system: {
			backup_policy?: [...{
				is_enabled?: bool
				pitr_policy?: [...{
					is_enabled?: bool
				}]
				retention_in_days?: int
				window_start_time?: string
				defined_tags?: [_]: string
				freeform_tags?: [_]: string
			}]
			subnet_id!:           string
			port_x?:              int
			ip_address?:          string
			database_management?: string
			display_name?:        string
			state?:               string
			deletion_policy?: [...{
				is_delete_protected?:        bool
				automatic_backup_retention?: string
				final_backup?:               string
			}]
			data_storage?: [...{
				is_auto_expand_storage_enabled?: bool
				max_storage_size_in_gbs?:        int
			}]
			mysql_version?:  string
			port?:           int
			compartment_id!: string
			admin_password?: string
			customer_contacts?: [...{
				email!: string
			}]
			fault_domain?:   string
			description?:    string
			hostname_label?: string
			defined_tags?: [_]: string
			maintenance?: [...{
				window_start_time!: string
			}]
			availability_domain!: string
			freeform_tags?: [_]: string
			is_highly_available?: bool
			configuration_id?:    string
			source?: [...{
				db_system_id?:   string
				recovery_point?: string
				source_url?:     string
				source_type!:    string
				backup_id?:      string
			}]
			crash_recovery?: string
			shape_name!:     string
			secure_connections?: [...{
				certificate_id?:              string
				certificate_generation_type!: string
			}]
			data_storage_size_in_gb?: int
			admin_username?:          string
			shutdown_type?:           string
		}
	}
}
#data: {
	channel: channel_id!: string
	heat_wave_cluster: db_system_id!: string
	mysql_backups: {
		db_system_id?: string
		display_name?: string
		state?:        string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		backup_id?:      string
		compartment_id!: string
		creation_type?:  string
	}
	mysql_db_system: db_system_id!: string
	mysql_db_systems: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		db_system_id?:                  string
		is_up_to_date?:                 bool
		state?:                         string
		is_heat_wave_cluster_attached?: bool
		database_management?: [...string]
		compartment_id!:   string
		configuration_id?: string
		display_name?:     string
	}
	replica: replica_id!: string
	shapes: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain?: string
		compartment_id!:      string
		is_supported_for?: [...string]
		name?: string
	}
	channels: {
		is_enabled?: bool
		state?:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		channel_id?:     string
		compartment_id!: string
		db_system_id?:   string
		display_name?:   string
	}
	mysql_backup: backup_id!: string
	mysql_configuration: configuration_id!: string
	mysql_configurations: {
		type?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:   string
		configuration_id?: string
		display_name?:     string
		shape_name?:       string
		state?:            string
	}
	mysql_versions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	replicas: {
		is_up_to_date?: bool
		db_system_id?:  string
		display_name?:  string
		state?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:   string
		replica_id?:       string
		configuration_id?: string
	}
}

