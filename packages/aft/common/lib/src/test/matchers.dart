// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

/// Creates a [Matcher] for the [expected] contents of a pubspec.
///
/// Unlike [equals], this compares by deep equality of the [Map] representation
/// of the pubspecs, meaning that the YAML strings can vary.
Matcher matchesPubspec(String expected) => _PubspecMatcher(expected);

final class _PubspecMatcher extends Matcher {
  _PubspecMatcher(this._expectedYaml);

  final String _expectedYaml;
  late final YamlMap expected = loadYaml(_expectedYaml) as YamlMap;
  late final _equalsMatcher = equals(expected);

  @override
  Description describe(Description description) {
    return _equalsMatcher.describe(description);
  }

  @override
  Description describeMismatch(
    Object? item,
    Description mismatchDescription,
    Map<Object?, Object?> matchState,
    bool verbose,
  ) {
    return _equalsMatcher.describeMismatch(
      item,
      mismatchDescription,
      matchState,
      verbose,
    );
  }

  @override
  bool matches(Object? item, Map<Object?, Object?> matchState) {
    final pubspecMap = switch (item) {
      String _ => loadYaml(item) as YamlMap,
      Map<Object?, Object?> _ => item,
      _ => throw ArgumentError(
          'Invalid pubspec. Expected String or Map, got ${item.runtimeType}',
        ),
    };
    return _equalsMatcher.matches(pubspecMap, matchState);
  }
}
