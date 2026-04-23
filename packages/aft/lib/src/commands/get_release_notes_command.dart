// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

/// {@template aft.get_release_notes.exit_code}
/// Exit codes returned by [GetReleaseNotesCommand].
///
/// The command is fail-closed: any content-level problem produces a
/// distinct non-zero exit code and a descriptive message on stderr. Callers
/// that want a fallback should use shell-level composition, e.g.
/// `NOTES=$(aft get-release-notes ...) || NOTES="fallback text"`.
///
/// * [success] — notes printed to stdout.
/// * [usageError] — missing/invalid arguments or unknown package.
/// * [versionNotFound] — `CHANGELOG.md` exists but does not contain a
///   matching `## <version>` header.
/// * [sectionEmpty] — the matching version header was found but its section
///   contains no content.
/// * [changelogMissing] — the package has no `CHANGELOG.md` file on disk.
/// {@endtemplate}
enum GetReleaseNotesExitCode {
  /// Notes printed successfully.
  success(0),

  /// Missing arguments or unknown package name.
  usageError(1),

  /// The version was not found in the CHANGELOG.
  versionNotFound(2),

  /// The version header was found but its section is empty.
  sectionEmpty(3),

  /// The package's CHANGELOG.md file does not exist on disk.
  changelogMissing(4);

  const GetReleaseNotesExitCode(this.code);

  /// The numeric exit code reported to the shell.
  final int code;
}

/// {@template aft.get_release_notes.result}
/// The outcome of parsing a CHANGELOG for a single version.
/// {@endtemplate}
sealed class ReleaseNotesResult {
  const ReleaseNotesResult();
}

/// {@template aft.get_release_notes.result.found}
/// A non-empty release notes section was extracted successfully.
/// {@endtemplate}
final class ReleaseNotesFound extends ReleaseNotesResult {
  /// {@macro aft.get_release_notes.result.found}
  const ReleaseNotesFound(this.notes);

  /// The extracted notes with leading/trailing blank lines stripped.
  final String notes;
}

/// {@template aft.get_release_notes.result.version_not_found}
/// No `## <version>` header was found in the CHANGELOG.
/// {@endtemplate}
final class ReleaseNotesVersionNotFound extends ReleaseNotesResult {
  /// {@macro aft.get_release_notes.result.version_not_found}
  const ReleaseNotesVersionNotFound();
}

/// {@template aft.get_release_notes.result.empty}
/// The matching `## <version>` header was found but the body was empty
/// (either immediately followed by another version header, or contained
/// only whitespace).
/// {@endtemplate}
final class ReleaseNotesEmpty extends ReleaseNotesResult {
  /// {@macro aft.get_release_notes.result.empty}
  const ReleaseNotesEmpty();
}

/// Extracts release notes for [version] from [changelogMd].
///
/// The parser:
///
/// * Handles both `LF` and `CRLF` line endings.
/// * Scans the entire file so version headers are matched regardless of
///   position (not just the first one encountered).
/// * Ignores `## ` sequences that appear inside fenced code blocks (delimited
///   by triple backticks or tildes).
/// * Matches a header when the first whitespace-separated token after `## `
///   equals [version] exactly. This allows headers such as
///   `## 1.0.0-next.0 (2022-08-02)` to match version `1.0.0-next.0`.
/// * Supports common changelog decorations: strips `[`, `]`, and leading `v`
///   from version tokens, so `## [1.0.0]` and `## v1.0.0` both match `1.0.0`.
/// * Strips leading and trailing blank lines from the extracted section while
///   preserving blank lines inside the body.
///
/// The returned [ReleaseNotesResult] distinguishes between a found section,
/// a missing version, and an empty section so callers can surface precise
/// error codes.
@visibleForTesting
ReleaseNotesResult extractReleaseNotes(String changelogMd, String version) {
  // Strip UTF-8 BOM if present (EF BB BF)
  var content = changelogMd;
  if (content.startsWith('\uFEFF')) {
    content = content.substring(1);
  }

  // Normalize line endings so CRLF and LF files produce identical output.
  final lines = content.replaceAll('\r\n', '\n').split('\n');

  var inTargetSection = false;
  var inCodeBlock = false;
  var versionSeen = false;
  final buffer = <String>[];

  for (final line in lines) {
    // A fenced code block begins/ends when a line's first non-whitespace
    // content is ``` or ~~~ (allowing optional language tag after).
    if (_isCodeFence(line)) {
      inCodeBlock = !inCodeBlock;
      if (inTargetSection) {
        buffer.add(line);
      }
      continue;
    }

    if (inCodeBlock) {
      if (inTargetSection) {
        buffer.add(line);
      }
      continue;
    }

    if (line.startsWith('## ')) {
      final headerVersion = _parseHeaderVersion(line);
      if (inTargetSection) {
        // The next header terminates the current section.
        break;
      }
      if (headerVersion == version) {
        inTargetSection = true;
        versionSeen = true;
      }
      continue;
    }

    if (inTargetSection) {
      buffer.add(line);
    }
  }

  if (!versionSeen) {
    return const ReleaseNotesVersionNotFound();
  }

  // Trim leading blank lines.
  while (buffer.isNotEmpty && buffer.first.trim().isEmpty) {
    buffer.removeAt(0);
  }
  // Trim trailing blank lines.
  while (buffer.isNotEmpty && buffer.last.trim().isEmpty) {
    buffer.removeLast();
  }

  if (buffer.isEmpty) {
    return const ReleaseNotesEmpty();
  }

  return ReleaseNotesFound(buffer.join('\n'));
}

/// Returns the first whitespace-separated token after the `## ` prefix,
/// with common changelog decorations stripped (brackets and leading `v`).
///
/// Returns an empty string if the header has no content.
String _parseHeaderVersion(String line) {
  // Strip the leading '## ' (3 chars) and everything after the first run of
  // whitespace, keeping behavior stable for tabs and multiple spaces.
  final rest = line.substring(3).trimLeft();
  if (rest.isEmpty) {
    return '';
  }
  final whitespaceIndex = rest.indexOf(RegExp(r'\s'));
  var token = whitespaceIndex < 0
      ? rest.trimRight()
      : rest.substring(0, whitespaceIndex);

  // Strip common changelog decorations:
  // - Square brackets: [1.0.0] -> 1.0.0
  // - Leading v: v1.0.0 -> 1.0.0
  token = token.replaceAll(RegExp(r'^\[|\]$'), '');
  if (token.startsWith('v')) {
    token = token.substring(1);
  }

  return token;
}

/// Matches a Markdown fenced code-block delimiter. We recognize both backtick
/// (` ``` `) and tilde (`~~~`) fences. Leading whitespace up to three spaces
/// is allowed per the CommonMark spec.
bool _isCodeFence(String line) {
  final match = RegExp(r'^ {0,3}(`{3,}|~{3,})').firstMatch(line);
  return match != null;
}

/// {@template aft.get_release_notes.command}
/// Extracts per-package release notes from `CHANGELOG.md` by version.
///
/// Intended for use in release automation (e.g. GitHub Actions) where a
/// deterministic, testable extractor is preferable to ad-hoc shell parsing.
/// The command is fail-closed — callers that need a fallback should use the
/// shell, e.g.
///
/// ```
/// NOTES=$(aft get-release-notes --package X --version Y) \
///   || NOTES="Release X vY"
/// ```
///
/// Usage:
///
/// ```
/// aft get-release-notes --package amplify_core --version 2.10.1
/// ```
/// {@endtemplate}
class GetReleaseNotesCommand extends AmplifyCommand {
  /// {@macro aft.get_release_notes.command}
  GetReleaseNotesCommand() {
    argParser
      ..addOption(
        'package',
        help:
            'Name of the package whose CHANGELOG.md to read '
            '(e.g. amplify_core).',
        mandatory: true,
      )
      ..addOption(
        'version',
        help:
            'Exact version string to extract, matched against the first '
            'token after the `## ` header (e.g. 2.10.1, 2.10.1-dev.0).',
        mandatory: true,
      );
  }

  @override
  String get description =>
      'Extract release notes for a package/version from its CHANGELOG.md.';

  @override
  String get name => 'get-release-notes';

  @override
  Future<void> run() async {
    // Suppress default info-level logging so stdout is reserved exclusively
    // for the extracted release notes. Warnings and errors still go to
    // stderr. `--verbose` re-enables the default behavior.
    if (!(globalResults?['verbose'] as bool? ?? false)) {
      AWSLogger().logLevel = LogLevel.warn;
    }
    await super.run();

    final packageName = argResults!['package'] as String;
    final version = argResults!['version'] as String;

    if (packageName.isEmpty) {
      exitError(
        'Error: --package must be a non-empty package name',
        GetReleaseNotesExitCode.usageError.code,
      );
    }
    if (version.isEmpty) {
      exitError(
        'Error: --version must be a non-empty version string',
        GetReleaseNotesExitCode.usageError.code,
      );
    }

    final package = repoPackages[packageName];
    if (package == null) {
      exitError(
        "Error: package '$packageName' not found in workspace",
        GetReleaseNotesExitCode.usageError.code,
      );
    }

    final changelogPath = p.join(package.path, 'CHANGELOG.md');
    final relativePath = p.relative(changelogPath, from: rootDir.path);
    final changelogFile = File(changelogPath);

    if (!changelogFile.existsSync()) {
      exitError(
        "Error: CHANGELOG.md not found for package '$packageName' at "
        '$relativePath',
        GetReleaseNotesExitCode.changelogMissing.code,
      );
    }

    final changelogMd = changelogFile.readAsStringSync();
    final result = extractReleaseNotes(changelogMd, version);

    switch (result) {
      case ReleaseNotesFound(:final notes):
        stdout.writeln(notes);
      case ReleaseNotesVersionNotFound():
        exitError(
          'Error: version $version not found in $relativePath',
          GetReleaseNotesExitCode.versionNotFound.code,
        );
      case ReleaseNotesEmpty():
        exitError(
          'Error: section for $version in $relativePath is empty',
          GetReleaseNotesExitCode.sectionEmpty.code,
        );
    }
  }
}
