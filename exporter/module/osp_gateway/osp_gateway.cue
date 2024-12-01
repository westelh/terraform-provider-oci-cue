package osp_gateway

#resource: {
	attributes: {
		address_action_verification: {
			job_title?:        string
			city?:             string
			phone_number?:     string
			verification_code: string
			line4?:            string
			address: [...{
				state:                 string
				job_title:             string
				line3:                 string
				postal_code:           string
				street_number:         string
				phone_country_code:    string
				internal_number:       string
				line4:                 string
				municipal_inscription: string
				country:               string
				state_inscription:     string
				address_key:           string
				department_name:       string
				city:                  string
				first_name:            string
				middle_name:           string
				street_name:           string
				province:              string
				company_name:          string
				contributor_class:     string
				line1:                 string
				county:                string
				email_address:         string
				line2:                 string
				last_name:             string
				phone_number:          string
			}]
			state_inscription?:     string
			state?:                 string
			phone_country_code?:    string
			street_name?:           string
			country?:               string
			municipal_inscription?: string
			last_name?:             string
			line2?:                 string
			middle_name?:           string
			compartment_id!:        string
			email_address?:         string
			line1?:                 string
			internal_number?:       string
			postal_code?:           string
			line3?:                 string
			quality:                string
			first_name?:            string
			province?:              string
			department_name?:       string
			contributor_class?:     string
			street_number?:         string
			address_key?:           string
			county?:                string
			osp_home_region!:       string
			company_name?:          string
		}
		subscription: {
			time_start:                      string
			time_personal_to_corporate_conv: string
			language_code:                   string
			billing_address: [...{
				phone_country_code:    string
				postal_code:           string
				county:                string
				job_title:             string
				municipal_inscription: string
				province:              string
				line2:                 string
				line4:                 string
				phone_number:          string
				line1:                 string
				state_inscription:     string
				middle_name:           string
				last_name:             string
				line3:                 string
				first_name:            string
				street_name:           string
				department_name:       string
				state:                 string
				street_number:         string
				company_name:          string
				email_address:         string
				address_key:           string
				city:                  string
				contributor_class:     string
				country:               string
				internal_number:       string
			}]
			time_plan_upgrade: string
			compartment_id!:   string
			payment_options: [...{
				last_digits:              string
				time_expiration:          string
				wallet_instrument_id:     string
				credit_card_type:         string
				email_address:            string
				first_name:               string
				payment_method:           string
				ext_billing_agreement_id: string
				last_name:                string
				wallet_transaction_id:    string
				name_on_card:             string
			}]
			plan_type:                 string
			subscription_id!:          string
			email!:                    string
			upgrade_state_details:     string
			account_type:              string
			ship_to_cust_acct_role_id: string
			is_intent_to_pay:          bool
			tax_info: [...{
				no_tax_reason_code_details: string
				tax_cnpj:                   string
				tax_payer_id:               string
				tax_reg_number:             string
				giro:                       string
				no_tax_reason_code:         string
			}]
			organization_id:           string
			upgrade_state:             string
			gsi_org_code:              string
			subscription_plan_number:  string
			osp_home_region!:          string
			ship_to_cust_acct_site_id: string
			currency_code:             string
			bill_to_cust_account_id:   string
			subscription!: [...{
				organization_id?: string
				time_start?:      string
				upgrade_state?:   string
				account_type?:    string
				plan_type?:       string
				id?:              string
				billing_address?: [...{
					city?:                  string
					line2?:                 string
					phone_country_code?:    string
					line4?:                 string
					province?:              string
					first_name?:            string
					last_name?:             string
					state?:                 string
					contributor_class?:     string
					municipal_inscription?: string
					job_title?:             string
					line3?:                 string
					email_address?:         string
					street_number?:         string
					company_name?:          string
					department_name?:       string
					street_name?:           string
					address_key?:           string
					phone_number?:          string
					county?:                string
					state_inscription?:     string
					middle_name?:           string
					line1?:                 string
					postal_code?:           string
					country?:               string
					internal_number?:       string
				}]
				is_intent_to_pay?: bool
				tax_info?: [...{
					tax_payer_id?:               string
					tax_reg_number?:             string
					no_tax_reason_code?:         string
					no_tax_reason_code_details?: string
					tax_cnpj?:                   string
				}]
				time_personal_to_corporate_conv?: string
				bill_to_cust_account_id?:         string
				language_code?:                   string
				ship_to_cust_acct_site_id?:       string
				time_plan_upgrade?:               string
				gsi_org_code?:                    string
				subscription_plan_number!:        string
				payment_options?: [...{
					last_digits?:              string
					last_name?:                string
					name_on_card?:             string
					wallet_instrument_id?:     string
					credit_card_type?:         string
					email_address?:            string
					ext_billing_agreement_id?: string
					wallet_transaction_id?:    string
					first_name?:               string
					time_expiration?:          string
					payment_method!:           string
				}]
				upgrade_state_details?:     string
				ship_to_cust_acct_role_id?: string
				payment_gateway?: [...{
					merchant_defined_data?: [...{
						cloud_account_name?: string, promo_type?: string
					}]
				}]
				currency_code?: string
			}]
			payment_gateway: [...{
				merchant_defined_data: [...{
					cloud_account_name: string, promo_type: string
				}]
			}]
		}
	}
	arguments: {
		address_action_verification: {
			contributor_class?:     string
			internal_number?:       string
			department_name?:       string
			phone_country_code?:    string
			first_name?:            string
			province?:              string
			state_inscription?:     string
			line1?:                 string
			line4?:                 string
			compartment_id!:        string
			state?:                 string
			email_address?:         string
			country?:               string
			street_number?:         string
			company_name?:          string
			address_key?:           string
			county?:                string
			job_title?:             string
			osp_home_region!:       string
			phone_number?:          string
			middle_name?:           string
			street_name?:           string
			last_name?:             string
			municipal_inscription?: string
			line2?:                 string
			city?:                  string
			line3?:                 string
			postal_code?:           string
		}
		subscription: {
			email!:           string
			compartment_id!:  string
			osp_home_region!: string
			subscription!: [...{
				account_type?:              string
				ship_to_cust_acct_role_id?: string
				is_intent_to_pay?:          bool
				language_code?:             string
				tax_info?: [...{
					no_tax_reason_code_details?: string
					tax_cnpj?:                   string
					tax_payer_id?:               string
					tax_reg_number?:             string
					no_tax_reason_code?:         string
				}]
				upgrade_state?:   string
				organization_id?: string
				payment_gateway?: [...{
					merchant_defined_data?: [...{
						cloud_account_name?: string, promo_type?: string
					}]
				}]
				billing_address?: [...{
					phone_number?:          string
					contributor_class?:     string
					country?:               string
					city?:                  string
					company_name?:          string
					last_name?:             string
					municipal_inscription?: string
					state?:                 string
					address_key?:           string
					street_number?:         string
					job_title?:             string
					middle_name?:           string
					first_name?:            string
					state_inscription?:     string
					province?:              string
					line1?:                 string
					street_name?:           string
					internal_number?:       string
					line2?:                 string
					postal_code?:           string
					phone_country_code?:    string
					county?:                string
					line3?:                 string
					line4?:                 string
					email_address?:         string
					department_name?:       string
				}]
				subscription_plan_number!: string
				id?:                       string
				payment_options?: [...{
					wallet_transaction_id?:    string
					first_name?:               string
					name_on_card?:             string
					payment_method!:           string
					email_address?:            string
					last_name?:                string
					ext_billing_agreement_id?: string
					time_expiration?:          string
					wallet_instrument_id?:     string
					credit_card_type?:         string
					last_digits?:              string
				}]
				currency_code?:                   string
				plan_type?:                       string
				ship_to_cust_acct_site_id?:       string
				time_plan_upgrade?:               string
				gsi_org_code?:                    string
				bill_to_cust_account_id?:         string
				time_personal_to_corporate_conv?: string
				time_start?:                      string
				upgrade_state_details?:           string
			}]
			subscription_id!: string
		}
	}
}
#data: {
	invoices_invoice_line: {
		osp_home_region!:     string
		compartment_id!:      string
		internal_invoice_id!: string
	}
	invoices_invoice_lines: {
		compartment_id!:      string
		internal_invoice_id!: string
		osp_home_region!:     string
		filter?: [...{
			regex?: *false | bool
			name!:  string
			values!: [...string]
		}]
	}
	subscription: {
		osp_home_region!: string
		subscription_id!: string
		compartment_id!:  string
	}
	subscriptions: {
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		compartment_id!:  string
		osp_home_region!: string
	}
	address: {
		address_id!:      string
		compartment_id!:  string
		osp_home_region!: string
	}
	address_rule: {
		compartment_id!:  string
		country_code!:    string
		osp_home_region!: string
	}
	invoice: {
		compartment_id!:      string
		internal_invoice_id!: string
		osp_home_region!:     string
	}
	invoices: {
		time_invoice_start?: string
		compartment_id!:     string
		osp_home_region!:    string
		time_payment_end?:   string
		status?: [...string]
		time_invoice_end?: string
		type?: [...string]
		filter?: [...{
			name!: string
			values!: [...string]
			regex?: *false | bool
		}]
		search_text?:        string
		time_payment_start?: string
		invoice_id?:         string
	}
}

