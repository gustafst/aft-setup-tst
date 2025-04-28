# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

terraform {
  backend "s3" {
    region = "us-east-2"
    bucket = "aft-bootstrap-000025530748"
    key    = "aft-setup.tfstate"
  }
}
