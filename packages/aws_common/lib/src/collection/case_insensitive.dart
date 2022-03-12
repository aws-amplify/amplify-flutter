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
