// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')

import 'dart:convert';
import 'dart:html' as html;
import 'dart:typed_data';

import 'package:async/async.dart';
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

      test('should resolve contentType from underlying html File', () async {
        final awsFile = AWSFilePlatform.fromFile(
          testFile,
        );

        expect(await awsFile.contentType, testFile.type);
      });

      test('should resolve contentType from underlying html Blob', () async {
        final awsFile = AWSFilePlatform.fromBlob(
          testBlob,
        );

        expect(await awsFile.contentType, testBlob.type);
      });

      test(
          'should resolve contentType from the blob that is resolved from the path',
          () async {
        final awsFile = AWSFilePlatform.fromPath(
          testFilePath,
        );

        expect(await awsFile.contentType, testFile.type);
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

    group('openRead() API', () {
      test(
        'throws exception when the AWSFile is initiated with fromStream constructor',
        () {
          final testFile = AWSFile.fromStream(
            Stream.value(testBytes),
            size: testBytes.length,
          );

          expect(testFile.openRead, throwsA(isA<InvalidFileException>()));
        },
      );

      test('returns streams over the underlying file', () async {
        final bytesBuffer = BytesBuilder();
        final awsFile = AWSFilePlatform.fromFile(testFile);

        final collectedBytes1 = await collectBytes(awsFile.openRead(0, 5));
        final collectedBytes2 = await collectBytes(awsFile.openRead(5));

        expect(collectedBytes1.length, 5);
        expect(collectedBytes2.length, testBytes.length - 5);

        bytesBuffer
          ..add(collectedBytes1)
          ..add(collectedBytes2);

        expect(bytesBuffer.takeBytes(), equals(testBytes));
      });

      test('returns streams over the underlying bytes', () async {
        final bytesBuffer = BytesBuilder();
        final awsFile = AWSFile.fromData(testBytes);

        final collectedBytes1 = await collectBytes(awsFile.openRead(0, 10));
        final collectedBytes2 = await collectBytes(awsFile.openRead(10, 13));
        final collectedBytes3 = await collectBytes(awsFile.openRead(13));

        expect(collectedBytes1.length, 10);
        expect(collectedBytes2.length, 3);
        expect(collectedBytes3.length, testBytes.length - 13);

        bytesBuffer
          ..add(collectedBytes1)
          ..add(collectedBytes2)
          ..add(collectedBytes3);

        expect(bytesBuffer.takeBytes(), equals(testBytes));
      });

      test(
        'returns streams over the underlying file pointed by the path',
        () async {
          final bytesBuffer = BytesBuilder();
          final awsFile = AWSFile.fromPath(testFilePath);

          final collectedBytes1 = await collectBytes(awsFile.openRead(0, 20));
          final collectedBytes2 = await collectBytes(awsFile.openRead(20));

          expect(collectedBytes1.length, 20);
          expect(collectedBytes2.length, testBytes.length - 20);

          bytesBuffer
            ..add(collectedBytes1)
            ..add(collectedBytes2);

          expect(bytesBuffer.takeBytes(), equals(testBytes));
        },
      );
    });
  });
}
