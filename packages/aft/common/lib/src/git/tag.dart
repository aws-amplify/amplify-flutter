// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: prefer_asserts_with_message

import 'package:aft_common/src/git/tools.dart';

class Tag {
  Tag._internal(this.objectSha, this.type, this.tag, this.tagger) {
    requireArgumentValidSha1(objectSha, 'objectSha');
    requireArgumentNotNullOrEmpty(type, 'type');
    requireArgumentNotNullOrEmpty(tag, 'tag');
    requireArgumentNotNullOrEmpty(tagger, 'tagger');
  }
  final String objectSha;
  final String type;
  final String tag;
  final String tagger;

  static Tag parseCatFile(String content) {
    final headers = <String, List<String>>{};

    final slr = StringLineReader(content);

    var lastLine = slr.readNextLine()!;

    while (lastLine.isNotEmpty) {
      final match = headerRegExp.allMatches(lastLine).single;
      assert(match.groupCount == 2);
      final header = match.group(1)!;
      final value = match.group(2)!;

      headers.putIfAbsent(header, () => <String>[]).add(value);

      lastLine = slr.readNextLine()!;
    }

    final objectSha = headers['object']!.single;
    final type = headers['type']!.single;
    final tag = headers['tag']!.single;
    final tagger = headers['tagger']!.single;

    return Tag._internal(objectSha, type, tag, tagger);
  }
}
