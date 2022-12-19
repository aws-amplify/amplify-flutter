// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:stream_channel/stream_channel.dart';
import 'package:test/test.dart';

/// Starts the redirect test HTTP server out-of-process.
Future<StreamChannel<Object?>> startServer() async =>
    spawnHybridUri('downgrade_server.dart');
