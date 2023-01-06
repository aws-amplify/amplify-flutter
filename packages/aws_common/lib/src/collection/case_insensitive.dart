// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:collection/collection.dart';

/// {@template aws_common.case_insensitive_map}
/// Creates a case-insensitive [Map] using [equalsIgnoreAsciiCase] and
/// [hashIgnoreAsciiCase] for comparison.
/// {@endtemplate}
class CaseInsensitiveMap<V> extends DelegatingMap<String, V> {
  /// {@macro aws_common.case_insensitive_map}
  CaseInsensitiveMap(Map<String, V> base)
      : super(
          LinkedHashMap(
            equals: equalsIgnoreAsciiCase,
            hashCode: hashIgnoreAsciiCase,
          )..addAll(base),
        );
}

/// {@template aws_common.case_insensitive_set}
/// Creates a case-insensitive [Set] using [equalsIgnoreAsciiCase] and
/// [hashIgnoreAsciiCase] for comparison.
/// {@endtemplate}
class CaseInsensitiveSet extends DelegatingSet<String> {
  /// {@macro aws_common.case_insensitive_set}
  CaseInsensitiveSet(Iterable<String> base)
      : super(
          LinkedHashSet(
            equals: equalsIgnoreAsciiCase,
            hashCode: hashIgnoreAsciiCase,
          )..addAll(base),
        );
}
