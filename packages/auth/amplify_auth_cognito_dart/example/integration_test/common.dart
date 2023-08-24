// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_config.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/amplifyconfiguration.dart';

final AWSAmplifyConfig config = AWSAmplifyConfig.parse(
  amplifyEnvironments['hosted-ui']!,
);

final AWSLogger logger = AWSLogger().createChild('HostedUI');
