package apm_traces

#resource: {
	attributes: {}
	arguments: {}
}
#data: {
	trace_snapshot_data: {
		apm_domain_id!: string
		is_summarized?: bool
		thread_id?:     string
		snapshot_time?: string
		trace_key!:     string
	}
	query_quick_picks: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		apm_domain_id!: string
	}
	trace: {
		time_trace_started_less_than?:                string
		apm_domain_id!:                               string
		trace_key!:                                   string
		trace_namespace?:                             string
		time_trace_started_greater_than_or_equal_to?: string
	}
	trace_aggregated_snapshot_data: {
		span_name?:     string
		trace_key!:     string
		apm_domain_id!: string
		server_name?:   string
		service_name?:  string
		span_key?:      string
	}
}

