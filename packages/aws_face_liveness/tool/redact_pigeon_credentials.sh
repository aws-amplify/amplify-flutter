#!/usr/bin/env bash
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

# Pigeon always generates string representations that include every field.
# Redact the secret parts of LivenessCredentials so logging the object never
# discloses AWS credentials. Run after `dart run pigeon` (see `make pigeons`).

set -euo pipefail
cd "$(dirname "$0")/.."

redact() {
  local file=$1 pattern=$2 replacement=$3
  REPLACEMENT=$replacement perl -0pi -e "s/$pattern/\$ENV{REPLACEMENT}/g" "$file"
  if ! grep -qF "$replacement" "$file"; then
    echo "Failed to redact LivenessCredentials in $file" >&2
    exit 1
  fi
}

redact lib/src/pigeons/aws_face_liveness_pigeon.g.dart \
  'secretAccessKey: \$secretAccessKey, sessionToken: \$sessionToken' \
  'secretAccessKey: <redacted>, sessionToken: <redacted>'
redact android/src/main/kotlin/com/amazonaws/amplify/aws_face_liveness/pigeons/AwsFaceLivenessPigeon.kt \
  'secretAccessKey=\$secretAccessKey, sessionToken=\$sessionToken' \
  'secretAccessKey=<redacted>, sessionToken=<redacted>'
redact ios/aws_face_liveness/Sources/aws_face_liveness/pigeons/AwsFaceLivenessPigeon.swift \
  'secretAccessKey: \\\(String\(describing: secretAccessKey\)\), sessionToken: \\\(String\(describing: sessionToken\)\)' \
  'secretAccessKey: <redacted>, sessionToken: <redacted>'
