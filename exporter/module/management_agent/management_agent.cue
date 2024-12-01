package management_agent

#resource: {
	attributes: {
		management_agent_install_key: {
			display_name!:              string
			current_key_install_count:  int
			compartment_id!:            string
			time_created:               string
			lifecycle_details:          string
			state:                      string
			time_updated:               string
			allowed_key_install_count?: int
			is_unlimited?:              bool
			created_by_principal_id:    string
			key:                        string
			time_expires?:              string
		}
		management_agent: {
			lifecycle_details:         string
			install_type:              string
			platform_type:             string
			resource_artifact_version: string
			host_id:                   string
			is_agent_auto_upgradable:  bool
			data_source_summary_list: [...{
				type:          string
				key:           string
				name:          string
				is_daemon_set: bool
			}]
			time_updated: string
			deploy_plugins_id?: [...string]
			version: string
			management_agent_properties: [...{
				values: [...string]
				name:  string
				units: string
			}]
			is_customer_deployed: bool
			install_path:         string
			time_created:         string
			plugin_list: [...{
				is_enabled:            bool
				plugin_display_name:   string
				plugin_id:             string
				plugin_name:           string
				plugin_status:         string
				plugin_status_message: string
				plugin_version:        string
			}]
			state:               string
			host:                string
			time_last_heartbeat: string
			managed_agent_id!:   string
			platform_version:    string
			freeform_tags?: [_]: string
			compartment_id: string
			platform_name:  string
			install_key_id: string
			data_source_list: [...{
				namespace:          string
				resource_group:     string
				is_daemon_set:      bool
				proxy_url:          string
				allow_metrics:      string
				state:              string
				name:               string
				compartment_id:     string
				time_updated:       string
				read_data_limit:    int
				read_timeout:       int
				type:               string
				connection_timeout: int
				schedule_mins:      int
				url:                string
				key:                string
				metric_dimensions: [...{
					name:  string
					value: string
				}]
				time_created: string
			}]
			display_name?:       string
			availability_status: string
			defined_tags?: [_]: string
		}
		management_agent_data_source: {
			resource_group?:      string
			url!:                 string
			management_agent_id!: string
			read_data_limit:      int
			allow_metrics?:       string
			is_daemon_set:        bool
			connection_timeout?:  int
			schedule_mins?:       int
			compartment_id!:      string
			metric_dimensions?: [...{
				value!: string
				name!:  string
			}]
			read_timeout?:                 int
			data_source_key:               string
			namespace?:                    string
			type!:                         string
			time_created:                  string
			time_updated:                  string
			name!:                         string
			read_data_limit_in_kilobytes?: int
			proxy_url?:                    string
			state:                         string
		}
	}
	arguments: {
		management_agent_install_key: {
			time_expires?:              string
			display_name!:              string
			allowed_key_install_count?: int
			is_unlimited?:              bool
			compartment_id!:            string
		}
		management_agent: {
			display_name?: string
			deploy_plugins_id?: [...string]
			defined_tags?: [_]: string
			managed_agent_id!: string
			freeform_tags?: [_]: string
		}
		management_agent_data_source: {
			connection_timeout?: int
			metric_dimensions?: [...{
				name!:  string
				value!: string
			}]
			name!:                         string
			namespace?:                    string
			read_data_limit_in_kilobytes?: int
			type!:                         string
			compartment_id!:               string
			management_agent_id!:          string
			schedule_mins?:                int
			read_timeout?:                 int
			allow_metrics?:                string
			resource_group?:               string
			url!:                          string
			proxy_url?:                    string
		}
	}
}
#data: {
	management_agents: {
		host_id?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		install_type?:     string
		wait_for_host_id?: int
		version?: [...string]
		gateway_id?: [...string]
		access_level?: string
		plugin_name?: [...string]
		platform_type?: [...string]
		is_customer_deployed?: bool
		data_source_name?: [...string]
		state?:                     string
		display_name?:              string
		data_source_type?:          string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		availability_status?:       string
	}
	management_agent: management_agent_id!: string
	management_agent_data_source: {
		management_agent_id!: string
		data_source_key!:     string
	}
	management_agent_data_sources: {
		name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		management_agent_id!: string
	}
	management_agent_get_auto_upgradable_config: compartment_id!: string
	management_agent_images: {
		compartment_id!: string
		install_type?:   string
		name?:           string
		state?:          string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	management_agent_install_keys: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		access_level?:              string
		compartment_id!:            string
		compartment_id_in_subtree?: bool
		display_name?:              string
		state?:                     string
	}
	management_agent_available_histories: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		management_agent_id!:                         string
		time_availability_status_ended_greater_than?: string
		time_availability_status_started_less_than?:  string
	}
	management_agent_count: {
		has_plugins?:    bool
		install_type?:   string
		compartment_id!: string
		group_by!: [...string]
	}
	management_agent_install_key: management_agent_install_key_id!: string
	management_agent_plugin_count: {
		compartment_id!: string
		group_by!:       string
	}
	management_agent_plugins: {
		compartment_id!: string
		display_name?:   string
		platform_type?: [...string]
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		agent_id?: string
	}
}

