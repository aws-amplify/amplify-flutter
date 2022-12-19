// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

void main() {
  group('HttpPayload', () {
    test('empty', () {
      expect(const HttpPayload.empty(), emitsDone);
    });

    test('string', () {
      expect(
        HttpPayload.string('Hello'),
        emitsInOrder([
          'Hello'.codeUnits,
          emitsDone,
        ]),
      );
    });

    test('bytes', () {
      expect(
        HttpPayload.bytes('Hello'.codeUnits),
        emitsInOrder([
          'Hello'.codeUnits,
          emitsDone,
        ]),
      );
    });

    test('formFields', () {
      expect(
        HttpPayload.formFields({'key1': 'value1', 'key2': 'value2'}),
        emitsInOrder([
          'key1=value1&key2=value2'.codeUnits,
          emitsDone,
        ]),
      );
    });

    test('json', () {
      expect(
        HttpPayload.json({'key1': 'value1', 'key2': 'value2'}),
        emitsInOrder([
          '{"key1":"value1","key2":"value2"}'.codeUnits,
          emitsDone,
        ]),
      );
    });

    test('streaming', () {
      expect(
        HttpPayload.streaming(
          Stream.fromIterable([
            [1],
            [2],
            [3],
            [4],
            [5],
          ]),
        ),
        emitsInOrder([
          [1],
          [2],
          [3],
          [4],
          [5],
          emitsDone,
        ]),
      );
    });

    group('dataUrl', () {
      test('text without base64 encoding', () {
        const testDataUrl =
            'data:text/plain;charset=UTF-8;page=21,the%20data:1234,5678';
        final payload = HttpPayload.dataUrl(testDataUrl);
        expect(payload.contentType, 'text/plain;charset=UTF-8;page=21');
        expect(
          payload,
          emitsInOrder([utf8.encode('the data:1234,5678'), emitsDone]),
        );
      });

      test('text with base64 encoding', () {
        const testDataUrl = 'data:text/plain;base64,SGVsbG8sIFdvcmxkIQ==';
        final payload = HttpPayload.dataUrl(testDataUrl);
        expect(payload.contentType, 'text/plain');
        expect(
          payload,
          emitsInOrder([utf8.encode('Hello, World!'), emitsDone]),
        );
      });

      test('image with base64 encoding', () {
        const testDataUrl =
            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==';
        final payload = HttpPayload.dataUrl(testDataUrl);
        expect(payload.contentType, 'image/png');
        expect(
          payload,
          emitsInOrder([
            base64Decode(
              'iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==',
            ),
            emitsDone
          ]),
        );
      });

      test('js script', () {
        const testDataUrl = 'data:text/html,<script>alert(\'hi\');</script>';
        final payload = HttpPayload.dataUrl(testDataUrl);
        expect(payload.contentType, 'text/html');
        expect(
          payload,
          emitsInOrder(
            [utf8.encode('<script>alert(\'hi\');</script>'), emitsDone],
          ),
        );
      });

      test('utf8 encoding', () {
        const testDataUrl =
            'data:text/plain;charset=utf-8,Hello%20Amplify%20%E2%9D%A4%EF%B8%8F%F0%9F%91%8B%21';
        final payload = HttpPayload.dataUrl(testDataUrl);
        expect(payload.contentType, 'text/plain;charset=utf-8');
        expect(
          payload,
          emitsInOrder([utf8.encode('Hello Amplify ❤️👋!'), emitsDone]),
        );
      });
    });
  });
}
