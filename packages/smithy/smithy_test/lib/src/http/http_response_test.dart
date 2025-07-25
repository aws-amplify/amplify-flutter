// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_internal_member

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/testing.dart';
import 'package:aws_signature_v4/src/signer/aws_signer.dart' show zSigningTest;
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_test/smithy_test.dart';

AWSStreamedHttpRequest get _dummyHttpRequest =>
    AWSStreamedHttpRequest.get(Uri());

/// Performs an HTTP response test for [operation] for a test case from an
/// [HttpResponseTestsTrait].
Future<void> httpResponseTest<InputPayload, Input, OutputPayload, Output>({
  required HttpOperation<InputPayload, Input, OutputPayload, Output> operation,
  required HttpResponseTestCase testCase,
  List<SmithySerializer<dynamic>>? outputSerializers,
}) async {
  return runZoned(() async {
    final protocol = operation.resolveProtocol(useProtocol: testCase.protocol);
    final serializers = buildSerializers(
      protocol.serializers,
      outputSerializers,
    );
    final expectedOutput =
        serializers.deserialize(
              testCase.params,
              specifiedType: FullType(Output),
            )
            as Output;

    final client = MockAWSHttpClient((request, _) async {
      return AWSHttpResponse(
        statusCode: testCase.code,
        headers: testCase.headers,
        body: (testCase.body ?? '').codeUnits,
      );
    });
    final output = await operation
        // ignore: invalid_use_of_visible_for_overriding_member
        .send(
          client: client,
          createRequest: () => SmithyHttpRequest(
            _dummyHttpRequest,
            requestInterceptors: protocol.requestInterceptors,
            responseInterceptors: protocol.responseInterceptors,
          ),
          protocol: protocol,
        )
        .result;

    if (output is AWSEquatable && expectedOutput is AWSEquatable) {
      expect(
        output.props.where((el) => el is! Stream),
        deepEquals(expectedOutput.props.where((el) => el is! Stream)),
      );
      final outputStreams = output.props.whereType<Stream<dynamic>>().toList();
      final expectedOutputStreams = expectedOutput.props
          .whereType<Stream<dynamic>>()
          .toList();
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
  }, zoneValues: {zSigningTest: true});
}

/// Performs an HTTP error response test for [operation] for a test case from an
/// [HttpResponseTestsTrait].
Future<void> httpErrorResponseTest<
  InputPayload,
  Input,
  OutputPayload,
  Output,
  ExpectedError extends SmithyException
>({
  required HttpOperation<InputPayload, Input, OutputPayload, Output> operation,
  required HttpResponseTestCase testCase,
  List<SmithySerializer<dynamic>>? errorSerializers,
}) async {
  return runZoned(() async {
    final protocol = operation.resolveProtocol(useProtocol: testCase.protocol);
    final serializers = buildSerializers(
      protocol.serializers,
      errorSerializers,
    );
    final expectedError =
        serializers.deserialize(
              testCase.params,
              specifiedType: FullType(ExpectedError),
            )
            as ExpectedError;

    final client = MockAWSHttpClient((request, _) async {
      return AWSHttpResponse(
        statusCode: testCase.code,
        headers: testCase.headers,
        body: (testCase.body ?? '').codeUnits,
      );
    });
    try {
      await operation
          // ignore: invalid_use_of_visible_for_overriding_member
          .send(
            client: client,
            createRequest: () => SmithyHttpRequest(
              _dummyHttpRequest,
              requestInterceptors: protocol.requestInterceptors,
              responseInterceptors: protocol.responseInterceptors,
            ),
            protocol: protocol,
          )
          .result;
      fail('Operation should throw');
    } on Exception catch (error) {
      expect(error, isA<ExpectedError>());
      expect(error, equals(expectedError));
    }
  }, zoneValues: {zSigningTest: true});
}
