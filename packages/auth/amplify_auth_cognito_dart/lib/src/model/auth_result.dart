// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.model.auth_result}
/// The result of an Auth operation.
/// {@endtemplate}
class AuthResult<T> extends AWSResult<T, AuthException> {
  /// Creates a failed Auth result.
  const AuthResult.error(super.exception) : super.error();

  /// Creates a successful Auth result.
  const AuthResult.success(super.value) : super.success();
}
