#!/usr/bin/env bash

set -e

pushd backend
npm ci
npm run setup
npm run deploy
popd

BUCKET=$(jq -r .AnalyticsIntegrationTestStack.BucketName backend/outputs.json)
aws --profile=${AWS_PROFILE:=default} s3 cp lib/amplifyconfiguration.dart s3://$BUCKET/amplifyconfiguration.dart
