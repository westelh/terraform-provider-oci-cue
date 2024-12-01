package health_checks

#resource: {
	attributes: {
		ping_probe: {
			time_created:        string
			compartment_id!:     string
			timeout_in_seconds?: int
			vantage_point_names?: [...string]
			home_region: string
			results_url: string
			protocol!:   string
			targets!: [...string]
			port?: int
		}
		http_monitor: {
			targets!: [...string]
			path?:                string
			compartment_id!:      string
			display_name!:        string
			timeout_in_seconds?:  int
			interval_in_seconds!: int
			is_enabled?:          bool
			port?:                int
			defined_tags?: [_]: string
			results_url: string
			vantage_point_names?: [...string]
			time_created: string
			headers?: [_]: string
			method?: string
			freeform_tags?: [_]: string
			protocol!:   string
			home_region: string
		}
		http_probe: {
			protocol!: string
			method?:   string
			port?:     int
			vantage_point_names?: [...string]
			results_url:     string
			compartment_id!: string
			path?:           string
			home_region:     string
			targets!: [...string]
			headers?: [_]: string
			timeout_in_seconds?: int
			time_created:        string
		}
		ping_monitor: {
			display_name!: string
			freeform_tags?: [_]: string
			port?: int
			defined_tags?: [_]: string
			protocol!:            string
			is_enabled?:          bool
			timeout_in_seconds?:  int
			results_url:          string
			interval_in_seconds!: int
			compartment_id!:      string
			home_region:          string
			time_created:         string
			targets!: [...string]
			vantage_point_names?: [...string]
		}
	}
	arguments: {
		ping_probe: {
			protocol!:           string
			timeout_in_seconds?: int
			compartment_id!:     string
			targets!: [...string]
			port?: int
			vantage_point_names?: [...string]
		}
		http_monitor: {
			headers?: [_]: string
			is_enabled?:          bool
			method?:              string
			timeout_in_seconds?:  int
			interval_in_seconds!: int
			freeform_tags?: [_]: string
			path?:           string
			compartment_id!: string
			vantage_point_names?: [...string]
			port?: int
			targets!: [...string]
			display_name!: string
			defined_tags?: [_]: string
			protocol!: string
		}
		http_probe: {
			headers?: [_]: string
			protocol!:           string
			path?:               string
			timeout_in_seconds?: int
			compartment_id!:     string
			targets!: [...string]
			port?: int
			vantage_point_names?: [...string]
			method?: string
		}
		ping_monitor: {
			compartment_id!: string
			defined_tags?: [_]: string
			protocol!:           string
			is_enabled?:         bool
			timeout_in_seconds?: int
			freeform_tags?: [_]: string
			vantage_point_names?: [...string]
			interval_in_seconds!: int
			display_name!:        string
			port?:                int
			targets!: [...string]
		}
	}
}
#data: {
	vantage_points: {
		display_name?: string
		name?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	http_monitor: monitor_id!: string
	http_monitors: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
		home_region?:    string
	}
	http_probe_results: {
		start_time_greater_than_or_equal_to?: float
		start_time_less_than_or_equal_to?:    float
		target?:                              string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		probe_configuration_id!: string
	}
	ping_monitor: monitor_id!: string
	ping_monitors: {
		home_region?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
	}
	ping_probe_results: {
		start_time_greater_than_or_equal_to?: float
		start_time_less_than_or_equal_to?:    float
		target?:                              string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		probe_configuration_id!: string
	}
}

