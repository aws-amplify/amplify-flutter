// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_storage_s3_dart.app_path_provider}
/// Provides App paths for amplify_storage_s3_dart package.
/// {@endtemplate}
class S3DartAppPathProvider implements AppPathProvider {
  /// {@macro amplify_storage_s3_dart.app_path_provider}
  const S3DartAppPathProvider();

  @override
  Future<String> getApplicationSupportPath() async {
    return '';
  }

  @override
  Future<String> getTemporaryPath() async {
    return '';
  }
}
