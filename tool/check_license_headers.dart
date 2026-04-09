#!/usr/bin/env dart
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Checks that all Dart files in the repository start with the required
/// Amazon copyright and Apache-2.0 license header.
///
/// Usage:
///   dart tool/check_license_headers.dart [directory]
///
/// Defaults to the repository root when no directory is given.
/// Exit code 0 = all files have headers, 1 = violations found.
library;

import 'dart:io';

/// The expected license header lines.
const _licenseHeader = [
  '// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.',
  '// SPDX-License-Identifier: Apache-2.0',
];

/// Patterns (applied to the full path) that should be excluded.
///
/// Kept in sync with `tool/license.sh`.
const _excludePatterns = [
  '.dart_tool',
  '/build/',
  '/Pods/',
  '/node_modules/',
  '/sdk/',
  '/external/',
  '/goldens/',
  '/templates/',
  'generated_plugin_registrant',
  'GeneratedPluginRegistrant',
  'generated_plugins.cmake',
  'amplifyconfiguration.dart',
  'version.dart',
];

/// Generated-file suffixes that are excluded.
const _generatedSuffixes = [
  '.g.dart',
  '.freezed.dart',
  '.mocks.dart',
  '.gr.dart',
  '.worker.dart',
  '.debug.dart',
  '.release.dart',
];

/// Returns `true` if [path] should be skipped.
bool _isExcluded(String path) {
  for (final pattern in _excludePatterns) {
    if (path.contains(pattern)) return true;
  }
  for (final suffix in _generatedSuffixes) {
    if (path.endsWith(suffix)) return true;
  }
  // Exclude worker-related generated files (*.worker.*.dart).
  if (RegExp(r'\.worker\.\w+\.dart$').hasMatch(path)) return true;
  return false;
}

/// Returns `true` if [content] starts with the expected license header.
///
/// A leading shebang line (`#!/...`) is skipped before checking.
bool _hasLicenseHeader(String content) {
  final lines = content.split('\n');

  // Skip optional shebang line.
  var start = 0;
  if (lines.isNotEmpty && lines[0].startsWith('#!')) {
    start = 1;
  }

  if (lines.length - start < _licenseHeader.length) return false;

  for (var i = 0; i < _licenseHeader.length; i++) {
    if (lines[start + i].trimRight() != _licenseHeader[i]) return false;
  }
  return true;
}

void main(List<String> args) {
  final rootDir = args.isNotEmpty ? args.first : '.';
  final dir = Directory(rootDir);

  if (!dir.existsSync()) {
    stderr.writeln('Directory not found: $rootDir');
    exit(2);
  }

  final violations = <String>[];
  var checked = 0;
  var skipped = 0;

  for (final entity in dir.listSync(recursive: true, followLinks: false)) {
    if (entity is! File) continue;
    if (!entity.path.endsWith('.dart')) continue;

    if (_isExcluded(entity.path)) {
      skipped++;
      continue;
    }

    checked++;
    final content = entity.readAsStringSync();
    if (!_hasLicenseHeader(content)) {
      violations.add(entity.path);
    }
  }

  stdout.writeln('Checked $checked Dart files ($skipped skipped).');

  if (violations.isEmpty) {
    stdout.writeln('All files have the required license header. ✓');
    exit(0);
  }

  stderr.writeln('');
  stderr.writeln(
    '${violations.length} file(s) missing the license header:',
  );
  for (final path in violations..sort()) {
    stderr.writeln('  $path');
  }
  stderr.writeln('');
  stderr.writeln('Run `tool/license.sh` to add missing headers.');
  exit(1);
}
