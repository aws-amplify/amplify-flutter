// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

/// Runs `dart format --output=none --set-exit-if-changed` on a package,
/// skipping files matched by the `analyzer.exclude` globs in the package's own
/// `analysis_options.yaml` (e.g. generated `*.g.dart`) — which `dart format`
/// itself cannot exclude. The package's analysis options are the single source
/// of truth for what to skip.
///
/// Usage: `dart run bin/format_check.dart <package-directory>`
void main(List<String> args) {
  final targetDir = p.normalize(p.absolute(args.isNotEmpty ? args.first : '.'));
  if (!Directory(targetDir).existsSync()) {
    stderr.writeln('dart_format_check: directory not found: $targetDir');
    exit(2);
  }

  final excludeGlobs = readExcludeGlobs(
    p.join(targetDir, 'analysis_options.yaml'),
  );
  final globs = excludeGlobs.map(Glob.new).toList();

  final dartFiles = listDartFiles(targetDir);
  final excluded = <String>[];
  final toFormat = <String>[];
  for (final rel in dartFiles) {
    final posixRel = p.split(rel).join('/');
    if (globs.any((g) => g.matches(posixRel))) {
      excluded.add(rel);
    } else {
      toFormat.add(rel);
    }
  }

  // Drop tracked-but-missing files (e.g. deleted on disk) so an absent path
  // can't crash `dart format`.
  final missing = <String>[];
  toFormat.retainWhere((rel) {
    if (File(p.join(targetDir, rel)).existsSync()) return true;
    missing.add(rel);
    return false;
  });

  excluded.sort();
  stdout.writeln(
    'dart_format_check: checking ${toFormat.length} file(s); '
    '${excluded.length} excluded by '
    '${excludeGlobs.isEmpty ? '(no analyzer.exclude globs)' : excludeGlobs.join(', ')}.',
  );
  if (excluded.isNotEmpty) {
    stdout.writeln('Excluded (${excluded.length}):');
    for (final f in excluded) {
      stdout.writeln('  $f');
    }
  }
  if (missing.isNotEmpty) {
    missing.sort();
    stdout.writeln('Skipped ${missing.length} missing file(s):');
    for (final f in missing) {
      stdout.writeln('  $f');
    }
  }

  if (toFormat.isEmpty) {
    stdout.writeln('dart_format_check: nothing to format.');
    return;
  }

  // Batch to stay well under the OS argument-length limit on large packages.
  const batchSize = 400;
  var changedOrErrored = false;
  for (var i = 0; i < toFormat.length; i += batchSize) {
    final batch = toFormat.sublist(
      i,
      (i + batchSize < toFormat.length) ? i + batchSize : toFormat.length,
    );
    final result = Process.runSync(
      // Use the same SDK that launched this script (the CI stable SDK).
      Platform.resolvedExecutable,
      ['format', '--output=none', '--set-exit-if-changed', ...batch],
      workingDirectory: targetDir,
    );
    final out = result.stdout as String;
    final err = result.stderr as String;
    if (out.isNotEmpty) stdout.write(out);
    if (err.isNotEmpty) stderr.write(err);
    if (result.exitCode != 0) changedOrErrored = true;
  }

  exit(changedOrErrored ? 1 : 0);
}

/// Reads the `analyzer.exclude` globs from the analysis options at
/// [optionsPath]. Returns an empty set when the file is absent or declares no
/// excludes. Only the package's own options are read — in this repo the shared
/// `amplify_lints` profiles define no `analyzer.exclude`, so there is nothing
/// to inherit via `include:`.
Set<String> readExcludeGlobs(String optionsPath) {
  final result = <String>{};
  final file = File(optionsPath);
  if (!file.existsSync()) return result;

  final Object? doc;
  try {
    doc = loadYaml(file.readAsStringSync());
  } on Object catch (e) {
    stderr.writeln('dart_format_check: could not parse $optionsPath: $e');
    return result;
  }
  if (doc is! YamlMap) return result;

  final analyzer = doc['analyzer'];
  if (analyzer is YamlMap && analyzer['exclude'] is YamlList) {
    for (final e in analyzer['exclude'] as YamlList) {
      if (e is String) result.add(e);
    }
  }
  return result;
}

/// Lists tracked `.dart` files under [dir] (relative paths), falling back to a
/// filesystem walk (skipping hidden directories) if git is unavailable.
List<String> listDartFiles(String dir) {
  try {
    final r = Process.runSync('git', [
      'ls-files',
      '-z',
      '*.dart',
    ], workingDirectory: dir);
    if (r.exitCode == 0) {
      return (r.stdout as String)
          .split('\x00')
          .where((s) => s.isNotEmpty)
          .toList();
    }
  } on Object catch (_) {
    // git unavailable — fall through to filesystem walk.
  }
  return Directory(dir)
      .listSync(recursive: true)
      .whereType<File>()
      .map((f) => p.relative(f.path, from: dir))
      .where(
        (rel) =>
            rel.endsWith('.dart') &&
            !p.split(rel).any((seg) => seg.startsWith('.')),
      )
      .toList();
}
