package health_checks

#resource: {
	attributes: {
		http_monitor: {
			is_enabled?:   bool
			display_name!: string
			targets!: [...string]
			freeform_tags?: [_]: string
			path?: string
			headers?: [_]: string
			port?:        int
			home_region:  string
			results_url:  string
			time_created: string
			vantage_point_names?: [...string]
			interval_in_seconds!: int
			method?:              string
			defined_tags?: [_]: string
			compartment_id!:     string
			protocol!:           string
			timeout_in_seconds?: int
		}
		http_probe: {
			method?: string
			vantage_point_names?: [...string]
			protocol!:           string
			path?:               string
			port?:               int
			timeout_in_seconds?: int
			results_url:         string
			headers?: [_]: string
			compartment_id!: string
			home_region:     string
			time_created:    string
			targets!: [...string]
		}
		ping_monitor: {
			interval_in_seconds!: int
			vantage_point_names?: [...string]
			is_enabled?:         bool
			timeout_in_seconds?: int
			home_region:         string
			results_url:         string
			port?:               int
			freeform_tags?: [_]: string
			display_name!: string
			protocol!:     string
			defined_tags?: [_]: string
			compartment_id!: string
			targets!: [...string]
			time_created: string
		}
		ping_probe: {
			port?: int
			vantage_point_names?: [...string]
			time_created: string
			protocol!:    string
			targets!: [...string]
			compartment_id!:     string
			timeout_in_seconds?: int
			home_region:         string
			results_url:         string
		}
	}
	arguments: {
		http_monitor: {
			is_enabled?: bool
			protocol!:   string
			vantage_point_names?: [...string]
			interval_in_seconds!: int
			display_name!:        string
			timeout_in_seconds?:  int
			defined_tags?: [_]: string
			path?:           string
			port?:           int
			compartment_id!: string
			targets!: [...string]
			headers?: [_]: string
			freeform_tags?: [_]: string
			method?: string
		}
		http_probe: {
			headers?: [_]: string
			path?:               string
			timeout_in_seconds?: int
			method?:             string
			targets!: [...string]
			port?:           int
			compartment_id!: string
			protocol!:       string
			vantage_point_names?: [...string]
		}
		ping_monitor: {
			interval_in_seconds!: int
			defined_tags?: [_]: string
			targets!: [...string]
			port?: int
			vantage_point_names?: [...string]
			compartment_id!: string
			is_enabled?:     bool
			freeform_tags?: [_]: string
			timeout_in_seconds?: int
			display_name!:       string
			protocol!:           string
		}
		ping_probe: {
			protocol!: string
			targets!: [...string]
			timeout_in_seconds?: int
			port?:               int
			vantage_point_names?: [...string]
			compartment_id!: string
		}
	}
}
#data: {
	http_monitors: {
		compartment_id!: string
		display_name?:   string
		home_region?:    string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	http_probe_results: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		probe_configuration_id!:              string
		start_time_greater_than_or_equal_to?: float
		start_time_less_than_or_equal_to?:    float
		target?:                              string
	}
	ping_monitor: monitor_id!: string
	ping_monitors: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		home_region?:    string
	}
	ping_probe_results: {
		target?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		probe_configuration_id!:              string
		start_time_greater_than_or_equal_to?: float
		start_time_less_than_or_equal_to?:    float
	}
	vantage_points: {
		name?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		display_name?: string
	}
	http_monitor: monitor_id!: string
}

