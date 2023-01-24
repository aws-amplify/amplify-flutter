// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:aft/aft.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';

final RegExp _mergeCommitRegex = RegExp(r'^Merge .+$');
final RegExp _commitRegex = RegExp(
  r'(?<type>build|chore|ci|docs|feat|fix|bug|perf|refactor|revert|style|test)?'
  r'(?<scope>\([a-zA-Z0-9_,\s\*]+\)?((?=:\s?)|(?=!:\s?)))?'
  r'(?<breaking>!)?'
  r'(?<description>:\s?.*)?',
);
final RegExp _trailerRegex = RegExp(r'^[^:\s]+:[^:]+$');

enum CommitTypeGroup {
  breaking('Breaking Changes'),
  fixes('Fixes'),
  features('Features'),
  other('Other Changes');

  const CommitTypeGroup(this.header);

  final String header;
}

enum CommitType {
  unconventional.other(),
  merge.other(),
  build.other(),
  chore.other(),
  ci.other(),
  docs.other(),
  feat.features(),
  fix.fixes(),
  bug.fixes(),
  perf.fixes(),
  refactor.other(),
  revert.other(),
  style.other(),
  test.other(),
  version.other();

  const CommitType.fixes() : group = CommitTypeGroup.fixes;
  const CommitType.features() : group = CommitTypeGroup.features;
  const CommitType.other() : group = CommitTypeGroup.other;

  final CommitTypeGroup group;
}

/// {@template aft.changelog.commit_message}
/// A parsed git commit message.
/// {@endtemplate}
abstract class CommitMessage with AWSEquatable<CommitMessage> {
  /// {@macro aft.changelog.commit_message}
  const CommitMessage({
    required this.sha,
    required this.summary,
    required this.dateTime,
  });

  /// Parses a commit message [summary].
  factory CommitMessage.parse(
    String sha,
    String summary, {
    required String body,
    int? commitTimeSecs,
  }) {
    final dateTime = commitTimeSecs == null
        ? DateTime.now().toUtc()
        : DateTime.fromMillisecondsSinceEpoch(
            commitTimeSecs * 1000,
          ).toUtc();
    final mergeCommit = _mergeCommitRegex.firstMatch(summary);
    if (mergeCommit != null) {
      return MergeCommitMessage(
        sha: sha,
        summary: mergeCommit.group(0)!,
        dateTime: dateTime,
      );
    }

    final commitMessage = _commitRegex.firstMatch(summary);
    if (commitMessage == null) {
      throw ArgumentError.value(
        summary,
        'summary',
        'Not a valid commit message',
      );
    }

    final typeStr = commitMessage.namedGroup('type');
    if (typeStr == null) {
      return UnconventionalCommitMessage(
        sha: sha,
        summary: summary,
        dateTime: dateTime,
      );
    }

    final type = CommitType.values.byName(typeStr);
    final isBreakingChange = commitMessage.namedGroup('breaking') != null;
    final scopes = commitMessage
            .namedGroup('scope')
            ?.replaceAll(RegExp(r'[\(\)]'), '')
            .split(',')
            .map((scope) => scope.trim())
            .toList() ??
        const [];
    final description = commitMessage
        .namedGroup('description')
        ?.replaceAll(RegExp(r'^:\s'), '')
        .trim();
    // Fall back for malformed messages.
    if (description == null) {
      return UnconventionalCommitMessage(
        sha: sha,
        summary: summary,
        dateTime: dateTime,
      );
    }

    if (type == CommitType.chore && scopes.singleOrNull == 'version') {
      return VersionCommitMessage.parse(
        sha: sha,
        summary: summary,
        body: body,
        dateTime: dateTime,
      );
    }
    return ConventionalCommitMessage(
      sha: sha,
      summary: summary,
      description: description,
      type: type,
      isBreakingChange: isBreakingChange,
      scopes: scopes,
      dateTime: dateTime,
    );
  }

  /// The commit's OID SHA.
  final String sha;

  /// The full, unmodified, commit summary.
  final String summary;

  /// The date/time the commit was made.
  final DateTime dateTime;

  /// The parsed commit description.
  String get description => summary;

  /// The type of commit message.
  CommitType get type;

  /// The group for the commit type.
  CommitTypeGroup get group {
    if (isBreakingChange) {
      return CommitTypeGroup.breaking;
    }
    return type.group;
  }

  /// Whether this commit message is for a version bump.
  bool get isVersionBump => false;

  /// Whether a commit of this type should be included in a CHANGELOG by
  /// default.
  bool get includeInChangelog => false;

  /// Whether this is a breaking change, denoted by a `!` after the scope, e.g.
  /// `fix(auth)!`.
  bool get isBreakingChange => false;

  /// How to bump the package's version based off this commit.
  VersionBumpType? get bumpType => null;

  /// The PR tagged in this commit, e.g. `(#2012)`.
  int? get taggedPr {
    final match = RegExp(r'#(\d+)').firstMatch(summary)?.group(1);
    if (match == null) {
      return null;
    }
    return int.parse(match);
  }

  @override
  List<Object?> get props => [summary, dateTime];

  @override
  String toString() => summary;
}

/// {@template aft.changelog.merge_commit_message}
/// A commit message representing a merge commit.
/// {@endtemplate}
class MergeCommitMessage extends CommitMessage {
  /// {@macro aft.changelog.merge_commit_message}
  const MergeCommitMessage({
    required super.sha,
    required super.summary,
    required super.dateTime,
  });

  @override
  CommitType get type => CommitType.merge;
}

/// {@template aft.changelog.conventional_commit_message}
/// A commit message representing a [conventional commit](https://www.conventionalcommits.org/).
/// {@endtemplate}
class ConventionalCommitMessage extends CommitMessage {
  /// {@macro aft.changelog.conventional_commit_message}
  const ConventionalCommitMessage({
    required super.sha,
    required super.summary,
    required this.description,
    required this.type,
    required this.isBreakingChange,
    required this.scopes,
    required super.dateTime,
  });

  @override
  final String description;

  @override
  final CommitType type;

  @override
  final bool isBreakingChange;

  /// The list of scopes, or tags, which this commit covers.
  final List<String> scopes;

  @override
  bool get isVersionBump =>
      type == CommitType.chore && scopes.singleOrNull == 'version';

  @override
  VersionBumpType get bumpType {
    switch (type) {
      case CommitType.version:
      case CommitType.unconventional:
      case CommitType.merge:
      case CommitType.build:
      case CommitType.chore:
      case CommitType.ci:
      case CommitType.docs:
      case CommitType.refactor:
      case CommitType.style:
      case CommitType.test:
      case CommitType.fix:
      case CommitType.bug:
      case CommitType.perf:
      case CommitType.revert:
        return isBreakingChange
            ? VersionBumpType.breaking
            : VersionBumpType.patch;
      case CommitType.feat:
        return isBreakingChange
            ? VersionBumpType.breaking
            : VersionBumpType.nonBreaking;
    }
  }

  @override
  bool get includeInChangelog {
    if (isBreakingChange) {
      return true;
    }
    switch (type) {
      case CommitType.unconventional:
      case CommitType.merge:
      case CommitType.build:
      case CommitType.chore:
      case CommitType.ci:
      case CommitType.docs:
      case CommitType.refactor:
      case CommitType.style:
      case CommitType.test:
      case CommitType.version:
        return false;
      case CommitType.feat:
      case CommitType.fix:
      case CommitType.bug:
      case CommitType.perf:
      case CommitType.revert:
        return true;
    }
  }
}

/// {@template aft.changelog.unconventional_commit_message}
/// A commit message which is not a [ConventionalCommitMessage], i.e. a regular
/// commit message with no special formatting or meaning.
/// {@endtemplate}
class UnconventionalCommitMessage extends CommitMessage {
  /// {@macro aft.changelog.unconventional_commit_message}
  const UnconventionalCommitMessage({
    required super.sha,
    required super.summary,
    required super.dateTime,
  });

  @override
  CommitType get type => CommitType.unconventional;

  @override
  VersionBumpType get bumpType => VersionBumpType.patch;
}

/// {@template aft.changelog.version_commit_message}
/// A commit message which identifies a version bump performed by `aft`.
///
/// These messages take the form `chore(version): ...` and list out the
/// relevant version bump information including a complete feature log.
/// {@endtemplate}
class VersionCommitMessage extends CommitMessage {
  /// {@macro aft.changelog.version_commit_message}
  factory VersionCommitMessage.parse({
    required String sha,
    required String summary,
    required String body,
    required DateTime dateTime,
  }) {
    final trailers = Map.fromEntries(
      LineSplitter.split(body).where(_trailerRegex.hasMatch).map(
            (line) => MapEntry(
              line.split(':')[0],
              line.split(':')[1].trim(),
            ),
          ),
    );
    final updatedComponentsStr = trailers['Updated-Components'];
    final updatedComponents = updatedComponentsStr == null
        ? const <String>[]
        : updatedComponentsStr.split(',').map((el) => el.trim()).toList();
    return VersionCommitMessage._(
      sha: sha,
      summary: summary,
      updatedComponents: updatedComponents,
      dateTime: dateTime,
    );
  }

  const VersionCommitMessage._({
    required super.sha,
    required super.summary,
    required this.updatedComponents,
    required super.dateTime,
  });

  /// The list of updated components or packages.
  final List<String> updatedComponents;

  @override
  CommitType get type => CommitType.version;
}
