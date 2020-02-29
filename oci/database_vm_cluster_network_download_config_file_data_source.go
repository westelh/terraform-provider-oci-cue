// Copyright (c) 2017, 2019, Oracle and/or its affiliates. All rights reserved.

package oci

import (
	"context"
	"encoding/base64"
	"io/ioutil"
	"log"

	"github.com/hashicorp/terraform/helper/schema"
	oci_database "github.com/oracle/oci-go-sdk/database"
)

func init() {
	RegisterDatasource("oci_database_vm_cluster_network_download_config_file", DatabaseVmClusterNetworkDownloadConfigFileDataSource())
}

func DatabaseVmClusterNetworkDownloadConfigFileDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readSingularDatabaseVmClusterNetworkDownloadConfigFile,
		Schema: map[string]*schema.Schema{
			"exadata_infrastructure_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"vm_cluster_network_id": {
				Type:     schema.TypeString,
				Required: true,
			},

			//Optional
			"base64_encode_content": {
				Type:     schema.TypeBool,
				Optional: true,
				Default:  false,
			},

			// Computed
			"content": {
				Type:     schema.TypeString,
				Computed: true,
			},
		},
	}
}

func readSingularDatabaseVmClusterNetworkDownloadConfigFile(d *schema.ResourceData, m interface{}) error {
	sync := &DatabaseVmClusterNetworkDownloadConfigFileDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*OracleClients).databaseClient

	return ReadResource(sync)
}

type DatabaseVmClusterNetworkDownloadConfigFileDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_database.DatabaseClient
	Res    *oci_database.DownloadVmClusterNetworkConfigFileResponse
}

func (s *DatabaseVmClusterNetworkDownloadConfigFileDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *DatabaseVmClusterNetworkDownloadConfigFileDataSourceCrud) Get() error {
	request := oci_database.DownloadVmClusterNetworkConfigFileRequest{}

	if exadataInfrastructureId, ok := s.D.GetOkExists("exadata_infrastructure_id"); ok {
		tmp := exadataInfrastructureId.(string)
		request.ExadataInfrastructureId = &tmp
	}

	if vmClusterNetworkId, ok := s.D.GetOkExists("vm_cluster_network_id"); ok {
		tmp := vmClusterNetworkId.(string)
		request.VmClusterNetworkId = &tmp
	}

	request.RequestMetadata.RetryPolicy = getRetryPolicy(false, "database")

	response, err := s.Client.DownloadVmClusterNetworkConfigFile(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	return nil
}

func (s *DatabaseVmClusterNetworkDownloadConfigFileDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(GenerateDataSourceID())

	base64EncodeContent := false
	if tmp, ok := s.D.GetOkExists("base64_encode_content"); ok {
		base64EncodeContent = tmp.(bool)
	}

	contentReader := s.Res.Content
	contentArray, err := ioutil.ReadAll(contentReader)

	if err != nil {
		log.Printf("unable to read 'content' from response. Error: %v", err)
	} else if base64EncodeContent {
		// This use case is for v0.12, where content should be base64 encoded to avoid
		// being normalized before setting in state.
		s.D.Set("content", base64.StdEncoding.EncodeToString(contentArray))
	} else {
		s.D.Set("content", string(contentArray))
	}

	return nil
}
