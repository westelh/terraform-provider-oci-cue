// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package devops

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_devops "github.com/oracle/oci-go-sdk/v65/devops"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func DevopsRepositorySettingDataSource() *schema.Resource {
	fieldMap := make(map[string]*schema.Schema)
	fieldMap["repository_id"] = &schema.Schema{
		Type:     schema.TypeString,
		Required: true,
	}
	return tfresource.GetSingularDataSourceItemSchema(DevopsRepositorySettingResource(), fieldMap, readSingularDevopsRepositorySetting)
}

func readSingularDevopsRepositorySetting(d *schema.ResourceData, m interface{}) error {
	sync := &DevopsRepositorySettingDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).DevopsClient()

	return tfresource.ReadResource(sync)
}

type DevopsRepositorySettingDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_devops.DevopsClient
	Res    *oci_devops.GetRepositorySettingsResponse
}

func (s *DevopsRepositorySettingDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DevopsRepositorySettingDataSourceCrud) Get() error {
	request := oci_devops.GetRepositorySettingsRequest{}

	if repositoryId, ok := s.D.GetOkExists("repository_id"); ok {
		tmp := repositoryId.(string)
		request.RepositoryId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "devops")

	response, err := s.Client.GetRepositorySettings(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	return nil
}

func (s *DevopsRepositorySettingDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("DevopsRepositorySettingDataSource-", DevopsRepositorySettingDataSource(), s.D))

	if s.Res.ApprovalRules != nil {
		s.D.Set("approval_rules", []interface{}{ApprovalRuleCollectionToMap(s.Res.ApprovalRules)})
	} else {
		s.D.Set("approval_rules", nil)
	}

	if s.Res.MergeChecks != nil {
		s.D.Set("merge_checks", []interface{}{MergeChecksToMap(s.Res.MergeChecks)})
	} else {
		s.D.Set("merge_checks", nil)
	}

	if s.Res.MergeSettings != nil {
		s.D.Set("merge_settings", []interface{}{MergeSettingsToMap(s.Res.MergeSettings)})
	} else {
		s.D.Set("merge_settings", nil)
	}

	return nil
}
