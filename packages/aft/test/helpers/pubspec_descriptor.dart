// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;
import 'package:yaml/yaml.dart';

import 'matchers.dart';

/// {@macro aft.test.pubspec_descriptor}
PubspecDescriptor pubspec(String contents) => PubspecDescriptor(contents);

/// {@template aft.test.pubspec_descriptor}
/// Creates a file descriptor for a `pubspec.yaml` with the given [contents].
///
/// Can be used to create or validate a pubspec.
/// {@endtemplate}
final class PubspecDescriptor extends d.Descriptor {
  /// {@macro aft.test.pubspec_descriptor}
  PubspecDescriptor(this.contents) : super('pubspec.yaml');

  final String contents;

  @override
  Future<void> create([String? parent]) async {
    await d.file('pubspec.yaml', contents).create(parent);
  }

  @override
  String describe() => name;

  @override
  Future<void> validate([String? parent]) async {
    final path = p.join(parent ?? d.sandbox, 'pubspec.yaml');
    try {
      expect(
        loadYaml(await File(path).readAsString()),
        matchesPubspec(contents),
      );
    } on TestFailure catch (error) {
      final prettyPath = p.relative(path, from: d.sandbox);
      fail('Invalid contents for file "$prettyPath":\n${error.message}');
    }
  }
}
