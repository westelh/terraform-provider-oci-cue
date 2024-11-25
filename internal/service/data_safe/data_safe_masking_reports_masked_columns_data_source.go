// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package data_safe

import (
	"context"
	"strconv"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	"github.com/oracle/oci-go-sdk/v65/datasafe"
	oci_data_safe "github.com/oracle/oci-go-sdk/v65/datasafe"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func DataSafeMaskingReportsMaskedColumnsDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readDataSafeMaskingReportsMaskedColumns,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"column_name": {
				Type:     schema.TypeList,
				Optional: true,
				Elem: &schema.Schema{
					Type: schema.TypeString,
				},
			},
			"masking_column_group": {
				Type:     schema.TypeList,
				Optional: true,
				Elem: &schema.Schema{
					Type: schema.TypeString,
				},
			},
			"masking_report_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"object": {
				Type:     schema.TypeList,
				Optional: true,
				Elem: &schema.Schema{
					Type: schema.TypeString,
				},
			},
			"object_type": {
				Type:     schema.TypeList,
				Optional: true,
				Elem: &schema.Schema{
					Type: schema.TypeString,
				},
			},
			"schema_name": {
				Type:     schema.TypeList,
				Optional: true,
				Elem: &schema.Schema{
					Type: schema.TypeString,
				},
			},
			"sensitive_type_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"masked_column_collection": {
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
									// Required

									// Optional

									// Computed
									"column_name": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"key": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"masking_column_group": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"masking_format_used": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"object": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"object_type": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"parent_column_key": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"schema_name": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"sensitive_type_id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"total_masked_values": {
										Type:     schema.TypeString,
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

func readDataSafeMaskingReportsMaskedColumns(d *schema.ResourceData, m interface{}) error {
	sync := &DataSafeMaskingReportsMaskedColumnsDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).DataSafeClient()

	return tfresource.ReadResource(sync)
}

type DataSafeMaskingReportsMaskedColumnsDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_data_safe.DataSafeClient
	Res    *oci_data_safe.ListMaskedColumnsResponse
}

func (s *DataSafeMaskingReportsMaskedColumnsDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DataSafeMaskingReportsMaskedColumnsDataSourceCrud) Get() error {
	request := oci_data_safe.ListMaskedColumnsRequest{}

	if columnName, ok := s.D.GetOkExists("column_name"); ok {
		interfaces := columnName.([]interface{})
		tmp := make([]string, len(interfaces))
		for i := range interfaces {
			if interfaces[i] != nil {
				tmp[i] = interfaces[i].(string)
			}
		}
		if len(tmp) != 0 || s.D.HasChange("column_name") {
			request.ColumnName = tmp
		}
	}

	if maskingColumnGroup, ok := s.D.GetOkExists("masking_column_group"); ok {
		interfaces := maskingColumnGroup.([]interface{})
		tmp := make([]string, len(interfaces))
		for i := range interfaces {
			if interfaces[i] != nil {
				tmp[i] = interfaces[i].(string)
			}
		}
		if len(tmp) != 0 || s.D.HasChange("masking_column_group") {
			request.MaskingColumnGroup = tmp
		}
	}

	if maskingReportId, ok := s.D.GetOkExists("masking_report_id"); ok {
		tmp := maskingReportId.(string)
		request.MaskingReportId = &tmp
	}

	if object, ok := s.D.GetOkExists("object"); ok {
		interfaces := object.([]interface{})
		tmp := make([]string, len(interfaces))
		for i := range interfaces {
			if interfaces[i] != nil {
				tmp[i] = interfaces[i].(string)
			}
		}
		if len(tmp) != 0 || s.D.HasChange("object") {
			request.ObjectName = tmp
		}
	}

	if objectType, ok := s.D.GetOkExists("object_type"); ok {
		interfaces := objectType.([]interface{})
		tmp := make([]datasafe.ListMaskedColumnsObjectTypeEnum, len(interfaces))
		for i := range interfaces {
			if interfaces[i] != nil {
				tmp[i] = interfaces[i].(datasafe.ListMaskedColumnsObjectTypeEnum)
			}
		}
		if len(tmp) != 0 || s.D.HasChange("object_type") {
			request.ObjectType = tmp
		}
	}

	if schemaName, ok := s.D.GetOkExists("schema_name"); ok {
		interfaces := schemaName.([]interface{})
		tmp := make([]string, len(interfaces))
		for i := range interfaces {
			if interfaces[i] != nil {
				tmp[i] = interfaces[i].(string)
			}
		}
		if len(tmp) != 0 || s.D.HasChange("schema_name") {
			request.SchemaName = tmp
		}
	}

	if sensitiveTypeId, ok := s.D.GetOkExists("sensitive_type_id"); ok {
		tmp := sensitiveTypeId.(string)
		request.SensitiveTypeId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "data_safe")

	response, err := s.Client.ListMaskedColumns(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListMaskedColumns(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *DataSafeMaskingReportsMaskedColumnsDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("DataSafeMaskingReportsMaskedColumnsDataSource-", DataSafeMaskingReportsMaskedColumnsDataSource(), s.D))
	resources := []map[string]interface{}{}
	maskingReportsMaskedColumn := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, MaskedColumnSummaryToMap(item))
	}
	maskingReportsMaskedColumn["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, DataSafeMaskingReportsMaskedColumnsDataSource().Schema["masked_column_collection"].Elem.(*schema.Resource).Schema)
		maskingReportsMaskedColumn["items"] = items
	}

	resources = append(resources, maskingReportsMaskedColumn)
	if err := s.D.Set("masked_column_collection", resources); err != nil {
		return err
	}

	return nil
}

func MaskedColumnSummaryToMap(obj oci_data_safe.MaskedColumnSummary) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.ColumnName != nil {
		result["column_name"] = string(*obj.ColumnName)
	}

	if obj.Key != nil {
		result["key"] = string(*obj.Key)
	}

	if obj.MaskingColumnGroup != nil {
		result["masking_column_group"] = string(*obj.MaskingColumnGroup)
	}

	if obj.MaskingFormatUsed != nil {
		result["masking_format_used"] = string(*obj.MaskingFormatUsed)
	}

	if obj.ObjectName != nil {
		result["object"] = string(*obj.ObjectName)
	}

	result["object_type"] = string(obj.ObjectType)

	if obj.ParentColumnKey != nil {
		result["parent_column_key"] = string(*obj.ParentColumnKey)
	}

	if obj.SchemaName != nil {
		result["schema_name"] = string(*obj.SchemaName)
	}

	if obj.SensitiveTypeId != nil {
		result["sensitive_type_id"] = string(*obj.SensitiveTypeId)
	}

	if obj.TotalMaskedValues != nil {
		result["total_masked_values"] = strconv.FormatInt(*obj.TotalMaskedValues, 10)
	}

	return result
}
