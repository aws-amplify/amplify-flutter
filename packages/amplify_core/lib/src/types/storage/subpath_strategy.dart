// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.storage.subpath_strategy}
/// Presents ________
/// {@endtemplate}
class SubpathStrategy {
  /// {@macro amplify_core.storage.subpath_strategy}

  const SubpathStrategy._({
    this.excludeSubPaths = false,
    this.delimiter = '/',
  });

  const SubpathStrategy.exclude({String? delimiter})
      : this._(
          excludeSubPaths: true,
          delimiter: delimiter,
        );

  const SubpathStrategy.include() : this._();

  /// Whether to exclude objects under the sub paths of the path to list.
  final bool excludeSubPaths;

  /// The delimiter to use when evaluating sub paths. If [excludeSubPaths] is
  /// false, this value has no impact on behavior.
  final String? delimiter;
}
