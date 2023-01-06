// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library amplify_auth_cognito_dart.exception.srp_error;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.srp_error}
/// Error thrown due to an SRP calculation error.
/// {@endtemplate}
class SrpError extends AmplifyError {
  /// {@macro amplify_auth_cognito.srp_error}
  SrpError(super.message);

  @override
  String get runtimeTypeName => 'SrpError';
}
