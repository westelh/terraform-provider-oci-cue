package management_agent

#resource: {
	attributes: {
		management_agent: {
			defined_tags?: [_]: string
			management_agent_properties: [...{
				values: [...string]
				name:  string
				units: string
			}]
			availability_status:       string
			install_type:              string
			time_created:              string
			time_last_heartbeat:       string
			platform_version:          string
			display_name?:             string
			resource_artifact_version: string
			deploy_plugins_id?: [...string]
			data_source_list: [...{
				connection_timeout: int
				namespace:          string
				read_timeout:       int
				metric_dimensions: [...{
					name:  string
					value: string
				}]
				read_data_limit: int
				resource_group:  string
				url:             string
				allow_metrics:   string
				key:             string
				time_created:    string
				type:            string
				is_daemon_set:   bool
				compartment_id:  string
				proxy_url:       string
				state:           string
				name:            string
				time_updated:    string
				schedule_mins:   int
			}]
			install_path:  string
			platform_type: string
			host:          string
			plugin_list: [...{
				is_enabled:            bool
				plugin_display_name:   string
				plugin_id:             string
				plugin_name:           string
				plugin_status:         string
				plugin_status_message: string
				plugin_version:        string
			}]
			lifecycle_details: string
			state:             string
			compartment_id:    string
			version:           string
			freeform_tags?: [_]: string
			platform_name:  string
			install_key_id: string
			data_source_summary_list: [...{
				name:          string
				is_daemon_set: bool
				type:          string
				key:           string
			}]
			is_agent_auto_upgradable: bool
			time_updated:             string
			host_id:                  string
			managed_agent_id!:        string
			is_customer_deployed:     bool
		}
		management_agent_data_source: {
			read_data_limit_in_kilobytes?: int
			metric_dimensions?: [...{
				name!:  string
				value!: string
			}]
			state:                string
			read_data_limit:      int
			schedule_mins?:       int
			data_source_key:      string
			type!:                string
			read_timeout?:        int
			url!:                 string
			allow_metrics?:       string
			time_created:         string
			resource_group?:      string
			proxy_url?:           string
			compartment_id!:      string
			management_agent_id!: string
			namespace?:           string
			time_updated:         string
			is_daemon_set:        bool
			name!:                string
			connection_timeout?:  int
		}
		management_agent_install_key: {
			display_name!:              string
			current_key_install_count:  int
			key:                        string
			state:                      string
			is_unlimited?:              bool
			time_created:               string
			time_updated:               string
			compartment_id!:            string
			allowed_key_install_count?: int
			lifecycle_details:          string
			time_expires?:              string
			created_by_principal_id:    string
		}
	}
	arguments: {
		management_agent: {
			managed_agent_id!: string
			display_name?:     string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			deploy_plugins_id?: [...string]
		}
		management_agent_data_source: {
			management_agent_id!:          string
			read_data_limit_in_kilobytes?: int
			name!:                         string
			namespace?:                    string
			proxy_url?:                    string
			read_timeout?:                 int
			url!:                          string
			connection_timeout?:           int
			allow_metrics?:                string
			resource_group?:               string
			compartment_id!:               string
			schedule_mins?:                int
			type!:                         string
			metric_dimensions?: [...{
				name!:  string
				value!: string
			}]
		}
		management_agent_install_key: {
			display_name!:              string
			allowed_key_install_count?: int
			compartment_id!:            string
			time_expires?:              string
			is_unlimited?:              bool
		}
	}
}
#data: {
	management_agent: management_agent_id!: string
	management_agent_available_histories: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		management_agent_id!:                         string
		time_availability_status_ended_greater_than?: string
		time_availability_status_started_less_than?:  string
	}
	management_agent_count: {
		compartment_id!: string
		group_by!: [...string]
		has_plugins?:  bool
		install_type?: string
	}
	management_agent_images: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		install_type?:   string
		name?:           string
		state?:          string
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
	management_agent_plugin_count: {
		compartment_id!: string
		group_by!:       string
	}
	management_agent_data_source: {
		management_agent_id!: string
		data_source_key!:     string
	}
	management_agent_data_sources: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		management_agent_id!: string
		name?:                string
	}
	management_agent_get_auto_upgradable_config: compartment_id!: string
	management_agent_install_key: management_agent_install_key_id!: string
	management_agent_plugins: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		agent_id?:       string
		compartment_id!: string
		display_name?:   string
		platform_type?: [...string]
		state?: string
	}
	management_agents: {
		data_source_type?: string
		state?:            string
		version?: [...string]
		platform_type?: [...string]
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		availability_status?: string
		install_type?:        string
		host_id?:             string
		plugin_name?: [...string]
		is_customer_deployed?: bool
		data_source_name?: [...string]
		access_level?:              string
		compartment_id_in_subtree?: bool
		gateway_id?: [...string]
		display_name?:     string
		compartment_id!:   string
		wait_for_host_id?: int
	}
}

