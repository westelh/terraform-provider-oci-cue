package dns

#resource: {
	attributes: {
		record: {
			ttl?:             int
			zone_name_or_id!: string
			domain!:          string
			rdata?:           string
			rtype!:           string
			is_protected:     bool
			rrset_version:    string
			record_hash:      string
			compartment_id?:  string
		}
		resolver: {
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			time_updated: string
			time_created: string
			scope?:       string
			endpoints: [...{
				subnet_id:          string
				forwarding_address: string
				name:               string
				state:              string
				time_created:       string
				compartment_id?:    string
				self:               string
				time_updated:       string
				is_listening:       bool
				endpoint_type:      string
				is_forwarding:      bool
				listening_address:  string
			}]
			compartment_id?: string
			default_view_id: string
			resolver_id!:    string
			attached_vcn_id: string
			is_protected:    bool
			state:           string
			display_name?:   string
			rules?: [...{
				destination_addresses!: [...string]
				source_endpoint_name!: string
				client_address_conditions?: [...string]
				qname_cover_conditions?: [...string]
				action!: string
			}]
			self: string
			attached_views?: [...{
				view_id!: string
			}]
		}
		resolver_endpoint: {
			listening_address?:  string
			subnet_id!:          string
			forwarding_address?: string
			is_listening!:       bool
			time_updated:        string
			scope?:              string
			time_created:        string
			self:                string
			name!:               string
			nsg_ids?: [...string]
			is_forwarding!: bool
			state:          string
			endpoint_type?: string
			compartment_id: string
			resolver_id!:   string
		}
		zone: {
			scope?:          string
			self:            string
			zone_type!:      string
			time_created:    string
			version:         string
			name!:           string
			compartment_id!: string
			view_id?:        string
			is_protected:    bool
			state:           string
			zone_transfer_servers: [...{
				is_transfer_source:      bool
				port:                    int
				address:                 string
				is_transfer_destination: bool
			}]
			external_masters?: [...{
				port?:        int
				tsig_key_id?: string
				address!:     string
			}]
			freeform_tags?: [_]: string
			external_downstreams?: [...{
				port?:        int
				tsig_key_id?: string
				address!:     string
			}]
			dnssec_config: [...{
				ksk_dnssec_key_versions: [...{
					time_created:     string
					time_expired:     string
					time_inactivated: string
					uuid:             string
					length_in_bytes:  int
					algorithm:        string
					time_unpublished: string
					time_published:   string
					ds_data: [...{
						digest_type: string
						rdata:       string
					}]
					key_tag:                             int
					time_activated:                      string
					time_promoted:                       string
					predecessor_dnssec_key_version_uuid: string
					successor_dnssec_key_version_uuid:   string
				}]
				zsk_dnssec_key_versions: [...{
					time_created:                        string
					length_in_bytes:                     int
					time_expired:                        string
					uuid:                                string
					algorithm:                           string
					predecessor_dnssec_key_version_uuid: string
					time_inactivated:                    string
					time_promoted:                       string
					key_tag:                             int
					time_activated:                      string
					time_published:                      string
					time_unpublished:                    string
					successor_dnssec_key_version_uuid:   string
				}]
			}]
			nameservers: [...{
				hostname: string
			}]
			dnssec_state?: string
			defined_tags?: [_]: string
			serial: int
		}
		zone_stage_dnssec_key_version: {
			predecessor_dnssec_key_version_uuid!: string
			zone_id!:                             string
			scope?:                               string
		}
		action_create_zone_from_zone_file: {
			version:         string
			time_created:    string
			dnssec_state:    string
			scope?:          string
			serial:          string
			name:            string
			compartment_id!: string
			freeform_tags: [_]: string
			create_zone_from_zone_file_details!: string
			view_id?:                            string
			is_protected:                        bool
			external_masters: [...{
				address:     string
				port:        int
				tsig_key_id: string
			}]
			state: string
			nameservers: [...{
				hostname: string
			}]
			zone_transfer_servers: [...{
				is_transfer_destination: bool
				is_transfer_source:      bool
				port:                    int
				address:                 string
			}]
			defined_tags: [_]: string
			self: string
			dnssec_config: [...{
				ksk_dnssec_key_versions: [...{
					uuid:                                string
					time_activated:                      string
					time_created:                        string
					time_unpublished:                    string
					algorithm:                           string
					predecessor_dnssec_key_version_uuid: string
					ds_data: [...{
						digest_type: string
						rdata:       string
					}]
					time_published:                    string
					time_inactivated:                  string
					successor_dnssec_key_version_uuid: string
					key_tag:                           int
					time_expired:                      string
					length_in_bytes:                   int
					time_promoted:                     string
				}]
				zsk_dnssec_key_versions: [...{
					time_unpublished:                    string
					length_in_bytes:                     int
					successor_dnssec_key_version_uuid:   string
					time_activated:                      string
					time_created:                        string
					predecessor_dnssec_key_version_uuid: string
					time_expired:                        string
					time_inactivated:                    string
					time_published:                      string
					uuid:                                string
					time_promoted:                       string
					algorithm:                           string
					key_tag:                             int
				}]
			}]
			external_downstreams: [...{
				address:     string
				port:        int
				tsig_key_id: string
			}]
			zone_type: string
		}
		steering_policy: {
			template!:                string
			compartment_id!:          string
			display_name!:            string
			ttl?:                     int
			state:                    string
			time_created:             string
			health_check_monitor_id?: string
			self:                     string
			answers?: [...{
				name!:        string
				rdata!:       string
				rtype!:       string
				is_disabled?: bool
				pool?:        string
			}]
			defined_tags?: [_]: string
			freeform_tags?: [_]: string
			rules?: [...{
				default_answer_data?: [...{
					answer_condition?: string
					should_keep?:      bool
					value?:            int
				}]
				default_count?: int
				description?:   string
				rule_type!:     string
				cases?: [...{
					count?: int
					answer_data?: [...{
						answer_condition?: string
						should_keep?:      bool
						value?:            int
					}]
					case_condition?: string
				}]
			}]
		}
		steering_policy_attachment: {
			display_name?: string
			state:         string
			domain_name!:  string
			zone_id!:      string
			self:          string
			rtypes: [...string]
			steering_policy_id!: string
			time_created:        string
			compartment_id:      string
		}
		tsig_key: {
			compartment_id!: string
			secret!:         string
			self:            string
			name!:           string
			freeform_tags?: [_]: string
			time_created: string
			time_updated: string
			algorithm!:   string
			defined_tags?: [_]: string
			state: string
		}
		view: {
			self:         string
			time_updated: string
			defined_tags?: [_]: string
			scope?:          string
			state:           string
			is_protected:    bool
			compartment_id!: string
			display_name?:   string
			time_created:    string
			freeform_tags?: [_]: string
		}
		zone_promote_dnssec_key_version: {
			zone_id!:                 string
			scope?:                   string
			dnssec_key_version_uuid!: string
		}
		rrset: {
			compartment_id?: string
			items?: [...{
				rtype!:        string
				ttl!:          int
				is_protected:  bool
				record_hash:   string
				rrset_version: string
				domain!:       string
				rdata!:        string
			}]
			scope?:           string
			view_id?:         string
			domain!:          string
			rtype!:           string
			zone_name_or_id!: string
		}
	}
	arguments: {
		record: {
			rdata?:           string
			rtype!:           string
			compartment_id?:  string
			domain!:          string
			zone_name_or_id!: string
			ttl?:             int
		}
		resolver: {
			display_name?: string
			rules?: [...{
				action!: string
				destination_addresses!: [...string]
				source_endpoint_name!: string
				client_address_conditions?: [...string]
				qname_cover_conditions?: [...string]
			}]
			defined_tags?: [_]: string
			scope?: string
			freeform_tags?: [_]: string
			compartment_id?: string
			resolver_id!:    string
			attached_views?: [...{
				view_id!: string
			}]
		}
		resolver_endpoint: {
			listening_address?: string
			name!:              string
			is_forwarding!:     bool
			is_listening!:      bool
			endpoint_type?:     string
			nsg_ids?: [...string]
			subnet_id!:          string
			forwarding_address?: string
			scope?:              string
			resolver_id!:        string
		}
		zone: {
			external_masters?: [...{
				address!:     string
				port?:        int
				tsig_key_id?: string
			}]
			compartment_id!: string
			defined_tags?: [_]: string
			scope?: string
			name!:  string
			freeform_tags?: [_]: string
			dnssec_state?: string
			external_downstreams?: [...{
				port?:        int
				tsig_key_id?: string
				address!:     string
			}]
			view_id?:   string
			zone_type!: string
		}
		zone_stage_dnssec_key_version: {
			predecessor_dnssec_key_version_uuid!: string
			zone_id!:                             string
			scope?:                               string
		}
		action_create_zone_from_zone_file: {
			compartment_id!:                     string
			create_zone_from_zone_file_details!: string
			scope?:                              string
			view_id?:                            string
		}
		steering_policy: {
			answers?: [...{
				rtype!:       string
				is_disabled?: bool
				pool?:        string
				name!:        string
				rdata!:       string
			}]
			freeform_tags?: [_]: string
			rules?: [...{
				default_answer_data?: [...{
					answer_condition?: string
					should_keep?:      bool
					value?:            int
				}]
				default_count?: int
				description?:   string
				rule_type!:     string
				cases?: [...{
					answer_data?: [...{
						should_keep?:      bool
						value?:            int
						answer_condition?: string
					}]
					case_condition?: string
					count?:          int
				}]
			}]
			display_name!: string
			defined_tags?: [_]: string
			template!:                string
			health_check_monitor_id?: string
			ttl?:                     int
			compartment_id!:          string
		}
		steering_policy_attachment: {
			steering_policy_id!: string
			display_name?:       string
			domain_name!:        string
			zone_id!:            string
		}
		tsig_key: {
			freeform_tags?: [_]: string
			name!:   string
			secret!: string
			defined_tags?: [_]: string
			algorithm!:      string
			compartment_id!: string
		}
		view: {
			freeform_tags?: [_]: string
			scope?:          string
			compartment_id!: string
			defined_tags?: [_]: string
			display_name?: string
		}
		zone_promote_dnssec_key_version: {
			dnssec_key_version_uuid!: string
			zone_id!:                 string
			scope?:                   string
		}
		rrset: {
			zone_name_or_id!: string
			compartment_id?:  string
			items?: [...{
				domain!: string
				rdata!:  string
				rtype!:  string
				ttl!:    int
			}]
			scope?:   string
			view_id?: string
			domain!:  string
			rtype!:   string
		}
	}
}
#data: {
	resolver: {
		resolver_id!: string
		scope?:       string
	}
	resolvers: {
		scope!: string
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
	}
	steering_policies: {
		template?:                              string
		time_created_greater_than_or_equal_to?: string
		health_check_monitor_id?:               string
		compartment_id!:                        string
		time_created_less_than?:                string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		state?:                 string
		display_name?:          string
		display_name_contains?: string
		id?:                    string
	}
	steering_policy_attachment: steering_policy_attachment_id!: string
	tsig_key: tsig_key_id!: string
	view: {
		scope?:   string
		view_id?: string
	}
	records: {
		zone_name_or_id!: string
		compartment_id?:  string
		domain?:          string
		rtype?:           string
		sort_order?:      string
		sort_by?:         string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		domain_contains?: string
		zone_version?:    string
	}
	resolver_endpoints: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		name?:        string
		resolver_id!: string
		scope!:       string
	}
	rrsets: {
		domain?:          string
		domain_contains?: string
		rtype?:           string
		scope?:           string
		view_id?:         string
		zone_name_or_id!: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	steering_policy: steering_policy_id!: string
	tsig_keys: {
		state?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!: string
		id?:             string
		name?:           string
	}
	views: {
		filter?: [...{
			values!: [...string]
			regex?: *false | bool
			name!:  string
		}]
		compartment_id!: string
		display_name?:   string
		id?:             string
		scope?:          string
		state?:          string
	}
	resolver_endpoint: {
		scope?:                  string
		resolver_endpoint_name!: string
		resolver_id!:            string
	}
	zones: {
		state?:     string
		zone_type?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		name_contains?:                         string
		name?:                                  string
		compartment_id!:                        string
		view_id?:                               string
		sort_by?:                               string
		time_created_greater_than_or_equal_to?: string
		tsig_key_id?:                           string
		sort_order?:                            string
		time_created_less_than?:                string
		scope?:                                 string
		dnssec_state?:                          string
	}
	rrset: {
		rtype!:           string
		view_id?:         string
		zone_name_or_id!: string
		compartment_id?:  string
		scope?:           string
		zone_version?:    string
		domain!:          string
	}
	steering_policy_attachments: {
		time_created_less_than?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:                        string
		id?:                                    string
		steering_policy_id?:                    string
		display_name?:                          string
		state?:                                 string
		time_created_greater_than_or_equal_to?: string
		zone_id?:                               string
		domain?:                                string
		domain_contains?:                       string
	}
}

