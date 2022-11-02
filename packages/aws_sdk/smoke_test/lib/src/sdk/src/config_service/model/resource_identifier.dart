// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.resource_identifier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i2;

part 'resource_identifier.g.dart';

/// The details that identify a resource that is discovered by Config, including the resource type, ID, and (if available) the custom resource name.
abstract class ResourceIdentifier
    with _i1.AWSEquatable<ResourceIdentifier>
    implements Built<ResourceIdentifier, ResourceIdentifierBuilder> {
  /// The details that identify a resource that is discovered by Config, including the resource type, ID, and (if available) the custom resource name.
  factory ResourceIdentifier({
    DateTime? resourceDeletionTime,
    String? resourceId,
    String? resourceName,
    _i2.ResourceType? resourceType,
  }) {
    return _$ResourceIdentifier._(
      resourceDeletionTime: resourceDeletionTime,
      resourceId: resourceId,
      resourceName: resourceName,
      resourceType: resourceType,
    );
  }

  /// The details that identify a resource that is discovered by Config, including the resource type, ID, and (if available) the custom resource name.
  factory ResourceIdentifier.build(
          [void Function(ResourceIdentifierBuilder) updates]) =
      _$ResourceIdentifier;

  const ResourceIdentifier._();

  static const List<_i3.SmithySerializer> serializers = [
    ResourceIdentifierAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceIdentifierBuilder b) {}

  /// The time that the resource was deleted.
  DateTime? get resourceDeletionTime;

  /// The ID of the resource (for example, `sg-xxxxxx`).
  String? get resourceId;

  /// The custom name of the resource (if available).
  String? get resourceName;

  /// The type of resource.
  _i2.ResourceType? get resourceType;
  @override
  List<Object?> get props => [
        resourceDeletionTime,
        resourceId,
        resourceName,
        resourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceIdentifier');
    helper.add(
      'resourceDeletionTime',
      resourceDeletionTime,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceName',
      resourceName,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class ResourceIdentifierAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ResourceIdentifier> {
  const ResourceIdentifierAwsJson11Serializer() : super('ResourceIdentifier');

  @override
  Iterable<Type> get types => const [
        ResourceIdentifier,
        _$ResourceIdentifier,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceIdentifier deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceIdentifierBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'resourceDeletionTime':
          if (value != null) {
            result.resourceDeletionTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'resourceId':
          if (value != null) {
            result.resourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceName':
          if (value != null) {
            result.resourceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ResourceType),
            ) as _i2.ResourceType);
          }
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
    final payload = (object as ResourceIdentifier);
    final result = <Object?>[];
    if (payload.resourceDeletionTime != null) {
      result
        ..add('resourceDeletionTime')
        ..add(serializers.serialize(
          payload.resourceDeletionTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add('resourceId')
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceName != null) {
      result
        ..add('resourceName')
        ..add(serializers.serialize(
          payload.resourceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add('resourceType')
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(_i2.ResourceType),
        ));
    }
    return result;
  }
}
