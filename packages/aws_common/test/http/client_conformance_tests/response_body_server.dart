// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:http2/http2.dart';
import 'package:stream_channel/stream_channel.dart';

import '../http_server.dart';

/// Starts an HTTP server that responds with "Hello World!"
///
/// Channel protocol:
///    On Startup:
///     - send port
///    When Receive Anything:
///     - exit
Future<void> hybridMain(StreamChannel<Object?> channel) =>
    clientHybridMain(channel, _handleH1, _handleH2);

const message = 'Hello World!';

Future<void> _handleH1(
  StreamChannel<Object?> channel,
  HttpRequest request,
  int port,
) async {
  await request.drain<void>();
  request.response.contentLength = message.codeUnits.length;
  request.response.headers.set('Content-Type', 'text/plain');
  request.response.write(message);
  await request.response.close();
}

Future<void> _handleH2(
  StreamChannel<Object?> channel,
  ServerTransportStream request,
  Stream<List<int>> body,
  Map<String, String> headers,
  int port,
) async {
  request
    ..sendHeaders([
      Header.ascii(':status', '200'),
      Header.ascii('Content-Length', '${message.codeUnits.length}'),
      Header.ascii('Content-Type', 'text/plain'),
    ])
    ..sendData(message.codeUnits, endStream: true);
}
