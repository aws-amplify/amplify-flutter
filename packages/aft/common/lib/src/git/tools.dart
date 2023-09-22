// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library;

import 'package:meta/meta.dart';

const shaRegexPattern = '[a-f0-9]{40}';
final _shaRegEx = RegExp('^$shaRegexPattern\$');

final headerRegExp = RegExp(r'^([a-z]+) (.+)$');

/// Returns `true` if [value] represents a valid SHA1 [String].
bool isValidSha(String value) => _shaRegEx.hasMatch(value);

void requireArgumentValidSha1(String value, String argName) {
  metaRequireArgumentNotNullOrEmpty(argName);
  requireArgumentNotNullOrEmpty(value, argName);

  if (!isValidSha(value)) {
    throw ArgumentError.value(value, argName, 'Not a valid SHA1 value');
  }
}

void requireArgumentNotNullOrEmpty(String? argument, String argName) {
  metaRequireArgumentNotNullOrEmpty(argName);
  if (argument == null) {
    throw ArgumentError.notNull(argument);
  } else if (argument.isEmpty) {
    throw ArgumentError.value(argument, argName, 'cannot be an empty string');
  }
}

void metaRequireArgumentNotNullOrEmpty(String argName) {
  if (argName.isEmpty) {
    throw ArgumentError.value(
      argName,
      'argName',
      'Must be a non-empty argument name',
    );
  }
}

class StringLineReader {
  StringLineReader(this.source);
  final String source;

  int? _position = 0;

  int? get position => _position;

  bool get eof => _position == null;

  String? readNextLine() => _peekOrReadNextLine(true);

  String? peekNextLine() => _peekOrReadNextLine(false);

  String? readToEnd() {
    if (_position == null) {
      return null;
    }
    final value = source.substring(position!, source.length);
    _position = null;
    return value;
  }

  String? _peekOrReadNextLine(bool updatePosition) {
    if (_position == null) {
      return null;
    }
    final nextLF = source.indexOf('\n', _position!);

    if (nextLF < 0) {
      // no more new lines, return what's left and set postion = null
      final value = source.substring(_position!, source.length);
      if (updatePosition) {
        _position = null;
      }
      return value;
    }

    // to handle Windows newlines, see if the value before nextLF is a Carriage
    final isWinNL = nextLF > 0 && source.substring(nextLF - 1, nextLF) == '\r';

    final value = isWinNL
        ? source.substring(_position!, nextLF - 1)
        : source.substring(_position!, nextLF);

    if (updatePosition) {
      _position = nextLF + 1;
    }

    return value;
  }
}
