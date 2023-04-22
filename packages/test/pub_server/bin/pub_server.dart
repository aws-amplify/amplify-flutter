// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:args/args.dart';
import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:pub_server/src/database.dart';
import 'package:pub_server/src/launcher.dart';
import 'package:pub_server/src/server.dart';
import 'package:shelf/shelf_io.dart' as io;

Future<void> main(List<String> args) async {
  final argParser = ArgParser()
    ..addOption(
      'data-dir',
      abbr: 'd',
      help: 'The directory to store the database and uploads in.',
    )
    ..addFlag(
      'launch',
      help:
          'Seeds the pub server. Must specify with --local-path or --git-url.',
      defaultsTo: false,
    )
    ..addOption(
      'local-path',
      help: 'Seeds the pub server with the given path.',
    )
    ..addOption(
      'git-url',
      help: 'Seeds the pub server with the given git repository.',
    )
    ..addOption(
      'git-ref',
      help: 'The git ref to use when launching from a git repository.',
      defaultsTo: 'main',
    )
    ..addFlag(
      'verbose',
      abbr: 'v',
      help: 'Enables verbose logging.',
      negatable: false,
      defaultsTo: false,
    );

  final argResults = argParser.parse(args);

  final verbose = argResults['verbose'] as bool;
  AWSLogger().logLevel = verbose ? LogLevel.verbose : LogLevel.info;

  final shouldLaunch = argResults['launch'] as bool;
  final localPath = argResults['local-path'] as String?;
  final gitUrl = argResults['git-url'] as String?;
  final gitRef = argResults['git-ref'] as String?;

  if (shouldLaunch) {
    if (localPath == null && gitUrl == null) {
      stderr.writeln(
        'Must specify --local-path or --git-url when --launch is set.\n'
        '${argParser.usage}',
      );
      exit(1);
    }
  }

  var dataDir = argResults['data-dir'] as String? ??
      const String.fromEnvironment('DATA_DIR');
  if (dataDir.isEmpty) {
    dataDir = Directory.systemTemp.createTempSync('pub-local').path;
  }
  final db = PubDatabase.prod(dataDir);
  final server = PubServer(
    db: db,
    dataDir: dataDir,
  );
  final ioServer = await io.serve(
    server.handler,
    InternetAddress.anyIPv4,
    const int.fromEnvironment('PORT', defaultValue: 0),
  );
  final serverAddress = Uri.parse('http://localhost:${ioServer.port}');

  stdout.writeln('Listening on $serverAddress');

  if (shouldLaunch) {
    final PubLauncher launcher;
    if (localPath != null) {
      launcher = await PubLauncher.local(
        pubServer: serverAddress,
        path: localPath,
      );
    } else {
      launcher = await PubLauncher.git(
        pubServer: serverAddress,
        gitUrl: gitUrl!,
        gitRef: gitRef,
      );
    }
    await launcher.run();
  }

  await StreamGroup.merge<void>([
    ProcessSignal.sigint.watch(),
    ProcessSignal.sigterm.watch(),
  ]).first;

  stdout.writeln('Shutting down...');
  await ioServer.close(force: true);
}
