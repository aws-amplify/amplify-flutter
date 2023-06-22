// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    _i2.ResourceType? resourceType,
    String? resourceId,
    String? resourceName,
    DateTime? resourceDeletionTime,
  }) {
    return _$ResourceIdentifier._(
      resourceType: resourceType,
      resourceId: resourceId,
      resourceName: resourceName,
      resourceDeletionTime: resourceDeletionTime,
    );
  }

  /// The details that identify a resource that is discovered by Config, including the resource type, ID, and (if available) the custom resource name.
  factory ResourceIdentifier.build(
          [void Function(ResourceIdentifierBuilder) updates]) =
      _$ResourceIdentifier;

  const ResourceIdentifier._();

  static const List<_i3.SmithySerializer<ResourceIdentifier>> serializers = [
    ResourceIdentifierAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceIdentifierBuilder b) {}

  /// The type of resource.
  _i2.ResourceType? get resourceType;

  /// The ID of the resource (for example, `sg-xxxxxx`).
  String? get resourceId;

  /// The custom name of the resource (if available).
  String? get resourceName;

  /// The time that the resource was deleted.
  DateTime? get resourceDeletionTime;
  @override
  List<Object?> get props => [
        resourceType,
        resourceId,
        resourceName,
        resourceDeletionTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceIdentifier')
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceName',
        resourceName,
      )
      ..add(
        'resourceDeletionTime',
        resourceDeletionTime,
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
        case 'resourceName':
          result.resourceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceDeletionTime':
          result.resourceDeletionTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResourceIdentifier object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResourceIdentifier(
      :resourceType,
      :resourceId,
      :resourceName,
      :resourceDeletionTime
    ) = object;
    if (resourceType != null) {
      result$
        ..add('resourceType')
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(_i2.ResourceType),
        ));
    }
    if (resourceId != null) {
      result$
        ..add('resourceId')
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceName != null) {
      result$
        ..add('resourceName')
        ..add(serializers.serialize(
          resourceName,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceDeletionTime != null) {
      result$
        ..add('resourceDeletionTime')
        ..add(serializers.serialize(
          resourceDeletionTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
