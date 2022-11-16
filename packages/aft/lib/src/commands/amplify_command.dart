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
import 'package:args/command_runner.dart';
import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:checked_yaml/checked_yaml.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:pub/pub.dart';
import 'package:stream_transform/stream_transform.dart';

/// Base class for all commands in this package providing common functionality.
abstract class AmplifyCommand extends Command<void> implements Closeable {
  /// Whether verbose logging is enabled.
  late final bool verbose = globalResults!['verbose'] as bool;

  /// The configured logger for the command.
  late final Logger logger = verbose ? Logger.verbose() : Logger.standard();

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

  final _rootDirMemo = AsyncMemoizer<Directory>();

  /// The root directory of the Amplify Flutter repo.
  Future<Directory> get rootDir => _rootDirMemo.runOnce(() async {
        var dir = workingDirectory;
        while (dir.parent != dir) {
          final files = dir.list(followLinks: false).whereType<File>();
          await for (final file in files) {
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
      });

  final _allPackagesMemo = AsyncMemoizer<Map<String, PackageInfo>>();

  /// All packages in the Amplify Flutter repo.
  Future<Map<String, PackageInfo>> get allPackages =>
      _allPackagesMemo.runOnce(() async {
        final allDirs = (await rootDir)
            .list(recursive: true, followLinks: false)
            .whereType<Directory>();
        final aftConfig = await this.aftConfig;

        final allPackages = <PackageInfo>[];
        await for (final dir in allDirs) {
          final pubspecInfo = dir.pubspec;
          if (pubspecInfo == null) {
            continue;
          }
          final pubspec = pubspecInfo.pubspec;
          if (aftConfig.ignore.contains(pubspec.name)) {
            continue;
          }
          allPackages.add(
            PackageInfo(
              name: pubspec.name,
              path: dir.path,
              usesMonoRepo: dir.usesMonoRepo,
              pubspecInfo: pubspecInfo,
              flavor: pubspec.flavor,
            ),
          );
        }
        return UnmodifiableMapView({
          for (final package in allPackages..sort()) package.name: package,
        });
      });

  /// The absolute path to the `aft.yaml` document.
  Future<String> get aftConfigPath async {
    final rootDir = await this.rootDir;
    return p.join(rootDir.path, 'aft.yaml');
  }

  /// The `aft.yaml` document.
  Future<String> get aftConfigYaml async {
    final configFile = File(await aftConfigPath);
    assert(configFile.existsSync(), 'Could not find aft.yaml');
    return configFile.readAsStringSync();
  }

  /// The global `aft` configuration for the repo.
  Future<AftConfig> get aftConfig async {
    final configYaml = await aftConfigYaml;
    return checkedYamlDecode(configYaml, AftConfig.fromJson);
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
