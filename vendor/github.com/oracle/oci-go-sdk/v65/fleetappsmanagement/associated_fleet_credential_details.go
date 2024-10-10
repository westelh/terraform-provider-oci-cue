// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates.  All rights reserved.
// This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.
// Code generated. DO NOT EDIT.

// Fleet Application Management Service API
//
// Fleet Application Management Service API. Use this API to for all FAMS related activities.
// To manage fleets,view complaince report for the Fleet,scedule patches and other lifecycle activities
//

package fleetappsmanagement

import (
	"encoding/json"
	"fmt"
	"github.com/oracle/oci-go-sdk/v65/common"
	"strings"
)

// AssociatedFleetCredentialDetails The information about new FleetCredential.
type AssociatedFleetCredentialDetails struct {

	// A user-friendly name. Does not have to be unique, and it's changeable.
	// Avoid entering confidential information.
	// Example: `My new resource`
	DisplayName *string `mandatory:"true" json:"displayName"`

	// Tenancy OCID
	CompartmentId *string `mandatory:"true" json:"compartmentId"`

	EntitySpecifics CredentialEntitySpecificDetails `mandatory:"true" json:"entitySpecifics"`

	User CredentialDetails `mandatory:"true" json:"user"`

	Password CredentialDetails `mandatory:"true" json:"password"`
}

func (m AssociatedFleetCredentialDetails) String() string {
	return common.PointerString(m)
}

// ValidateEnumValue returns an error when providing an unsupported enum value
// This function is being called during constructing API request process
// Not recommended for calling this function directly
func (m AssociatedFleetCredentialDetails) ValidateEnumValue() (bool, error) {
	errMessage := []string{}

	if len(errMessage) > 0 {
		return true, fmt.Errorf(strings.Join(errMessage, "\n"))
	}
	return false, nil
}

// UnmarshalJSON unmarshals from json
func (m *AssociatedFleetCredentialDetails) UnmarshalJSON(data []byte) (e error) {
	model := struct {
		DisplayName     *string                         `json:"displayName"`
		CompartmentId   *string                         `json:"compartmentId"`
		EntitySpecifics credentialentityspecificdetails `json:"entitySpecifics"`
		User            credentialdetails               `json:"user"`
		Password        credentialdetails               `json:"password"`
	}{}

	e = json.Unmarshal(data, &model)
	if e != nil {
		return
	}
	var nn interface{}
	m.DisplayName = model.DisplayName

	m.CompartmentId = model.CompartmentId

	nn, e = model.EntitySpecifics.UnmarshalPolymorphicJSON(model.EntitySpecifics.JsonData)
	if e != nil {
		return
	}
	if nn != nil {
		m.EntitySpecifics = nn.(CredentialEntitySpecificDetails)
	} else {
		m.EntitySpecifics = nil
	}

	nn, e = model.User.UnmarshalPolymorphicJSON(model.User.JsonData)
	if e != nil {
		return
	}
	if nn != nil {
		m.User = nn.(CredentialDetails)
	} else {
		m.User = nil
	}

	nn, e = model.Password.UnmarshalPolymorphicJSON(model.Password.JsonData)
	if e != nil {
		return
	}
	if nn != nil {
		m.Password = nn.(CredentialDetails)
	} else {
		m.Password = nil
	}

	return
}