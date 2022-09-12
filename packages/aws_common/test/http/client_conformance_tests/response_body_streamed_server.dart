// Original:
// Copyright (c) 2022, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Modifications:
// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
