// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.exceptions.configuration_error}
/// An error occurring during configuration of an Amplify plugin, typically
/// the result of missing values needed for that plugin to function properly.
///
/// This is a non-recoverable error only thrown during the call to
/// `Amplify.configure`. If that call succeeds, developers do not need to worry
/// about future configuration errors.
/// {@endtemplate}
class ConfigurationError extends AmplifyError {
  /// {@macro amplify_core.exceptions.configuration_error}
  ConfigurationError(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ConfigurationError';
}
