variable "role_name" {
  type        = "string"
  description = "role name to be used if it needs to be created in any other format than the expected role-access-${var.role_awsservice}-${var.role_function}-${var.application_id}"
  default     = ""
}

variable "role_awsservice" {
  type        = "string"
  description = "the aws service that will utilize this role like ec2,lambda,cloudwatch event etc"
}

variable "role_function" {
  type        = "string"
  description = "application functionality used by this aws role like ingestor,batchprocessor"
  default     = ""
}

variable "force_detach_policies" {
  type        = "string"
  description = "specify true or false for force detach"
  default     = "true"
}

variable "iam_role_path" {
  type        = "string"
  description = "the path to the role"
  default     = "/"
}

variable "role_max_session_duration" {
  type        = "string"
  description = "iam role session duration"
  default     = "3600"
}

variable "skip_iam_role_policy" {
  description = "specify if role without policy needs to be created"
  default     = "false"
}

variable "policy_name" {
  type        = "string"
  description = "role policy name to be used if it needs to be created in any other format than the expected policy-${var.role_function}-${var.application_id}"
  default     = ""
}

variable "instance_profile_name" {
  type        = "string"
  description = "instance profile policy name to be used if it needs to be created"
  default     = ""
}

variable "iam_assume_role_policy" {
  type        = "string"
  description = "assume role policy specific to aws service"
}

variable "iam_attach_role_policy" {
  type        = "string"
  description = "requirement specific iam access policy which will be used as inline"
  default     = ""
}

variable "application_id" {
  type        = "string"
  description = "application id of project"
}

variable "default_tags" {
  type        = "map"
  description = "tags for the roles"
}
