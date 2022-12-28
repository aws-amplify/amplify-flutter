// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:http2/transport.dart';
import 'package:stream_channel/stream_channel.dart';

import '../http_server.dart';

/// Starts an HTTP server that captures the content type header and request
/// body.
///
/// Channel protocol:
///    On Startup:
///     - send port
///    On Request Received:
///     - send "Content-Type" header
///     - send request body
///    When Receive Anything:
///     - exit
Future<void> hybridMain(StreamChannel<Object?> channel) => clientHybridMain(
      channel,
      _handleH1,
      _handleH2,
    );

Future<void> _handleH1(
  StreamChannel<Object?> channel,
  HttpRequest request,
  int port,
) async {
  if (request.method == 'OPTIONS') {
    // Handle a CORS preflight request:
    // https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#preflighted_requests
    request.response.headers
      ..set('Access-Control-Allow-Methods', 'POST, DELETE')
      ..set('Access-Control-Allow-Headers', 'Content-Type');
  } else {
    channel.sink.add(request.headers[HttpHeaders.contentTypeHeader]?.single);
    final serverReceivedBody = await utf8.decodeStream(request);
    channel.sink.add(serverReceivedBody);
  }
  unawaited(request.response.close());
}

Future<void> _handleH2(
  StreamChannel<Object?> channel,
  ServerTransportStream request,
  Stream<List<int>> body,
  Map<String, String> headers,
  int port,
) async {
  final method = AWSHttpMethod.fromString(headers[':method']!);
  if (method == AWSHttpMethod.options) {
    return request.sendHeaders(
      [
        Header.ascii(':status', '200'),
        Header.ascii('Access-Control-Allow-Methods', 'POST, DELETE'),
        Header.ascii('Access-Control-Allow-Headers', 'Content-Type'),
      ],
      endStream: true,
    );
  }
  channel.sink.add(headers[AWSHeaders.contentType]);
  final serverReceivedBody = utf8.decode(await body.first);
  channel.sink.add(serverReceivedBody);

  request.sendHeaders(
    [Header.ascii(':status', '200')],
    endStream: true,
  );
}
