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
