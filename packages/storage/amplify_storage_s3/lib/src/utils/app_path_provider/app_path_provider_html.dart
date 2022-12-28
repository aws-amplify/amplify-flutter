// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@macro amplify_storage_s3.app_path_provider}
class S3AppPathProvider implements AppPathProvider {
  /// {@macro amplify_storage_s3.app_path_provider}
  S3AppPathProvider();

  @override
  Future<String> getApplicationSupportPath() async {
    return '';
  }

  @override
  Future<String> getTemporaryPath() async {
    return '';
  }
}
