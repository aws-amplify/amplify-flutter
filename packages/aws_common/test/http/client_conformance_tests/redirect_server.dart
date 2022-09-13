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

import 'package:aws_common/aws_common.dart';
import 'package:http2/http2.dart';
import 'package:stream_channel/stream_channel.dart';

import '../http_server.dart';

/// Starts an HTTP server and sends the port back on the given channel.
///
/// Quits when anything is received on the channel.
///
///        URI |  Redirects TO
/// ===========|==============
/// ".../loop" |    ".../loop"
///   ".../10" |       ".../9"
///    ".../9" |       ".../8"
///        ... |           ...
///    ".../1" |           "/"
///        "/" |  <200 return>
Future<void> hybridMain(StreamChannel<Object?> channel) =>
    clientHybridMain(channel, _handleH1, _handleH2);

void _handleH1(
  StreamChannel<Object?> channel,
  HttpRequest request,
  int port,
) {
  final requestedScheme = request.uri.scheme;
  if (request.requestedUri.pathSegments.isEmpty) {
    request.response.close();
  } else if (request.requestedUri.pathSegments.last == 'loop') {
    request.response.redirect(
      Uri(
        scheme: requestedScheme,
        host: 'localhost',
        port: port,
        path: '/loop',
      ),
    );
  } else {
    final n = int.parse(request.requestedUri.pathSegments.last);
    final nextPath = n - 1 == 0 ? '' : '${n - 1}';
    request.response.redirect(
      Uri(
        scheme: requestedScheme,
        host: 'localhost',
        port: port,
        path: '/$nextPath',
      ),
    );
  }
}

Future<void> _handleH2(
  StreamChannel<Object?> channel,
  ServerTransportStream request,
  Stream<List<int>> body,
  Map<String, String> headers,
  int port,
) async {
  final method = AWSHttpMethod.fromString(headers[':method']!);
  final path = Uri.parse(headers[':path']!);
  if (method == AWSHttpMethod.options || path.pathSegments.isEmpty) {
    request.sendHeaders(
      [Header.ascii(':status', '200')],
      endStream: true,
    );
    return;
  }
  if (path.pathSegments.last == 'loop') {
    request.sendHeaders(
      [
        Header.ascii(':status', '302'),
        Header.ascii(
          'Location',
          Uri.http('localhost:$port', '/loop').toString(),
        ),
      ],
      endStream: true,
    );
  } else {
    final n = int.parse(path.pathSegments.last);
    final nextPath = n - 1 == 0 ? '' : '${n - 1}';
    request.sendHeaders(
      [
        Header.ascii(':status', '302'),
        Header.ascii(
          'Location',
          Uri.http('localhost:$port', '/$nextPath').toString(),
        ),
      ],
      endStream: true,
    );
  }
}
