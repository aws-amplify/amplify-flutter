// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/config/config_loader.dart';
import 'package:aft/src/repo.dart';
import 'package:aws_common/aws_common.dart';
import 'package:git/git.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;

/// {@macro aft.test.repo_descriptor}
RepoDescriptor repo(Iterable<d.Descriptor> contents) =>
    RepoDescriptor(contents);

/// {@template aft.test.repo_descriptor}
/// Describes the desired state of a repo.
///
/// Call [create] to create a repository with the given description in
/// the temporary sandbox.
/// {@endtemplate}
final class RepoDescriptor extends d.Descriptor {
  /// {@macro aft.test.repo_descriptor}
  RepoDescriptor(Iterable<d.Descriptor> contents)
      : contents = contents.toList(),
        super('amplify_flutter');

  final List<d.Descriptor> contents;

  final _loader = AftConfigLoader(
    workingDirectory: Directory(d.sandbox),
  );

  /// The root `pubspec.yaml`.
  ///
  /// Uses the real pubspec for the repo for improved testing.
  String get pubspec {
    var dir = Directory.current;
    Directory? rootDirectory;
    while (p.absolute(dir.parent.path) != p.absolute(dir.path)) {
      if (dir.pubspec != null) {
        rootDirectory = dir;
      }
      dir = dir.parent;
    }
    expect(
      rootDirectory,
      isNotNull,
      reason: 'Should find root directory',
    );
    return rootDirectory!.pubspec!.pubspecYaml;
  }

  @override
  Future<Repo> create([String? parent]) async {
    assert(parent == null, 'Not supported. Should use root sandbox');
    final gitDir = await GitDir.init(parent ?? d.sandbox);
    await gitDir.runCommand(
      ['commit', '--allow-empty', '-m', 'Initial commit'],
    );
    await d.file('pubspec.yaml', pubspec).create(parent);
    for (final item in contents) {
      await item.create(parent);
    }
    final repo = await Repo.open(
      _loader.load(),
      logger: AWSLogger()..logLevel = LogLevel.verbose,
    );
    return repo;
  }

  @override
  String describe() => name;

  @override
  Future<void> validate([String? parent]) async {
    assert(parent == null, 'Not supported. Should use root sandbox');
    await GitDir.fromExisting(parent ?? d.sandbox);
    await d.file('pubspec.yaml', pubspec).validate(parent);
    for (final item in contents) {
      await item.validate(parent);
    }
    expect(_loader.load, returnsNormally);
  }
}
