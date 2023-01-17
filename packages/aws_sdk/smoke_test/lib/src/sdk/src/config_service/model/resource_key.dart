// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    required String resourceId,
    required _i2.ResourceType resourceType,
  }) {
    return _$ResourceKey._(
      resourceId: resourceId,
      resourceType: resourceType,
    );
  }

  /// The details that identify a resource within Config, including the resource type and resource ID.
  factory ResourceKey.build([void Function(ResourceKeyBuilder) updates]) =
      _$ResourceKey;

  const ResourceKey._();

  static const List<_i3.SmithySerializer> serializers = [
    ResourceKeyAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceKeyBuilder b) {}

  /// The ID of the resource (for example., sg-xxxxxx).
  String get resourceId;

  /// The resource type.
  _i2.ResourceType get resourceType;
  @override
  List<Object?> get props => [
        resourceId,
        resourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceKey');
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
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
      switch (key) {
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ResourceType),
          ) as _i2.ResourceType);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ResourceKey);
    final result = <Object?>[
      'resourceId',
      serializers.serialize(
        payload.resourceId,
        specifiedType: const FullType(String),
      ),
      'resourceType',
      serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(_i2.ResourceType),
      ),
    ];
    return result;
  }
}
