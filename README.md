# AWS IAM Role and Inline policy association

The AWS IAM module to create IAM role with inline policy.

The module creates roles based on format role-access-${var.role_awsservice}-${var.role_function}-${var.application_id}. If for any reason you want to use a different format then pass the role name directly using "role_name" input.

The module also creates instance profile if the provided input for "role_awsservice" is "ec2".

Module attaches role policy as inline to the associated role. All the required access needs to be provides as a single file in the root module

 


__Examples:__ 
* _[../../examples/iam](../../examples/iam)_


__Tests:__ 
* _[../../tests/iam_test.go](../../tests/iam_test.go)_## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| application\_id | application id of project | string | n/a | yes |
| default\_tags | tags for the roles | map | n/a | yes |
| iam\_assume\_role\_policy | assume role policy specific to aws service | string | n/a | yes |
| role\_awsservice | the aws service that will utilize this role like ec2,lambda,cloudwatch event etc | string | n/a | yes |
| force\_detach\_policies | specify true or false for force detach | string | `"true"` | no |
| iam\_attach\_role\_policy | requirement specific iam access policy which will be used as inline | string | `""` | no |
| iam\_role\_path | the path to the role | string | `"/"` | no |
| instance\_profile\_name | instance profile policy name to be used if it needs to be created | string | `""` | no |
| policy\_name | role policy name to be used if it needs to be created in any other format than the expected policy-${var.role_function}-${var.application_id} | string | `""` | no |
| role\_function | application functionality used by this aws role like ingestor,batchprocessor | string | `""` | no |
| role\_max\_session\_duration | iam role session duration | string | `"3600"` | no |
| role\_name | role name to be used if it needs to be created in any other format than the expected role-access-${var.role_awsservice}-${var.role_function}-${var.application_id} | string | `""` | no |
| skip\_iam\_role\_policy | specify if role without policy needs to be created | string | `"false"` | no |

## Outputs

| Name | Description |
|------|-------------|
| iam\_instance\_profile\_arn | The ARN assigned by AWS to the instance profile |
| iam\_instance\_profile\_created\_date | The creation timestamp of the instance profile |
| iam\_instance\_profile\_id | The instance profile's ID |
| iam\_instance\_profile\_name | The instance profile's name |
| iam\_instance\_profile\_role | The role assigned to the instance profile |
| iam\_instance\_profile\_uniqueid | The unique ID assigned by AWS |
| iam\_role\_arn | The Amazon Resource Name (ARN) specifying the role |
| iam\_role\_created\_date | The creation date of the IAM role |
| iam\_role\_description | The description of the role |
| iam\_role\_name | The name of the role |
| iam\_role\_policy\_id | The role policy ID, in the form of role_name:role_policy_name |
| iam\_role\_policy\_name | The name of the role policy |
| iam\_role\_policy\_role | The name of the role associated with the policy |
| iam\_role\_uniqueid | The stable and unique string identifying the role |

