// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_move_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.move_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `move` API.
/// {@endtemplate}
@zAmplifySerializable
class S3MovePluginOptions extends StorageMovePluginOptions {
  /// {@macro storage.amplify_storage_s3.move_plugin_options}
  const S3MovePluginOptions({
    this.getProperties = false,
  });

  /// {@macro storage.amplify_storage_s3.move_plugin_options}
  factory S3MovePluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3MovePluginOptionsFromJson(json);

  /// Whether to retrieve properties for the moved object using the
  /// `getProperties` API.
  final bool getProperties;

  @override
  List<Object?> get props => [getProperties];

  @override
  String get runtimeTypeName => 'S3MovePluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3MovePluginOptionsToJson(this);
}
