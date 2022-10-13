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
import 'dart:convert';

import 'package:async/async.dart';
import 'package:aws_signature_v4/src/signer/aws_signer.dart' show zSigningTest;
import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_test/src/http/serializers.dart';
import 'package:smithy_test/src/xml/equatable.dart';
import 'package:test/test.dart';
import 'package:xml/xml.dart';

/// Performs an HTTP request test for [operation] for a test case from an
/// [HttpRequestTestsTrait].
Future<void> httpRequestTest<InputPayload, Input, OutputPayload, Output>({
  required HttpOperation<InputPayload, Input, OutputPayload, Output> operation,
  required HttpRequestTestCase testCase,
  List<SmithySerializer<dynamic>>? inputSerializers,
}) async {
  return runZoned(
    () async {
      final protocol = operation.resolveProtocol(
        useProtocol: testCase.protocol,
      );
      final serializers = buildSerializers(
        protocol.serializers,
        inputSerializers,
      );
      final input = serializers.deserialize(
        testCase.params,
        specifiedType: FullType(Input),
      ) as Input;
      final request = await operation.createRequest(
        operation.buildRequest(input),
        protocol,
        input,
      );

      // The request-target of the HTTP request, not including the query string
      // (for example, "/foo/bar").
      expect(request.uri.path, equals(testCase.uri));

      // The expected host present in the `Host` header of the request, not
      // including the path or scheme (for example, "prefix.example.com").
      // If no resolvedHost is defined, then no assertions are made about
      // the resolved host for the request.
      //
      // This can differ from the host provided to the client if the operation
      // has a member with the endpoint trait.
      if (testCase.resolvedHost != null) {
        expect(request.headers['Host'], equals(testCase.resolvedHost));
      }

      // Each element in the list is a query string key value pair that
      // starts with the query string parameter name optionally followed by
      // "=", optionally followed by the query string parameter value.
      //
      // For example, "foo=bar", "foo=", and "foo" are all valid values.
      for (final queryParam in testCase.queryParams) {
        final parts = queryParam.split('=');
        final key = Uri.decodeQueryComponent(parts.first);
        final value = parts.length == 1
            ? ''
            : Uri.decodeQueryComponent(parts.sublist(1).join(''));

        // This kind of list is used instead of a map so that query string
        // parameter values for lists can be represented using repeated
        // key-value pairs.
        final paramValues = request.uri.queryParametersAll[key];
        expect(paramValues, contains(value));
      }

      // A list of query string parameter names that must not appear in the
      // serialized HTTP request.
      for (final queryParamName in testCase.forbidQueryParams) {
        // Each value MUST appear in the format in which it is sent over the
        // wire; if a key needs to be percent-encoded, then it MUST appear
        // percent-encoded in this list.
        expect(
          request.uri.queryParameters.containsKey(queryParamName),
          isFalse,
        );
      }

      // A list of query string parameter names that MUST appear in the
      // serialized request URI, but no assertion is made on the value.
      for (final queryParamName in testCase.requireQueryParams) {
        // Each value MUST appear in the format in which it is sent over the
        // wire; if a key needs to be percent-encoded, then it MUST appear
        // percent-encoded in this list.
        expect(
          request.uri.queryParameters,
          contains(queryParamName),
        );
      }

      // Each key represents a header field name and each value represents
      // the expected header value. An HTTP request is not in compliance with
      // the protocol if any listed header is missing from the serialized
      // request or if the expected header value differs from the serialized
      // request value.
      for (final headerEntry in testCase.headers.entries) {
        expect(
          request.headers,
          containsPair(headerEntry.key, headerEntry.value),
        );
      }

      // A list of header field names that must not appear in the serialized
      // HTTP request.
      for (final headerName in testCase.forbidHeaders) {
        expect(
          request.headers.containsKey(headerName),
          isFalse,
        );
      }

      // A list of header field names that must appear in the serialized HTTP
      // message, but no assertion is made on the value. Headers listed in
      // headers do not need to appear in this list.
      for (final headerName in testCase.requireHeaders) {
        expect(
          request.headers,
          contains(headerName),
        );
      }

      // The expected HTTP message body. If no request body is defined, then no
      // assertions are made about the body of the message. Because the body
      // parameter is a string, binary data MUST be represented in body by
      // base64 encoding the data (for example, use "Zm9vCg==" and not "foo").
      final expectedBody = testCase.body;
      if (expectedBody != null) {
        final contentType = testCase.bodyMediaType;
        final bodyBytes = await collectBytes(request.body);
        void expectBytes(List<int> expectedBodyBytes) => expect(
              bodyBytes,
              orderedEquals(expectedBodyBytes),
              reason:
                  'Expected: ${utf8.decode(expectedBodyBytes, allowMalformed: true)}, '
                  'Got: ${utf8.decode(bodyBytes, allowMalformed: true)}',
            );

        switch (contentType) {
          case 'application/octet-stream':
            List<int> bytes;
            try {
              bytes = base64Decode(expectedBody);
            } on FormatException {
              bytes = utf8.encode(expectedBody);
            }
            expectBytes(bytes);
            break;
          case 'application/json':
            final expectedJsonBody = jsonDecode(expectedBody);
            Object? jsonBody;
            if (bodyBytes.isEmpty) {
              jsonBody = '';
            } else {
              try {
                jsonBody = jsonDecode(utf8.decode(bodyBytes));
              } on FormatException {
                jsonBody = utf8.decode(bodyBytes);
              }
            }
            expect(jsonBody, equals(expectedJsonBody));
            break;
          case 'application/xml':
            final expectedXmlBody = expectedBody.isEmpty
                ? const <Object?>[]
                : XmlDocument.parse(expectedBody).toEquatable();
            final body = utf8.decode(bodyBytes);
            final xmlBody = body.isEmpty
                ? const <Object?>[]
                : XmlDocument.parse(body).toEquatable();
            expect(xmlBody, orderedEquals(expectedXmlBody));
            break;
          default:
            expectBytes(expectedBody.codeUnits);
            break;
        }
      }
    },
    zoneValues: {
      zSigningTest: true,
      zSmithyHttpTest: true,
    },
  );
}
