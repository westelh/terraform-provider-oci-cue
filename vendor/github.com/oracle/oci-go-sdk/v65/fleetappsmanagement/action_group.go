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
	"fmt"
	"github.com/oracle/oci-go-sdk/v65/common"
	"strings"
)

// ActionGroup Action Group.
type ActionGroup struct {

	// Provide the ID of the resource; Ex- fleetId.
	ResourceId *string `mandatory:"true" json:"resourceId"`

	// ID of the runbook
	RunbookId *string `mandatory:"true" json:"runbookId"`

	// ActionGroup Type associated.
	Type LifeCycleActionGroupTypeEnum `mandatory:"false" json:"type,omitempty"`

	// Application Type associated.
	// Only applicable if type is ENVIRONMENT.
	ApplicationType *string `mandatory:"false" json:"applicationType"`

	// Product associated.
	// Only applicable if type is PRODUCT.
	Product *string `mandatory:"false" json:"product"`

	// LifeCycle Operation
	LifecycleOperation *string `mandatory:"false" json:"lifecycleOperation"`

	// Provide the target if schedule is created against the target
	TargetId *string `mandatory:"false" json:"targetId"`

	// Provide subjects that need to be considered for the schedule.
	Subjects []string `mandatory:"false" json:"subjects"`
}

func (m ActionGroup) String() string {
	return common.PointerString(m)
}

// ValidateEnumValue returns an error when providing an unsupported enum value
// This function is being called during constructing API request process
// Not recommended for calling this function directly
func (m ActionGroup) ValidateEnumValue() (bool, error) {
	errMessage := []string{}

	if _, ok := GetMappingLifeCycleActionGroupTypeEnum(string(m.Type)); !ok && m.Type != "" {
		errMessage = append(errMessage, fmt.Sprintf("unsupported enum value for Type: %s. Supported values are: %s.", m.Type, strings.Join(GetLifeCycleActionGroupTypeEnumStringValues(), ",")))
	}
	if len(errMessage) > 0 {
		return true, fmt.Errorf(strings.Join(errMessage, "\n"))
	}
	return false, nil
}