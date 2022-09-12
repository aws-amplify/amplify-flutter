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

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:test/test.dart';

AWSHttpClient get debugClient {
  final client = AWSHttpClient()..onBadCertificate = (_, __, ___) => true;
  addTearDown(client.close);
  return client;
}

void clientTest(
  String testName,
  Future<StreamChannel<Object?>> Function() startServer,
  void Function(
    AWSHttpClient Function() getClient,
    StreamQueue<Object?> Function() getHttpServerQueue,
    StreamChannel<Object?> Function() getHttpServerChannel,
    Uri Function(String) createUri,
  )
      testCases, {
  Object? skip,
}) {
  AWSLogger().logLevel = LogLevel.verbose;

  void innerTest(
    AlpnProtocol protocol, {
    required SupportedProtocols supportedProtocols,
    required bool secure,
    Object? skip,
  }) {
    group(testName, skip: skip, () {
      group('${protocol.value} (secure: $secure)', () {
        late final String host;
        late final AWSHttpClient client;
        AWSHttpClient getClient() => client;
        late final StreamChannel<Object?> httpServerChannel;
        StreamChannel<Object?> getHttpServerChannel() => httpServerChannel;
        late final StreamQueue<Object?> httpServerQueue;
        StreamQueue<Object?> getHttpServerQueue() => httpServerQueue;

        Uri createUri(String path) =>
            (secure ? Uri.https : Uri.http)(host, path);

        setUpAll(() async {
          httpServerChannel = await startServer()
            ..sink.add(protocol.value)
            ..sink.add(secure);
          httpServerQueue = StreamQueue(httpServerChannel.stream);
          host = 'localhost:${await httpServerQueue.next}';
          client = debugClient..supportedProtocols = supportedProtocols;
        });
        tearDownAll(() async {
          httpServerChannel.sink.add(null);
          // await Future<void>.delayed(const Duration(seconds: 30));
        });

        testCases(
          getClient,
          getHttpServerQueue,
          getHttpServerChannel,
          createUri,
        );
      });
    });
  }

  innerTest(
    AlpnProtocol.http1_1,
    secure: false,
    supportedProtocols: SupportedProtocols.http1_2_3,
    skip: skip,
  );
  innerTest(
    AlpnProtocol.http1_1,
    secure: true,
    supportedProtocols: SupportedProtocols.http1_2_3,
    skip: zIsWeb ? 'Secure web servers cannot be tested on Web' : skip,
  );
  innerTest(
    AlpnProtocol.http2,
    secure: true,
    supportedProtocols: SupportedProtocols.http2_3,
    skip: zIsWeb ? 'Secure web servers cannot be tested on Web' : skip,
  );
}
