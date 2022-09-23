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
import 'package:test/test.dart';

const _requestHeaderKey = 'request-header-key';
const _requestHeaderValue = 'request-header-value-123';
const _responseHeaderKey = 'response-header-key';
const _responseHeaderValue = 'header-value-456';
final _exampleUri = Uri.parse('https://example.com');

/// Mock client to test successfully transforming request/response.
class SuccessfulTransformClient extends AWSBaseHttpClient {
  SuccessfulTransformClient({
    required this.baseClient,
  });

  @override
  final AWSHttpClient baseClient;

  @override
  Future<AWSBaseHttpRequest> transformRequest(
    AWSBaseHttpRequest request,
  ) async {
    request.headers[_requestHeaderKey] = _requestHeaderValue;
    return request;
  }

  @override
  Future<AWSBaseHttpResponse> transformResponse(
    AWSBaseHttpResponse response,
  ) async {
    final headers = {_responseHeaderKey: _responseHeaderValue};
    return AWSHttpResponse(statusCode: response.statusCode, headers: headers);
  }
}

class TransformRequestException implements Exception {}

class TransformResponseException implements Exception {}

/// Mock Client to test throwing exception during transformRequest.
class UnsuccessfulRequestTransformClient extends SuccessfulTransformClient {
  UnsuccessfulRequestTransformClient({required super.baseClient});

  @override
  // ignore: must_call_super
  Future<AWSBaseHttpRequest> transformRequest(
    AWSBaseHttpRequest request,
  ) async {
    throw TransformRequestException();
  }
}

/// Mock Client to test throwing exception during transformResponse.
class UnsuccessfulResponseTransformClient extends SuccessfulTransformClient {
  UnsuccessfulResponseTransformClient({required super.baseClient});

  @override
  Future<AWSBaseHttpResponse> transformResponse(
    AWSBaseHttpResponse response,
  ) async {
    throw TransformResponseException();
  }
}

void main() {
  final mockBaseClient = MockAWSHttpClient((request) async {
    expect(request.headers[_requestHeaderKey], _requestHeaderValue);
    return AWSHttpResponse(statusCode: 200);
  });

  group('AWSHttpClient', () {
    test(
        'transformRequest/Response will add a header to a request and response',
        () async {
      final transformerClient = SuccessfulTransformClient(
        baseClient: mockBaseClient,
      );
      final response = await transformerClient
          .send(AWSHttpRequest.post(_exampleUri))
          .response;
      expect(response.headers[_responseHeaderKey], _responseHeaderValue);
    });

    test(
        'exception thrown in transformRequest can be caught in response future',
        () async {
      final transformerClient = UnsuccessfulRequestTransformClient(
        baseClient: mockBaseClient,
      );
      await expectLater(
        transformerClient.send(AWSHttpRequest.post(_exampleUri)).response,
        throwsA(isA<TransformRequestException>()),
      );
    });

    test(
        'exception thrown in transformResponse can be caught in response future',
        () async {
      final transformerClient = UnsuccessfulResponseTransformClient(
        baseClient: mockBaseClient,
      );
      await expectLater(
        transformerClient.send(AWSHttpRequest.post(_exampleUri)).response,
        throwsA(isA<TransformResponseException>()),
      );
    });
  });
}
