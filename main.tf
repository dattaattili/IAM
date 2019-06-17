locals {
  iam_role_name             = "${var.role_name == "" ? "role-access-${var.role_awsservice}-${var.role_function}-${var.application_id}" : var.role_name}"
  iam_role_policy_name      = "${var.policy_name == "" ? "policy-${var.role_function}-${var.application_id}" : var.policy_name}"
  iam_instance_profile_name = "${var.instance_profile_name == "" ? "${local.iam_role_name}-instanceprofile" : var.instance_profile_name }"
}

resource "aws_iam_role" "iam_role" {
  name                  = "${local.iam_role_name}"
  description           = "${var.application_id} project role"
  force_detach_policies = "${var.force_detach_policies}"
  path                  = "${var.iam_role_path}"
  max_session_duration  = "${var.role_max_session_duration}"
  tags                  = "${merge(var.default_tags, map("name", format("%s", local.iam_role_name)))}"
  assume_role_policy    = "${var.iam_assume_role_policy}"
}

resource "aws_iam_role_policy" "iam_role_policy" {
  count  = "${var.skip_iam_role_policy == "true" ? 0 : 1 }"
  name   = "${local.iam_role_policy_name}"
  role   = "${aws_iam_role.iam_role.id}"
  policy = "${var.iam_attach_role_policy}"
}

resource "aws_iam_instance_profile" "iam_instance_profile" {
  count = "${var.role_awsservice == "ec2" ? 1 : 0}"
  name  = "${local.iam_instance_profile_name}"
  role  = "${aws_iam_role.iam_role.name}"
}
