// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package database_management

import (
	"context"
	"fmt"
	"strconv"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_database_management "github.com/oracle/oci-go-sdk/v65/databasemanagement"
)

func DatabaseManagementManagedDatabaseSqlTuningAdvisorTasksRecommendationsDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readDatabaseManagementManagedDatabaseSqlTuningAdvisorTasksRecommendations,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"execution_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"managed_database_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"opc_named_credential_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"sql_object_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"sql_tuning_advisor_task_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"sql_tuning_advisor_task_recommendation_collection": {
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
									"benefit": {
										Type:     schema.TypeFloat,
										Computed: true,
									},
									"finding": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"implement_action_sql": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"is_parallel_execution": {
										Type:     schema.TypeBool,
										Computed: true,
									},
									"rationale": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"recommendation": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"recommendation_key": {
										Type:     schema.TypeInt,
										Computed: true,
									},
									"recommendation_type": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"sql_tuning_advisor_task_id": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"sql_tuning_advisor_task_object_id": {
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

func readDatabaseManagementManagedDatabaseSqlTuningAdvisorTasksRecommendations(d *schema.ResourceData, m interface{}) error {
	sync := &DatabaseManagementManagedDatabaseSqlTuningAdvisorTasksRecommendationsDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).SqlTuningClient()

	return tfresource.ReadResource(sync)
}

type DatabaseManagementManagedDatabaseSqlTuningAdvisorTasksRecommendationsDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_database_management.SqlTuningClient
	Res    *oci_database_management.ListSqlTuningAdvisorTaskRecommendationsResponse
}

func (s *DatabaseManagementManagedDatabaseSqlTuningAdvisorTasksRecommendationsDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DatabaseManagementManagedDatabaseSqlTuningAdvisorTasksRecommendationsDataSourceCrud) Get() error {
	request := oci_database_management.ListSqlTuningAdvisorTaskRecommendationsRequest{}

	if executionId, ok := s.D.GetOkExists("execution_id"); ok {
		tmp := executionId.(string)
		tmpInt64, err := strconv.ParseInt(tmp, 10, 64)
		if err != nil {
			return fmt.Errorf("unable to convert executionId string: %s to an int64 and encountered error: %v", tmp, err)
		}
		request.ExecutionId = &tmpInt64
	}

	if managedDatabaseId, ok := s.D.GetOkExists("managed_database_id"); ok {
		tmp := managedDatabaseId.(string)
		request.ManagedDatabaseId = &tmp
	}

	if opcNamedCredentialId, ok := s.D.GetOkExists("opc_named_credential_id"); ok {
		tmp := opcNamedCredentialId.(string)
		request.OpcNamedCredentialId = &tmp
	}

	if sqlObjectId, ok := s.D.GetOkExists("sql_object_id"); ok {
		tmp := sqlObjectId.(string)
		tmpInt64, err := strconv.ParseInt(tmp, 10, 64)
		if err != nil {
			return fmt.Errorf("unable to convert sqlObjectId string: %s to an int64 and encountered error: %v", tmp, err)
		}
		request.SqlObjectId = &tmpInt64
	}

	if sqlTuningAdvisorTaskId, ok := s.D.GetOkExists("sql_tuning_advisor_task_id"); ok {
		tmp := sqlTuningAdvisorTaskId.(string)
		tmpInt64, err := strconv.ParseInt(tmp, 10, 64)
		if err != nil {
			return fmt.Errorf("unable to convert sqlTuningAdvisorTaskId string: %s to an int64 and encountered error: %v", tmp, err)
		}
		request.SqlTuningAdvisorTaskId = &tmpInt64
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "database_management")

	response, err := s.Client.ListSqlTuningAdvisorTaskRecommendations(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListSqlTuningAdvisorTaskRecommendations(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *DatabaseManagementManagedDatabaseSqlTuningAdvisorTasksRecommendationsDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("DatabaseManagementManagedDatabaseSqlTuningAdvisorTasksRecommendationsDataSource-", DatabaseManagementManagedDatabaseSqlTuningAdvisorTasksRecommendationsDataSource(), s.D))
	resources := []map[string]interface{}{}
	managedDatabaseSqlTuningAdvisorTasksRecommendation := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, SqlTuningAdvisorTaskRecommendationSummaryToMap(item))
	}
	managedDatabaseSqlTuningAdvisorTasksRecommendation["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, DatabaseManagementManagedDatabaseSqlTuningAdvisorTasksRecommendationsDataSource().Schema["sql_tuning_advisor_task_recommendation_collection"].Elem.(*schema.Resource).Schema)
		managedDatabaseSqlTuningAdvisorTasksRecommendation["items"] = items
	}

	resources = append(resources, managedDatabaseSqlTuningAdvisorTasksRecommendation)
	if err := s.D.Set("sql_tuning_advisor_task_recommendation_collection", resources); err != nil {
		return err
	}

	return nil
}

func SqlTuningAdvisorTaskRecommendationSummaryToMap(obj oci_database_management.SqlTuningAdvisorTaskRecommendationSummary) map[string]interface{} {
	result := map[string]interface{}{}

	if obj.Benefit != nil {
		result["benefit"] = float32(*obj.Benefit)
	}

	if obj.Finding != nil {
		result["finding"] = string(*obj.Finding)
	}

	if obj.ImplementActionSql != nil {
		result["implement_action_sql"] = string(*obj.ImplementActionSql)
	}

	if obj.IsParallelExecution != nil {
		result["is_parallel_execution"] = bool(*obj.IsParallelExecution)
	}

	if obj.Rationale != nil {
		result["rationale"] = string(*obj.Rationale)
	}

	if obj.Recommendation != nil {
		result["recommendation"] = string(*obj.Recommendation)
	}

	if obj.RecommendationKey != nil {
		result["recommendation_key"] = int(*obj.RecommendationKey)
	}

	result["recommendation_type"] = string(obj.RecommendationType)

	if obj.SqlTuningAdvisorTaskId != nil {
		result["sql_tuning_advisor_task_id"] = strconv.FormatInt(*obj.SqlTuningAdvisorTaskId, 10)
	}

	if obj.SqlTuningAdvisorTaskObjectId != nil {
		result["sql_tuning_advisor_task_object_id"] = strconv.FormatInt(*obj.SqlTuningAdvisorTaskObjectId, 10)
	}

	return result
}
