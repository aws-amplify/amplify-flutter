// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: prefer_asserts_with_message

import 'dart:convert';

import 'package:aft_common/src/git/tools.dart';

/// Represents the output from `git show-ref`
class CommitReference {
  CommitReference(this.sha, this.reference) {
    requireArgumentValidSha1(sha, 'sha');
    assert(reference.startsWith('refs/') || reference == 'HEAD');
  }

  static final RegExp _lsRemoteRegExp = RegExp('^($shaRegexPattern) (.+)\$');

  final String sha;
  final String reference;

  static List<CommitReference> fromShowRefOutput(String input) {
    final lines = const LineSplitter().convert(input);

    return lines.sublist(0, lines.length).map((line) {
      final match = _lsRemoteRegExp.allMatches(line).single;
      assert(match.groupCount == 2);

      return CommitReference(match[1]!, match[2]!);
    }).toList();
  }

  @override
  String toString() => 'GitReference: $reference  $sha';
}
