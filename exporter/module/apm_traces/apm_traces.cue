package apm_traces

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	trace_aggregated_snapshot_data: {
		span_name?:     string
		trace_key!:     string
		apm_domain_id!: string
		server_name?:   string
		service_name?:  string
		span_key?:      string
	}
	trace_snapshot_data: {
		apm_domain_id!: string
		is_summarized?: bool
		snapshot_time?: string
		thread_id?:     string
		trace_key!:     string
	}
	query_quick_picks: {
		apm_domain_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	trace: {
		trace_key!:                                   string
		time_trace_started_less_than?:                string
		trace_namespace?:                             string
		apm_domain_id!:                               string
		time_trace_started_greater_than_or_equal_to?: string
	}
}

