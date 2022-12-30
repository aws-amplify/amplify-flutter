// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:http2/http2.dart';
import 'package:stream_channel/stream_channel.dart';

import '../http_server.dart';

/// Starts an HTTP server that sends a stream of integers.
///
/// Channel protocol:
///    On Startup:
///     - send port
///    When Receive Anything:
///     - close current request
///     - exit server
Future<void> hybridMain(StreamChannel<Object?> channel) =>
    clientHybridMain(channel, _handleH1, _handleH2);

Future<void> _handleH1(
  StreamChannel<Object?> channel,
  HttpRequest request,
  int port,
) async {
  await request.drain<void>();
  request.response.headers.set('Content-Type', 'text/plain');
  for (var i = 0; i <= 1000; i++) {
    request.response.write('$i\n');
    await request.response.flush();
    // Let the event loop run.
    await Future<void>.delayed(Duration.zero);
  }
  await request.response.close();
}

Future<void> _handleH2(
  StreamChannel<Object?> channel,
  ServerTransportStream request,
  Stream<List<int>> body,
  Map<String, String> headers,
  int port,
) async {
  request.sendHeaders([
    Header.ascii('Content-Type', 'text/plain'),
    Header.ascii(':status', '200'),
  ]);
  for (var i = 0; i <= 1000; i++) {
    request.sendData('$i\n'.codeUnits);
    // Let the event loop run.
    await Future<void>.delayed(Duration.zero);
  }
  request.sendData([], endStream: true);
}
