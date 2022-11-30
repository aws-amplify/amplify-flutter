// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
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
