// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.amplify_storage_category.subpath_strategy}
/// Configurable options for `Amplify.Storage.list`.
/// {@endtemplate}
class SubpathStrategy with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.amplify_storage_category.subpath_strategy}
  const SubpathStrategy.include() : this._();

  const SubpathStrategy._({
    this.excludeSubpaths = false,
    this.delimiter = '/',
  });

  /// Constructor for SubpathStrategy for excluding subpaths, option to specify the delimiter
  const SubpathStrategy.exclude({String delimiter = '/'})
      : this._(
          excludeSubpaths: true,
          delimiter: delimiter,
        );

  /// Whether to exclude objects under the sub paths of the path to list.
  final bool excludeSubpaths;

  /// The delimiter to use when evaluating sub paths. If [excludeSubpaths] is
  /// false, this value has no impact on behavior.
  final String delimiter;

  @override
  Map<String, Object?> toJson() {
    return <String, dynamic>{
      'excludeSubpaths': excludeSubpaths,
      'delimiter': delimiter,
    };
  }
}
