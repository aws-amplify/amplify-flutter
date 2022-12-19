// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http2/http2.dart';
import 'package:stream_channel/stream_channel.dart';

import 'http_server.dart';

/// Pauses at one of a predetermined set of locations so that the client can
/// cancel the request.
Future<void> hybridMain(StreamChannel<Object?> channel) =>
    clientHybridMain(channel, _handleH1, _handleH2);

Future<void> _handleH1(
  StreamChannel<Object?> channel,
  HttpRequest request,
  int port,
) async {
  final path = request.uri.pathSegments.singleOrNull ?? '';
  if (path.isEmpty) {
    request.response.contentLength = 0;
    return request.response.close();
  }
  if (path == 'headers') {
    await Future<void>.delayed(const Duration(milliseconds: 100));
    return request.response.close();
  }
  request.response
    ..contentLength = -1
    ..add([1, 2, 3, 4, 5]);
  if (path == 'body') {
    await Future<void>.delayed(const Duration(milliseconds: 100));
  }
  return request.response.close();
}

Future<void> _handleH2(
  StreamChannel<Object?> channel,
  ServerTransportStream request,
  Stream<List<int>> body,
  Map<String, String> headers,
  int port,
) async {
  final path = Uri.parse(headers[':path']!).pathSegments.singleOrNull ?? '';
  if (path.isEmpty) {
    return request.sendHeaders(
      [Header.ascii(':status', '200')],
      endStream: true,
    );
  }
  if (path == 'headers') {
    return channel.sink.done;
  }
  request.sendHeaders([Header.ascii(':status', '200')]);
  if (path == 'body') {
    request.sendData([1, 2, 3, 4, 5]);
    return channel.sink.done;
  } else {
    request.sendData([1, 2, 3, 4, 5], endStream: true);
  }
}
