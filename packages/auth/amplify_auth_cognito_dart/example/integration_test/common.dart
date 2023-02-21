// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/amplifyconfiguration.dart';

final AmplifyConfig config = AmplifyConfig.fromJson(
  jsonDecode(amplifyEnvironments['hosted-ui']!) as Map<String, Object?>,
);

final AWSLogger logger = AWSLogger().createChild('HostedUI');
