#!/bin/bash
set -e

aws s3 cp s3://$AFS_ANALYTICS_BUCKET_NAME/amplifyconfiguration.dart lib/amplifyconfiguration.dart
