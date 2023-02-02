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

final kilobyte = List.generate(1024, (index) => index);
Stream<List<int>> get largeData async* {
  // Generate 10MB of data
  for (var i = 0; i < 10 * 1024; i++) {
    yield kilobyte;
  }
}

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
    return request.response.close();
  }
  if (path == 'body') {
    request.response.headers.contentLength = 1024 * 1024 * 10;
    var done = false;
    unawaited(
      request.response.done.then((_) {
        done = true;
      }),
    );
    await for (final chunk in largeData) {
      if (done) break;
      request.response.add(chunk);
      await request.response.flush();
      await Future<void>.delayed(const Duration(milliseconds: 100));
    }
    return request.response.close();
  } else {
    request.response.add([1, 2, 3, 4, 5]);
    return request.response.close();
  }
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
    return;
  }
  request.sendHeaders([
    Header.ascii(':status', '200'),
  ]);
  if (path == 'body') {
    var done = false;
    request.onTerminated = (_) {
      done = true;
    };
    await for (final chunk in largeData) {
      if (done) break;
      request.sendData(chunk);
      await Future<void>.delayed(const Duration(milliseconds: 100));
    }
  } else {
    request.sendData([1, 2, 3, 4, 5], endStream: true);
  }
}
