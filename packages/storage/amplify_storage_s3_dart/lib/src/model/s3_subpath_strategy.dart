// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_subpath_strategy.g.dart';

/// {@template storage.amplify_storage_s3.subpath_strategy}
/// The configurable parameters for the Storage S3 plugin `list` API.
/// {@endtemplate}
@zAmplifySerializable
class SubpathStrategy extends StorageListPluginOptions {
  /// {@macro amplify_core.storage.subpath_strategy}

  const SubpathStrategy.include() : this._();

  const SubpathStrategy._({
    this.excludeSubPaths = false,
    this.delimiter = '/',
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

  @override
  List<Object?> get props => throw UnimplementedError();

  @override
  String get runtimeTypeName => throw UnimplementedError();

  @override
  Map<String, String> toJson() {
    throw UnimplementedError();
  }
}
