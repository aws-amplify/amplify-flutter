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

import 'dart:collection';

import 'package:collection/collection.dart';

/// {@template aws_common.case_insensitive_map}
/// Creates a case-insensitive [Map].
///
/// Keys are converted to strings using [Object.toString] if they are not
/// alreadys strings.
/// {@endtemplate}
class CaseInsensitiveMap<K, V> extends CanonicalizedMap<String, K, V> {
  /// {@macro aws_common.case_insensitive_map}
  CaseInsensitiveMap(Map<K, V> other)
      : super.from(
          other,
          (key) => key.toString().toLowerCase(),
        );
}

/// {@template aws_common.case_insensitive_set}
/// Creates a case-insensitive [Set] of [String]s.
/// {@endtemplate}
class CaseInsensitiveSet extends DelegatingSet<String> {
  /// {@macro aws_common.case_insensitive_set}
  CaseInsensitiveSet(Iterable<String> base)
      : super(LinkedHashSet(
          equals: (a, b) => a.toLowerCase() == b.toLowerCase(),
          hashCode: (key) => key.toLowerCase().hashCode,
        )..addAll(base));
}
