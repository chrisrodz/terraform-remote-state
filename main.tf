resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.prefix}-remotestate-${var.environment}"
  acl    = "authenticated-read"

  versioning {
    enabled = true
  }

  tags {
    Name        = "${var.prefix}-remotestate-${var.environment}"
    Environment = "${var.environment}"
  }
}
