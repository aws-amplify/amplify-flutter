// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_logging_cloudwatch_dart.app_path_provider}
/// Provides App paths for amplify_logging_cloudwatch_dart package.
/// {@endtemplate}
class DartAppPathProvider implements AppPathProvider {
  /// {@macro amplify_logging_cloudwatch_dart.app_path_provider}
  const DartAppPathProvider();

  @override
  Future<String> getApplicationSupportPath() async {
    throw UnimplementedError(
      'getApplicationSupportPath() has not been implemented in the current platform.',
    );
  }

  @override
  Future<String> getTemporaryPath() async {
    throw UnimplementedError(
      'getTemporaryPath() has not been implemented in the current platform.',
    );
  }
}
