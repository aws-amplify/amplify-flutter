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

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/testing.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

void main() {
  group('HttpOperation', () {
    test('can cancel operation', () async {
      final operation = TestOp1();
      final shouldCancel = Completer<void>();
      final client = MockAWSHttpClient((req) async {
        final stream = () async* {
          yield [1, 2, 3, 4, 5];
          shouldCancel.complete();
          yield [6, 7, 8, 9, 10];
        }();
        return AWSStreamedHttpResponse(statusCode: 200, body: stream);
      });
      final op = operation.run(const Unit(), client: client);
      shouldCancel.future.then((_) {
        op.cancel();
      });
      expect(op.requestProgress, emitsThrough(emitsDone));
      expect(
        op.responseProgress,
        emitsInOrder([5, emitsDone]),
      );
      expect(op.result, throwsA(isA<CancellationException>()));
    });

    test('can deserialize output', () async {
      final operation = TestOp1();
      final body =
          GenericJsonProtocol<Unit, Unit, Unit, Unit>().serialize(const Unit());
      final client = MockAWSHttpClient((req) {
        return AWSStreamedHttpResponse(statusCode: 200, body: body);
      });
      final op = operation.run(const Unit(), client: client);
      expect(op.requestProgress, emitsThrough(emitsDone));
      expect(op.responseProgress, emitsThrough(emitsDone));
      expect(op.result, completion(isA<Unit>()));
    });

    test('can handle errors', () async {
      final operation = TestOp1();
      final client = MockAWSHttpClient((req) async {
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
  });
}

class TestOp1 extends HttpOperation<Unit, Unit, Unit, Unit> {
  @override
  Uri get baseUri => Uri.parse('https://service.us-west-2.amazonaws.com/');

  @override
  HttpRequest buildRequest(Unit input) => HttpRequest((b) {
        b.method = 'GET';
        b.path = '/';
      });

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
  String get runtimeTypeName => 'TestOp1';
}
