// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:async/async.dart';
import 'package:pub_server/pub_server.dart';
import 'package:shelf/shelf_io.dart' as io;

/// A command for serving all packages in the Amplify Flutter repo on a local
/// pub server.
class ServeCommand extends AmplifyCommand with GlobOptions, PublishHelpers {
  ServeCommand() {
    argParser.addOption(
      'port',
      abbr: 'p',
      defaultsTo: '0',
      help: 'The port to serve on.',
    );
  }

  /// The port to serve on.
  late final int port = int.parse(argResults!['port'] as String);

  @override
  bool get force => true;

  @override
  bool get dryRun => false;

  @override
  String get description => 'Serves all packages in the Amplify Flutter repo '
      'on a local pub server.';

  @override
  String get name => 'serve';

  @override
  Future<PackageInfo?> checkPublishable(PackageInfo package) async {
    final publishTo = package.pubspecInfo.pubspec.publishTo;
    if (publishTo == 'none') {
      return null;
    }
    return package;
  }

  @override
  Future<void> run() async {
    await super.run();
    final pubServer = await io.serve(
      PubServer.prod().handler,
      InternetAddress.anyIPv4,
      port,
    );
    final pubServerUri = Uri.parse('http://localhost:${pubServer.port}');

    // Gather packages which can be published.
    final publishablePackages = repo.publishablePackages(commandPackages);

    // Publish packages to local pub server.
    final packagesNeedingPublish =
        await unpublishedPackages(publishablePackages);
    final launcherPackages = packagesNeedingPublish
        .map(
          (pkg) => LocalPackage(
            name: pkg.name,
            path: pkg.path,
            pubspec: pkg.pubspecInfo.pubspec,
          ),
        )
        .toList();
    final launcher = AmplifyPubLauncher(
      pubServerUri,
      launcherPackages,
      prePublish: (LocalPackage pkg) {
        final package = repo.allPackages[pkg.name]!;
        return prePublish(package);
      },
    );
    await launcher.run();

    logger.info('Serving packages on $pubServerUri. Press Ctrl+C to exit.');

    await StreamGroup.merge([
      ProcessSignal.sigint.watch(),
      ProcessSignal.sigterm.watch(),
    ]).first;

    await pubServer.close(force: true);
  }
}

class AmplifyPubLauncher extends PubLauncher {
  AmplifyPubLauncher(
    super.pubServerUri,
    super.packages, {
    required Future<void> Function(LocalPackage) prePublish,
  }) : _prePublish = prePublish;

  final Future<void> Function(LocalPackage) _prePublish;

  @override
  Future<void> prePublish(LocalPackage package) => _prePublish(package);
}
