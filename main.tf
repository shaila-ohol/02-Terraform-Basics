variable "iam_user_name_prefix" {
  default = "my_iam_user"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "sushil_test_iam_users" {
  count = 3
  name = "${var.iam_user_name_prefix}_${count.index}"
}
