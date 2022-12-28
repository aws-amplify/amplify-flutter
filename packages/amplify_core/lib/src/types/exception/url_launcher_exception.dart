// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.launch_url_exception}
/// Thrown when the requested operation did not complete because a URL could
/// not be launched, typically because of an error spawning an external process.
/// {@endtemplate}
class UrlLauncherException extends AmplifyException {
  /// {@macro amplify_core.launch_url_exception}
  const UrlLauncherException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UrlLauncherException';
}
