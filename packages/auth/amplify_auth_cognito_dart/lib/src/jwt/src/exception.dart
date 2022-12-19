// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_auth_cognito.missing_parameter_exception}
/// Thrown when a JSON Web Token member is missing.
/// {@endtemplate}
class MissingParameterException implements Exception {
  /// {@macro amplify_auth_cognito.missing_parameter_exception}
  const MissingParameterException(this.parameterName);

  /// The name of the missing parameter.
  final String parameterName;

  @override
  String toString() {
    return 'Missing parameter: $parameterName';
  }
}
