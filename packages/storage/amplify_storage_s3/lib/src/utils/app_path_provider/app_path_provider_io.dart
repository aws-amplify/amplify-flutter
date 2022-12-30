// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:path_provider/path_provider.dart' as pp;

/// {@macro amplify_storage_s3.app_path_provider}
class S3AppPathProvider implements AppPathProvider {
  /// {@macro amplify_storage_s3.app_path_provider}
  S3AppPathProvider();

  String? _applicationSupportPath;
  String? _temporaryPath;

  @override
  Future<String> getApplicationSupportPath() async {
    return _applicationSupportPath ??=
        (await pp.getApplicationSupportDirectory()).path;
  }

  @override
  Future<String> getTemporaryPath() async {
    return _temporaryPath ??= (await pp.getTemporaryDirectory()).path;
  }
}
