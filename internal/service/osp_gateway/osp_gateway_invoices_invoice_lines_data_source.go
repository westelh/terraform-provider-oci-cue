// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package osp_gateway

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_osp_gateway "github.com/oracle/oci-go-sdk/v65/ospgateway"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func OspGatewayInvoicesInvoiceLinesDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readOspGatewayInvoicesInvoiceLines,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"compartment_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"internal_invoice_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"osp_home_region": {
				Type:     schema.TypeString,
				Required: true,
			},
			"invoice_line_collection": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{
						"items": {
							Type:     schema.TypeList,
							Computed: true,
							Elem: &schema.Resource{
								Schema: map[string]*schema.Schema{
									// Required

									// Optional

									// Computed
									"currency": {
										Type:     schema.TypeList,
										Computed: true,
										Elem: &schema.Resource{
											Schema: map[string]*schema.Schema{
												// Required

												// Optional

												// Computed
												"currency_code": {
													Type:     schema.TypeString,
													Computed: true,
												},
												"currency_symbol": {
													Type:     schema.TypeString,
													Computed: true,
												},
												"name": {
													Type:     schema.TypeString,
													Computed: true,
												},
												"round_decimal_point": {
													Type:     schema.TypeFloat,
													Computed: true,
												},
												"usd_conversion": {
													Type:     schema.TypeFloat,
													Computed: true,
												},
											},
										},
									},
									"net_unit_price": {
										Type:     schema.TypeFloat,
										Computed: true,
									},
									"order_no": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"part_number": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"product": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"quantity": {
										Type:     schema.TypeFloat,
										Computed: true,
									},
									"time_end": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"time_start": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"total_price": {
										Type:     schema.TypeFloat,
										Computed: true,
									},
								},
							},
						},
					},
				},
			},
		},
	}
}

func readOspGatewayInvoicesInvoiceLines(d *schema.ResourceData, m interface{}) error {
	sync := &OspGatewayInvoicesInvoiceLinesDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).InvoiceServiceClient()

	return tfresource.ReadResource(sync)
}

type OspGatewayInvoicesInvoiceLinesDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_osp_gateway.InvoiceServiceClient
	Res    *oci_osp_gateway.ListInvoiceLinesResponse
}

func (s *OspGatewayInvoicesInvoiceLinesDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *OspGatewayInvoicesInvoiceLinesDataSourceCrud) Get() error {
	request := oci_osp_gateway.ListInvoiceLinesRequest{}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if internalInvoiceId, ok := s.D.GetOkExists("internal_invoice_id"); ok {
		tmp := internalInvoiceId.(string)
		request.InternalInvoiceId = &tmp
	}

	if ospHomeRegion, ok := s.D.GetOkExists("osp_home_region"); ok {
		tmp := ospHomeRegion.(string)
		request.OspHomeRegion = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "osp_gateway")

	response, err := s.Client.ListInvoiceLines(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListInvoiceLines(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *OspGatewayInvoicesInvoiceLinesDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("OspGatewayInvoicesInvoiceLinesDataSource-", OspGatewayInvoicesInvoiceLinesDataSource(), s.D))
	resources := []map[string]interface{}{}
	invoicesInvoiceLine := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, InvoiceLineSummaryToMap(item))
	}
	invoicesInvoiceLine["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, OspGatewayInvoicesInvoiceLinesDataSource().Schema["invoice_line_collection"].Elem.(*schema.Resource).Schema)
		invoicesInvoiceLine["items"] = items
	}

	resources = append(resources, invoicesInvoiceLine)
	if err := s.D.Set("invoice_line_collection", resources); err != nil {
		return err
	}

	return nil
}

func CurrencyToMap(obj *oci_osp_gateway.Currency) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.CurrencyCode != nil {
		result["currency_code"] = string(*obj.CurrencyCode)
	}

	if obj.CurrencySymbol != nil {
		result["currency_symbol"] = string(*obj.CurrencySymbol)
	}

	if obj.Name != nil {
		result["name"] = string(*obj.Name)
	}

	if obj.RoundDecimalPoint != nil {
		result["round_decimal_point"] = float32(*obj.RoundDecimalPoint)
	}

	if obj.UsdConversion != nil {
		result["usd_conversion"] = float32(*obj.UsdConversion)
	}

	return result
}

func InvoiceLineSummaryToMap(obj oci_osp_gateway.InvoiceLineSummary) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.Currency != nil {
		result["currency"] = []interface{}{CurrencyToMap(obj.Currency)}
	}

	if obj.NetUnitPrice != nil {
		result["net_unit_price"] = float32(*obj.NetUnitPrice)
	}

	if obj.OrderNo != nil {
		result["order_no"] = string(*obj.OrderNo)
	}

	if obj.PartNumber != nil {
		result["part_number"] = string(*obj.PartNumber)
	}

	if obj.Product != nil {
		result["product"] = string(*obj.Product)
	}

	if obj.Quantity != nil {
		result["quantity"] = float32(*obj.Quantity)
	}

	if obj.TimeEnd != nil {
		result["time_end"] = obj.TimeEnd.String()
	}

	if obj.TimeStart != nil {
		result["time_start"] = obj.TimeStart.String()
	}

	if obj.TotalPrice != nil {
		result["total_price"] = float32(*obj.TotalPrice)
	}

	return result
}
