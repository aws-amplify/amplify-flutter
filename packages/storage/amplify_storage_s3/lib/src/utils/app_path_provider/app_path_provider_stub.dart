// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_storage_s3.app_path_provider}
/// Provides App paths for amplify_storage_s3 package.
/// {@endtemplate}
class S3AppPathProvider implements AppPathProvider {
  /// {@macro amplify_storage_s3_dart.app_path_provider}
  const S3AppPathProvider();

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
