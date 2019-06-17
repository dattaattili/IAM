# AWS IAM Role and Inline policy association

The AWS IAM module to create IAM role with inline policy.

The module creates roles based on format role-access-${var.role_awsservice}-${var.role_function}-${var.application_id}. If for any reason you want to use a different format then pass the role name directly using "role_name" input.

The module also creates instance profile if the provided input for "role_awsservice" is "ec2".

Module attaches role policy as inline to the associated role. All the required access needs to be provides as a single file in the root module

 


__Examples:__ 
* _[../../examples/iam](../../examples/iam)_


__Tests:__ 
* _[../../tests/iam_test.go](../../tests/iam_test.go)_
