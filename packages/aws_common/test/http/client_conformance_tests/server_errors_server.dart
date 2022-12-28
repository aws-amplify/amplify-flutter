// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:http2/http2.dart';
import 'package:stream_channel/stream_channel.dart';

import '../http_server.dart';

/// Starts an HTTP server that disconnects before sending it's headers.
///
/// Channel protocol:
///    On Startup:
///     - send port
///    When Receive Anything:
///     - exit
Future<void> hybridMain(StreamChannel<Object?> channel) =>
    clientHybridMain(channel, _handleH1, _handleH2);

Future<void> _handleH1(
  StreamChannel<Object?> channel,
  HttpRequest request,
  int port,
) async {
  await request.drain<void>();
  final socket = await request.response.detachSocket(writeHeaders: false);
  socket.destroy();
}

Future<void> _handleH2(
  StreamChannel<Object?> channel,
  ServerTransportStream request,
  Stream<List<int>> body,
  Map<String, String> headers,
  int port,
) async {
  await body.drain<void>();
  request.terminate();
}
