// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_subpath_strategy.g.dart';

// TODO(hahnand): change json serializable to dart macros when it hits stable & min version includes feature - https://dart.dev/language/macros

/// {@template storage.amplify_storage_s3.subpath_strategy}
/// The configurable subpath strategy for Storage S3 `list` API.
/// {@endtemplate}
@zAmplifySerializable
class SubpathStrategy extends StorageListPluginOptions {
  /// {@macro storage.amplify_storage_s3.subpath_strategy}
  const SubpathStrategy({
    bool excludeSubPaths = false,
    String delimiter = '/',
  }) : this._(
          excludeSubPaths: excludeSubPaths,
          delimiter: delimiter,
        );

  /// {@macro storage.amplify_storage_s3.subpath_strategy}
  /// Constructor for listing all objects without pagination.
  const SubpathStrategy.listAll({
    bool excludeSubPaths = false,
  }) : this._(
          excludeSubPaths: excludeSubPaths,
          listAll: true,
        );

  /// {@macro storage.amplify_storage_s3.subpath_strategy}
  factory SubpathStrategy.fromJson(Map<String, Object?> json) =>
      _$SubpathStrategyFromJson(json);

  /// Default constructor syntactic sugar for DX parity
  const SubpathStrategy.include() : this._();

  /// {@macro storage.amplify_storage_s3.subpath_strategy}
  const SubpathStrategy._({
    this.excludeSubPaths = false,
    this.delimiter = '/',
    this.listAll = false,
  });

  /// Constructor for excludes with optional delimiter arg
  const SubpathStrategy.exclude({String? delimiter})
      : this._(
          excludeSubPaths: true,
          delimiter: delimiter,
        );

  /// Whether to exclude objects under the sub paths of the path to list.
  final bool excludeSubPaths;

  /// The delimiter to use when evaluating sub paths. If [excludeSubPaths] is
  /// false, this value has no impact on behavior.
  final String? delimiter;

  /// Whether to list all objects under a given path without pagination. The
  /// default value is `false`.
  ///
  /// This can be set by using [SubpathStrategy.listAll].
  ///
  /// Use with caution if numerous objects are under the given path.
  final bool listAll;

  @override
  List<Object?> get props => [
        excludeSubPaths,
        listAll,
      ];

  @override
  String get runtimeTypeName => 'SubpathStrategy';

  @override
  Map<String, Object?> toJson() => _$SubpathStrategyToJson(this);
}
