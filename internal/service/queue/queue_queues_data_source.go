// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package queue

import (
	"context"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	oci_queue "github.com/oracle/oci-go-sdk/v65/queue"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"
)

func QueueQueuesDataSource() *schema.Resource {
	return &schema.Resource{
		Read: readQueueQueues,
		Schema: map[string]*schema.Schema{
			"filter": tfresource.DataSourceFiltersSchema(),
			"compartment_id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"display_name": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"id": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"state": {
				Type:     schema.TypeString,
				Optional: true,
			},
			"queue_collection": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Resource{
					Schema: map[string]*schema.Schema{

						"items": {
							Type:     schema.TypeList,
							Computed: true,
							Elem:     tfresource.GetDataSourceItemSchema(QueueQueueResource()),
						},
					},
				},
			},
		},
	}
}

func readQueueQueues(d *schema.ResourceData, m interface{}) error {
	sync := &QueueQueuesDataSourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).QueueAdminClient()

	return tfresource.ReadResource(sync)
}

type QueueQueuesDataSourceCrud struct {
	D      *schema.ResourceData
	Client *oci_queue.QueueAdminClient
	Res    *oci_queue.ListQueuesResponse
}

func (s *QueueQueuesDataSourceCrud) VoidState() {
	s.D.SetId("")
}

func (s *QueueQueuesDataSourceCrud) Get() error {
	request := oci_queue.ListQueuesRequest{}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if id, ok := s.D.GetOkExists("id"); ok {
		tmp := id.(string)
		request.Id = &tmp
	}

	if state, ok := s.D.GetOkExists("state"); ok {
		request.LifecycleState = oci_queue.QueueLifecycleStateEnum(state.(string))
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(false, "queue")

	response, err := s.Client.ListQueues(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response
	request.Page = s.Res.OpcNextPage

	for request.Page != nil {
		listResponse, err := s.Client.ListQueues(context.Background(), request)
		if err != nil {
			return err
		}

		s.Res.Items = append(s.Res.Items, listResponse.Items...)
		request.Page = listResponse.OpcNextPage
	}

	return nil
}

func (s *QueueQueuesDataSourceCrud) SetData() error {
	if s.Res == nil {
		return nil
	}

	s.D.SetId(tfresource.GenerateDataSourceHashID("QueueQueuesDataSource-", QueueQueuesDataSource(), s.D))
	resources := []map[string]interface{}{}
	queue := map[string]interface{}{}

	items := []interface{}{}
	for _, item := range s.Res.Items {
		items = append(items, QueueSummaryToMap(item))
	}
	queue["items"] = items

	if f, fOk := s.D.GetOkExists("filter"); fOk {
		items = tfresource.ApplyFiltersInCollection(f.(*schema.Set), items, QueueQueuesDataSource().Schema["queue_collection"].Elem.(*schema.Resource).Schema)
		queue["items"] = items
	}

	resources = append(resources, queue)
	if err := s.D.Set("queue_collection", resources); err != nil {
		return err
	}

	return nil
}
