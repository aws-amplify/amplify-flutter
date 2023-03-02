// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:aws_common/aws_common.dart';
import 'package:path/path.dart' as p;

/// Saves the current state of the repo as a Dart file.
class SaveRepoStateCommand extends AmplifyCommand with GlobOptions {
  SaveRepoStateCommand() {
    argParser.addOption(
      'output',
      help: 'The output path relative to the repo root',
      defaultsTo: 'packages/aft/test/repo_state.g.dart',
    );
  }

  @override
  bool get hidden => true;

  @override
  String get description =>
      'Saves the current state of the repo as a Dart file';

  @override
  String get name => 'save-repo-state';

  late final outputPath = argResults!['output'] as String;

  @override
  Future<void> run() async {
    await super.run();
    final configJson = prettyPrintJson(aftConfig.toJson());
    final configDart = '''
// Generated with `aft save-repo-state`.

import 'dart:convert';

import 'package:aft/aft.dart';

final AftConfig repoState = AftConfig.fromJson(
  jsonDecode(_repoStateJson) as Map<String, Object?>,
);

const String _repoStateJson = r\'\'\'
$configJson
\'\'\';
''';
    File(
      p.join(aftConfig.rootDirectory.toFilePath(), outputPath),
    ).writeAsStringSync(configDart);
  }
}
