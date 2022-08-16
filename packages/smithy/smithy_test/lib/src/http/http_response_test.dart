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

// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_internal_member

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/src/signer/aws_signer.dart' show zSigningTest;
import 'package:built_value/serializer.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_test/smithy_test.dart';

final _dummyHttpRequest = AWSStreamedHttpRequest.get(Uri());

/// Performs an HTTP response test for [operation] for a test case from an
/// [HttpResponseTestsTrait].
Future<void> httpResponseTest<InputPayload, Input, OutputPayload, Output>({
  required HttpOperation<InputPayload, Input, OutputPayload, Output> operation,
  required HttpResponseTestCase testCase,
  List<SmithySerializer<dynamic>>? outputSerializers,
}) async {
  return runZoned(
    () async {
      final protocol = operation.resolveProtocol(
        useProtocol: testCase.protocol,
      );
      final serializers = buildSerializers(
        protocol.serializers,
        outputSerializers,
      );
      final expectedOutput = serializers.deserialize(
        testCase.params,
        specifiedType: FullType(Output),
      ) as Output;

      final client = MockClient((request) async {
        return Response(
          testCase.body ?? '',
          testCase.code,
          headers: testCase.headers,
        );
      });
      // ignore: invalid_use_of_visible_for_overriding_member
      final output = await operation.send(
        client: HttpClient.v1(baseClient: client),
        createRequest: () async => _dummyHttpRequest,
        protocol: protocol,
      );

      if (output is AWSEquatable && expectedOutput is AWSEquatable) {
        expect(
          output.props.where((el) => el is! Stream),
          deepEquals(expectedOutput.props.where((el) => el is! Stream)),
        );
        final outputStreams =
            output.props.whereType<Stream<dynamic>>().toList();
        final expectedOutputStreams =
            expectedOutput.props.whereType<Stream<dynamic>>().toList();
        expect(outputStreams.length, equals(expectedOutputStreams.length));
        for (var i = 0; i < outputStreams.length; i++) {
          final outputStream = outputStreams[i];
          final expectedStream = expectedOutputStreams[i];

          Object? output = await outputStream.toList();
          if (output is List<Iterable>) {
            output = output.expand((el) => el);
          }
          Object? expected = await expectedStream.toList();
          if (expected is List<Iterable>) {
            expected = expected.expand((el) => el);
          }

          expect(output, deepEquals(expected));
        }
      } else {
        expect(output, equals(expectedOutput));
      }
    },
    zoneValues: {
      zSigningTest: true,
    },
  );
}

/// Performs an HTTP error response test for [operation] for a test case from an
/// [HttpResponseTestsTrait].
Future<void> httpErrorResponseTest<InputPayload, Input, OutputPayload, Output,
    ExpectedError extends SmithyException>({
  required HttpOperation<InputPayload, Input, OutputPayload, Output> operation,
  required HttpResponseTestCase testCase,
  List<SmithySerializer<dynamic>>? errorSerializers,
}) async {
  return runZoned(
    () async {
      final protocol = operation.resolveProtocol(
        useProtocol: testCase.protocol,
      );
      final serializers = buildSerializers(
        protocol.serializers,
        errorSerializers,
      );
      final expectedError = serializers.deserialize(
        testCase.params,
        specifiedType: FullType(ExpectedError),
      ) as ExpectedError;

      final client = MockClient((request) async {
        return Response(
          testCase.body ?? '',
          testCase.code,
          headers: testCase.headers,
        );
      });
      try {
        // ignore: invalid_use_of_visible_for_overriding_member
        await operation.send(
          client: HttpClient.v1(baseClient: client),
          createRequest: () async => _dummyHttpRequest,
          protocol: protocol,
        );
        fail('Operation should throw');
      } on Exception catch (error) {
        expect(error, isA<ExpectedError>());
        expect(error, equals(expectedError));
      }
    },
    zoneValues: {
      zSigningTest: true,
    },
  );
}
