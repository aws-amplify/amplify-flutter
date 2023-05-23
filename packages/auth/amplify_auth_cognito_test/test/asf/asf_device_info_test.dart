// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_test/amplify_auth_cognito_test.dart';
import 'package:aws_common/aws_common.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  runAsfDeviceInfoTests();
}
