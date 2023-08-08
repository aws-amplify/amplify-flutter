// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/repo.dart';
import 'package:args/command_runner.dart';
import 'package:aws_common/aws_common.dart';
import 'package:checked_yaml/checked_yaml.dart';
import 'package:cli_util/cli_util.dart';
import 'package:collection/collection.dart';
import 'package:git/git.dart' as git;
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

/// Base class for all commands in this package providing common functionality.
abstract class AmplifyCommand extends Command<void>
    implements AWSLoggerPlugin, Closeable {
  AmplifyCommand() {
    init();
  }

  /// Initializer which runs when this command is instantiated.
  ///
  /// This can be overridden for setting additional flags or subcommands
  /// via mixins or direct overrides.
  @mustCallSuper
  void init() {
    AWSLogger()
      ..unregisterAllPlugins()
      ..registerPlugin(this);
  }

  late final AWSLogger logger = () {
    final allCommands = <String>[];
    for (Command<dynamic>? cmd = this; cmd != null; cmd = cmd.parent) {
      allCommands.add(cmd.name);
    }
    return AWSLogger().createChild(allCommands.reversed.join('.'));
  }();

  @override
  void handleLogEntry(LogEntry logEntry) {
    final message = verbose
        ? '${logEntry.loggerName} | ${logEntry.message}'
        : logEntry.message;
    switch (logEntry.level) {
      case LogLevel.verbose:
      case LogLevel.debug:
      case LogLevel.info:
        stdout.writeln(message);
      case LogLevel.warn:
      case LogLevel.error:
        stderr.writeln(message);
      case LogLevel.none:
        break;
    }
    if (logEntry.error case final error?) {
      stderr.writeln(error);
    }
  }

  /// Whether verbose logging is enabled.
  bool get verbose =>
      globalResults?['verbose'] as bool? ??
      AWSLogger().logLevel == LogLevel.verbose;

  /// The current working directory.
  late final Directory workingDirectory = () {
    final directory = globalResults?['directory'] as String?;
    if (directory == null) {
      return Directory.current;
    }
    return Directory(directory);
  }();

  /// HTTP client for remote operations.
  final AWSHttpClient httpClient = AWSHttpClient();

  /// The root directory of the Amplify Flutter repo.
  late final Directory rootDir = () {
    var dir = workingDirectory;
    while (p.absolute(dir.parent.path) != p.absolute(dir.path)) {
      final files = dir.listSync(followLinks: false).whereType<File>();
      for (final file in files) {
        if (p.basename(file.path) == 'aft.yaml') {
          return dir;
        }
      }
      dir = dir.parent;
    }
    throw StateError(
      'Root directory not found. Make sure to run this command '
      'from within the Amplify Flutter repo',
    );
  }();

  /// All packages in the Amplify Flutter repo.
  late final Map<String, PackageInfo> repoPackages = () {
    final allDirs = rootDir
        .listSync(recursive: true, followLinks: false)
        .whereType<Directory>();
    final allPackages = <PackageInfo>[];
    for (final dir in allDirs) {
      final package = PackageInfo.fromDirectory(dir);
      if (package == null) {
        continue;
      }
      if (rawAftConfig.ignore.contains(package.name)) {
        continue;
      }
      allPackages.add(package);
    }
    return UnmodifiableMapView({
      for (final package in allPackages..sort()) package.name: package,
    });
  }();

  /// All packages included in this command's operation.
  ///
  /// This may be overriden by mixins such that it is a subset of
  /// [repoPackages].
  late final Map<String, PackageInfo> commandPackages = repoPackages;

  /// The absolute path to the root `aft.yaml` document.
  late final String aftConfigPath = () {
    final rootDir = this.rootDir;
    return p.join(rootDir.path, 'aft.yaml');
  }();

  String _loadFile(String path) {
    final file = File(path);
    if (!file.existsSync()) {
      throw StateError(
        'Could not find `${p.basename(path)}`. Expected it to be at: $path',
      );
    }
    return file.readAsStringSync();
  }

  /// The global `aft` configuration for the repo.
  ///
  /// Should not be `late final` to allow re-reading from disk, e.g. when
  /// updated as part of a command.
  RawAftConfig get rawAftConfig {
    var configYaml = _loadFile(aftConfigPath);

    // Merge in the extra config options if provided.
    final extraConfig = globalResults?['config'] as String?;
    if (extraConfig != null) {
      final extraConfigYaml = _loadFile(p.join(rootDir.path, extraConfig));
      final rootEditor = YamlEditor(configYaml)
        ..merge(loadYamlNode(extraConfigYaml));
      configYaml = rootEditor.toString();
    }

    final config = checkedYamlDecode(configYaml, RawAftConfig.fromJson);
    return config;
  }

  /// The processed `aft` configuration for the repo with packages and
  /// components linked.
  AftConfig get aftConfig {
    final rawConfig = rawAftConfig;
    final components = Map.fromEntries(
      rawConfig.components.map((component) {
        final summaryPackage =
            component.summary == null ? null : repoPackages[component.summary]!;
        final packages =
            component.packages.map((name) => repoPackages[name]!).toList();
        final packageGraph = UnmodifiableMapView({
          for (final package in packages)
            package.name: package.pubspecInfo.pubspec.dependencies.keys
                .map(
                  (packageName) => packages.firstWhereOrNull(
                    (pkg) => pkg.name == packageName,
                  ),
                )
                .whereType<PackageInfo>()
                .toList(),
        });
        return MapEntry(
          component.name,
          AftComponent(
            name: component.name,
            summary: summaryPackage,
            packages: packages,
            packageGraph: packageGraph,
            propagate: component.propagate,
          ),
        );
      }),
    );
    return AftConfig(
      rootDirectory: rootDir.uri,
      workingDirectory: workingDirectory.uri,
      allPackages: repoPackages,
      dependencies: rawConfig.dependencies,
      environment: rawConfig.environment,
      ignore: rawConfig.ignore,
      components: components,
      scripts: rawConfig.scripts,
    );
  }

  /// The environment to inject into subcommands.
  late final Map<String, String> environment = {
    ...Platform.environment,
    'AFT_ROOT': rootDir.uri.toFilePath(),
    // Needed for running `dart doc` for Flutter packages.
    if (flutterRoot != null) 'FLUTTER_ROOT': flutterRoot!,
  };

  /// The path to the Flutter SDK, if installed.
  late final String? flutterRoot = () {
    final dartSdkPath = getSdkPath();
    final flutterBin = p.dirname(p.dirname(dartSdkPath));
    if (File(p.join(flutterBin, 'flutter')).existsSync()) {
      return p.dirname(flutterBin);
    }
    return null;
  }();

  late final Repo repo = Repo(
    aftConfig,
    logger: logger,
  );

  /// Runs `git` with the given [args] from the repo's root directory.
  Future<void> runGit(
    List<String> args, {
    bool echoOutput = false,
  }) =>
      git.runGit(
        args,
        processWorkingDir: rootDir.path,
        throwOnError: true,
        echoOutput: echoOutput,
      );

  /// The `aft.yaml` document.
  String get aftConfigYaml {
    final configFile = File(aftConfigPath);
    assert(configFile.existsSync(), 'Could not find aft.yaml');
    return configFile.readAsStringSync();
  }

  /// Displays a prompt to the user and waits for a response on stdin.
  String prompt(String prompt) {
    String? response;
    while (response == null) {
      stdout.write(prompt);
      response = stdin.readLineSync();
    }
    return response;
  }

  /// Displays a yes/no prompt and returns whether the answer was positive.
  bool promptYesNo(String message) {
    final answer = prompt(message).toLowerCase();
    return answer == 'y' || answer == 'yes';
  }

  /// Resolves the latest version information from `pub.dev`.
  Future<PubVersionInfo?> resolveVersionInfo(String package) async {
    // Get the currently published version of the package.
    final uri = Uri.parse('https://pub.dev/api/packages/$package');
    final request = AWSHttpRequest.get(
      uri,
      headers: const {AWSHeaders.accept: 'application/vnd.pub.v2+json'},
    );
    final resp = await httpClient.send(request).response;
    final body = await resp.decodeBody();

    // Package is unpublished
    if (resp.statusCode == 404) {
      return null;
    }
    if (resp.statusCode != 200) {
      throw AWSHttpException(request, body);
    }

    final respJson = jsonDecode(body) as Map<String, Object?>;
    final versions = (respJson['versions'] as List<Object?>?) ?? <Object?>[];
    final semvers = <Version>[];
    for (final version in versions) {
      final map = (version as Map).cast<String, Object?>();
      final semver = map['version'] as String?;
      if (semver == null) {
        continue;
      }
      semvers.add(Version.parse(semver));
    }

    return PubVersionInfo(semvers..sort());
  }

  @override
  @mustCallSuper
  Future<void> run() async {
    if (globalResults?['verbose'] as bool? ?? false) {
      AWSLogger().logLevel = LogLevel.verbose;
    }
    logger.verbose('Got configuration: $rawAftConfig');
  }

  @override
  @mustCallSuper
  void close() {
    httpClient.close();
  }
}

extension on YamlEditor {
  /// Merges [node] into `this` at the given [path].
  ///
  /// This differs from [update] in that it recurses into the tree to only add
  /// or override leaf nodes (i.e. [YamlScalar] values) for maps.
  ///
  /// Lists cannot be safely merged, so they are overridden as with [update].
  void merge(YamlNode node, [List<Object?> path = const []]) {
    if (node is YamlMap) {
      for (final key in node.keys) {
        merge(node.nodes[key]!, [...path, key]);
      }
      return;
    } else if (node is YamlList) {
      safePrint('WARNING: Cannot merge YAML list values');
    }
    update(path, node);
  }
}
