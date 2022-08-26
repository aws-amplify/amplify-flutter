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

import 'dart:convert';

import 'package:aft/src/changelog/commit_message.dart';
import 'package:aft/src/changelog/printer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:cli_util/cli_logging.dart';
import 'package:collection/collection.dart';
import 'package:markdown/markdown.dart';
import 'package:pub_semver/pub_semver.dart';

part 'parser.dart';
part 'changelog.g.dart';

/// Marker version for the `NEXT` (unreleased) version.
final Version nextVersion = Version(0, 0, 0, pre: nextVersionTag);

/// Tag for the `NEXT` version.
const String nextVersionTag = 'NEXT';

/// {@template aft.changelog.changelog}
/// A Dart representation of a `CHANGELOG.md` file.
/// {@endtemplate}
abstract class Changelog implements Built<Changelog, ChangelogBuilder> {
  /// {@macro aft.changelog.changelog}
  factory Changelog([void Function(ChangelogBuilder) updates]) = _$Changelog;
  Changelog._();

  /// Parses [changelogMd] for a list of the versions.
  ///
  /// Throws a [ChangelogParseException] if there are issues processing the
  /// changelog.
  factory Changelog.parse(
    String changelogMd, {
    Logger? logger,
  }) {
    final parser = Document();
    final lines = LineSplitter.split(changelogMd).toList();
    final ast = parser.parseLines(lines);
    final visitor = _ChangelogParser(logger);
    for (final node in ast) {
      node.accept(visitor);
    }
    return (visitor.builder..originalText = changelogMd).build();
  }

  /// The original CHANGELOG.md text.
  String get originalText;

  /// A map of semantic versions to their nodes.
  BuiltListMultimap<Version, Node> get versions;

  /// The latest version in the changelog, or `null` if the changelog is empty.
  Version? get latestVersion => maxBy(versions.keys, (v) => v);

  /// Whether there's a `NEXT` entry in the changelog.
  bool get hasNextEntry => versions.keys.any((v) => v == nextVersion);

  /// Creates a version entry which can be rendered as markdown for the given
  /// list of [commits].
  ///
  /// If [version] is not specified, it defaults to [nextVersion]. If [version]
  /// already exists in the changelog, it is updated with the new list of
  /// commits.
  List<Node> makeVersionEntry({
    required Iterable<CommitMessage> commits,
    Version? version,
  }) {
    version ??= nextVersion;
    commits = commits.where((commit) => commit.includeInChangelog);
    final commitsByType =
        commits.groupListsBy<CommitTypeGroup>((element) => element.group);

    final versionText =
        version == nextVersion ? nextVersionTag : version.toString();
    final header = Element.text('h2', versionText);
    final nodes = <Node>[header];

    if (commits.isEmpty) {
      // If there are no commits worth including, add a generic message about
      // bug fixes/improvements.
      nodes.add(Element.text('li', 'Minor bug fixes and improvements'));
    } else {
      for (final typedCommits in commitsByType.entries) {
        nodes.add(Element.text('h3', typedCommits.key.header));
        final list = Element('ul', [
          for (final commit
              in typedCommits.value.sortedBy((commit) => commit.summary))
            Element.text('li', commit.summary),
        ]);
        nodes.add(list);
      }
    }

    return nodes;
  }

  /// Updates the changelog with relevant entries from [commits].
  ///
  /// If [version] is not specified, the default `NEXT` tag is used.
  ChangelogUpdate update({
    required Iterable<CommitMessage> commits,
    Version? version,
  }) {
    if (commits.isEmpty) {
      return ChangelogUpdate(originalText, commits: commits);
    }
    final nodes = makeVersionEntry(
      commits: commits,
      version: version,
    );
    // Replace the text in changelogMd so that the latest version matches
    // `version`, if given, else `NEXT`.
    final String keepText;
    if (hasNextEntry || (version != null && latestVersion == version)) {
      // Update latest entry, either to `version` or as a new `NEXT` entry.
      keepText = LineSplitter.split(originalText)
          // Skip latest version entry
          .skip(1)
          // Find previous version header
          .skipWhile((line) => !line.startsWith('## '))
          .join('\n');
    } else {
      // No `NEXT` or `version` entry exists yet.
      keepText = originalText;
    }
    return ChangelogUpdate(keepText, commits: commits, newText: render(nodes));
  }

  @override
  String toString() {
    return render(versions.values);
  }
}

class ChangelogUpdate {
  const ChangelogUpdate(
    this.keepText, {
    required this.commits,
    this.newText,
  });

  final String keepText;
  final Iterable<CommitMessage> commits;
  final String? newText;

  bool get hasUpdate => newText != null;

  @override
  String toString() => newText == null ? keepText : '$newText\n\n$keepText';
}
