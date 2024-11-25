package tfresource

import (
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	"github.com/westelh/terraform-provider-oci-cue/internal/globalvar"
)

func RegisterResource(name string, resourceSchema *schema.Resource) {
	if globalvar.OciResources == nil {
		globalvar.OciResources = make(map[string]*schema.Resource)
	}
	globalvar.OciResources[name] = resourceSchema
}

func RegisterDatasource(name string, datasourceSchema *schema.Resource) {
	if globalvar.OciDatasources == nil {
		globalvar.OciDatasources = make(map[string]*schema.Resource)
	}
	globalvar.OciDatasources[name] = datasourceSchema
}
