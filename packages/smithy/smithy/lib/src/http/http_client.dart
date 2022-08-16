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
import 'package:http/http.dart' as http;
import 'package:smithy/smithy.dart';

abstract class HttpClient implements Client {
  /// Creates an HTTP/1.1 client.
  factory HttpClient.v1({http.Client? baseClient}) = _Http1_1Client;

  Future<AWSStreamedHttpResponse> send(AWSStreamedHttpRequest request);

  /// The ALPN protocol for this client.
  AlpnProtocol get protocol;
}

class _Http1_1Client implements HttpClient {
  _Http1_1Client({
    http.Client? baseClient,
  }) : baseClient = baseClient ?? http.Client();

  final http.Client baseClient;

  @override
  Future<AWSStreamedHttpResponse> send(AWSStreamedHttpRequest request) async {
    final response = await request.send(baseClient);
    return AWSStreamedHttpResponse(
      statusCode: response.statusCode,
      headers: response.headers,
      body: response.body,
    );
  }

  @override
  AlpnProtocol get protocol => AlpnProtocol.http1_1;
}

// ignore_for_file: camel_case_types
