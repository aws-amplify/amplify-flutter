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

import 'dart:convert';
import 'dart:io' as io;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/io/aws_file_platform_io.dart';
import 'package:test/test.dart';

import 'utils.dart';

void main() {
  group('AWSFile io implementation', () {
    var currentPath = io.Directory.current.path;
    if (currentPath.endsWith('/test')) {
      currentPath = currentPath.replaceAll('/test', '');
    }
    final testFilePath = '$currentPath/test/io/assets/test_file.txt';
    const testFileContent = 'I ❤️ Amplify, œ 小新';
    final testBytes = utf8.encode(testFileContent);

    final testFile = io.File(testFilePath);

    group('getChunkedStreamReader() API', () {
      test('should return ChunkedStreamReader over io File', () async {
        final awsFile = AWSFilePlatform.fromFile(testFile);

        expect(
          await collectBytesFromChunkedReader(awsFile.getChunkedStreamReader()),
          equals(testBytes),
        );
      });

      test('should return ChunkedStreamReader over a file path', () async {
        final awsFile = AWSFile.fromPath(testFilePath);

        expect(
          await collectBytesFromChunkedReader(awsFile.getChunkedStreamReader()),
          equals(testBytes),
        );
      });

      test('should return ChunkedStreamReader over bytes data', () async {
        final awsFile = AWSFile.fromData(testBytes);

        expect(
          await collectBytesFromChunkedReader(awsFile.getChunkedStreamReader()),
          equals(testBytes),
        );
      });

      test('should return ChunkedStreamReader over bytes stream', () async {
        final awsFile = AWSFile.fromStream(
          Stream.value(testBytes),
          size: testBytes.length,
        );

        expect(
          await collectBytesFromChunkedReader(awsFile.getChunkedStreamReader()),
          equals(testBytes),
        );
      });
    });
  });
}
