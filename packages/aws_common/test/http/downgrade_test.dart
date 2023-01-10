// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:test/test.dart';

import 'downgrade_server_vm.dart'
    if (dart.library.html) 'downgrade_server_web.dart';
import 'http_common.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  const isSecure = !zIsWeb;

  group('AWSHttpClient', () {
    late final String host;
    late final StreamChannel<Object?> httpServerChannel;
    late final StreamQueue<Object?> httpServerQueue;

    AWSHttpRequest makeRequest() => AWSHttpRequest.get(
          (isSecure ? Uri.https : Uri.http)(host, '/'),
        );

    setUpAll(() async {
      httpServerChannel = await startServer()
        ..sink.add(AlpnProtocol.http1_1.value)
        ..sink.add(isSecure);
      httpServerQueue = StreamQueue(httpServerChannel.stream);
      host = 'localhost:${await httpServerQueue.next}';
    });

    tearDownAll(() {
      httpServerChannel.sink.add(null);
    });

    test(
      'downgrades to HTTP/1.1 when HTTP/2 is unavailable and '
      'supportedProtocols contains HTTP/1.1',
      () async {
        final client = debugClient
          ..supportedProtocols = SupportedProtocols.http1_2_3;
        expect(
          client.send(makeRequest()).response,
          completes,
          reason: 'supportedProtocols allows downgrade to HTTP/1.1',
        );
      },
    );

    test(
      'fails when HTTP/2 is unavailable and supportedProtocols '
      'does not contain HTTP/1.1',
      () async {
        final client = debugClient
          ..supportedProtocols = SupportedProtocols.http2_3;
        expect(
          client.send(makeRequest()).response,
          throwsA(isA<Exception>()),
          reason: 'supportedProtocols does not allow HTTP/1.1',
        );
      },
      skip: zIsWeb ? 'Web client cannot select protocols' : null,
    );
  });
}
