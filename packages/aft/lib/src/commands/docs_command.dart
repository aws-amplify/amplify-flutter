// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/options/fail_fast_option.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:mustache_template/mustache_template.dart';
import 'package:path/path.dart' as p;
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_static/shelf_static.dart';

/// Command to build and deploy API documentation.
class DocsCommand extends AmplifyCommand {
  DocsCommand() {
    addSubcommand(_DocsBuildSubcommand());
    addSubcommand(_DocsServeSubcommand());
  }

  @override
  String get name => 'docs';

  @override
  String get description => 'Build and deploy API documentation';
}

abstract class _DocsSubcommand extends AmplifyCommand
    with FailFastOption, GlobOptions {
  late final Logger mLogger =
      Logger(level: verbose ? Level.verbose : Level.info);

  @override
  PackageSelector get basePackageSelector {
    final currentPackage = workingDirectory.pubspec;
    if (currentPackage != null) {
      return const PackageSelector.current();
    }
    return const PackageSelector.development();
  }

  /// Runs `dart doc` for [package] and returns the output directory.
  Future<Directory> _dartDoc(PackageInfo package) async {
    final output = await Directory.systemTemp.createTemp('amplify_docs_');
    final process = await Process.start(
      'dart',
      ['doc', '--output', output.path],
      mode: verbose ? ProcessStartMode.inheritStdio : ProcessStartMode.normal,
      workingDirectory: package.path,
      environment: environment,
      runInShell: true,
    );
    final error = StringBuffer();
    process
      ..captureStdout(sink: error.write)
      ..captureStderr(sink: error.write);
    if (await process.exitCode != 0) {
      throw Exception('`dart doc` failed for ${package.name}:\n$error');
    }
    return output;
  }

  /// Recursively copies the contents of the [from] directory into [to].
  Future<void> _copyDir(Directory from, Directory to) async {
    if (await to.exists()) {
      await to.delete(recursive: true);
    }
    final files = from.list(recursive: true);
    await for (final fromFile in files) {
      if (fromFile is! File) {
        continue;
      }
      final toFile = File(
        p.join(
          to.path,
          p.relative(fromFile.path, from: from.path),
        ),
      );
      await toFile.create(recursive: true);
      await fromFile.copy(toFile.path);
    }
  }

  /// Runs pre-build commands if a package uses `code_excerpter` to
  /// separate code snippets from docs.
  Future<void> _prebuildDocs(
    PackageInfo package, {
    Progress? progress,
  }) async {
    final log = progress?.update ?? mLogger.detail;
    final docsPackageDir = Directory(p.join(package.path, 'doc'));
    final docsPackage = PackageInfo.fromDirectory(docsPackageDir);
    if (docsPackage == null) {
      return;
    }

    // Re-generate code snippet yaml
    log('Re-generating code snippets for ${package.name}...');
    await pubAction(package: docsPackage, arguments: ['get']);
    await runBuildRunner(
      docsPackage,
      logger: logger,
      verbose: verbose,
      force: true,
    );

    // Update docs with code snippet yaml
    log('Injecting updated code snippets for ${package.name}...');
    await pubAction(package: package, arguments: ['get']);
    await pubAction(
      package: package,
      arguments: [
        'run',
        'code_excerpt_updater',
        '--fragment-dir-path=doc/.dart_tool/build/generated',
        '--yaml',
        '--write-in-place',
        'lib'
      ],
    );
  }

  /// Compiles docs for [package] into [outputDir].
  Future<Directory> _buildDocs(
    PackageInfo package,
    String outputDir, {
    Progress? progress,
  }) async {
    progress ??= mLogger.progress('Pre-building docs for ${package.name}');
    await _prebuildDocs(package, progress: progress);
    progress.update('Running `dart doc` for ${package.name}');
    final buildDir = await _dartDoc(package);
    final packageOutputDir = Directory(
      p.join(outputDir, package.name),
    );
    progress.update('Copying docs to root dir');
    await _copyDir(buildDir, packageOutputDir);
    progress.complete('Built docs for ${package.name}!');
    return packageOutputDir;
  }

  /// Compiles docs for all command packages into [outputDir].
  Future<void> _buildAllDocs(String outputDir) async {
    if (commandPackages.isEmpty) {
      exitError('No packages selected');
    }
    final buildOutputs =
        FutureGroup<(PackageInfo, Progress, Result<Directory>)>();
    for (final package in commandPackages.values) {
      final progress = mLogger.progress('Building docs for ${package.name}');
      final buildFuture = _buildDocs(package, outputDir, progress: progress);
      buildOutputs.add(
        failFast
            ? buildFuture.then((res) => (package, progress, ValueResult(res)))
            : Result.capture(buildFuture)
                .then((res) => (package, progress, res)),
      );
    }
    buildOutputs.close();

    final packageOutputs = <Map<String, Object?>>[];
    for (final (package, progress, buildRes) in await buildOutputs.future) {
      switch (buildRes) {
        case ValueResult(value: final buildDir):
          packageOutputs.add({
            'name': package.name,
            'path': p.relative(package.path, from: rootDir.path),
            'link': p.relative(buildDir.path, from: outputDir),
          });
        case ErrorResult(:final error, :final stackTrace):
          progress.fail('Error building docs for ${package.name}');
          mLogger
            ..err(error.toString())
            ..err(stackTrace.toString());
      }
    }
    final renderedHtml = Template(_indexTmpl).renderString({
      'packages': packageOutputs,
    });
    final indexFile = File(p.join(outputDir, 'index.html'));
    await indexFile.create();
    await indexFile.writeAsString(renderedHtml);
    mLogger.success('Successfully built docs');
  }
}

class _DocsBuildSubcommand extends _DocsSubcommand {
  _DocsBuildSubcommand() {
    argParser.addOption(
      'output',
      abbr: 'o',
      defaultsTo: 'doc/api',
      help: 'Output directory for generated HTML',
    );
  }

  @override
  String get name => 'build';

  @override
  String get description => 'Builds API documentation locally';

  late final outputPath = argResults!['output']! as String;

  @override
  Future<void> run() async {
    await super.run();
    await linkPackages();

    final outputDir = p.isAbsolute(outputPath)
        ? outputPath
        : p.join(rootDir.path, outputPath);
    await _buildAllDocs(outputDir);
    logger.info('Docs have been written to: $outputDir');
  }
}

class _DocsServeSubcommand extends _DocsSubcommand {
  _DocsServeSubcommand() {
    argParser.addOption(
      'port',
      abbr: 'p',
      defaultsTo: '0',
      help: 'The port to serve on',
    );
  }

  late final port = int.parse(argResults!['port'] as String);

  @override
  String get name => 'serve';

  @override
  String get description => 'Serves API documentation locally, automatically '
      'rebuilding when files have changed';

  @override
  Future<void> run() async {
    await super.run();
    await linkPackages();

    // Run initial build
    final outputDir = p.join(rootDir.path, 'doc/api');
    await _buildAllDocs(outputDir);

    // Set up filesystem watchers
    final watchers = <_PackageWatcher>[];
    for (final package in commandPackages.values) {
      watchers.add(
        _PackageWatcher(
          package,
          onChange: () async {
            logger.info('Rebuilding docs for ${package.name}...');
            try {
              await _buildDocs(package, outputDir);
              logger.info('Rebuilt docs for ${package.name}.');
            } on Exception catch (e) {
              logger.error('Error rebuilding docs for ${package.name}:', e);
            }
          },
        ),
      );
    }

    // Serve output HTML on webserver
    final server = await io.serve(
      createStaticHandler(outputDir, defaultDocument: 'index.html'),
      InternetAddress.anyIPv4,
      port,
    );
    logger
      ..info('Serving docs on http://localhost:${server.port}')
      ..info('Press Ctrl+C to stop.');

    // Wait for interruption
    await StreamGroup.merge([
      ProcessSignal.sigint.watch(),
      ProcessSignal.sigterm.watch(),
    ]).first;

    // Shutdown
    logger.debug('Shutting down...');
    await Future.wait(watchers.map((watcher) => watcher.close()));
    await server.close(force: true);
  }
}

/// Watches a [package] for changes and calls [onChange] whenever a file is changed.
class _PackageWatcher implements Closeable {
  _PackageWatcher(this.package, {required this.onChange}) {
    _listenForEvents();
  }

  final PackageInfo package;
  final Future<void> Function() onChange;
  late final StreamSubscription<FileSystemEvent> _subscription;

  void _listenForEvents() {
    final directoriesToWatch = [
      for (final subpath in const ['doc/lib', 'lib'])
        Directory(p.join(package.path, subpath)),
    ].where((dir) => dir.existsSync());
    final eventStream = StreamGroup.merge([
      for (final directory in directoriesToWatch)
        directory.watch(
          events: FileSystemEvent.all,
          recursive: true,
        ),
    ]);
    Future<void>? currentOperation;
    _subscription = eventStream.listen((_) {
      currentOperation ??= onChange().whenComplete(() {
        currentOperation = null;
      });
    });
  }

  @override
  Future<void> close() => _subscription.cancel();
}

/// Index page template to make navigation between package docs easier.
const _indexTmpl = r'''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amplify Flutter</title>
    <style>
        body {
            font-family: Roboto, sans-serif;
            text-align: center;
        }

        #docs {
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            align-items: stretch;
            overflow-x: auto;
        }

        table {
            table-layout: auto;
            word-wrap: break-word;
            border-collapse: collapse;
        }

        th,
        td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        thead th:first-child {
            background-color: #f2f2f2;
            position: sticky;
            left: 0;
        }

        td:first-child {
            position: sticky;
            left: 0;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:nth-child(even) > td:first-child {
            background-color: #f9f9f9;
        }

        tr:nth-child(odd) {
            background-color: white;
        }

        tr:nth-child(odd) > td:first-child {
            background-color: white;
        }

        tr:hover {
            background-color: #eaeaea
        }

        tr:nth-child(even):hover > td:first-child, tr:nth-child(odd):hover > td:first-child {
            background-color: #eaeaea;
        }
    </style>
</head>

<body>
    <h1>Amplify Docs</h1>
    <section id="docs">
        <table>
            <thead>
                <tr>
                    <th>Package</th>
                    <th>Location</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                {{#packages}}
                <tr>
                    <td>{{name}}</td>
                    <td><code>{{{path}}}</code></td>
                    <td><a href="{{link}}">Docs</a></td>
                </tr>
                {{/packages}}
            </tbody>
        </table>
    </section>
</body>
</html>
''';
