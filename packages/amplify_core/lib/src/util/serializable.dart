//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'dart:collection';

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

/// Global serialization options for Amplify types.
const amplifySerializable = JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
);

/// Global serialization options for AWS types.
const awsSerializable = JsonSerializable(
  fieldRename: FieldRename.pascal,
  includeIfNull: false,
  explicitToJson: true,
);

/// Serialization options for [ConfigMap] types.
@internal
const configMapSerializable = JsonSerializable(
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
