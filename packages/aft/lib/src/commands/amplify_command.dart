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

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/repo.dart';
import 'package:args/command_runner.dart';
import 'package:aws_common/aws_common.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:pub/pub.dart';

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
    return AWSLogger().createChild(allCommands.reversed.join('.'))
      ..logLevel = verbose ? LogLevel.verbose : LogLevel.info;
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
        break;
      case LogLevel.warn:
      case LogLevel.error:
        stderr.writeln(message);
        break;
      case LogLevel.none:
        break;
    }
  }

  /// Whether verbose logging is enabled.
  bool get verbose => globalResults?['verbose'] as bool? ?? false;

  /// The current working directory.
  late final Directory workingDirectory = () {
    final directory = globalResults?['directory'] as String?;
    if (directory == null) {
      return Directory.current;
    }
    return Directory(directory);
  }();

  _PubHttpClient? _httpClient;

  /// HTTP client for remote operations.
  http.Client get httpClient => _httpClient ??= _PubHttpClient();

  /// The root directory of the Amplify Flutter repo.
  late final Directory rootDir = () {
    var dir = workingDirectory;
    while (dir.parent != dir) {
      final files = dir.listSync(followLinks: false).whereType<File>();
      for (final file in files) {
        if (p.basename(file.path) == 'mono_repo.yaml') {
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

  late final Repo repo = Repo(rootDir, logger: logger);

  Map<String, PackageInfo> get allPackages => repo.allPackages;

  String get aftConfigPath => repo.aftConfigPath;
  AftConfig get aftConfig => repo.aftConfig;

  /// The `aft.yaml` document.
  String get aftConfigYaml {
    final configFile = File(aftConfigPath);
    assert(configFile.existsSync(), 'Could not find aft.yaml');
    return configFile.readAsStringSync();
  }

  /// A command runner for `pub`.
  PubCommandRunner createPubRunner() => PubCommandRunner(
        pubCommand(isVerbose: () => verbose),
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

  @override
  @mustCallSuper
  void close() {
    _httpClient?._close();
  }
}

/// An HTTP client which can be used by processes which call `client.close()`
/// outside our control, like `pub`.
class _PubHttpClient extends http.BaseClient {
  _PubHttpClient([http.Client? inner]) : _inner = inner ?? http.Client();

  final http.Client _inner;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    return _inner.send(request);
  }

  @override
  void close() {
    // Do nothing
  }

  // Actually close
  void _close() {
    _inner.close();
  }
}
