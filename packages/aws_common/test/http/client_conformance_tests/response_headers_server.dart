// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:http2/http2.dart';
import 'package:stream_channel/stream_channel.dart';

import '../http_server.dart';

/// Starts an HTTP server that returns custom headers.
///
/// Channel protocol:
///    On Startup:
///     - send port
///    On Request Received:
///     - load response header map from channel
///     - exit
Future<void> hybridMain(StreamChannel<Object?> channel) =>
    clientHybridMain(channel, _handleH1, _handleH2);

Future<void> _handleH1(
  StreamChannel<Object?> channel,
  HttpRequest request,
  int port,
) async {
  request.response.headers.set('Access-Control-Allow-Headers', '*');
  request.response.headers.set('Access-Control-Expose-Headers', '*');
  request.headers.forEach((name, values) {
    request.response.headers.set(
      name,
      values.join(', '),
      preserveHeaderCase: true,
    );
  });
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
    Header.ascii('Access-Control-Allow-Headers', '*'),
    Header.ascii('Access-Control-Expose-Headers', '*'),
  ]);
  headers.forEach((key, value) {
    request.sendHeaders([
      Header.ascii(key, value),
    ]);
  });
  request.sendHeaders(
    [Header.ascii(':status', '200')],
    endStream: true,
  );
}
