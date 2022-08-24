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

import 'dart:convert';

import 'package:aws_common/aws_common.dart';

class LoggingClient extends AWSBaseHttpClient {
  static final _logger = AWSLogger().createChild('HTTP');

  Future<void> _logRequest(AWSBaseHttpRequest request) async {
    final sb = StringBuffer()
      ..write(request.method.value)
      ..write(' ')
      ..writeln(request.uri)
      ..write(await utf8.decodeStream(request.split()));
    _logger.debug(sb.toString());
  }

  Future<void> _logResponse(AWSBaseHttpResponse response) async {
    final sb = StringBuffer()
      ..writeln(response.statusCode)
      ..write(await utf8.decodeStream(response.split()));
    _logger.debug(sb.toString());
  }

  @override
  Future<AWSBaseHttpRequest> transformRequest(
    AWSBaseHttpRequest request,
  ) async {
    await _logRequest(request);
    return request;
  }

  @override
  Future<AWSBaseHttpResponse> transformResponse(
    AWSBaseHttpResponse response,
  ) async {
    await _logResponse(response);
    return response;
  }
}

// Prints:
// ```
// DEBUG | HTTP       | POST https://httpstat.us/200?
// Hello, world
// DEBUG | HTTP       | 200
// 200 OK
// ```
Future<void> main() async {
  AWSLogger().logLevel = LogLevel.debug;

  final client = LoggingClient();
  final request = AWSHttpRequest.post(
    Uri.parse('https://httpstat.us/200'),
    body: 'Hello, world'.codeUnits,
  );
  await client.send(request).response;
  await client.close();
}
