package dns

#resource: {
	attributes: {
		steering_policy: {
			health_check_monitor_id?: string
			ttl?:                     int
			defined_tags?: [_]: string
			rules?: [...{
				default_answer_data?: [...{
					should_keep?:      bool
					value?:            int
					answer_condition?: string
				}]
				default_count?: int
				description?:   string
				rule_type!:     string
				cases?: [...{
					answer_data?: [...{
						answer_condition?: string
						should_keep?:      bool
						value?:            int
					}]
					case_condition?: string
					count?:          int
				}]
			}]
			self:      string
			template!: string
			answers?: [...{
				is_disabled?: bool
				pool?:        string
				name!:        string
				rdata!:       string
				rtype!:       string
			}]
			state:         string
			display_name!: string
			freeform_tags?: [_]: string
			time_created:    string
			compartment_id!: string
		}
		tsig_key: {
			self:         string
			time_created: string
			algorithm!:   string
			secret!:      string
			freeform_tags?: [_]: string
			time_updated:    string
			compartment_id!: string
			defined_tags?: [_]: string
			state: string
			name!: string
		}
		zone: {
			time_created: string
			is_protected: bool
			serial:       int
			external_downstreams?: [...{
				address!:     string
				port?:        int
				tsig_key_id?: string
			}]
			version:       string
			dnssec_state?: string
			dnssec_config: [...{
				ksk_dnssec_key_versions: [...{
					time_expired:                      string
					time_unpublished:                  string
					successor_dnssec_key_version_uuid: string
					time_created:                      string
					time_promoted:                     string
					time_inactivated:                  string
					algorithm:                         string
					uuid:                              string
					key_tag:                           int
					length_in_bytes:                   int
					time_published:                    string
					ds_data: [...{
						digest_type: string
						rdata:       string
					}]
					time_activated:                      string
					predecessor_dnssec_key_version_uuid: string
				}]
				zsk_dnssec_key_versions: [...{
					time_expired:                        string
					time_inactivated:                    string
					time_promoted:                       string
					length_in_bytes:                     int
					predecessor_dnssec_key_version_uuid: string
					successor_dnssec_key_version_uuid:   string
					time_unpublished:                    string
					time_activated:                      string
					time_created:                        string
					time_published:                      string
					algorithm:                           string
					key_tag:                             int
					uuid:                                string
				}]
			}]
			external_masters?: [...{
				address!:     string
				port?:        int
				tsig_key_id?: string
			}]
			name!:           string
			state:           string
			compartment_id!: string
			zone_type!:      string
			defined_tags?: [_]: string
			view_id?: string
			freeform_tags?: [_]: string
			zone_transfer_servers: [...{
				address:                 string
				is_transfer_destination: bool
				is_transfer_source:      bool
				port:                    int
			}]
			scope?: string
			self:   string
			nameservers: [...{
				hostname: string
			}]
		}
		zone_promote_dnssec_key_version: {
			scope?:                   string
			dnssec_key_version_uuid!: string
			zone_id!:                 string
		}
		rrset: {
			rtype!:           string
			zone_name_or_id!: string
			compartment_id?:  string
			items?: [...{
				domain!:       string
				rdata!:        string
				rtype!:        string
				ttl!:          int
				is_protected:  bool
				record_hash:   string
				rrset_version: string
			}]
			scope?:   string
			view_id?: string
			domain!:  string
		}
		steering_policy_attachment: {
			domain_name!:   string
			time_created:   string
			self:           string
			compartment_id: string
			rtypes: [...string]
			state:               string
			steering_policy_id!: string
			zone_id!:            string
			display_name?:       string
		}
		view: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			display_name?:   string
			self:            string
			time_updated:    string
			is_protected:    bool
			time_created:    string
			scope?:          string
			state:           string
			compartment_id!: string
		}
		zone_stage_dnssec_key_version: {
			predecessor_dnssec_key_version_uuid!: string
			zone_id!:                             string
			scope?:                               string
		}
		action_create_zone_from_zone_file: {
			zone_type:    string
			dnssec_state: string
			external_masters: [...{
				port:        int
				tsig_key_id: string
				address:     string
			}]
			time_created: string
			zone_transfer_servers: [...{
				is_transfer_source:      bool
				port:                    int
				address:                 string
				is_transfer_destination: bool
			}]
			scope?: string
			serial: string
			freeform_tags: [_]: string
			self: string
			external_downstreams: [...{
				port:        int
				tsig_key_id: string
				address:     string
			}]
			nameservers: [...{
				hostname: string
			}]
			compartment_id!: string
			is_protected:    bool
			version:         string
			name:            string
			defined_tags: [_]: string
			state:                               string
			view_id?:                            string
			create_zone_from_zone_file_details!: string
			dnssec_config: [...{
				ksk_dnssec_key_versions: [...{
					time_unpublished:                  string
					successor_dnssec_key_version_uuid: string
					time_created:                      string
					algorithm:                         string
					ds_data: [...{
						digest_type: string
						rdata:       string
					}]
					key_tag:                             int
					length_in_bytes:                     int
					time_published:                      string
					time_activated:                      string
					time_inactivated:                    string
					time_promoted:                       string
					uuid:                                string
					predecessor_dnssec_key_version_uuid: string
					time_expired:                        string
				}]
				zsk_dnssec_key_versions: [...{
					time_unpublished:                    string
					predecessor_dnssec_key_version_uuid: string
					time_promoted:                       string
					uuid:                                string
					length_in_bytes:                     int
					time_activated:                      string
					time_created:                        string
					time_inactivated:                    string
					algorithm:                           string
					time_published:                      string
					key_tag:                             int
					successor_dnssec_key_version_uuid:   string
					time_expired:                        string
				}]
			}]
		}
		record: {
			compartment_id?:  string
			record_hash:      string
			rdata?:           string
			rtype!:           string
			is_protected:     bool
			zone_name_or_id!: string
			ttl?:             int
			domain!:          string
			rrset_version:    string
		}
		resolver: {
			time_updated: string
			is_protected: bool
			freeform_tags?: [_]: string
			attached_vcn_id: string
			attached_views?: [...{
				view_id!: string
			}]
			time_created:  string
			resolver_id!:  string
			display_name?: string
			rules?: [...{
				qname_cover_conditions?: [...string]
				action!: string
				destination_addresses!: [...string]
				source_endpoint_name!: string
				client_address_conditions?: [...string]
			}]
			endpoints: [...{
				endpoint_type:      string
				listening_address:  string
				name:               string
				compartment_id?:    string
				forwarding_address: string
				self:               string
				state:              string
				subnet_id:          string
				time_updated:       string
				is_forwarding:      bool
				is_listening:       bool
				time_created:       string
			}]
			compartment_id?: string
			defined_tags?: [_]: string
			self:            string
			state:           string
			scope?:          string
			default_view_id: string
		}
		resolver_endpoint: {
			compartment_id: string
			state:          string
			scope?:         string
			nsg_ids?: [...string]
			self:                string
			endpoint_type?:      string
			name!:               string
			is_forwarding!:      bool
			forwarding_address?: string
			listening_address?:  string
			resolver_id!:        string
			subnet_id!:          string
			time_updated:        string
			is_listening!:       bool
			time_created:        string
		}
	}
	arguments: {
		steering_policy: {
			freeform_tags?: [_]: string
			rules?: [...{
				rule_type!: string
				cases?: [...{
					answer_data?: [...{
						should_keep?:      bool
						value?:            int
						answer_condition?: string
					}]
					case_condition?: string
					count?:          int
				}]
				default_answer_data?: [...{
					answer_condition?: string
					should_keep?:      bool
					value?:            int
				}]
				default_count?: int
				description?:   string
			}]
			compartment_id!: string
			template!:       string
			answers?: [...{
				rtype!:       string
				is_disabled?: bool
				pool?:        string
				name!:        string
				rdata!:       string
			}]
			health_check_monitor_id?: string
			display_name!:            string
			defined_tags?: [_]: string
			ttl?: int
		}
		tsig_key: {
			compartment_id!: string
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			algorithm!: string
			name!:      string
			secret!:    string
		}
		zone: {
			external_masters?: [...{
				port?:        int
				tsig_key_id?: string
				address!:     string
			}]
			freeform_tags?: [_]: string
			name!:         string
			dnssec_state?: string
			view_id?:      string
			zone_type!:    string
			defined_tags?: [_]: string
			external_downstreams?: [...{
				port?:        int
				tsig_key_id?: string
				address!:     string
			}]
			scope?:          string
			compartment_id!: string
		}
		zone_promote_dnssec_key_version: {
			dnssec_key_version_uuid!: string
			zone_id!:                 string
			scope?:                   string
		}
		rrset: {
			scope?:           string
			view_id?:         string
			domain!:          string
			rtype!:           string
			zone_name_or_id!: string
			compartment_id?:  string
			items?: [...{
				rdata!:  string
				rtype!:  string
				ttl!:    int
				domain!: string
			}]
		}
		steering_policy_attachment: {
			steering_policy_id!: string
			zone_id!:            string
			display_name?:       string
			domain_name!:        string
		}
		view: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			compartment_id!: string
			display_name?:   string
			scope?:          string
		}
		zone_stage_dnssec_key_version: {
			scope?:                               string
			predecessor_dnssec_key_version_uuid!: string
			zone_id!:                             string
		}
		action_create_zone_from_zone_file: {
			compartment_id!:                     string
			scope?:                              string
			create_zone_from_zone_file_details!: string
			view_id?:                            string
		}
		record: {
			zone_name_or_id!: string
			compartment_id?:  string
			domain!:          string
			rdata?:           string
			rtype!:           string
			ttl?:             int
		}
		resolver: {
			scope?: string
			rules?: [...{
				client_address_conditions?: [...string]
				qname_cover_conditions?: [...string]
				action!: string
				destination_addresses!: [...string]
				source_endpoint_name!: string
			}]
			freeform_tags?: [_]: string
			attached_views?: [...{
				view_id!: string
			}]
			compartment_id?: string
			defined_tags?: [_]: string
			resolver_id!:  string
			display_name?: string
		}
		resolver_endpoint: {
			endpoint_type?:      string
			subnet_id!:          string
			scope?:              string
			forwarding_address?: string
			is_forwarding!:      bool
			is_listening!:       bool
			name!:               string
			resolver_id!:        string
			nsg_ids?: [...string]
			listening_address?: string
		}
	}
}
#data: {
	resolver: {
		scope?:       string
		resolver_id!: string
	}
	resolver_endpoint: {
		resolver_id!:            string
		scope?:                  string
		resolver_endpoint_name!: string
	}
	rrset: {
		rtype!:           string
		scope?:           string
		zone_name_or_id!: string
		compartment_id?:  string
		zone_version?:    string
		view_id?:         string
		domain!:          string
	}
	steering_policy_attachment: steering_policy_attachment_id!: string
	records: {
		zone_name_or_id!: string
		rtype?:           string
		sort_by?:         string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		sort_order?:      string
		zone_version?:    string
		compartment_id?:  string
		domain?:          string
		domain_contains?: string
	}
	steering_policy: steering_policy_id!: string
	tsig_key: tsig_key_id!: string
	tsig_keys: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		id?:             string
		name?:           string
	}
	zones: {
		name_contains?:                         string
		compartment_id!:                        string
		sort_by?:                               string
		view_id?:                               string
		scope?:                                 string
		time_created_less_than?:                string
		dnssec_state?:                          string
		tsig_key_id?:                           string
		state?:                                 string
		sort_order?:                            string
		time_created_greater_than_or_equal_to?: string
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		name?:      string
		zone_type?: string
	}
	resolvers: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		scope!:          string
		state?:          string
	}
	steering_policies: {
		time_created_greater_than_or_equal_to?: string
		time_created_less_than?:                string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		template?:                string
		health_check_monitor_id?: string
		id?:                      string
		state?:                   string
		compartment_id!:          string
		display_name?:            string
		display_name_contains?:   string
	}
	rrsets: {
		domain_contains?: string
		rtype?:           string
		scope?:           string
		view_id?:         string
		zone_name_or_id!: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		domain?: string
	}
	steering_policy_attachments: {
		time_created_greater_than_or_equal_to?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		display_name?:           string
		domain?:                 string
		domain_contains?:        string
		id?:                     string
		state?:                  string
		steering_policy_id?:     string
		compartment_id!:         string
		zone_id?:                string
		time_created_less_than?: string
	}
	view: {
		view_id?: string
		scope?:   string
	}
	views: {
		state?: string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		scope?:          string
	}
	resolver_endpoints: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		name?:        string
		resolver_id!: string
		scope!:       string
		state?:       string
	}
}

