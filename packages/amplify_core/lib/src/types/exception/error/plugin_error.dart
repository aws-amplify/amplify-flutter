// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.exceptions.plugin_error}
/// A non-recoverable error occurring during plugin operations.
/// {@endtemplate}
class PluginError extends AmplifyError {
  /// {@macro amplify_core.exceptions.plugin_error}
  PluginError(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'PluginError';
}
