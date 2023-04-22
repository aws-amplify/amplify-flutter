// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:file/local.dart';
import 'package:pub_server/src/database.dart';
import 'package:pub_server/src/server.dart';
import 'package:shelf/shelf_io.dart' as io;

Future<void> main() async {
  AWSLogger().logLevel = LogLevel.verbose;
  var dataDir = const String.fromEnvironment('DATA_DIR');
  if (dataDir.isEmpty) {
    dataDir = Directory.systemTemp.createTempSync('pub-local').path;
  }
  final db = PubDatabase.prod(dataDir);
  final server = PubServer(
    db: db,
    fs: const LocalFileSystem(),
    dataDir: dataDir,
  );
  final ioServer = await io.serve(
    server.handler,
    InternetAddress.anyIPv4,
    const int.fromEnvironment('PORT', defaultValue: 0),
  );

  stdout.writeln('Listening on http://localhost:${ioServer.port}');

  await StreamGroup.merge<void>([
    ProcessSignal.sigint.watch(),
    ProcessSignal.sigterm.watch(),
  ]).first;

  stdout.writeln('Shutting down...');
  await ioServer.close(force: true);
}
