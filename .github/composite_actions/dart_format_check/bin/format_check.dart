// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

/// Runs `dart format --output=none --set-exit-if-changed` on a package,
/// skipping files matched by the `analyzer.exclude` globs declared in its
/// `analysis_options.yaml` (and any files it `include:`s) — e.g. generated
/// `*.g.dart`. This keeps a single source of truth for exclusions instead of
/// hardcoding a pathspec in the workflow.
///
/// Usage: `dart run bin/format_check.dart <package-directory>`
void main(List<String> args) {
  final targetDir = p.normalize(p.absolute(args.isNotEmpty ? args.first : '.'));
  if (!Directory(targetDir).existsSync()) {
    stderr.writeln('dart_format_check: directory not found: $targetDir');
    exit(2);
  }

  final excludeGlobs = collectExcludeGlobs(
    p.join(targetDir, 'analysis_options.yaml'),
    targetDir,
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

/// Collects the union of `analyzer.exclude` globs from [optionsPath] and any
/// `include:`d options files, resolving `package:` and relative includes.
/// [pkgRoot] is the package directory used to locate `package_config.json`.
Set<String> collectExcludeGlobs(
  String optionsPath,
  String pkgRoot, [
  Set<String>? seen,
]) {
  seen ??= <String>{};
  final result = <String>{};
  final file = File(optionsPath);
  final canonical = p.canonicalize(optionsPath);
  if (seen.contains(canonical) || !file.existsSync()) return result;
  seen.add(canonical);

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

  final include = doc['include'];
  final includes = <String>[
    if (include is String) include,
    if (include is YamlList)
      for (final i in include)
        if (i is String) i,
  ];
  for (final inc in includes) {
    final resolved = resolveInclude(inc, optionsPath, pkgRoot);
    if (resolved != null) {
      result.addAll(collectExcludeGlobs(resolved, pkgRoot, seen));
    } else {
      stderr.writeln(
        'dart_format_check: could not resolve include "$inc"; '
        'using local excludes only.',
      );
    }
  }
  return result;
}

/// Resolves an analysis-options `include:` value to a filesystem path.
/// Handles `package:<name>/<path>` (via `package_config.json`) and relative
/// paths. Returns `null` when it cannot be resolved.
String? resolveInclude(String include, String fromFile, String pkgRoot) {
  if (include.startsWith('package:')) {
    final rest = include.substring('package:'.length);
    final slash = rest.indexOf('/');
    if (slash < 0) return null;
    final libDir = packageLibDir(rest.substring(0, slash), pkgRoot);
    return libDir == null ? null : p.join(libDir, rest.substring(slash + 1));
  }
  return p.normalize(p.join(p.dirname(fromFile), include));
}

/// Finds a package's `lib/` directory by reading the nearest
/// `.dart_tool/package_config.json` at or above [pkgRoot].
String? packageLibDir(String packageName, String pkgRoot) {
  var dir = Directory(pkgRoot);
  while (true) {
    final cfg = File(p.join(dir.path, '.dart_tool', 'package_config.json'));
    if (cfg.existsSync()) {
      try {
        final json = jsonDecode(cfg.readAsStringSync()) as Map<String, dynamic>;
        for (final entry in json['packages'] as List<dynamic>) {
          final m = entry as Map<String, dynamic>;
          if (m['name'] == packageName) {
            final base = p.dirname(cfg.path);
            final root = _resolveUri(m['rootUri'] as String, base);
            final pkgUri = (m['packageUri'] as String?) ?? 'lib/';
            return p.normalize(p.join(root, pkgUri));
          }
        }
      } on Object catch (e) {
        stderr.writeln('dart_format_check: could not read ${cfg.path}: $e');
      }
      return null;
    }
    final parent = dir.parent;
    if (parent.path == dir.path) return null;
    dir = parent;
  }
}

String _resolveUri(String uri, String baseDir) {
  final parsed = Uri.parse(uri);
  if (parsed.scheme == 'file') return parsed.toFilePath();
  return p.normalize(p.join(baseDir, parsed.path.isEmpty ? uri : parsed.path));
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
