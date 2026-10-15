// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.subpath_strategy}
/// The strategy to use when listing contents from subpaths of the path being
/// listed by `Amplify.Storage.list`.
///
/// Use [SubpathStrategy.include] (the default) to return every object under
/// the path, including objects nested in subpaths. Use
/// [SubpathStrategy.exclude] to return only the objects directly under the
/// path, in which case the omitted subpaths are reported in
/// [StorageListResult.excludedSubpaths].
/// {@endtemplate}
///
/// ### Example
/// Given the following objects:
/// ```
/// photos/photo1.jpg
/// photos/vacation/photo2.jpg
/// ```
///
/// Listing `photos/` with [SubpathStrategy.exclude] returns only
/// `photos/photo1.jpg` in `items`, and reports `photos/vacation/` in
/// `excludedSubpaths`.
sealed class SubpathStrategy
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  /// {@macro amplify_core.storage.subpath_strategy}
  const SubpathStrategy();

  /// Returns every object under the path, including objects nested in
  /// subpaths. This is the default strategy.
  ///
  /// ### Example
  /// ```dart
  /// const strategy = SubpathStrategy.include();
  /// ```
  const factory SubpathStrategy.include() = SubpathStrategyInclude;

  /// Returns only the objects directly under the path, grouping objects in
  /// subpaths by [delimiter] and reporting those subpaths in
  /// [StorageListResult.excludedSubpaths].
  ///
  /// The default [delimiter] is `/`. Supply a custom delimiter when the
  /// objects are organized by a different character.
  ///
  /// ### Example
  /// ```dart
  /// const strategy = SubpathStrategy.exclude();
  /// const customDelimiter = SubpathStrategy.exclude(delimiter: '-');
  /// ```
  const factory SubpathStrategy.exclude({String delimiter}) =
      SubpathStrategyExclude;
}

/// {@template amplify_core.storage.subpath_strategy_include}
/// The [SubpathStrategy] that returns every object under the path being
/// listed, including objects nested in subpaths.
///
/// Create with [SubpathStrategy.include].
/// {@endtemplate}
// `AWSEquatable` is applied to each subtype rather than to `SubpathStrategy`
// so that its `other is T` check uses the concrete type. Applying it to the
// sealed supertype would make cases with matching `props` compare equal.
final class SubpathStrategyInclude extends SubpathStrategy
    with AWSEquatable<SubpathStrategyInclude> {
  /// {@macro amplify_core.storage.subpath_strategy_include}
  const SubpathStrategyInclude();

  @override
  List<Object?> get props => const [];

  @override
  String get runtimeTypeName => 'SubpathStrategyInclude';

  @override
  Map<String, Object?> toJson() => {'strategy': 'include'};
}

/// {@template amplify_core.storage.subpath_strategy_exclude}
/// The [SubpathStrategy] that returns only the objects directly under the path
/// being listed, reporting the omitted subpaths in
/// [StorageListResult.excludedSubpaths].
///
/// Create with [SubpathStrategy.exclude].
/// {@endtemplate}
final class SubpathStrategyExclude extends SubpathStrategy
    with AWSEquatable<SubpathStrategyExclude> {
  /// {@macro amplify_core.storage.subpath_strategy_exclude}
  const SubpathStrategyExclude({this.delimiter = '/'});

  /// The delimiter used to group objects into subpaths. Defaults to `/`.
  final String delimiter;

  @override
  List<Object?> get props => [delimiter];

  @override
  String get runtimeTypeName => 'SubpathStrategyExclude';

  @override
  Map<String, Object?> toJson() => {
    'strategy': 'exclude',
    'delimiter': delimiter,
  };
}
