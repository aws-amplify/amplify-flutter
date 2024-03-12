// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/path_resolver/s3_path_resolver.dart';

class TestPathResolver implements S3PathResolver {
  @override
  Future<String> resolvePath({required StoragePath path}) async {
    return '/mock/path';
  }
}
