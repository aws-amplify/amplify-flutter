// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

/// {@template amplify_core.amplify_outputs.identity_providers}
/// Identity providers set on Cognito User Pool.
/// {@endtemplate}
enum IdentityProvider {
  @JsonValue('FACEBOOK')
  facebook,

  @JsonValue('GOOGLE')
  google,

  @JsonValue('LOGIN_WITH_AMAZON')
  amazon,

  @JsonValue('SIGN_IN_WITH_APPLE')
  apple,
}
