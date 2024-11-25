// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package database_management

import (
	"context"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_database_management "github.com/oracle/oci-go-sdk/v65/databasemanagement"
)

func DatabaseManagementManagedDatabaseUserConsumerGroupPrivilegesDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readDatabaseManagementManagedDatabaseUserConsumerGroupPrivileges,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"managed_database_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"name": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"opc_named_credential_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"user_name": {
				Type:     schema.TypeString,
				Required: true,
			},
			"consumer_group_privilege_collection": {
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
									"grant_option": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"initial_group": {
										Type:     schema.TypeString,
										Computed: true,
									},
									"name": {
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

func readDatabaseManagementManagedDatabaseUserConsumerGroupPrivileges(d *schema.ResourceData, m interface{}) error {
	sync := &DatabaseManagementManagedDatabaseUserConsumerGroupPrivilegesDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).DbManagementClient()

	return tfresource.ReadResource(sync)
}

type DatabaseManagementManagedDatabaseUserConsumerGroupPrivilegesDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_database_management.DbManagementClient
	Res    *oci_database_management.ListConsumerGroupPrivilegesResponse
}

func (s *DatabaseManagementManagedDatabaseUserConsumerGroupPrivilegesDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DatabaseManagementManagedDatabaseUserConsumerGroupPrivilegesDataSourceCrud) Get() error {
	request := oci_database_management.ListConsumerGroupPrivilegesRequest{}

	if managedDatabaseId, ok := s.D.GetOkExists("managed_database_id"); ok {
		tmp := managedDatabaseId.(string)
		request.ManagedDatabaseId = &tmp
	}

	if name, ok := s.D.GetOkExists("name"); ok {
		tmp := name.(string)
		request.Name = &tmp
	}

	if opcNamedCredentialId, ok := s.D.GetOkExists("opc_named_credential_id"); ok {
		tmp := opcNamedCredentialId.(string)
		request.OpcNamedCredentialId = &tmp
	}

	if userName, ok := s.D.GetOkExists("user_name"); ok {
		tmp := userName.(string)
		request.UserName = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "database_management")

	response, err := s.Client.ListConsumerGroupPrivileges(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListConsumerGroupPrivileges(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *DatabaseManagementManagedDatabaseUserConsumerGroupPrivilegesDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("DatabaseManagementManagedDatabaseUserConsumerGroupPrivilegesDataSource-", DatabaseManagementManagedDatabaseUserConsumerGroupPrivilegesDataSource(), s.D))
	resources := []map[string]interface{}{}
	managedDatabaseUserConsumerGroupPrivilege := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, ConsumerGroupPrivilegeSummaryToMap(item))
	}
	managedDatabaseUserConsumerGroupPrivilege["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, DatabaseManagementManagedDatabaseUserConsumerGroupPrivilegesDataSource().Schema["consumer_group_privilege_collection"].Elem.(*schema.Resource).Schema)
		managedDatabaseUserConsumerGroupPrivilege["items"] = items
	}

	resources = append(resources, managedDatabaseUserConsumerGroupPrivilege)
	if err := s.D.Set("consumer_group_privilege_collection", resources); err != nil {
		return err
	}

	return nil
}

func ConsumerGroupPrivilegeSummaryToMap(obj oci_database_management.ConsumerGroupPrivilegeSummary) map[string]interface{} {
	result := map[string]interface{}{}

	result["grant_option"] = string(obj.GrantOption)

	result["initial_group"] = string(obj.InitialGroup)

	if obj.Name != nil {
		result["name"] = string(*obj.Name)
	}

	return result
}
