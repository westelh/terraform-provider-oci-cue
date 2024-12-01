package objectstorage

#resource: {
	attributes: {
		private_endpoint: {
			private_endpoint_ip?: string
			time_created:         string
			id:                   string
			state?:               string
			etag:                 string
			access_targets!: [...{
				namespace!:      string
				compartment_id!: string
				bucket!:         string
			}]
			time_modified: string
			additional_prefixes?: [...string]
			namespace!: string
			nsg_ids?: [...string]
			compartment_id!: string
			subnet_id!:      string
			defined_tags?: [_]: string
			prefix!: string
			freeform_tags?: [_]: string
			created_by: string
			name!:      string
			fqdns?: [_]: [_]: [_]: string
		}
		bucket: {
			object_events_enabled?:       bool
			name!:                        string
			object_lifecycle_policy_etag: string
			time_created:                 string
			auto_tiering?:                string
			retention_rules?: [...{
				time_modified: string
				display_name!: string
				duration?: [...{
					time_amount!: string
					time_unit!:   string
				}]
				time_rule_locked?: string
				retention_rule_id: string
				time_created:      string
			}]
			namespace!:          string
			access_type?:        *"NoPublicAccess" | string
			replication_enabled: bool
			compartment_id!:     string
			bucket_id:           string
			versioning?:         string
			freeform_tags?: [_]: string
			storage_tier?:     string
			approximate_count: string
			created_by:        string
			etag:              string
			is_read_only:      bool
			defined_tags?: [_]: string
			kms_key_id?:      string
			approximate_size: string
			metadata?: [_]: string
		}
		object: {
			content_type?:               string
			namespace!:                  string
			content_disposition?:        string
			object!:                     string
			version_id:                  string
			content_length:              string
			delete_all_object_versions?: *false | bool
			storage_tier?:               string
			content_md5?:                string
			content?:                    string
			source?:                     string
			state:                       string
			bucket!:                     string
			content_encoding?:           string
			content_language?:           string
			cache_control?:              string
			metadata?: [_]: string
			work_request_id:     string
			opc_sse_kms_key_id?: string
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
		}
		object_lifecycle_policy: {
			rules?: [...{
				object_name_filter?: [...{
					inclusion_prefixes?: [...string]
					exclusion_patterns?: [...string]
					inclusion_patterns?: [...string]
				}]
				target?:      *"objects" | string
				action!:      string
				is_enabled!:  bool
				name!:        string
				time_amount!: string
				time_unit!:   string
			}]
			time_created: string
			bucket!:      string
			namespace!:   string
		}
		preauthrequest: {
			full_path:              string
			access_uri:             string
			name!:                  string
			time_expires!:          string
			bucket_listing_action?: string
			access_type!:           string
			bucket!:                string
			namespace!:             string
			object?:                string
			object_name?:           string
			par_id:                 string
			time_created:           string
		}
		replication_policy: {
			status_message:                       string
			destination_bucket_name!:             string
			time_created:                         string
			namespace!:                           string
			status:                               string
			delete_object_in_destination_bucket?: string
			bucket!:                              string
			name!:                                string
			time_last_sync:                       string
			destination_region_name!:             string
		}
		namespace_metadata: {
			default_swift_compartment_id?: string
			namespace!:                    string
			default_s3compartment_id?:     string
		}
	}
	arguments: {
		private_endpoint: {
			nsg_ids?: [...string]
			access_targets!: [...{
				namespace!:      string
				compartment_id!: string
				bucket!:         string
			}]
			namespace!:      string
			state?:          string
			prefix!:         string
			compartment_id!: string
			defined_tags?: [_]: string
			subnet_id!:           string
			private_endpoint_ip?: string
			additional_prefixes?: [...string]
			freeform_tags?: [_]: string
			name!: string
			fqdns?: [_]: [_]: [_]: string
		}
		bucket: {
			compartment_id!: string
			kms_key_id?:     string
			metadata?: [_]: string
			namespace!:             string
			access_type?:           *"NoPublicAccess" | string
			object_events_enabled?: bool
			storage_tier?:          string
			name!:                  string
			defined_tags?: [_]: string
			versioning?: string
			freeform_tags?: [_]: string
			auto_tiering?: string
			retention_rules?: [...{
				time_rule_locked?: string
				display_name!:     string
				duration?: [...{
					time_amount!: string
					time_unit!:   string
				}]
			}]
		}
		object: {
			delete_all_object_versions?: *false | bool
			content_type?:               string
			metadata?: [_]: string
			namespace!:           string
			source?:              string
			bucket!:              string
			content_language?:    string
			content_encoding?:    string
			content?:             string
			content_disposition?: string
			object!:              string
			cache_control?:       string
			content_md5?:         string
			opc_sse_kms_key_id?:  string
			storage_tier?:        string
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
		object_lifecycle_policy: {
			namespace!: string
			rules?: [...{
				target?:      *"objects" | string
				action!:      string
				is_enabled!:  bool
				name!:        string
				time_amount!: string
				time_unit!:   string
				object_name_filter?: [...{
					exclusion_patterns?: [...string]
					inclusion_patterns?: [...string]
					inclusion_prefixes?: [...string]
				}]
			}]
			bucket!: string
		}
		preauthrequest: {
			object_name?:           string
			access_type!:           string
			bucket_listing_action?: string
			time_expires!:          string
			bucket!:                string
			name!:                  string
			namespace!:             string
			object?:                string
		}
		replication_policy: {
			destination_region_name!:             string
			namespace!:                           string
			delete_object_in_destination_bucket?: string
			bucket!:                              string
			destination_bucket_name!:             string
			name!:                                string
		}
		namespace_metadata: {
			default_s3compartment_id?:     string
			default_swift_compartment_id?: string
			namespace!:                    string
		}
	}
}
#data: {
	bucket: {
		namespace!: string
		name!:      string
	}
	bucket_summaries: {
		namespace!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
	}
	namespace: compartment_id?: string
	preauthrequests: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bucket!:             string
		namespace!:          string
		object_name_prefix?: string
	}
	object_head: {
		bucket!:    string
		object!:    string
		namespace!: string
	}
	private_endpoint: {
		name!:      string
		namespace!: string
	}
	object_versions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		bucket!:      string
		namespace!:   string
		start_after?: string
		delimiter?:   string
		end?:         string
		fields?:      string
		prefix?:      string
		start?:       string
	}
	preauthrequest: {
		namespace!: string
		par_id!:    string
		bucket!:    string
	}
	replication_policy: {
		replication_id!: string
		namespace!:      string
		bucket!:         string
	}
	object: {
		http_response_content_disposition?: string
		http_response_content_language?:    string
		http_response_content_type?:        string
		object!:                            string
		bucket!:                            string
		namespace!:                         string
		version_id?:                        string
		content_length_limit?:              *1048576 | int
		http_response_content_encoding?:    string
		base64_encode_content?:             *false | bool
		http_response_cache_control?:       string
		http_response_expires?:             string
	}
	replication_policies: {
		bucket!:    string
		namespace!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	replication_sources: {
		namespace!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		bucket!: string
	}
	private_endpoint_summaries: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		namespace!:      string
	}
	object_lifecycle_policy: {
		bucket!:    string
		namespace!: string
	}
	objects: {
		namespace!:   string
		prefix?:      string
		start?:       string
		start_after?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		end?:       string
		bucket!:    string
		delimiter?: string
	}
	namespace_metadata: namespace!: string
}

