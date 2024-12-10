# Terraform Provider for Oracle Cloud Infrastructure in [CUE](https://cuelang.org/)!
## About
This folk of original repository includes additional codes for generating provider-specific resource schema in CUE configuration language.
Auto-generated schemas for all services supported by original provider are available via CUE module ecosystem.

## Why Use This Repository?

### 🚀 Comprehensive Terraform Provider Schemas in CUE
- Auto-generated CUE schemas for all services supported by the original Terraform Provider.
- Always up-to-date with provider specifications.

### ✅ Streamlined Validation and Automation
- Use CUE’s validation to catch errors early.
- Simplify configuration generation and ensure correctness.

### 🔄 Reusable and Scalable Configurations
- Write modular and parameterized configurations.
- Reduce duplication and enhance maintainability.

### 🔧 Built for Automation
- Automate configuration generation and validation for scalable infrastructure management.

Use this repository to harness the power of CUE and take your Terraform workflows to the next level!


## Example
```cue
package main

import (
  // Import module and package from this repository
	"github.com/westelh/terraform-provider-oci-cue/identity
)

resource: {
	oci_identity_policy: {
        // Apply constraints provided by identity package to all values in this block.
		[Name=_]: identity.#resource.arguments.policy & {
			name: Name
		}

		example: {
			compartment_id: "${var.oci_compartment_id}"
			description:    "Real resource written in CUE."
			statements: [ "Some Valid Policy" ]
		}
	}
}
```

Omitting 'statements' in the resource definition will cause an immediate failure in `cue vet`, eliminating the need to run terraform plan and wait for it to fail. While 'name' is mandatory, cue templating defines it as 'example' and keep the definition valid.

All packages: https://github.com/westelh/terraform-provider-oci-cue/tree/cue/exporter/module

