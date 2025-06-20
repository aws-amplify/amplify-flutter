// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
