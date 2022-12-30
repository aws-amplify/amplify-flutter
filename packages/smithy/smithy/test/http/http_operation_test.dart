// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/testing.dart';
import 'package:built_value/serializer.dart';
import 'package:retry/retry.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

void main() {
  group('HttpOperation', () {
    test('can cancel operation', () async {
      final operation = TestOp();
      final shouldCancel = Completer<void>.sync();
      late final bool Function() requestIsCancelled;
      final client = MockAWSHttpClient((req, isCancelled) async {
        expect(isCancelled(), isFalse);
        requestIsCancelled = isCancelled;
        shouldCancel.complete();
        await Future<void>.delayed(const Duration(milliseconds: 50));
        fail('Should be cancelled');
      });
      final op = operation.run(const Unit(), client: client);
      shouldCancel.future.then((_) {
        op.cancel();
      });
      expect(op.requestProgress, emitsThrough(emitsDone));
      expect(op.responseProgress, emitsDone);
      await expectLater(op.result, throwsA(isA<CancellationException>()));
      expect(requestIsCancelled(), isTrue);
    });

    test('can deserialize output', () async {
      final operation = TestOp();
      final body =
          GenericJsonProtocol<Unit, Unit, Unit, Unit>().serialize(const Unit());
      final client = MockAWSHttpClient((req, isCancelled) {
        return AWSStreamedHttpResponse(statusCode: 200, body: body);
      });
      final op = operation.run(const Unit(), client: client);
      expect(op.requestProgress, emitsThrough(emitsDone));
      expect(op.responseProgress, emitsThrough(emitsDone));
      expect(op.result, completion(isA<Unit>()));
    });

    test('can handle errors', () async {
      final operation = TestOp();
      final client = MockAWSHttpClient((req, isCancelled) async {
        final stream = Stream.value([1, 2, 3, 4, 5]);
        return AWSStreamedHttpResponse(statusCode: 200, body: stream);
      });
      final op = operation.run(const Unit(), client: client);
      expect(op.requestProgress, emitsThrough(emitsDone));
      expect(
        op.responseProgress,
        emitsInOrder([5, emitsDone]),
      );
      expect(op.result, throwsA(isA<DeserializationError>()));
    });

    test('can transform request/response', () async {
      final operation = TestOp();
      final body =
          GenericJsonProtocol<Unit, Unit, Unit, Unit>().serialize(const Unit());
      final client = TransformingClient(
        onRequest: expectAsync1((_) {}),
        onResponse: expectAsync1((_) {}),
        baseClient: MockAWSHttpClient(
          (_, __) => AWSStreamedHttpResponse(statusCode: 200, body: body),
        ),
      );
      final op = operation.run(const Unit(), client: client);
      expect(op.requestProgress, emitsThrough(emitsDone));
      expect(op.responseProgress, emitsThrough(emitsDone));
      expect(op.result, completion(isA<Unit>()));
    });
  });
}

class TransformingClient extends AWSBaseHttpClient {
  TransformingClient({
    this.onRequest,
    this.onResponse,
    this.baseClient,
  });

  @override
  final AWSHttpClient? baseClient;
  final FutureOr<void> Function(AWSBaseHttpRequest)? onRequest;
  final FutureOr<void> Function(AWSBaseHttpResponse)? onResponse;

  @override
  Future<AWSBaseHttpRequest> transformRequest(
      AWSBaseHttpRequest request) async {
    await onRequest?.call(request);
    return request;
  }

  @override
  Future<AWSBaseHttpResponse> transformResponse(
      AWSBaseHttpResponse response) async {
    response = await super.transformResponse(response);
    await onResponse?.call(response);
    return response;
  }
}

typedef Deserialize<Output> = Future<Output> Function(
  HttpProtocol<Unit, Unit, Unit, Unit> protocol,
  AWSBaseHttpResponse response,
);

class TestOp extends HttpOperation<Unit, Unit, Unit, Unit> {
  TestOp([this._deserializeOutput]);

  final Deserialize<Unit>? _deserializeOutput;

  @override
  Uri get baseUri => Uri.parse('https://service.us-west-2.amazonaws.com/');

  @override
  Retryer get retryer => const Retryer(
        RetryOptions(maxAttempts: 1),
      );

  @override
  HttpRequest buildRequest(Unit input) => HttpRequest((b) {
        b.method = 'GET';
        b.path = '/';
      });

  @override
  Future<Unit> deserializeOutput({
    required HttpProtocol<Unit, Unit, Unit, Unit> protocol,
    required AWSBaseHttpResponse response,
  }) {
    return _deserializeOutput?.call(protocol, response) ??
        super.deserializeOutput(
          protocol: protocol,
          response: response,
        );
  }

  @override
  Unit buildOutput(
    Unit payload,
    AWSBaseHttpResponse response,
  ) =>
      payload;

  @override
  List<SmithyError> get errorTypes => const [];

  @override
  Iterable<HttpProtocol<Unit, Unit, Unit, Unit>> get protocols => [
        GenericJsonProtocol(),
      ];

  @override
  int successCode([Unit? output]) => 200;

  @override
  String get runtimeTypeName => 'TestOp';
}
