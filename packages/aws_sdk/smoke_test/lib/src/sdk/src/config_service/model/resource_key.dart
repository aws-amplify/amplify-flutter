// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.resource_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i2;

part 'resource_key.g.dart';

/// The details that identify a resource within Config, including the resource type and resource ID.
abstract class ResourceKey
    with _i1.AWSEquatable<ResourceKey>
    implements Built<ResourceKey, ResourceKeyBuilder> {
  /// The details that identify a resource within Config, including the resource type and resource ID.
  factory ResourceKey({
    required _i2.ResourceType resourceType,
    required String resourceId,
  }) {
    return _$ResourceKey._(
      resourceType: resourceType,
      resourceId: resourceId,
    );
  }

  /// The details that identify a resource within Config, including the resource type and resource ID.
  factory ResourceKey.build([void Function(ResourceKeyBuilder) updates]) =
      _$ResourceKey;

  const ResourceKey._();

  static const List<_i3.SmithySerializer<ResourceKey>> serializers = [
    ResourceKeyAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceKeyBuilder b) {}

  /// The resource type.
  _i2.ResourceType get resourceType;

  /// The ID of the resource (for example., sg-xxxxxx).
  String get resourceId;
  @override
  List<Object?> get props => [
        resourceType,
        resourceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceKey')
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceId',
        resourceId,
      );
    return helper.toString();
  }
}

class ResourceKeyAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ResourceKey> {
  const ResourceKeyAwsJson11Serializer() : super('ResourceKey');

  @override
  Iterable<Type> get types => const [
        ResourceKey,
        _$ResourceKey,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceKey deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceKeyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ResourceType),
          ) as _i2.ResourceType);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResourceKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResourceKey(:resourceType, :resourceId) = object;
    result$.addAll([
      'resourceType',
      serializers.serialize(
        resourceType,
        specifiedType: const FullType(_i2.ResourceType),
      ),
      'resourceId',
      serializers.serialize(
        resourceId,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
