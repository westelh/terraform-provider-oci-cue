package file_storage

#resource: {
	attributes: {
		file_system: {
			is_lock_override?:     bool
			is_targetable:         bool
			time_created:          string
			detach_clone_trigger?: int
			metered_bytes:         string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			is_clone_parent:     bool
			source_snapshot_id?: string
			lifecycle_details:   string
			source_details: [...{
				parent_file_system_id: string
				source_snapshot_id:    string
			}]
			replication_target_id: string
			defined_tags?: [_]: string
			kms_key_id?:                    string
			is_hydrated:                    bool
			availability_domain!:           string
			display_name?:                  string
			state:                          string
			filesystem_snapshot_policy_id?: string
			clone_attach_status?:           string
			freeform_tags?: [_]: string
			clone_count:     int
			compartment_id!: string
		}
		filesystem_snapshot_policy: {
			schedules?: [...{
				period!:                        string
				time_schedule_start?:           string
				day_of_week?:                   string
				hour_of_day?:                   int
				month?:                         string
				schedule_prefix?:               string
				retention_duration_in_seconds?: string
				time_zone!:                     string
				day_of_month?:                  int
			}]
			locks?: [...{
				time_created?:        string
				type!:                string
				message?:             string
				related_resource_id?: string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			is_lock_override?:    bool
			availability_domain!: string
			time_created:         string
			policy_prefix?:       string
			display_name?:        string
			freeform_tags?: [_]: string
			state?: string
		}
		mount_target: {
			freeform_tags?: [_]: string
			kerberos?: [...{
				is_kerberos_enabled?:            bool
				key_tab_secret_id?:              string
				kerberos_realm!:                 string
				backup_key_tab_secret_version?:  int
				current_key_tab_secret_version?: int
			}]
			time_billing_cycle_end:    string
			compartment_id!:           string
			hostname_label?:           string
			state:                     string
			idmap_type?:               string
			display_name?:             string
			reserved_storage_capacity: string
			defined_tags?: [_]: string
			time_created: string
			ip_address?:  string
			nsg_ids?: [...string]
			private_ip_ids: [...string]
			export_set_id: string
			ldap_idmap?: [...{
				schema_type?:                     string
				user_search_base?:                string
				cache_lifetime_seconds?:          int
				cache_refresh_interval_seconds?:  int
				group_search_base?:               string
				negative_cache_lifetime_seconds?: int
				outbound_connector1id?:           string
				outbound_connector2id?:           string
			}]
			lifecycle_details: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			requested_throughput?: string
			is_lock_override?:     bool
			availability_domain!:  string
			observed_throughput:   string
			subnet_id!:            string
		}
		replication: {
			freeform_tags?: [_]: string
			availability_domain: string
			delta_progress:      string
			time_created:        string
			is_lock_override?:   bool
			compartment_id!:     string
			display_name?:       string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			delta_status: string
			defined_tags?: [_]: string
			replication_target_id: string
			state:                 string
			replication_interval?: string
			lifecycle_details:     string
			last_snapshot_id:      string
			recovery_point_time:   string
			source_id!:            string
			target_id!:            string
		}
		outbound_connector: {
			availability_domain!: string
			compartment_id!:      string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			state:                    string
			time_created:             string
			bind_distinguished_name!: string
			password_secret_version?: int
			is_lock_override?:        bool
			connector_type!:          string
			defined_tags?: [_]: string
			display_name?:       string
			password_secret_id?: string
			endpoints!: [...{
				hostname!: string
				port!:     string
			}]
			freeform_tags?: [_]: string
		}
		snapshot: {
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				type!:                string
			}]
			defined_tags?: [_]: string
			provenance_id:   string
			is_clone_source: bool
			snapshot_time:   string
			state:           string
			freeform_tags?: [_]: string
			is_lock_override?:             bool
			name!:                         string
			filesystem_snapshot_policy_id: string
			snapshot_type:                 string
			file_system_id!:               string
			expiration_time?:              string
			time_created:                  string
			lifecycle_details:             string
		}
		export: {
			export_set_id!: string
			path!:          string
			export_options?: [...{
				access?: string
				allowed_auth?: [...string]
				anonymous_gid?:                  string
				anonymous_uid?:                  string
				identity_squash?:                string
				is_anonymous_access_allowed?:    bool
				require_privileged_source_port?: bool
				source!:                         string
			}]
			is_lock_override?: bool
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				type!:                string
			}]
			is_idmap_groups_for_sys_auth?: bool
			state:                         string
			time_created:                  string
			file_system_id!:               string
		}
		export_set: {
			max_fs_stat_bytes?:  string
			compartment_id:      string
			display_name?:       string
			state:               string
			time_created:        string
			vcn_id:              string
			mount_target_id!:    string
			max_fs_stat_files?:  string
			availability_domain: string
		}
	}
	arguments: {
		file_system: {
			defined_tags?: [_]: string
			kms_key_id?:                    string
			is_lock_override?:              bool
			clone_attach_status?:           string
			display_name?:                  string
			detach_clone_trigger?:          int
			availability_domain!:           string
			filesystem_snapshot_policy_id?: string
			freeform_tags?: [_]: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			compartment_id!:     string
			source_snapshot_id?: string
		}
		filesystem_snapshot_policy: {
			freeform_tags?: [_]: string
			is_lock_override?: bool
			schedules?: [...{
				schedule_prefix?:               string
				day_of_month?:                  int
				day_of_week?:                   string
				period!:                        string
				time_zone!:                     string
				hour_of_day?:                   int
				month?:                         string
				retention_duration_in_seconds?: string
				time_schedule_start?:           string
			}]
			policy_prefix?: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			defined_tags?: [_]: string
			display_name?:        string
			compartment_id!:      string
			state?:               string
			availability_domain!: string
		}
		mount_target: {
			availability_domain!: string
			hostname_label?:      string
			idmap_type?:          string
			display_name?:        string
			defined_tags?: [_]: string
			kerberos?: [...{
				is_kerberos_enabled?:            bool
				key_tab_secret_id?:              string
				kerberos_realm!:                 string
				backup_key_tab_secret_version?:  int
				current_key_tab_secret_version?: int
			}]
			ip_address?:           string
			subnet_id!:            string
			requested_throughput?: string
			freeform_tags?: [_]: string
			is_lock_override?: bool
			compartment_id!:   string
			nsg_ids?: [...string]
			ldap_idmap?: [...{
				outbound_connector1id?:           string
				outbound_connector2id?:           string
				schema_type?:                     string
				user_search_base?:                string
				cache_lifetime_seconds?:          int
				cache_refresh_interval_seconds?:  int
				group_search_base?:               string
				negative_cache_lifetime_seconds?: int
			}]
			locks?: [...{
				time_created?:        string
				type!:                string
				message?:             string
				related_resource_id?: string
			}]
		}
		replication: {
			compartment_id!:       string
			is_lock_override?:     bool
			source_id!:            string
			replication_interval?: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				type!:                string
			}]
			defined_tags?: [_]: string
			target_id!:    string
			display_name?: string
			freeform_tags?: [_]: string
		}
		outbound_connector: {
			freeform_tags?: [_]: string
			endpoints!: [...{
				hostname!: string
				port!:     string
			}]
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			availability_domain!:     string
			is_lock_override?:        bool
			display_name?:            string
			password_secret_version?: int
			bind_distinguished_name!: string
			password_secret_id?:      string
			connector_type!:          string
			compartment_id!:          string
			defined_tags?: [_]: string
		}
		snapshot: {
			name!: string
			defined_tags?: [_]: string
			file_system_id!: string
			freeform_tags?: [_]: string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				type!:                string
				message?:             string
			}]
			is_lock_override?: bool
			expiration_time?:  string
		}
		export: {
			export_set_id!: string
			path!:          string
			export_options?: [...{
				access?: string
				allowed_auth?: [...string]
				anonymous_gid?:                  string
				anonymous_uid?:                  string
				identity_squash?:                string
				is_anonymous_access_allowed?:    bool
				require_privileged_source_port?: bool
				source!:                         string
			}]
			is_lock_override?:             bool
			file_system_id!:               string
			is_idmap_groups_for_sys_auth?: bool
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
		}
		export_set: {
			display_name?:      string
			mount_target_id!:   string
			max_fs_stat_bytes?: string
			max_fs_stat_files?: string
		}
	}
}
#data: {
	export_sets: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain!: string
		compartment_id!:      string
		display_name?:        string
		id?:                  string
	}
	exports: {
		compartment_id?: string
		export_set_id?:  string
		file_system_id?: string
		id?:             string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	file_systems: {
		display_name?:          string
		parent_file_system_id?: string
		source_snapshot_id?:    string
		availability_domain!:   string
		state?:                 string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		filesystem_snapshot_policy_id?: string
		id?:                            string
		compartment_id!:                string
	}
	replication_targets: {
		id?:    string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain!: string
		compartment_id!:      string
		display_name?:        string
	}
	outbound_connector: outbound_connector_id!: string
	snapshot: snapshot_id!: string
	replication_target: replication_target_id!: string
	replications: {
		display_name?:   string
		file_system_id?: string
		id?:             string
		state?:          string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain!: string
		compartment_id!:      string
	}
	outbound_connectors: {
		availability_domain!: string
		compartment_id!:      string
		display_name?:        string
		id?:                  string
		state?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	snapshots: {
		id?:    string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?:                string
		file_system_id?:                string
		filesystem_snapshot_policy_id?: string
	}
	filesystem_snapshot_policy: filesystem_snapshot_policy_id!: string
	mount_targets: {
		display_name?:  string
		export_set_id?: string
		id?:            string
		state?:         string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		availability_domain!: string
		compartment_id!:      string
	}
	replication: replication_id!: string
	filesystem_snapshot_policies: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain!: string
		compartment_id!:      string
		display_name?:        string
		id?:                  string
		state?:               string
	}
}

