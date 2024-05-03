// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';

class GitHubData {
  GitHubData.fromJson(Map<String, dynamic> json)
      : title = json['title'] as String,
        body = json['body'] as String,
        number = json['number'] as int,
        changedFiles = json['changedFiles'] as int,
        additions = json['additions'] as int,
        deletions = json['deletions'] as int,
        url = json['url'] as String;

  String title;
  String body;
  int number;
  int changedFiles;
  int additions;
  int deletions;
  String url;

  final String _legal =
      'By submitting this pull request, I confirm that you can use, modify, copy, and redistribute this contribution, under the terms of your choice.';
  final String _lineBreak = '========================================';

  final emojis = {
    ReviewPriority.urgent: ':alert:',
    ReviewPriority.high: ':arrow_double_up:',
    ReviewPriority.normal: ':arrow_up:',
    ReviewPriority.low: ':arrow_down:',
  };

  @override
  String toString() {
    return '{Title: $title,\nBody: $body,\nNumber: $number,\nChanged Files: $changedFiles,\nAdditions: $additions,\nDeletions: $deletions}';
  }

  /// Converts the PR data to a Slack-formatted string.
  String toMarkdown(ReviewPriority priority) {
    return '''
$_lineBreak
${emojis[priority]} *$title - [$number]($url)*
> +$additions -$deletions | files: $changedFiles
${body.replaceAll(_legal, '').trim()}
*Reviewers:*  
$_lineBreak''';
  }
}

enum ReviewPriority { urgent, high, normal, low }

/// Command to clean all temporary files in the repo.
class ReviewCommand extends AmplifyCommand {
  ReviewCommand() {
    argParser
      ..addOption(
        'ref',
        abbr: 'r',
        help:
            'The PR reference. Can be a PR number or URL. Defaults to the current branch.',
      )
      ..addOption(
        'priority',
        abbr: 'p',
        help: 'Determines the emoji to use for the PR review.',
        allowed: ReviewPriority.values.map((e) => e.name).toList(),
        defaultsTo: ReviewPriority.normal.name,
      );
  }
  @override
  String get description => 'Creates PR review text for slack';

  @override
  String get name => 'review';

  /// The PR ref to review.
  late final ref = argResults?['ref'] as String? ?? '';

  /// Determines the emoji to use for the PR review.
  late final priority = ReviewPriority.values.firstWhere(
    (e) => e.name == argResults!['priority'] as String,
    orElse: () => ReviewPriority.normal,
  );

  /// Verifies that the PR is ready using gh CLI.
  Future<void> _verifyPR(String ref) async {
    final branchName = await Process.run(
      'gh',
      ['pr', 'ready', ref],
    );
    if (branchName.exitCode != 0) {
      final error = branchName.stderr.toString();
      if (error.contains('Could not resolve to a PullRequest')) {
        logger.error('A PR is not ready at ref: $ref');
      } else {
        logger.error('Invalid ref: $error');
      }
      exit(1);
    }
  }

  /// Fetches PR data from GitHub using gh CLI.
  Future<GitHubData> _getGitHubData(String ref) async {
    final process = await Process.run(
      'gh',
      [
        'pr',
        'view',
        ref,
        '--json',
        'title,body,number,changedFiles,additions,deletions,url',
      ],
    );
    if (process.exitCode != 0) {
      logger.error('Could not fetch PR data from GitHub');
      exit(1);
    }
    if (process.stdout is! String) {
      logger.error('GitHub data is not a string');
      exit(1);
    }

    final prDataJson =
        jsonDecode(process.stdout as String) as Map<String, dynamic>;
    final prData = GitHubData.fromJson(prDataJson);
    return prData;
  }

  @override
  Future<void> run() async {
    await super.run();

    await _verifyPR(ref);

    final ghData = await _getGitHubData(ref);

    final slackString = ghData.toMarkdown(priority);

    logger
      ..info(slackString)
      ..info('After pasting into slack, press CMD+SHIFT+F to format the text.')
      ..info('Review output was successful!');
  }
}
