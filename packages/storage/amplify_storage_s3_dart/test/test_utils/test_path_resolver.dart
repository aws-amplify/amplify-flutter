// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/path_resolver/s3_path_resolver.dart';
import 'package:mocktail/mocktail.dart';

class TestPathResolver extends Mock implements S3PathResolver {
  @override
  Future<String> resolvePath({
    required StoragePath path,
    String? identityId,
  }) async {
    return TestPathResolver.path;
  }

  static String path = 'mock/path';

  @override
  Future<List<String>> resolvePaths({required List<StoragePath> paths}) async {
    // ignore: invalid_use_of_internal_member
    return paths.map((path) => path.resolvePath()).toList();
  }
}
