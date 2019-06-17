output "iam_role_arn" {
  value       = "${aws_iam_role.iam_role.arn}"
  description = "The Amazon Resource Name (ARN) specifying the role"
}

output "iam_role_name" {
  value       = "${aws_iam_role.iam_role.name}"
  description = "The name of the role"
}

output "iam_role_uniqueid" {
  value       = "${aws_iam_role.iam_role.unique_id}"
  description = "The stable and unique string identifying the role"
}

output "iam_role_created_date" {
  value       = "${aws_iam_role.iam_role.create_date}"
  description = "The creation date of the IAM role"
}

output "iam_role_description" {
  value       = "${aws_iam_role.iam_role.description}"
  description = "The description of the role"
}

output "iam_instance_profile_arn" {
  value       = "${join("", aws_iam_instance_profile.iam_instance_profile.*.arn)}"
  description = "The ARN assigned by AWS to the instance profile"
}

output "iam_instance_profile_name" {
  value       = "${join("", aws_iam_instance_profile.iam_instance_profile.*.name)}"
  description = "The instance profile's name"
}

output "iam_instance_profile_id" {
  value       = "${join("", aws_iam_instance_profile.iam_instance_profile.*.unique_id)}"
  description = "The instance profile's ID"
}

output "iam_instance_profile_created_date" {
  value       = "${join("", aws_iam_instance_profile.iam_instance_profile.*.create_date)}"
  description = "The creation timestamp of the instance profile"
}

output "iam_instance_profile_role" {
  value       = "${join("", aws_iam_instance_profile.iam_instance_profile.*.role)}"
  description = "The role assigned to the instance profile"
}

output "iam_instance_profile_uniqueid" {
  value       = "${join("", aws_iam_instance_profile.iam_instance_profile.*.unique_id)}"
  description = "The unique ID assigned by AWS"
}

output "iam_role_policy_name" {
  value       = "${join("", aws_iam_role_policy.iam_role_policy.*.name)}"
  description = "The name of the role policy"
}

output "iam_role_policy_role" {
  value       = "${join("", aws_iam_role_policy.iam_role_policy.*.role)}"
  description = "The name of the role associated with the policy"
}

output "iam_role_policy_id" {
  value       = "${join("", aws_iam_role_policy.iam_role_policy.*.id)}"
  description = "The role policy ID, in the form of role_name:role_policy_name"
}
