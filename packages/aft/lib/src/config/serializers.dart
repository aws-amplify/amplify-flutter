// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/src/models.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:pub_semver/pub_semver.dart';

part 'serializers.g.dart';

@SerializersFor([
  AftConfig,
  Environment,
  PlatformEnvironment,
  AndroidEnvironment,
  IosEnvironment,
  MacOSEnvironment,
  GitHubPackageConfig,
])
final Serializers aftSerializers = (_$aftSerializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(const VersionConstraintSerializer())
      ..add(const JsonSerializer<PackageInfo>(fromJson: PackageInfo.fromJson))
      ..add(const JsonSerializer<AftComponent>(fromJson: AftComponent.fromJson))
      ..add(const JsonSerializer<AftScript>(fromJson: AftScript.fromJson)))
    .build();

final class JsonSerializer<T extends AWSSerializable>
    implements PrimitiveSerializer<T> {
  const JsonSerializer({
    required this.fromJson,
  });

  final T Function(Map<String, Object?>) fromJson;
  static final StandardJsonPlugin _jsonPlugin = StandardJsonPlugin();

  @override
  T deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return fromJson(
      _jsonPlugin.afterSerialize(serialized, specifiedType)
          as Map<String, Object?>,
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    T object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return object.toJson()!;
  }

  @override
  Iterable<Type> get types => [T];

  @override
  String get wireName => '$T';
}

final class VersionConstraintSerializer
    implements PrimitiveSerializer<VersionConstraint> {
  const VersionConstraintSerializer();

  @override
  VersionConstraint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return VersionConstraint.parse(serialized as String);
  }

  @override
  Object serialize(
    Serializers serializers,
    VersionConstraint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return object.toString();
  }

  @override
  Iterable<Type> get types => [Version, VersionConstraint, VersionRange];

  @override
  String get wireName => 'VersionConstraint';
}
