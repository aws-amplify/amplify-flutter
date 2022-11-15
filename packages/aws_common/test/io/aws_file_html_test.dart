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

@TestOn('browser')

import 'dart:convert';
import 'dart:html' as html;

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/web.dart';
import 'package:test/test.dart';

import 'utils.dart';

void main() {
  group('AWSFile html implementation', () {
    const testStringContent = 'I ❤️ Amplify, œ 小新';
    final testBytes = utf8.encode(testStringContent);
    final testFile = html.File([testBytes], 'test_file.txt');
    final testBlob = html.Blob([testBytes], 'text/plain');
    final testFilePath = html.Url.createObjectUrl(testFile);

    group('getChunkedStreamReader() API', () {
      test('should return ChunkedStreamReader over html File', () async {
        final awsFile = AWSFilePlatform.fromFile(testFile);

        expect(
          await collectBytesFromChunkedReader(awsFile.getChunkedStreamReader()),
          equals(testBytes),
        );
      });

      test('should return ChunkedStreamReader over html Blob', () async {
        final awsFile = AWSFilePlatform.fromBlob(testBlob);

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
