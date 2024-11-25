// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package core

import (
	"context"
	"fmt"
	"log"
	"time"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

	oci_common "github.com/oracle/oci-go-sdk/v65/common"
	oci_core "github.com/oracle/oci-go-sdk/v65/core"
)

func CoreLocalPeeringGatewayResource() *schema.Resource {
	return &schema.Resource{
		Importer: &schema.ResourceImporter{
			State: schema.ImportStatePassthrough,
		},
		Timeouts: tfresource.DefaultTimeout,
		Create:   createCoreLocalPeeringGateway,
		Read:     readCoreLocalPeeringGateway,
		Update:   updateCoreLocalPeeringGateway,
		Delete:   deleteCoreLocalPeeringGateway,
		Schema: map[string]*schema.Schema{
			// Required
			"compartment_id": {
				Type:     schema.TypeString,
				Required: true,
			},
			"vcn_id": {
				Type:     schema.TypeString,
				Required: true,
				ForceNew: true,
			},

			// Optional
			"defined_tags": {
				Type:             schema.TypeMap,
				Optional:         true,
				Computed:         true,
				DiffSuppressFunc: tfresource.DefinedTagsDiffSuppressFunction,
				Elem:             schema.TypeString,
			},
			"display_name": {
				Type:     schema.TypeString,
				Optional: true,
				Computed: true,
			},
			"freeform_tags": {
				Type:     schema.TypeMap,
				Optional: true,
				Computed: true,
				Elem:     schema.TypeString,
			},
			"route_table_id": {
				Type:     schema.TypeString,
				Optional: true,
				Computed: true,
			},
			// @CODEGEN we use peer_id to do the connect action
			"peer_id": {
				Type:         schema.TypeString,
				Optional:     true,
				Computed:     true,
				ForceNew:     true,
				ValidateFunc: tfresource.ValidateNotEmptyString(), //Don't allow empty string, it results in a terraform error when switching from valid value to empty string
			},

			// Computed
			"is_cross_tenancy_peering": {
				Type:     schema.TypeBool,
				Computed: true,
			},
			"peer_advertised_cidr": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"peer_advertised_cidr_details": {
				Type:     schema.TypeList,
				Computed: true,
				Elem: &schema.Schema{
					Type: schema.TypeString,
				},
			},
			"peering_status": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"peering_status_details": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"state": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"time_created": {
				Type:     schema.TypeString,
				Computed: true,
			},
		},
	}
}

func createCoreLocalPeeringGateway(d *schema.ResourceData, m interface{}) error {
	sync := &CoreLocalPeeringGatewayResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).VirtualNetworkClient()

	err := tfresource.CreateResource(d, sync)
	if err != nil {
		return err
	}
	//This needs to be here rather than in the Create() because we want the resource to finish provisioning and set to the statefile before we connect
	return sync.ConnectLocalPeeringGateway()
}

func readCoreLocalPeeringGateway(d *schema.ResourceData, m interface{}) error {
	sync := &CoreLocalPeeringGatewayResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).VirtualNetworkClient()

	return tfresource.ReadResource(sync)
}

func updateCoreLocalPeeringGateway(d *schema.ResourceData, m interface{}) error {
	sync := &CoreLocalPeeringGatewayResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).VirtualNetworkClient()

	return tfresource.UpdateResource(d, sync)
}

func deleteCoreLocalPeeringGateway(d *schema.ResourceData, m interface{}) error {
	sync := &CoreLocalPeeringGatewayResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).VirtualNetworkClient()
	sync.DisableNotFoundRetries = true

	return tfresource.DeleteResource(d, sync)
}

type CoreLocalPeeringGatewayResourceCrud struct {
	tfresource.BaseCrud
	Client                 *oci_core.VirtualNetworkClient
	Res                    *oci_core.LocalPeeringGateway
	DisableNotFoundRetries bool
}

func (s *CoreLocalPeeringGatewayResourceCrud) ID() string {
	return *s.Res.Id
}

func (s *CoreLocalPeeringGatewayResourceCrud) CreatedPending() []string {
	return []string{
		string(oci_core.LocalPeeringGatewayLifecycleStateProvisioning),
	}
}

func (s *CoreLocalPeeringGatewayResourceCrud) CreatedTarget() []string {
	return []string{
		string(oci_core.LocalPeeringGatewayLifecycleStateAvailable),
	}
}

func (s *CoreLocalPeeringGatewayResourceCrud) DeletedPending() []string {
	return []string{
		string(oci_core.LocalPeeringGatewayLifecycleStateTerminating),
	}
}

func (s *CoreLocalPeeringGatewayResourceCrud) DeletedTarget() []string {
	return []string{
		string(oci_core.LocalPeeringGatewayLifecycleStateTerminated),
	}
}

func (s *CoreLocalPeeringGatewayResourceCrud) ConnectLocalPeeringGateway() error {
	if s.Res == nil || s.Res.Id == nil {
		return fmt.Errorf("CreateLocalPeeringGateway returned a nil LocalPeeringGateway or a LocalPeeringGateway without an ID")
	}

	if peerId, ok := s.D.GetOkExists("peer_id"); ok {
		connectRequest := oci_core.ConnectLocalPeeringGatewaysRequest{}

		tmp := peerId.(string)
		connectRequest.PeerId = &tmp

		connectRequest.LocalPeeringGatewayId = s.Res.Id

		connectRequest.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

		_, err := s.Client.ConnectLocalPeeringGateways(context.Background(), connectRequest)
		if err != nil {
			// we set peer_id to "" so that terraform detects a forceNew change on the next apply and the user can try the connection again
			s.D.Set("peer_id", "")
			return err
		}

		request := oci_core.GetLocalPeeringGatewayRequest{}

		tmpId := s.D.Id()
		request.LocalPeeringGatewayId = &tmpId

		request.RequestMetadata.RetryPolicy = getLocalPeeringGatewayRetryPolicy(s.D.Timeout(schema.TimeoutCreate))

		response, getError := s.Client.GetLocalPeeringGateway(context.Background(), request)
		if getError != nil {
			log.Printf("[DEBUG] Get error while waiting for peering connection to finish: %+v", getError)
			return getError
		}
		s.Res = &response.LocalPeeringGateway
		if response.LocalPeeringGateway.PeeringStatus != oci_core.LocalPeeringGatewayPeeringStatusPeered {
			s.D.Set("peer_id", "")
			return fmt.Errorf("unexpected Peering Status `%s` after trying to connect to the peer Local Peering Gateway", string(response.LocalPeeringGateway.PeeringStatus))
		}

		if err := s.SetData(); err != nil {
			return err
		}
	}
	return nil
}

func (s *CoreLocalPeeringGatewayResourceCrud) Create() error {
	request := oci_core.CreateLocalPeeringGatewayRequest{}

	if compartmentId, ok := s.D.GetOkExists("compartment_id"); ok {
		tmp := compartmentId.(string)
		request.CompartmentId = &tmp
	}

	if definedTags, ok := s.D.GetOkExists("defined_tags"); ok {
		convertedDefinedTags, err := tfresource.MapToDefinedTags(definedTags.(map[string]interface{}))
		if err != nil {
			return err
		}
		request.DefinedTags = convertedDefinedTags
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if freeformTags, ok := s.D.GetOkExists("freeform_tags"); ok {
		request.FreeformTags = tfresource.ObjectMapToStringMap(freeformTags.(map[string]interface{}))
	}

	if routeTableId, ok := s.D.GetOkExists("route_table_id"); ok {
		tmp := routeTableId.(string)
		request.RouteTableId = &tmp
	}

	if vcnId, ok := s.D.GetOkExists("vcn_id"); ok {
		tmp := vcnId.(string)
		request.VcnId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	response, err := s.Client.CreateLocalPeeringGateway(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response.LocalPeeringGateway
	return nil
}

func (s *CoreLocalPeeringGatewayResourceCrud) Get() error {
	request := oci_core.GetLocalPeeringGatewayRequest{}

	tmp := s.D.Id()
	request.LocalPeeringGatewayId = &tmp

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	response, err := s.Client.GetLocalPeeringGateway(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response.LocalPeeringGateway
	return nil
}

func (s *CoreLocalPeeringGatewayResourceCrud) Update() error {
	if compartment, ok := s.D.GetOkExists("compartment_id"); ok && s.D.HasChange("compartment_id") {
		oldRaw, newRaw := s.D.GetChange("compartment_id")
		if newRaw != "" && oldRaw != "" {
			err := s.updateCompartment(compartment)
			if err != nil {
				return err
			}
		}
	}
	request := oci_core.UpdateLocalPeeringGatewayRequest{}

	if definedTags, ok := s.D.GetOkExists("defined_tags"); ok {
		convertedDefinedTags, err := tfresource.MapToDefinedTags(definedTags.(map[string]interface{}))
		if err != nil {
			return err
		}
		request.DefinedTags = convertedDefinedTags
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if freeformTags, ok := s.D.GetOkExists("freeform_tags"); ok {
		request.FreeformTags = tfresource.ObjectMapToStringMap(freeformTags.(map[string]interface{}))
	}

	tmp := s.D.Id()
	request.LocalPeeringGatewayId = &tmp

	if routeTableId, ok := s.D.GetOkExists("route_table_id"); ok {
		tmp := routeTableId.(string)
		request.RouteTableId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	response, err := s.Client.UpdateLocalPeeringGateway(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response.LocalPeeringGateway
	return nil
}

func (s *CoreLocalPeeringGatewayResourceCrud) Delete() error {
	request := oci_core.DeleteLocalPeeringGatewayRequest{}

	tmp := s.D.Id()
	request.LocalPeeringGatewayId = &tmp

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	_, err := s.Client.DeleteLocalPeeringGateway(context.Background(), request)
	return err
}

func (s *CoreLocalPeeringGatewayResourceCrud) SetData() error {
	if s.Res.CompartmentId != nil {
		s.D.Set("compartment_id", *s.Res.CompartmentId)
	}

	if s.Res.DefinedTags != nil {
		s.D.Set("defined_tags", tfresource.DefinedTagsToMap(s.Res.DefinedTags))
	}

	if s.Res.DisplayName != nil {
		s.D.Set("display_name", *s.Res.DisplayName)
	}

	s.D.Set("freeform_tags", s.Res.FreeformTags)

	if s.Res.IsCrossTenancyPeering != nil {
		s.D.Set("is_cross_tenancy_peering", *s.Res.IsCrossTenancyPeering)
	}

	if s.Res.PeerAdvertisedCidr != nil {
		s.D.Set("peer_advertised_cidr", *s.Res.PeerAdvertisedCidr)
	}

	s.D.Set("peer_advertised_cidr_details", s.Res.PeerAdvertisedCidrDetails)

	if s.Res.PeerId != nil {
		s.D.Set("peer_id", *s.Res.PeerId)
	}

	s.D.Set("peering_status", s.Res.PeeringStatus)

	if s.Res.PeeringStatusDetails != nil {
		s.D.Set("peering_status_details", *s.Res.PeeringStatusDetails)
	}

	if s.Res.RouteTableId != nil {
		s.D.Set("route_table_id", *s.Res.RouteTableId)
	}

	s.D.Set("state", s.Res.LifecycleState)

	if s.Res.TimeCreated != nil {
		s.D.Set("time_created", s.Res.TimeCreated.String())
	}

	if s.Res.VcnId != nil {
		s.D.Set("vcn_id", *s.Res.VcnId)
	}

	return nil
}

func (s *CoreLocalPeeringGatewayResourceCrud) updateCompartment(compartment interface{}) error {
	changeCompartmentRequest := oci_core.ChangeLocalPeeringGatewayCompartmentRequest{}

	compartmentTmp := compartment.(string)
	changeCompartmentRequest.CompartmentId = &compartmentTmp

	idTmp := s.D.Id()
	changeCompartmentRequest.LocalPeeringGatewayId = &idTmp

	changeCompartmentRequest.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	_, err := s.Client.ChangeLocalPeeringGatewayCompartment(context.Background(), changeCompartmentRequest)
	if err != nil {
		return err
	}

	if waitErr := tfresource.WaitForUpdatedState(s.D, s); waitErr != nil {
		return waitErr
	}

	return nil
}

func getLocalPeeringGatewayRetryPolicy(timeout time.Duration) *oci_common.RetryPolicy {
	startTime := time.Now()
	// wait for peering status to not be Pending
	return &oci_common.RetryPolicy{
		ShouldRetryOperation: func(response oci_common.OCIOperationResponse) bool {
			if tfresource.ShouldRetry(response, false, "core", startTime) {
				return true
			}
			if getLocalPeeringGatewayResponse, ok := response.Response.(oci_core.GetLocalPeeringGatewayResponse); ok {
				if getLocalPeeringGatewayResponse.PeeringStatus == oci_core.LocalPeeringGatewayPeeringStatusPending {
					timeWaited := tfresource.GetElapsedRetryDuration(startTime)
					return timeWaited < timeout
				}
			}
			return false
		},
		NextDuration: func(response oci_common.OCIOperationResponse) time.Duration {
			return tfresource.GetRetryBackoffDuration(response, false, "core", startTime)
		},
		MaximumNumberAttempts: 0,
	}
}
