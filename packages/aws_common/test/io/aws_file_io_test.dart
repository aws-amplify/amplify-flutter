// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')

import 'dart:convert';
import 'dart:io' as io;

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/vm.dart';
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
    const testContentType = 'text/plain';
    final testBytes = utf8.encode(testFileContent);

    final testFile = io.File(testFilePath);

    group('getChunkedStreamReader() API', () {
      test('should return ChunkedStreamReader over io File', () async {
        final awsFile = AWSFilePlatform.fromFile(testFile);

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

      test('should resolve contentType from the underlying file', () async {
        final awsFile = AWSFilePlatform.fromFile(
          testFile,
        );

        expect(await awsFile.contentType, testContentType);
      });

      test('should return null as contentType if contentType is unresolvable',
          () async {
        final awsFile = AWSFile.fromStream(
          Stream.value(testBytes),
          size: testBytes.length,
        );

        expect(await awsFile.contentType, isNull);
      });
    });
  });
}
