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

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

abstract class HttpClient implements Client {
  factory HttpClient({AWSHttpClient? baseClient}) = HttpClient.v2;

  /// Creates an HTTP/1.1 client.
  factory HttpClient.v1({AWSHttpClient? baseClient}) =>
      _AWSHttpClientWrapper(baseClient: baseClient)
        ..baseClient.supportedProtocols = SupportedProtocols.http1;

  /// Creates an HTTP/2 client.
  factory HttpClient.v2({AWSHttpClient? baseClient}) =>
      _AWSHttpClientWrapper(baseClient: baseClient)
        ..baseClient.supportedProtocols = SupportedProtocols.http2_3;

  Future<AWSStreamedHttpResponse> send(AWSStreamedHttpRequest request);
}

class _AWSHttpClientWrapper implements HttpClient {
  _AWSHttpClientWrapper({
    AWSHttpClient? baseClient,
  }) : baseClient = baseClient ?? AWSHttpClient();

  final AWSHttpClient baseClient;

  @override
  Future<AWSStreamedHttpResponse> send(AWSStreamedHttpRequest request) async {
    final response = await request.send(baseClient).response;
    return AWSStreamedHttpResponse(
      statusCode: response.statusCode,
      headers: response.headers,
      body: response.body,
    );
  }
}

// ignore_for_file: camel_case_types
