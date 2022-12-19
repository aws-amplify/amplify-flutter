// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

import '../http_common.dart';
import 'request_body_server_vm.dart'
    if (dart.library.js) 'request_body_server_web.dart';

class _Plus2Decoder extends Converter<List<int>, String> {
  @override
  String convert(List<int> input) =>
      const Utf8Decoder().convert(input.map((e) => e + 2).toList());
}

class _Plus2Encoder extends Converter<String, List<int>> {
  @override
  List<int> convert(String input) =>
      const Utf8Encoder().convert(input).map((e) => e - 2).toList();
}

/// An encoding, meant for testing, the just decrements input bytes by 2.
class _Plus2Encoding extends Encoding {
  @override
  Converter<List<int>, String> get decoder => _Plus2Decoder();

  @override
  Converter<String, List<int>> get encoder => _Plus2Encoder();

  @override
  String get name => 'plus2';
}

/// Tests that the [AWSHttpClient] correctly implements HTTP requests with
/// bodies e.g. 'POST'.
void main() {
  clientTest('requestBody', startServer,
      (client, httpServerQueue, httpServerChannel, createUri) {
    test('POST with string body', () async {
      final request = AWSStreamedHttpRequest.post(
        createUri(''),
        body: HttpPayload.string('Hello World!'),
      );
      await client().send(request).response;

      final serverReceivedContentType = await httpServerQueue().next;
      final serverReceivedBody = await httpServerQueue().next;

      expect(serverReceivedContentType, 'text/plain; charset=utf-8');
      expect(serverReceivedBody, 'Hello World!');
    });

    test('POST with string body and custom encoding', () async {
      final request = AWSStreamedHttpRequest.post(
        createUri(''),
        body: HttpPayload.string('Hello', encoding: _Plus2Encoding()),
      );
      await client().send(request).response;

      final serverReceivedContentType = await httpServerQueue().next;
      final serverReceivedBody = await httpServerQueue().next;

      expect(serverReceivedContentType, 'text/plain; charset=plus2');
      expect(serverReceivedBody, 'Fcjjm');
    });

    test('POST with map body', () async {
      final request = AWSStreamedHttpRequest.post(
        createUri(''),
        body: HttpPayload.formFields({'key': 'value'}),
      );
      await client().send(request).response;

      final serverReceivedContentType = await httpServerQueue().next;
      final serverReceivedBody = await httpServerQueue().next;

      expect(
        serverReceivedContentType,
        'application/x-www-form-urlencoded; charset=utf-8',
      );
      expect(serverReceivedBody, 'key=value');
    });

    test('POST with map body and encoding', () async {
      final request = AWSStreamedHttpRequest.post(
        createUri(''),
        body: HttpPayload.formFields(
          {'key': 'value'},
          encoding: _Plus2Encoding(),
        ),
      );
      await client().send(request).response;

      final serverReceivedContentType = await httpServerQueue().next;
      final serverReceivedBody = await httpServerQueue().next;

      expect(
        serverReceivedContentType,
        'application/x-www-form-urlencoded; charset=plus2',
      );
      expect(serverReceivedBody, 'gau;r]hqa'); // key=value
    });

    test('POST with List<int>', () async {
      final request = AWSStreamedHttpRequest.post(
        createUri(''),
        body: HttpPayload.bytes([1, 2, 3, 4, 5]),
      );
      await client().send(request).response;

      await httpServerQueue().next; // Content-Type.
      final serverReceivedBody = await httpServerQueue().next as String;

      // RFC 2616 7.2.1 says that:
      //   Any HTTP/1.1 message containing an entity-body SHOULD include a
      //   Content-Type header field defining the media type of that body.
      // But we didn't set one explicitly so don't verify what the server
      // received.
      expect(serverReceivedBody.codeUnits, [1, 2, 3, 4, 5]);
    });

    test('POST with List<int> and content-type', () async {
      final request = AWSStreamedHttpRequest.post(
        createUri(''),
        body: HttpPayload.bytes([1, 2, 3, 4, 5]),
        headers: {
          AWSHeaders.contentType: 'image/png',
        },
      );
      await client().send(request).response;

      final serverReceivedContentType = await httpServerQueue().next;
      final serverReceivedBody = await httpServerQueue().next as String;

      expect(serverReceivedContentType, 'image/png');
      expect(serverReceivedBody.codeUnits, [1, 2, 3, 4, 5]);
    });
  });
}
