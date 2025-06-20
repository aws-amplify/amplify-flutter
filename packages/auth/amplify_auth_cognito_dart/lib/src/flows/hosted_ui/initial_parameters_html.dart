// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/model/hosted_ui/oauth_parameters.dart';
import 'package:web/web.dart';

/// {@macro amplify_auth_cognito.initial_parameters}
final OAuthParameters? initialParameters = OAuthParameters.fromUri(
  // Try to deserialize the current route parameters.
  Uri.parse(window.location.href),
);
