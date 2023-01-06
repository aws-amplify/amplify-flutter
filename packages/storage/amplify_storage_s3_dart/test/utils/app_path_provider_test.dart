// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
@TestOn('vm')

import 'dart:io';

import 'package:amplify_storage_s3_dart/src/utils/app_path_provider/app_path_provider.dart';
import 'package:test/test.dart';

void main() {
  group('S3DartAppPathProvider', () {
    const pathProvider = S3DartAppPathProvider();

    test('should return application support path as current working path',
        () async {
      expect(
        await pathProvider.getApplicationSupportPath(),
        Directory.current.path,
      );
    });

    test('should return temporary path as system temporary path', () async {
      expect(await pathProvider.getTemporaryPath(), Directory.systemTemp.path);
    });
  });
}
