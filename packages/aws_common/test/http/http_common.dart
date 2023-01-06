// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
        late String host;
        late AWSHttpClient client;
        AWSHttpClient getClient() => client;
        late StreamChannel<Object?> httpServerChannel;
        StreamChannel<Object?> getHttpServerChannel() => httpServerChannel;
        late StreamQueue<Object?> httpServerQueue;
        StreamQueue<Object?> getHttpServerQueue() => httpServerQueue;

        Uri createUri(String path) =>
            (secure ? Uri.https : Uri.http)(host, path);

        setUp(() async {
          httpServerChannel = await startServer()
            ..sink.add(protocol.value)
            ..sink.add(secure);
          httpServerQueue = StreamQueue(httpServerChannel.stream);
          host = 'localhost:${await httpServerQueue.next}';
          client = debugClient..supportedProtocols = supportedProtocols;
        });
        tearDown(() async {
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
    supportedProtocols: SupportedProtocols.http1,
    skip: skip,
  );
  innerTest(
    AlpnProtocol.http1_1,
    secure: true,
    supportedProtocols: SupportedProtocols.http1,
    skip: zIsWeb ? 'Secure web servers cannot be tested on Web' : skip,
  );
  innerTest(
    AlpnProtocol.http2,
    secure: true,
    supportedProtocols: SupportedProtocols.http2_3,
    skip: zIsWeb ? 'Secure web servers cannot be tested on Web' : skip,
  );
}
