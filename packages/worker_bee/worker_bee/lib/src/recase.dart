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

// Extended from recase v4.0 (https://github.com/techniboogie-dart/recase) to
// include changes related to acronym preservation.
@internal
library worker_bee.recase;

import 'package:meta/meta.dart';

/// An instance of text to be re-cased.
class _ReCase {
  _ReCase(String text)
      : originalText = text,
        _words = text.groupIntoWords();

  final String originalText;
  final List<String> _words;

  /// param-case
  String get paramCase => _getSnakeCase(separator: '-');

  String _getSnakeCase({String separator = '_'}) {
    final words = _words.map((word) => word.toLowerCase()).toList();

    return words.join(separator);
  }
}

/// Recasing string helpers.
extension StringReCase on String {
  /// param-case
  String get paramCase => _ReCase(this).paramCase;

  // "acm-success"-> "acm success"
  static final _nonAlphaNumericChars = RegExp(r'[^A-Za-z0-9+]');

  // TESTv4 -> "TEST v4"
  static final _standaloneVLower = RegExp(r'([^a-z]{2,})v([0-9]+)');

  // TestV4 -> "Test V4"
  static final _standaloneVUpper = RegExp(r'([^A-Z]{2,})V([0-9]+)');

  // "AcmSuccess" -> "Acm Success"
  static final _camelCasedWords =
      RegExp(r'(?<=[a-z])(?=[A-Z]([a-zA-Z]|[0-9]))');

  // "ACMSuccess" -> "ACM Success"
  static final _acronyms = RegExp(r'([A-Z]+)([A-Z][a-z])');

  // "s3ec2" -> "s3 ec2"
  static final _numInMiddleOrEnd = RegExp(r'([0-9])([a-zA-Z])');

  /// Splits `this` into words along word boundaries.
  List<String> groupIntoWords() {
    var result = this;

    // all non-alphanumeric characters: "acm-success"-> "acm success"
    result = result.replaceAll(_nonAlphaNumericChars, ' ');

    // if a number has a standalone v in front of it, separate it out
    result = result
        // TESTv4 -> "TEST v4"
        .replaceAllMapped(
          _standaloneVLower,
          (m) => '${m.group(1)} v${m.group(2)}',
        )

        // TestV4 -> "Test V4"
        .replaceAllMapped(
          _standaloneVUpper,
          (m) => '${m.group(1)} V${m.group(2)}',
        );

    // add a space between camelCased words: "AcmSuccess" -> "Acm Success"
    result = result.split(_camelCasedWords).join(' ');

    // add a space after acronyms: "ACMSuccess" -> "ACM Success"
    result = result.replaceAllMapped(
      _acronyms,
      (m) => '${m.group(1)} ${m.group(2)}',
    );

    // add space after a number in the middle of a word: "s3ec2" -> "s3 ec2"
    result = result.replaceAllMapped(
      _numInMiddleOrEnd,
      (m) => '${m.group(1)} ${m.group(2)}',
    );

    // remove extra spaces - multiple consecutive ones or those and the
    // beginning/end of words
    result = result.replaceAll(RegExp(r'\s+'), ' ').trim();

    return result.split(' ');
  }
}
