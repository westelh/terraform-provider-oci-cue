// Copyright (c) 2017, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Mozilla Public License v2.0

package core

import (
	"context"
	"fmt"
	"strings"

	"github.com/westelh/terraform-provider-oci-cue/internal/globalvar"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"

	"github.com/westelh/terraform-provider-oci-cue/internal/client"
	"github.com/westelh/terraform-provider-oci-cue/internal/tfresource"

	oci_core "github.com/oracle/oci-go-sdk/v65/core"
)

func CoreSubnetResource() *schema.Resource {
	return &schema.Resource{
		Importer: &schema.ResourceImporter{
			State: schema.ImportStatePassthrough,
		},
		Timeouts: tfresource.DefaultTimeout,
		Create:   createCoreSubnet,
		Read:     readCoreSubnet,
		Update:   updateCoreSubnet,
		Delete:   deleteCoreSubnet,
		Schema: map[string]*schema.Schema{
			// Required
			"cidr_block": {
				Type:     schema.TypeString,
				Required: true,
			},
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
			"availability_domain": {
				Type:             schema.TypeString,
				Optional:         true,
				Computed:         true,
				ForceNew:         true,
				DiffSuppressFunc: tfresource.EqualIgnoreCaseSuppressDiff,
			},
			"defined_tags": {
				Type:             schema.TypeMap,
				Optional:         true,
				Computed:         true,
				DiffSuppressFunc: tfresource.DefinedTagsDiffSuppressFunction,
				Elem:             schema.TypeString,
			},
			"dhcp_options_id": {
				Type:     schema.TypeString,
				Optional: true,
				Computed: true,
			},
			"display_name": {
				Type:     schema.TypeString,
				Optional: true,
				Computed: true,
			},
			"dns_label": {
				Type:             schema.TypeString,
				Optional:         true,
				Computed:         true,
				ForceNew:         true,
				DiffSuppressFunc: tfresource.EqualIgnoreCaseSuppressDiff,
			},
			"freeform_tags": {
				Type:     schema.TypeMap,
				Optional: true,
				Computed: true,
				Elem:     schema.TypeString,
			},
			"ipv6cidr_block": {
				Type:             schema.TypeString,
				Optional:         true,
				Computed:         true,
				DiffSuppressFunc: ipv6CompressionDiffSuppressFunction,
			},
			"ipv6cidr_blocks": {
				Type:     schema.TypeList,
				Optional: true,
				Computed: true,
				Elem: &schema.Schema{
					Type: schema.TypeString,
				},
				DiffSuppressFunc: ipv6Cidr_blocksSuppressFunction,
			},
			"prohibit_internet_ingress": {
				Type:     schema.TypeBool,
				Optional: true,
				Computed: true,
				ForceNew: true,
			},
			"prohibit_public_ip_on_vnic": {
				Type:     schema.TypeBool,
				Optional: true,
				Computed: true,
				ForceNew: true,
			},
			"route_table_id": {
				Type:     schema.TypeString,
				Optional: true,
				Computed: true,
			},
			"security_list_ids": {
				Type:     schema.TypeSet,
				Optional: true,
				Computed: true,
				MaxItems: 5,
				MinItems: 0,
				Set:      tfresource.LiteralTypeHashCodeForSets,
				Elem: &schema.Schema{
					Type: schema.TypeString,
				},
			},

			// Computed
			"ipv6virtual_router_ip": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"state": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"subnet_domain_name": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"time_created": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"virtual_router_ip": {
				Type:     schema.TypeString,
				Computed: true,
			},
			"virtual_router_mac": {
				Type:     schema.TypeString,
				Computed: true,
			},
		},
	}
}

func createCoreSubnet(d *schema.ResourceData, m interface{}) error {
	sync := &CoreSubnetResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).VirtualNetworkClient()

	return tfresource.CreateResource(d, sync)
}

func readCoreSubnet(d *schema.ResourceData, m interface{}) error {
	sync := &CoreSubnetResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).VirtualNetworkClient()

	return tfresource.ReadResource(sync)
}

func updateCoreSubnet(d *schema.ResourceData, m interface{}) error {
	sync := &CoreSubnetResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).VirtualNetworkClient()

	return tfresource.UpdateResource(d, sync)
}

func deleteCoreSubnet(d *schema.ResourceData, m interface{}) error {
	sync := &CoreSubnetResourceCrud{}
	sync.D = d
	sync.Client = m.(*client.OracleClients).VirtualNetworkClient()
	sync.DisableNotFoundRetries = true

	return tfresource.DeleteResource(d, sync)
}

type CoreSubnetResourceCrud struct {
	tfresource.BaseCrud
	Client                 *oci_core.VirtualNetworkClient
	Res                    *oci_core.Subnet
	DisableNotFoundRetries bool
}

func (s *CoreSubnetResourceCrud) ID() string {
	return *s.Res.Id
}

func (s *CoreSubnetResourceCrud) CreatedPending() []string {
	return []string{
		string(oci_core.SubnetLifecycleStateProvisioning),
	}
}

func (s *CoreSubnetResourceCrud) CreatedTarget() []string {
	return []string{
		string(oci_core.SubnetLifecycleStateAvailable),
	}
}

func (s *CoreSubnetResourceCrud) DeletedPending() []string {
	return []string{
		string(oci_core.SubnetLifecycleStateTerminating),
	}
}

func (s *CoreSubnetResourceCrud) DeletedTarget() []string {
	return []string{
		string(oci_core.SubnetLifecycleStateTerminated),
	}
}

func (s *CoreSubnetResourceCrud) Create() error {
	request := oci_core.CreateSubnetRequest{}

	if availabilityDomain, ok := s.D.GetOkExists("availability_domain"); ok {
		tmp := availabilityDomain.(string)
		request.AvailabilityDomain = &tmp
	}

	if cidrBlock, ok := s.D.GetOkExists("cidr_block"); ok {
		tmp := cidrBlock.(string)
		request.CidrBlock = &tmp
	}

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

	if dhcpOptionsId, ok := s.D.GetOkExists("dhcp_options_id"); ok {
		tmp := dhcpOptionsId.(string)
		request.DhcpOptionsId = &tmp
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if dnsLabel, ok := s.D.GetOkExists("dns_label"); ok {
		tmp := dnsLabel.(string)
		request.DnsLabel = &tmp
	}

	if freeformTags, ok := s.D.GetOkExists("freeform_tags"); ok {
		request.FreeformTags = tfresource.ObjectMapToStringMap(freeformTags.(map[string]interface{}))
	}

	if ipv6CidrBlock, ok := s.D.GetOkExists("ipv6cidr_block"); ok {
		tmp := ipv6CidrBlock.(string)
		request.Ipv6CidrBlock = &tmp
	}

	if ipv6CidrBlocks, ok := s.D.GetOkExists("ipv6cidr_blocks"); ok {
		interfaces := ipv6CidrBlocks.([]interface{})
		tmp := make([]string, len(interfaces))
		for i := range interfaces {
			if interfaces[i] != nil {
				tmp[i] = interfaces[i].(string)
			}
		}
		if len(tmp) != 0 || s.D.HasChange("ipv6cidr_blocks") {
			request.Ipv6CidrBlocks = tmp
		}
	}

	if prohibitInternetIngress, ok := s.D.GetOkExists("prohibit_internet_ingress"); ok {
		tmp := prohibitInternetIngress.(bool)
		request.ProhibitInternetIngress = &tmp
	}

	if prohibitPublicIpOnVnic, ok := s.D.GetOkExists("prohibit_public_ip_on_vnic"); ok {
		tmp := prohibitPublicIpOnVnic.(bool)
		request.ProhibitPublicIpOnVnic = &tmp
	}

	if prohibitInternetIngress, ok := s.D.GetOkExists("prohibit_internet_ingress"); ok {
		tmp := prohibitInternetIngress.(bool)
		request.ProhibitInternetIngress = &tmp
	}

	if routeTableId, ok := s.D.GetOkExists("route_table_id"); ok {
		tmp := routeTableId.(string)
		request.RouteTableId = &tmp
	}

	if securityListIds, ok := s.D.GetOkExists("security_list_ids"); ok {
		set := securityListIds.(*schema.Set)
		interfaces := set.List()
		tmp := make([]string, len(interfaces))
		for i := range interfaces {
			if interfaces[i] != nil {
				tmp[i] = interfaces[i].(string)
			}
		}
		if len(tmp) != 0 || s.D.HasChange("security_list_ids") {
			request.SecurityListIds = tmp
		}
	}

	if vcnId, ok := s.D.GetOkExists("vcn_id"); ok {
		tmp := vcnId.(string)
		request.VcnId = &tmp
	}

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	response, err := s.Client.CreateSubnet(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response.Subnet
	return nil
}

func (s *CoreSubnetResourceCrud) Get() error {
	request := oci_core.GetSubnetRequest{}

	tmp := s.D.Id()
	request.SubnetId = &tmp

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	response, err := s.Client.GetSubnet(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response.Subnet
	return nil
}

func (s *CoreSubnetResourceCrud) Update() error {
	if compartment, ok := s.D.GetOkExists("compartment_id"); ok && s.D.HasChange("compartment_id") {
		oldRaw, newRaw := s.D.GetChange("compartment_id")
		if newRaw != "" && oldRaw != "" {
			err := s.updateCompartment(compartment)
			if err != nil {
				return err
			}
		}
	}
	request := oci_core.UpdateSubnetRequest{}

	if _, ok := s.D.GetOkExists("ipv6cidr_blocks"); ok && s.D.HasChange("ipv6cidr_blocks") {
		oldRaw, newRaw := s.D.GetChange("ipv6cidr_blocks")
		if newRaw != "" && oldRaw != "" {
			err := s.updateIpv6CidrBlocks(oldRaw, newRaw)
			if err != nil {
				return err
			}
		}
	}

	if cidrBlock, ok := s.D.GetOkExists("cidr_block"); ok {
		tmp := cidrBlock.(string)
		request.CidrBlock = &tmp
	}

	if definedTags, ok := s.D.GetOkExists("defined_tags"); ok {
		convertedDefinedTags, err := tfresource.MapToDefinedTags(definedTags.(map[string]interface{}))
		if err != nil {
			return err
		}
		request.DefinedTags = convertedDefinedTags
	}

	if dhcpOptionsId, ok := s.D.GetOkExists("dhcp_options_id"); ok {
		tmp := dhcpOptionsId.(string)
		request.DhcpOptionsId = &tmp
	}

	if displayName, ok := s.D.GetOkExists("display_name"); ok {
		tmp := displayName.(string)
		request.DisplayName = &tmp
	}

	if freeformTags, ok := s.D.GetOkExists("freeform_tags"); ok {
		request.FreeformTags = tfresource.ObjectMapToStringMap(freeformTags.(map[string]interface{}))
	}

	if ipv6CidrBlock, ok := s.D.GetOkExists("ipv6cidr_block"); ok && s.D.HasChange("ipv6cidr_block") {
		oldRaw, newRaw := s.D.GetChange("ipv6cidr_block")
		if newRaw != "" && oldRaw == "" {
			tmp := ipv6CidrBlock.(string)
			request.Ipv6CidrBlock = &tmp
		}
	}

	if routeTableId, ok := s.D.GetOkExists("route_table_id"); ok {
		tmp := routeTableId.(string)
		request.RouteTableId = &tmp
	}

	if securityListIds, ok := s.D.GetOkExists("security_list_ids"); ok {
		set := securityListIds.(*schema.Set)
		interfaces := set.List()
		tmp := make([]string, len(interfaces))
		for i := range interfaces {
			if interfaces[i] != nil {
				tmp[i] = interfaces[i].(string)
			}
		}
		if len(tmp) != 0 || s.D.HasChange("security_list_ids") {
			request.SecurityListIds = tmp
		}
	}

	tmp := s.D.Id()
	request.SubnetId = &tmp

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	response, err := s.Client.UpdateSubnet(context.Background(), request)
	if err != nil {
		return err
	}

	s.Res = &response.Subnet
	return nil
}

func (s *CoreSubnetResourceCrud) Delete() error {
	request := oci_core.DeleteSubnetRequest{}

	tmp := s.D.Id()
	request.SubnetId = &tmp

	request.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, globalvar.CoreService, globalvar.SubnetService, globalvar.DeleteResource)

	_, err := s.Client.DeleteSubnet(context.Background(), request)
	return err
}

func (s *CoreSubnetResourceCrud) SetData() error {
	if s.Res.AvailabilityDomain != nil {
		s.D.Set("availability_domain", *s.Res.AvailabilityDomain)
	}

	if s.Res.CidrBlock != nil {
		s.D.Set("cidr_block", *s.Res.CidrBlock)
	}

	if s.Res.CompartmentId != nil {
		s.D.Set("compartment_id", *s.Res.CompartmentId)
	}

	if s.Res.DefinedTags != nil {
		s.D.Set("defined_tags", tfresource.DefinedTagsToMap(s.Res.DefinedTags))
	}

	if s.Res.DhcpOptionsId != nil {
		s.D.Set("dhcp_options_id", *s.Res.DhcpOptionsId)
	}

	if s.Res.DisplayName != nil {
		s.D.Set("display_name", *s.Res.DisplayName)
	}

	if s.Res.DnsLabel != nil {
		s.D.Set("dns_label", *s.Res.DnsLabel)
	}

	s.D.Set("freeform_tags", s.Res.FreeformTags)

	if s.Res.Ipv6CidrBlock != nil {
		s.D.Set("ipv6cidr_block", *s.Res.Ipv6CidrBlock)
	}

	s.D.Set("ipv6cidr_blocks", s.Res.Ipv6CidrBlocks)

	if s.Res.Ipv6VirtualRouterIp != nil {
		s.D.Set("ipv6virtual_router_ip", *s.Res.Ipv6VirtualRouterIp)
	}

	if s.Res.ProhibitInternetIngress != nil {
		s.D.Set("prohibit_internet_ingress", *s.Res.ProhibitInternetIngress)
	}

	if s.Res.ProhibitPublicIpOnVnic != nil {
		s.D.Set("prohibit_public_ip_on_vnic", *s.Res.ProhibitPublicIpOnVnic)
	}

	if s.Res.RouteTableId != nil {
		s.D.Set("route_table_id", *s.Res.RouteTableId)
	}

	securityListIds := []interface{}{}
	for _, item := range s.Res.SecurityListIds {
		securityListIds = append(securityListIds, item)
	}
	s.D.Set("security_list_ids", schema.NewSet(tfresource.LiteralTypeHashCodeForSets, securityListIds))

	s.D.Set("state", s.Res.LifecycleState)

	if s.Res.SubnetDomainName != nil {
		s.D.Set("subnet_domain_name", *s.Res.SubnetDomainName)
	}

	if s.Res.TimeCreated != nil {
		s.D.Set("time_created", s.Res.TimeCreated.String())
	}

	if s.Res.VcnId != nil {
		s.D.Set("vcn_id", *s.Res.VcnId)
	}

	if s.Res.VirtualRouterIp != nil {
		s.D.Set("virtual_router_ip", *s.Res.VirtualRouterIp)
	}

	if s.Res.VirtualRouterMac != nil {
		s.D.Set("virtual_router_mac", *s.Res.VirtualRouterMac)
	}

	return nil
}

func (s *CoreSubnetResourceCrud) updateCompartment(compartment interface{}) error {
	changeCompartmentRequest := oci_core.ChangeSubnetCompartmentRequest{}

	compartmentTmp := compartment.(string)
	changeCompartmentRequest.CompartmentId = &compartmentTmp

	idTmp := s.D.Id()
	changeCompartmentRequest.SubnetId = &idTmp

	changeCompartmentRequest.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")

	_, err := s.Client.ChangeSubnetCompartment(context.Background(), changeCompartmentRequest)
	if err != nil {
		return err
	}

	if waitErr := tfresource.WaitForUpdatedState(s.D, s); waitErr != nil {
		return waitErr
	}

	return nil
}

func (s *CoreSubnetResourceCrud) updateIpv6CidrBlocks(oldRaw interface{}, newRaw interface{}) error {
	interfaces := oldRaw.([]interface{})
	oldBlocks := make([]string, len(interfaces))
	for i := range interfaces {
		if interfaces[i] != nil {
			oldBlocks[i] = interfaces[i].(string)
		}
	}

	interfaces = newRaw.([]interface{})
	newBlocks := make([]string, len(interfaces))
	for i := range interfaces {
		if interfaces[i] != nil {
			newBlocks[i] = interfaces[i].(string)
		}
	}

	canEdit, operation, changeCidr := ipv6CidrOneEditAway(oldBlocks, newBlocks)
	if !canEdit {
		return fmt.Errorf("only one add/remove or modification is allowed at once, new IPv6 cidr_block must be added at the end of list")
	}

	if operation == "add" {
		addIpv6SubnetCidrRequest := oci_core.AddIpv6SubnetCidrRequest{}
		addSubnetIpv6CidrDetails := oci_core.AddSubnetIpv6CidrDetails{}
		idTmp := s.D.Id()
		addIpv6SubnetCidrRequest.SubnetId = &idTmp
		addIpv6SubnetCidrRequest.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")
		addSubnetIpv6CidrDetails.Ipv6CidrBlock = &changeCidr
		addIpv6SubnetCidrRequest.AddSubnetIpv6CidrDetails = addSubnetIpv6CidrDetails
		_, err := s.Client.AddIpv6SubnetCidr(context.Background(), addIpv6SubnetCidrRequest)
		if err != nil {
			return err
		}
	}

	if operation == "remove" {
		removeIpv6SubnetCidrRequest := oci_core.RemoveIpv6SubnetCidrRequest{}
		removeSubnetIpv6CidrDetails := oci_core.RemoveSubnetIpv6CidrDetails{}
		idTmp := s.D.Id()
		removeIpv6SubnetCidrRequest.SubnetId = &idTmp
		removeIpv6SubnetCidrRequest.RequestMetadata.RetryPolicy = tfresource.GetRetryPolicy(s.DisableNotFoundRetries, "core")
		removeSubnetIpv6CidrDetails.Ipv6CidrBlock = &changeCidr
		removeIpv6SubnetCidrRequest.RemoveSubnetIpv6CidrDetails = removeSubnetIpv6CidrDetails
		_, err := s.Client.RemoveIpv6SubnetCidr(context.Background(), removeIpv6SubnetCidrRequest)
		if err != nil {
			return err
		}
	}

	return nil
}

func ipv6CidrOneEditAway(oldBlocks []string, newBlocks []string) (bool, string, string) {
	var oldBlocksDiff []string
	var newBlocksDiff []string

	// operation add: newBlock will contain the CIDR to be added
	if len(newBlocks)-len(oldBlocks) == 1 {
		for i := 0; i < len(newBlocks); i++ {
			elementToFind := newBlocks[i]
			found := false
			for _, n := range oldBlocks {
				if convertToCanonical(elementToFind) == convertToCanonical(n) {
					// do not add to list newBlocksDiff
					found = true
					break
				}
				if !found {
					newBlocksDiff = append(newBlocksDiff, elementToFind)
				}
			}
		}

		if len(newBlocksDiff) == 1 {
			return true, "add", newBlocksDiff[0]
		} else {
			return false, "", ""
		}
	}

	// operation remove: oldBlock will contain the CIDR to be removed
	if len(oldBlocks)-len(newBlocks) == 1 {
		for i := 0; i < len(oldBlocks); i++ {
			elementToFind := oldBlocks[i]
			found := false
			for _, n := range newBlocks {
				if convertToCanonical(elementToFind) == convertToCanonical(n) {
					// do not add to list oldBlocksDiff
					found = true
					break
				}
				if !found {
					oldBlocksDiff = append(oldBlocksDiff, elementToFind)
				}
			}
		}

		if len(oldBlocksDiff) == 1 {
			return true, "remove", oldBlocksDiff[0]
		} else {
			return false, "", ""
		}
	}

	return false, "", ""
}

func convertToCanonical(block string) string {
	splitString := strings.Split(block, ":")

	final := []string{"0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000"}

	for i := 0; i < len(splitString)-2; i++ {

		// append 4 - len(i) 0's to the left, and add it to string along with :
		final[i] = strings.Repeat("0", 4-len(splitString[i])) + splitString[i]
	}
	result := strings.Join(final, ":")

	return result + "/64"
}
