package file_storage

#resource: {
	attributes: {
		snapshot: {
			is_lock_override?:             bool
			filesystem_snapshot_policy_id: string
			lifecycle_details:             string
			is_clone_source:               bool
			state:                         string
			file_system_id!:               string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			expiration_time?: string
			time_created:     string
			provenance_id:    string
			snapshot_type:    string
			name!:            string
			freeform_tags?: [_]: string
			defined_tags?: [_]: string
			snapshot_time: string
		}
		export: {
			time_created: string
			export_options?: [...{
				allowed_auth?: [...string]
				anonymous_gid?:                  string
				anonymous_uid?:                  string
				identity_squash?:                string
				is_anonymous_access_allowed?:    bool
				require_privileged_source_port?: bool
				source!:                         string
				access?:                         string
			}]
			path!:                         string
			is_idmap_groups_for_sys_auth?: bool
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			is_lock_override?: bool
			export_set_id!:    string
			state:             string
			file_system_id!:   string
		}
		export_set: {
			mount_target_id!:    string
			compartment_id:      string
			state:               string
			display_name?:       string
			availability_domain: string
			time_created:        string
			max_fs_stat_bytes?:  string
			max_fs_stat_files?:  string
			vcn_id:              string
		}
		file_system: {
			is_lock_override?: bool
			freeform_tags?: [_]: string
			detach_clone_trigger?: int
			availability_domain!:  string
			compartment_id!:       string
			is_clone_parent:       bool
			state:                 string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			is_targetable:     bool
			lifecycle_details: string
			defined_tags?: [_]: string
			time_created: string
			source_details: [...{
				parent_file_system_id: string
				source_snapshot_id:    string
			}]
			display_name?:                  string
			source_snapshot_id?:            string
			clone_attach_status?:           string
			kms_key_id?:                    string
			filesystem_snapshot_policy_id?: string
			metered_bytes:                  string
			clone_count:                    int
			is_hydrated:                    bool
			replication_target_id:          string
		}
		filesystem_snapshot_policy: {
			is_lock_override?: bool
			policy_prefix?:    string
			time_created:      string
			state?:            string
			defined_tags?: [_]: string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				type!:                string
				message?:             string
			}]
			schedules?: [...{
				time_schedule_start?:           string
				time_zone!:                     string
				month?:                         string
				day_of_month?:                  int
				day_of_week?:                   string
				hour_of_day?:                   int
				retention_duration_in_seconds?: string
				period!:                        string
				schedule_prefix?:               string
			}]
			compartment_id!:      string
			display_name?:        string
			availability_domain!: string
			freeform_tags?: [_]: string
		}
		mount_target: {
			time_billing_cycle_end: string
			idmap_type?:            string
			is_lock_override?:      bool
			state:                  string
			subnet_id!:             string
			freeform_tags?: [_]: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				type!:                string
			}]
			observed_throughput:   string
			requested_throughput?: string
			kerberos?: [...{
				kerberos_realm!:                 string
				backup_key_tab_secret_version?:  int
				current_key_tab_secret_version?: int
				is_kerberos_enabled?:            bool
				key_tab_secret_id?:              string
			}]
			time_created: string
			ldap_idmap?: [...{
				user_search_base?:                string
				cache_lifetime_seconds?:          int
				cache_refresh_interval_seconds?:  int
				group_search_base?:               string
				negative_cache_lifetime_seconds?: int
				outbound_connector1id?:           string
				outbound_connector2id?:           string
				schema_type?:                     string
			}]
			compartment_id!:      string
			ip_address?:          string
			availability_domain!: string
			export_set_id:        string
			private_ip_ids: [...string]
			hostname_label?: string
			defined_tags?: [_]: string
			display_name?:     string
			lifecycle_details: string
			nsg_ids?: [...string]
			reserved_storage_capacity: string
		}
		replication: {
			state:          string
			delta_progress: string
			freeform_tags?: [_]: string
			is_lock_override?:     bool
			availability_domain:   string
			compartment_id!:       string
			target_id!:            string
			replication_target_id: string
			time_created:          string
			last_snapshot_id:      string
			delta_status:          string
			defined_tags?: [_]: string
			source_id!:            string
			recovery_point_time:   string
			display_name?:         string
			replication_interval?: string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				type!:                string
				message?:             string
			}]
			lifecycle_details: string
		}
		outbound_connector: {
			display_name?:            string
			is_lock_override?:        bool
			connector_type!:          string
			compartment_id!:          string
			password_secret_id?:      string
			state:                    string
			time_created:             string
			bind_distinguished_name!: string
			availability_domain!:     string
			password_secret_version?: int
			defined_tags?: [_]: string
			endpoints!: [...{
				hostname!: string
				port!:     string
			}]
			freeform_tags?: [_]: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
		}
	}
	arguments: {
		snapshot: {
			defined_tags?: [_]: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			is_lock_override?: bool
			name!:             string
			expiration_time?:  string
			freeform_tags?: [_]: string
			file_system_id!: string
		}
		export: {
			is_lock_override?: bool
			export_set_id!:    string
			export_options?: [...{
				is_anonymous_access_allowed?:    bool
				require_privileged_source_port?: bool
				source!:                         string
				access?:                         string
				allowed_auth?: [...string]
				anonymous_gid?:   string
				anonymous_uid?:   string
				identity_squash?: string
			}]
			file_system_id!:               string
			path!:                         string
			is_idmap_groups_for_sys_auth?: bool
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				type!:                string
			}]
		}
		export_set: {
			mount_target_id!:   string
			display_name?:      string
			max_fs_stat_bytes?: string
			max_fs_stat_files?: string
		}
		file_system: {
			clone_attach_status?: string
			defined_tags?: [_]: string
			detach_clone_trigger?:          int
			availability_domain!:           string
			display_name?:                  string
			is_lock_override?:              bool
			compartment_id!:                string
			kms_key_id?:                    string
			filesystem_snapshot_policy_id?: string
			freeform_tags?: [_]: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			source_snapshot_id?: string
		}
		filesystem_snapshot_policy: {
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				type!:                string
				message?:             string
			}]
			is_lock_override?: bool
			schedules?: [...{
				month?:                         string
				retention_duration_in_seconds?: string
				schedule_prefix?:               string
				time_schedule_start?:           string
				day_of_week?:                   string
				time_zone!:                     string
				hour_of_day?:                   int
				period!:                        string
				day_of_month?:                  int
			}]
			display_name?: string
			freeform_tags?: [_]: string
			availability_domain!: string
			defined_tags?: [_]: string
			state?:          string
			compartment_id!: string
			policy_prefix?:  string
		}
		mount_target: {
			requested_throughput?: string
			kerberos?: [...{
				key_tab_secret_id?:              string
				kerberos_realm!:                 string
				backup_key_tab_secret_version?:  int
				current_key_tab_secret_version?: int
				is_kerberos_enabled?:            bool
			}]
			ip_address?: string
			idmap_type?: string
			locks?: [...{
				related_resource_id?: string
				time_created?:        string
				type!:                string
				message?:             string
			}]
			is_lock_override?: bool
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
			freeform_tags?: [_]: string
			nsg_ids?: [...string]
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?:        string
			hostname_label?:      string
			subnet_id!:           string
			availability_domain!: string
		}
		replication: {
			replication_interval?: string
			defined_tags?: [_]: string
			is_lock_override?: bool
			compartment_id!:   string
			display_name?:     string
			freeform_tags?: [_]: string
			locks?: [...{
				type!:                string
				message?:             string
				related_resource_id?: string
				time_created?:        string
			}]
			source_id!: string
			target_id!: string
		}
		outbound_connector: {
			display_name?:            string
			is_lock_override?:        bool
			connector_type!:          string
			compartment_id!:          string
			password_secret_version?: int
			defined_tags?: [_]: string
			bind_distinguished_name!: string
			endpoints!: [...{
				hostname!: string
				port!:     string
			}]
			availability_domain!: string
			freeform_tags?: [_]: string
			locks?: [...{
				message?:             string
				related_resource_id?: string
				time_created?:        string
				type!:                string
			}]
			password_secret_id?: string
		}
	}
}
#data: {
	exports: {
		id?:    string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id?: string
		export_set_id?:  string
		file_system_id?: string
	}
	file_systems: {
		id?:             string
		compartment_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?:                  string
		availability_domain!:           string
		state?:                         string
		filesystem_snapshot_policy_id?: string
		parent_file_system_id?:         string
		source_snapshot_id?:            string
	}
	replications: {
		availability_domain!: string
		compartment_id!:      string
		display_name?:        string
		file_system_id?:      string
		id?:                  string
		state?:               string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	mount_targets: {
		export_set_id?: string
		id?:            string
		state?:         string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain!: string
		compartment_id!:      string
		display_name?:        string
	}
	replication: replication_id!: string
	outbound_connectors: {
		availability_domain!: string
		compartment_id!:      string
		display_name?:        string
		id?:                  string
		state?:               string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
	}
	snapshots: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id?:                string
		file_system_id?:                string
		filesystem_snapshot_policy_id?: string
		id?:                            string
	}
	export_sets: {
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
	filesystem_snapshot_policies: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_domain!: string
	}
	snapshot: snapshot_id!: string
	filesystem_snapshot_policy: filesystem_snapshot_policy_id!: string
	replication_target: replication_target_id!: string
	replication_targets: {
		compartment_id!: string
		display_name?:   string
		id?:             string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		availability_domain!: string
	}
	outbound_connector: outbound_connector_id!: string
}

