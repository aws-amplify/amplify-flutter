// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http2/http2.dart';
import 'package:stream_channel/stream_channel.dart';

import '../http_server.dart';

/// Starts an HTTP server that absorbs a request stream of integers and
/// signals the client to quit after 1000 have been received.
///
/// Channel protocol:
///    On Startup:
///     - send port
///    On Integer == 1000 received:
///     - send 1000
///    When Receive Anything:
///     - exit
Future<void> hybridMain(StreamChannel<Object?> channel) =>
    clientHybridMain(channel, _handleH1, _handleH2);

Future<void> _handleH1(
  StreamChannel<Object?> channel,
  HttpRequest request,
  int port,
) async {
  await const LineSplitter()
      .bind(const Utf8Decoder().bind(request))
      .forEach((value) {
    final lastReceived = int.parse(value.trim());
    if (lastReceived == 1000) {
      channel.sink.add(lastReceived);
    }
  });
  unawaited(request.response.close());
}

Future<void> _handleH2(
  StreamChannel<Object?> channel,
  ServerTransportStream request,
  Stream<List<int>> body,
  Map<String, String> headers,
  int port,
) async {
  await for (final value in const Utf8Decoder().bind(body)) {
    final lastReceived = int.parse(value.trim());
    if (lastReceived == 1000) {
      channel.sink.add(lastReceived);
      break;
    }
  }
  request.sendHeaders(
    [Header.ascii(':status', '200')],
    endStream: true,
  );
}
