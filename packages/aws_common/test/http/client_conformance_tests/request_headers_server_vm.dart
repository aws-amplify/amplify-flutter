// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:stream_channel/stream_channel.dart';

import 'request_headers_server.dart';

/// Starts the redirect test HTTP server in the same process.
Future<StreamChannel<Object?>> startServer() async {
  final controller = StreamChannelController<Object?>(sync: true);
  unawaited(hybridMain(controller.foreign));
  return controller.local;
}
