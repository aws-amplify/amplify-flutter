// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/testing.dart';
import 'package:test/test.dart';

void main() {
  final uri = Uri.parse('https://example.com');

  group('AWSHttpRequest', () {
    const body = [0, 1, 2];

    test('create and send request', () async {
      final uri = Uri.parse(
        'ws://example.com:440/myPath?abc=123&abc=456&def=000',
      );
      final client = MockAWSHttpClient((request, _) async {
        expect(request.uri, equals(uri));
        expect(request.bodyBytes, orderedEquals(<int>[0, 1, 2]));
        expect(request.headers['content-length'], equals('3'));
        return AWSHttpResponse(statusCode: 200);
      });
      final request = AWSHttpRequest.post(uri, body: body);

      expect(request.hasContentLength, isTrue);
      expect(request.contentLength, isA<int>());
      expect(request.contentLength, equals(3));

      expect(request.scheme, 'ws');
      expect(request.host, 'example.com');
      expect(request.port, 440);
      expect(request.path, '/myPath');
      expect(request.queryParameters, equals({'abc': '456', 'def': '000'}));
      expect(
        request.queryParametersAll,
        equals({
          'abc': ['123', '456'],
          'def': ['000'],
        }),
      );

      request.headers[AWSHeaders.contentLength] = request.contentLength
          .toString();
      await request.send(client: client).response;
    });

    test('factories', () async {
      final emitsBody = emitsInOrder(<Matcher>[
        orderedEquals(<int>[0, 1, 2]),
        emitsDone,
      ]);

      final get = AWSHttpRequest.get(uri);
      expect(get.body, emitsDone);

      final post = AWSHttpRequest.post(uri, body: body);
      expect(post.body, emitsBody);

      final put = AWSHttpRequest.put(uri, body: body);
      expect(put.body, emitsBody);

      final patch = AWSHttpRequest.patch(uri, body: body);
      expect(patch.body, emitsBody);
    });

    test('bodyBytes', () {
      final req = AWSHttpRequest.get(uri);
      expect(req.bodyBytes, isEmpty);
    });

    group('body', () {
      test('can be listened to multiple times', () async {
        final req = AWSHttpRequest.get(uri);
        expect(req.body, emitsDone);
        expect(req.body, emitsDone);
      });
    });

    group('split', () {
      test('can be called multiple times', () async {
        final req = AWSHttpRequest.get(uri);
        expect(req.split(), emitsDone);
        expect(req.split(), emitsDone);
      });
    });
  });

  group('AWSStreamedHttpRequest', () {
    Stream<List<int>> makeBody() => Stream.fromIterable([
      [0],
      [1],
      [2],
    ]);
    final emitsBody = emitsInOrder(<Matcher>[
      orderedEquals(<int>[0]),
      orderedEquals(<int>[1]),
      orderedEquals(<int>[2]),
      emitsDone,
    ]);

    test('create and send request', () async {
      final uri = Uri.parse(
        'ws://example.com:440/myPath?abc=123&abc=456&def=000',
      );
      final client = MockAWSHttpClient((request, _) async {
        expect(request.uri, equals(uri));
        expect(request.bodyBytes, orderedEquals(<int>[0, 1, 2]));
        expect(request.headers['content-length'], equals('3'));
        return AWSHttpResponse(statusCode: 200);
      });
      final request = AWSStreamedHttpRequest.post(uri, body: makeBody());

      expect(request.hasContentLength, isFalse);
      expect(request.contentLength, isA<Future<int>>());
      await expectLater(request.contentLength, completion(3));
      await expectLater(request.contentLength, completion(3));
      await expectLater(request.contentLength, completion(3));
      expect(request.debugNumSplits, equals(1));

      expect(request.scheme, 'ws');
      expect(request.host, 'example.com');
      expect(request.port, 440);
      expect(request.path, '/myPath');
      expect(request.queryParameters, equals({'abc': '456', 'def': '000'}));
      expect(
        request.queryParametersAll,
        equals({
          'abc': ['123', '456'],
          'def': ['000'],
        }),
      );

      request.headers[AWSHeaders.contentLength] = (await request.contentLength)
          .toString();
      await request.send(client: client).response;
    });

    test('factories', () async {
      final get = AWSStreamedHttpRequest.get(uri);
      expect(get.body, emitsDone);

      final post = AWSStreamedHttpRequest.post(uri, body: makeBody());
      expect(post.body, emitsBody);

      final put = AWSStreamedHttpRequest.put(uri, body: makeBody());
      expect(put.body, emitsBody);

      final patch = AWSStreamedHttpRequest.patch(uri, body: makeBody());
      expect(patch.body, emitsBody);
    });

    test('providing content length prevents split', () async {
      final post = AWSStreamedHttpRequest.post(
        uri,
        body: makeBody(),
        contentLength: 3,
      );

      expect(post.hasContentLength, isTrue);
      expect(post.contentLength, isA<int>());
      expect(post.contentLength, equals(3));
      expect(post.debugNumSplits, equals(0));

      expect(post.body, emitsBody);
    });

    test('closing allows reading (no split)', () async {
      final post = AWSStreamedHttpRequest.post(uri, body: makeBody());

      await post.close();
      expect(post.body, emitsBody);
    });

    test('closing prevents reading (split)', () async {
      final post = AWSStreamedHttpRequest.post(uri, body: makeBody());

      await expectLater(post.split(), emitsBody);
      expect(post.debugNumSplits, equals(1));

      await post.close();
      expect(() => post.body, throwsStateError);
      expect(post.split, throwsStateError);
    });

    test('bodyBytes', () async {
      final streamingReq = AWSStreamedHttpRequest.get(uri);
      final bodyBytes = await streamingReq.bodyBytes;
      expect(bodyBytes, isEmpty);
    });
  });
}
