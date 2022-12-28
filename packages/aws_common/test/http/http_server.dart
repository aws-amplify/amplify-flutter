// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:http2/multiprotocol_server.dart';
import 'package:http2/transport.dart';
import 'package:stream_channel/stream_channel.dart';

Future<void> clientHybridMain(
  StreamChannel<Object?> channel,
  FutureOr<void> Function(
    StreamChannel<Object?> channel,
    HttpRequest request,
    int port,
  )
      handleH1,
  FutureOr<void> Function(
    StreamChannel<Object?> channel,
    ServerTransportStream request,
    Stream<List<int>> body,
    Map<String, String> headers,
    int port,
  )
      handleH2,
) async {
  final queue = StreamQueue(channel.stream);
  final protocol = await queue.next as String;
  final isSecure = await queue.next as bool;

  late int port;
  late Future<void> Function() close;
  final context = SecurityContext()
    ..useCertificateChain('test/http/certificates/cert.pem')
    ..usePrivateKey('test/http/certificates/key.pem', password: 'amazon');
  if (protocol == AlpnProtocol.http2.value) {
    final server = await MultiProtocolHttpServer.bind(
      InternetAddress.loopbackIPv4,
      0,
      context,
    );
    port = server.port;
    close = server.close;
    server.startServing(
      (request) {
        request.response.headers.set('Access-Control-Allow-Origin', '*');
        handleH1(channel, request, port);
      },
      (request) async {
        request.sendHeaders([
          Header.ascii('Access-Control-Allow-Origin', '*'),
        ]);
        final headers = CaseInsensitiveMap<String>({});
        final gotHeaders = Completer<void>.sync();
        final bodyController = StreamController<List<int>>(sync: true);
        request.incomingMessages.listen(
          (message) {
            if (message is HeadersStreamMessage) {
              for (final header in message.headers) {
                headers[utf8.decode(header.name)] = utf8.decode(header.value);
              }
              gotHeaders.complete();
              return;
            }
            if (message is DataStreamMessage) {
              bodyController.add(message.bytes);
              if (message.endStream) {
                bodyController.close();
              }
            }
          },
          onError: (Object e, StackTrace st) {
            safePrint('Error in H2 stream: $e\n$st');
            bodyController.addError(e, st);
          },
          onDone: bodyController.close,
        );
        await gotHeaders.future;
        await handleH2(channel, request, bodyController.stream, headers, port);
      },
      onError: (error, st) {
        safePrint('Error in server: $error\n$st');
        channel.sink.addError(error as Object, st);
      },
    );
  } else {
    HttpServer server;
    if (isSecure) {
      server = await HttpServer.bindSecure(
        InternetAddress.loopbackIPv4,
        0,
        context,
      );
    } else {
      server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    }
    port = server.port;
    close = () => server.close(force: true);
    server.listen(
      (request) {
        request.response.headers.set('Access-Control-Allow-Origin', '*');
        handleH1(channel, request, port);
      },
      onError: (Object error, StackTrace st) {
        safePrint('Error in server: $error\n$st');
        channel.sink.addError(error, st);
      },
    );
  }

  channel.sink.add(port);
  await queue.next; // Any writes indicates that the server should exit.
  unawaited(close());
}
