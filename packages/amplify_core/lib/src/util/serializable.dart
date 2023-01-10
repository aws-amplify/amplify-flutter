// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

// Export these so that files importing only this file will have access to
// these helpers in their generated parts.
export 'package:json_annotation/json_annotation.dart'
    show
        $enumDecode,
        $enumDecodeNullable,
        $checkKeys,
        $checkedConvert,
        $checkedCreate,
        $checkedNew;

/// Global serialization options for Amplify types.
const zAmplifySerializable = JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
);

/// Global serialization options for Amplify types with generic parameters.
const zAmplifyGenericSerializable = JsonSerializable(
  genericArgumentFactories: true,
  includeIfNull: false,
  explicitToJson: true,
);

/// Global serialization options for AWS types.
const zAwsSerializable = JsonSerializable(
  fieldRename: FieldRename.pascal,
  includeIfNull: false,
  explicitToJson: true,
);

/// Serialization options for [ConfigMap] types.
@internal
const zConfigMapSerializable = JsonSerializable(
  genericArgumentFactories: true,
  ignoreUnannotated: true,
  createToJson: false,
);

/// {@template amplify_flutter.serializable_map}
/// A [Map] which conforms to [AWSSerializable].
/// {@endtemplate}
class SerializableMap<V> extends MapView<String, V> with AWSSerializable {
  /// {@macro amplify_flutter.serializable_map}
  const SerializableMap(Map<String, V> map) : super(map);

  @override
  Map<String, Object?> toJson() => this;
}
