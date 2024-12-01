package objectstorage

#resource: {
	attributes: {
		object_lifecycle_policy: {
			bucket!:    string
			namespace!: string
			rules?: [...{
				object_name_filter?: [...{
					exclusion_patterns?: [...string]
					inclusion_patterns?: [...string]
					inclusion_prefixes?: [...string]
				}]
				target?:      *"objects" | string
				action!:      string
				is_enabled!:  bool
				name!:        string
				time_amount!: string
				time_unit!:   string
			}]
			time_created: string
		}
		preauthrequest: {
			time_created:           string
			bucket!:                string
			namespace!:             string
			bucket_listing_action?: string
			access_uri:             string
			object_name?:           string
			access_type!:           string
			object?:                string
			par_id:                 string
			name!:                  string
			time_expires!:          string
			full_path:              string
		}
		replication_policy: {
			destination_region_name!:             string
			time_created:                         string
			delete_object_in_destination_bucket?: string
			time_last_sync:                       string
			destination_bucket_name!:             string
			name!:                                string
			status:                               string
			status_message:                       string
			bucket!:                              string
			namespace!:                           string
		}
		namespace_metadata: {
			default_s3compartment_id?:     string
			default_swift_compartment_id?: string
			namespace!:                    string
		}
		private_endpoint: {
			subnet_id!: string
			state?:     string
			etag:       string
			namespace!: string
			prefix!:    string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			private_endpoint_ip?: string
			time_created:         string
			created_by:           string
			time_modified:        string
			fqdns?: [_]: [_]: [_]: string
			additional_prefixes?: [...string]
			nsg_ids?: [...string]
			access_targets!: [...{
				bucket!:         string
				namespace!:      string
				compartment_id!: string
			}]
			id:              string
			compartment_id!: string
			name!:           string
		}
		bucket: {
			storage_tier?:                string
			versioning?:                  string
			access_type?:                 *"NoPublicAccess" | string
			object_lifecycle_policy_etag: string
			name!:                        string
			object_events_enabled?:       bool
			bucket_id:                    string
			created_by:                   string
			etag:                         string
			namespace!:                   string
			freeform_tags?: [_]: string
			retention_rules?: [...{
				display_name!: string
				duration?: [...{
					time_amount!: string
					time_unit!:   string
				}]
				time_rule_locked?: string
				retention_rule_id: string
				time_created:      string
				time_modified:     string
			}]
			approximate_size: string
			metadata?: [_]: string
			is_read_only: bool
			time_created: string
			defined_tags?: [_]: string
			approximate_count:   string
			replication_enabled: bool
			kms_key_id?:         string
			compartment_id!:     string
			auto_tiering?:       string
		}
		object: {
			content_length: string
			object!:        string
			metadata?: [_]: string
			version_id:                  string
			content_disposition?:        string
			content_language?:           string
			source?:                     string
			cache_control?:              string
			content?:                    string
			delete_all_object_versions?: *false | bool
			work_request_id:             string
			opc_sse_kms_key_id?:         string
			content_encoding?:           string
			storage_tier?:               string
			bucket!:                     string
			content_md5?:                string
			content_type?:               string
			source_uri_details?: [...{
				destination_object_if_match_etag?:      string
				destination_object_if_none_match_etag?: string
				source_version_id?:                     string
				region!:                                string
				namespace!:                             string
				bucket!:                                string
				object!:                                string
				source_object_if_match_etag?:           string
			}]
			state:      string
			namespace!: string
		}
	}
	arguments: {
		object_lifecycle_policy: {
			namespace!: string
			rules?: [...{
				object_name_filter?: [...{
					exclusion_patterns?: [...string]
					inclusion_patterns?: [...string]
					inclusion_prefixes?: [...string]
				}]
				target?:      *"objects" | string
				action!:      string
				is_enabled!:  bool
				name!:        string
				time_amount!: string
				time_unit!:   string
			}]
			bucket!: string
		}
		preauthrequest: {
			name!:                  string
			time_expires!:          string
			bucket_listing_action?: string
			object_name?:           string
			access_type!:           string
			bucket!:                string
			namespace!:             string
			object?:                string
		}
		replication_policy: {
			bucket!:                              string
			namespace!:                           string
			delete_object_in_destination_bucket?: string
			destination_bucket_name!:             string
			destination_region_name!:             string
			name!:                                string
		}
		namespace_metadata: {
			namespace!:                    string
			default_s3compartment_id?:     string
			default_swift_compartment_id?: string
		}
		private_endpoint: {
			private_endpoint_ip?: string
			prefix!:              string
			additional_prefixes?: [...string]
			access_targets!: [...{
				compartment_id!: string
				bucket!:         string
				namespace!:      string
			}]
			defined_tags?: [_]: string
			compartment_id!: string
			name!:           string
			namespace!:      string
			fqdns?: [_]: [_]: [_]: string
			subnet_id!: string
			nsg_ids?: [...string]
			freeform_tags?: [_]: string
			state?: string
		}
		bucket: {
			kms_key_id?:            string
			object_events_enabled?: bool
			namespace!:             string
			access_type?:           *"NoPublicAccess" | string
			compartment_id!:        string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			storage_tier?: string
			name!:         string
			versioning?:   string
			auto_tiering?: string
			metadata?: [_]: string
			retention_rules?: [...{
				display_name!: string
				duration?: [...{
					time_amount!: string
					time_unit!:   string
				}]
				time_rule_locked?: string
			}]
		}
		object: {
			content_encoding?: string
			content_language?: string
			content_md5?:      string
			content_type?:     string
			metadata?: [_]: string
			bucket!:                     string
			object!:                     string
			source?:                     string
			cache_control?:              string
			content?:                    string
			delete_all_object_versions?: *false | bool
			namespace!:                  string
			storage_tier?:               string
			content_disposition?:        string
			opc_sse_kms_key_id?:         string
			source_uri_details?: [...{
				object!:                                string
				source_object_if_match_etag?:           string
				destination_object_if_match_etag?:      string
				destination_object_if_none_match_etag?: string
				source_version_id?:                     string
				region!:                                string
				namespace!:                             string
				bucket!:                                string
			}]
		}
	}
}
#data: {
	replication_sources: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		bucket!:    string
		namespace!: string
	}
	private_endpoint: {
		name!:      string
		namespace!: string
	}
	private_endpoint_summaries: {
		compartment_id!: string
		namespace!:      string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	bucket: {
		name!:      string
		namespace!: string
	}
	namespace: compartment_id?: string
	object: {
		http_response_content_language?:    string
		object!:                            string
		bucket!:                            string
		http_response_content_disposition?: string
		content_length_limit?:              *1048576 | int
		http_response_content_type?:        string
		namespace!:                         string
		version_id?:                        string
		http_response_content_encoding?:    string
		base64_encode_content?:             *false | bool
		http_response_cache_control?:       string
		http_response_expires?:             string
	}
	object_lifecycle_policy: {
		namespace!: string
		bucket!:    string
	}
	object_versions: {
		start?:       string
		fields?:      string
		namespace!:   string
		prefix?:      string
		start_after?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		end?:       string
		bucket!:    string
		delimiter?: string
	}
	namespace_metadata: namespace!: string
	bucket_summaries: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		namespace!:      string
	}
	preauthrequest: {
		par_id!:    string
		namespace!: string
		bucket!:    string
	}
	preauthrequests: {
		bucket!:             string
		namespace!:          string
		object_name_prefix?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	replication_policy: {
		bucket!:         string
		namespace!:      string
		replication_id!: string
	}
	object_head: {
		object!:    string
		namespace!: string
		bucket!:    string
	}
	objects: {
		namespace!:   string
		start?:       string
		start_after?: string
		bucket!:      string
		delimiter?:   string
		end?:         string
		prefix?:      string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	replication_policies: {
		namespace!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bucket!: string
	}
}

