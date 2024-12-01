package osp_gateway

#resource: {
	attributes: {
		subscription: {
			organization_id:  string
			is_intent_to_pay: bool
			language_code:    string
			payment_options: [...{
				name_on_card:             string
				first_name:               string
				last_name:                string
				wallet_instrument_id:     string
				wallet_transaction_id:    string
				email_address:            string
				ext_billing_agreement_id: string
				last_digits:              string
				payment_method:           string
				credit_card_type:         string
				time_expiration:          string
			}]
			upgrade_state_details: string
			compartment_id!:       string
			currency_code:         string
			time_plan_upgrade:     string
			subscription!: [...{
				time_start?: string
				billing_address?: [...{
					company_name?:          string
					municipal_inscription?: string
					city?:                  string
					middle_name?:           string
					country?:               string
					internal_number?:       string
					line2?:                 string
					street_number?:         string
					department_name?:       string
					email_address?:         string
					line1?:                 string
					last_name?:             string
					state?:                 string
					contributor_class?:     string
					first_name?:            string
					street_name?:           string
					address_key?:           string
					line4?:                 string
					job_title?:             string
					postal_code?:           string
					phone_number?:          string
					line3?:                 string
					province?:              string
					state_inscription?:     string
					phone_country_code?:    string
					county?:                string
				}]
				id?:                        string
				ship_to_cust_acct_role_id?: string
				subscription_plan_number!:  string
				bill_to_cust_account_id?:   string
				time_plan_upgrade?:         string
				payment_gateway?: [...{
					merchant_defined_data?: [...{
						promo_type?: string, cloud_account_name?: string
					}]
				}]
				language_code?:   string
				organization_id?: string
				payment_options?: [...{
					first_name?:               string
					last_name?:                string
					payment_method!:           string
					wallet_transaction_id?:    string
					ext_billing_agreement_id?: string
					name_on_card?:             string
					last_digits?:              string
					time_expiration?:          string
					wallet_instrument_id?:     string
					email_address?:            string
					credit_card_type?:         string
				}]
				is_intent_to_pay?:                bool
				ship_to_cust_acct_site_id?:       string
				upgrade_state?:                   string
				upgrade_state_details?:           string
				gsi_org_code?:                    string
				currency_code?:                   string
				plan_type?:                       string
				time_personal_to_corporate_conv?: string
				account_type?:                    string
				tax_info?: [...{
					no_tax_reason_code_details?: string
					tax_cnpj?:                   string
					tax_payer_id?:               string
					tax_reg_number?:             string
					no_tax_reason_code?:         string
				}]
			}]
			payment_gateway: [...{
				merchant_defined_data: [...{
					cloud_account_name: string, promo_type: string
				}]
			}]
			ship_to_cust_acct_role_id: string
			account_type:              string
			tax_info: [...{
				tax_cnpj:                   string
				tax_payer_id:               string
				tax_reg_number:             string
				giro:                       string
				no_tax_reason_code:         string
				no_tax_reason_code_details: string
			}]
			osp_home_region!: string
			gsi_org_code:     string
			billing_address: [...{
				job_title:             string
				line1:                 string
				state_inscription:     string
				middle_name:           string
				department_name:       string
				phone_number:          string
				county:                string
				province:              string
				street_name:           string
				postal_code:           string
				address_key:           string
				internal_number:       string
				state:                 string
				city:                  string
				company_name:          string
				country:               string
				email_address:         string
				last_name:             string
				line4:                 string
				street_number:         string
				line3:                 string
				municipal_inscription: string
				phone_country_code:    string
				first_name:            string
				line2:                 string
				contributor_class:     string
			}]
			plan_type:                       string
			ship_to_cust_acct_site_id:       string
			time_personal_to_corporate_conv: string
			upgrade_state:                   string
			email!:                          string
			time_start:                      string
			subscription_id!:                string
			subscription_plan_number:        string
			bill_to_cust_account_id:         string
		}
		address_action_verification: {
			phone_country_code?: string
			address_key?:        string
			quality:             string
			state?:              string
			city?:               string
			phone_number?:       string
			company_name?:       string
			email_address?:      string
			job_title?:          string
			line3?:              string
			last_name?:          string
			middle_name?:        string
			osp_home_region!:    string
			county?:             string
			internal_number?:    string
			address: [...{
				middle_name:           string
				department_name:       string
				first_name:            string
				internal_number:       string
				phone_country_code:    string
				postal_code:           string
				address_key:           string
				last_name:             string
				province:              string
				country:               string
				county:                string
				state:                 string
				city:                  string
				line3:                 string
				street_name:           string
				line2:                 string
				company_name:          string
				municipal_inscription: string
				job_title:             string
				state_inscription:     string
				phone_number:          string
				email_address:         string
				line4:                 string
				contributor_class:     string
				line1:                 string
				street_number:         string
			}]
			street_number?:         string
			first_name?:            string
			verification_code:      string
			compartment_id!:        string
			street_name?:           string
			line4?:                 string
			postal_code?:           string
			line1?:                 string
			country?:               string
			contributor_class?:     string
			department_name?:       string
			line2?:                 string
			municipal_inscription?: string
			state_inscription?:     string
			province?:              string
		}
	}
	arguments: {
		subscription: {
			email!:           string
			osp_home_region!: string
			subscription!: [...{
				is_intent_to_pay?:                bool
				language_code?:                   string
				time_personal_to_corporate_conv?: string
				account_type?:                    string
				upgrade_state_details?:           string
				plan_type?:                       string
				tax_info?: [...{
					tax_reg_number?:             string
					no_tax_reason_code?:         string
					no_tax_reason_code_details?: string
					tax_cnpj?:                   string
					tax_payer_id?:               string
				}]
				gsi_org_code?:              string
				bill_to_cust_account_id?:   string
				subscription_plan_number!:  string
				ship_to_cust_acct_site_id?: string
				currency_code?:             string
				ship_to_cust_acct_role_id?: string
				time_start?:                string
				billing_address?: [...{
					internal_number?:       string
					state_inscription?:     string
					email_address?:         string
					contributor_class?:     string
					middle_name?:           string
					municipal_inscription?: string
					street_name?:           string
					city?:                  string
					phone_number?:          string
					last_name?:             string
					state?:                 string
					address_key?:           string
					line2?:                 string
					line4?:                 string
					department_name?:       string
					line3?:                 string
					line1?:                 string
					postal_code?:           string
					first_name?:            string
					phone_country_code?:    string
					country?:               string
					county?:                string
					street_number?:         string
					company_name?:          string
					job_title?:             string
					province?:              string
				}]
				payment_gateway?: [...{
					merchant_defined_data?: [...{
						cloud_account_name?: string, promo_type?: string
					}]
				}]
				organization_id?: string
				upgrade_state?:   string
				payment_options?: [...{
					ext_billing_agreement_id?: string
					first_name?:               string
					last_name?:                string
					name_on_card?:             string
					wallet_instrument_id?:     string
					wallet_transaction_id?:    string
					email_address?:            string
					credit_card_type?:         string
					last_digits?:              string
					time_expiration?:          string
					payment_method!:           string
				}]
				time_plan_upgrade?: string
				id?:                string
			}]
			compartment_id!:  string
			subscription_id!: string
		}
		address_action_verification: {
			middle_name?:           string
			line1?:                 string
			province?:              string
			phone_country_code?:    string
			line3?:                 string
			company_name?:          string
			phone_number?:          string
			line4?:                 string
			street_number?:         string
			postal_code?:           string
			line2?:                 string
			municipal_inscription?: string
			city?:                  string
			compartment_id!:        string
			address_key?:           string
			email_address?:         string
			first_name?:            string
			contributor_class?:     string
			last_name?:             string
			county?:                string
			state?:                 string
			department_name?:       string
			internal_number?:       string
			state_inscription?:     string
			country?:               string
			osp_home_region!:       string
			job_title?:             string
			street_name?:           string
		}
	}
}
#data: {
	address_rule: {
		compartment_id!:  string
		country_code!:    string
		osp_home_region!: string
	}
	invoice: {
		osp_home_region!:     string
		compartment_id!:      string
		internal_invoice_id!: string
	}
	invoices: {
		time_payment_start?: string
		compartment_id!:     string
		time_invoice_end?:   string
		status?: [...string]
		time_invoice_start?: string
		invoice_id?:         string
		search_text?:        string
		type?: [...string]
		time_payment_end?: string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		osp_home_region!: string
	}
	invoices_invoice_line: {
		compartment_id!:      string
		internal_invoice_id!: string
		osp_home_region!:     string
	}
	invoices_invoice_lines: {
		compartment_id!:      string
		internal_invoice_id!: string
		osp_home_region!:     string
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
	}
	subscription: {
		compartment_id!:  string
		subscription_id!: string
		osp_home_region!: string
	}
	subscriptions: {
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
		compartment_id!:  string
		osp_home_region!: string
	}
	address: {
		osp_home_region!: string
		address_id!:      string
		compartment_id!:  string
	}
}

