// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft_common/aft_common.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:pub_semver/pub_semver.dart';

part 'dependency_update.g.dart';

typedef DependencyUpdateGroup = BuiltList<String>;

abstract class DependencyUpdate
    with AWSSerializable
    implements Built<DependencyUpdate, DependencyUpdateBuilder> {
  factory DependencyUpdate([void Function(DependencyUpdateBuilder) updates]) =
      _$DependencyUpdate;

  const DependencyUpdate._();

  static DependencyUpdate fromJson(Map<String, Object?> json) {
    return _serializers.deserializeWith(serializer, json)!;
  }

  String get packageName;
  Version get latestVersion;
  VersionConstraint? get globalConstraint;
  BuiltMap<String, VersionConstraint> get dependentPackages;

  @override
  Map<String, Object?> toJson() {
    return _serializers.serializeWith(serializer, this) as Map<String, Object?>;
  }

  static Serializer<DependencyUpdate> get serializer =>
      _$dependencyUpdateSerializer;
}

@SerializersFor([
  DependencyUpdate,
])
final Serializers _serializers = (_$_serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(const VersionConstraintSerializer())
      ..add(const VersionConstraintSerializer<Version>()))
    .build();
