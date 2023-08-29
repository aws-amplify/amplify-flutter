// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/config/config_loader.dart';
import 'package:aft/src/repo.dart';
import 'package:args/command_runner.dart';
import 'package:aws_common/aws_common.dart';
import 'package:cli_util/cli_util.dart';
import 'package:git/git.dart' as git;
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';

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

  late final AftConfigLoader aftConfigLoader = AftConfigLoader(
    workingDirectory: workingDirectory,
  );

  /// The processed `aft` configuration for the repo with packages and
  /// components linked.
  AftConfig get aftConfig => aftConfigLoader.load();

  /// HTTP client for remote operations.
  final AWSHttpClient httpClient = AWSHttpClient();

  /// The root directory of the Amplify Flutter repo.
  late final Directory rootDir = Directory.fromUri(aftConfig.rootDirectory);

  /// All packages in the Amplify Flutter repo.
  late final Map<String, PackageInfo> repoPackages =
      aftConfig.allPackages.toMap();

  /// All packages included in this command's operation.
  ///
  /// This may be overriden by mixins such that it is a subset of
  /// [repoPackages].
  Map<String, PackageInfo> get commandPackages => repoPackages;

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

  late final Repo repo;

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
    logger
      ..info('Found Dart SDK: $activeDartSdkVersion')
      ..verbose('Got configuration: $aftConfig');
    repo = await Repo.open(aftConfig, logger: logger);
  }

  @override
  @mustCallSuper
  void close() {
    httpClient.close();
  }
}
