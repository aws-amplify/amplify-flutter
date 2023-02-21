// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
// ignore:implementation_imports
import 'package:aws_common/src/js/common.dart';

/// {@macro amplify_auth_cognito.initial_parameters}
final OAuthParameters? initialParameters = OAuthParameters.fromUri(
  // Try to deserialize the current route parameters.
  Uri.parse(window.location.href),
);
