// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
    const testContentType = 'text/plain';
    final testBytes = utf8.encode(testStringContent);
    final testBlob = html.Blob([testBytes], testContentType);
    final testFile = html.File(
        [testBlob],
        'test_file.txt',
        {
          'type': testBlob.type,
        });
    final testFilePath = html.Url.createObjectUrl(testFile);

    group('getChunkedStreamReader() API', () {
      test('should return ChunkedStreamReader over html File', () async {
        final awsFile = AWSFilePlatform.fromFile(testFile);

        expect(await awsFile.contentType, testContentType);
        expect(
          await collectBytesFromChunkedReader(awsFile.getChunkedStreamReader()),
          equals(testBytes),
        );
      });

      test('should return ChunkedStreamReader over html Blob', () async {
        final awsFile = AWSFilePlatform.fromBlob(testBlob);

        expect(await awsFile.contentType, testContentType);
        expect(
          await collectBytesFromChunkedReader(awsFile.getChunkedStreamReader()),
          equals(testBytes),
        );
      });

      test('should return ChunkedStreamReader over a file path', () async {
        final awsFile = AWSFile.fromPath(testFilePath);

        expect(await awsFile.contentType, testContentType);
        expect(
          await collectBytesFromChunkedReader(awsFile.getChunkedStreamReader()),
          equals(testBytes),
        );
      });

      test('should return ChunkedStreamReader over bytes data', () async {
        final awsFile = AWSFile.fromData(
          testBytes,
          contentType: testContentType,
        );

        expect(await awsFile.contentType, testContentType);
        expect(
          await collectBytesFromChunkedReader(awsFile.getChunkedStreamReader()),
          equals(testBytes),
        );
      });

      test('should return ChunkedStreamReader over bytes stream', () async {
        final awsFile = AWSFile.fromStream(
          Stream.value(testBytes),
          size: testBytes.length,
          contentType: testContentType,
        );

        expect(await awsFile.contentType, testContentType);
        expect(
          await collectBytesFromChunkedReader(awsFile.getChunkedStreamReader()),
          equals(testBytes),
        );
      });

      test('should primarily use contentType specified externally', () async {
        const testExternalContentType = 'image/jpeg';
        final awsFile = AWSFilePlatform.fromFile(
          testFile,
          contentType: testExternalContentType,
        );

        expect(await awsFile.contentType, testExternalContentType);
      });
    });
  });
}
