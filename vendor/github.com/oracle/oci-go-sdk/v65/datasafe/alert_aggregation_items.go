// Copyright (c) 2016, 2018, 2023, Oracle and/or its affiliates.  All rights reserved.
// This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.
// Code generated. DO NOT EDIT.

// Data Safe API
//
// APIs for using Oracle Data Safe.
//

package datasafe

import (
	"fmt"
	"github.com/oracle/oci-go-sdk/v65/common"
	"strings"
)

// AlertAggregationItems Details of alerts aggregation items.
type AlertAggregationItems struct {

	// The name of the aggregation.
	MetricName *string `mandatory:"true" json:"metricName"`

	// The time at which the aggregation started.
	TimeStarted *common.SDKTime `mandatory:"true" json:"timeStarted"`

	// The time at which the aggregation ended.
	TimeEnded *common.SDKTime `mandatory:"true" json:"timeEnded"`

	// Total count of aggregated values.
	Count *int64 `mandatory:"true" json:"count"`

	Dimensions *AlertsAggregationDimension `mandatory:"false" json:"dimensions"`
}

func (m AlertAggregationItems) String() string {
	return common.PointerString(m)
}

// ValidateEnumValue returns an error when providing an unsupported enum value
// This function is being called during constructing API request process
// Not recommended for calling this function directly
func (m AlertAggregationItems) ValidateEnumValue() (bool, error) {
	errMessage := []string{}

	if len(errMessage) > 0 {
		return true, fmt.Errorf(strings.Join(errMessage, "\n"))
	}
	return false, nil
}