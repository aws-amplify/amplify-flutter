// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:http2/http2.dart';
import 'package:stream_channel/stream_channel.dart';

import 'http_server.dart';

/// Starts an HTTP/1.1 server which returns "OK"
Future<void> hybridMain(StreamChannel<Object?> channel) =>
    clientHybridMain(channel, _handleH1, _handleH2);

void _handleH1(
  StreamChannel<Object?> channel,
  HttpRequest request,
  int port,
) {
  request.response
    ..add('OK'.codeUnits)
    ..close();
}

Future<void> _handleH2(
  StreamChannel<Object?> channel,
  ServerTransportStream request,
  Stream<List<int>> body,
  Map<String, String> headers,
  int port,
) async {
  throw Exception('Should not connect to HTTP/2');
}
