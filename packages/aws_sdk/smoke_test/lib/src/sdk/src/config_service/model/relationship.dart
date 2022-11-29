// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.relationship; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i2;

part 'relationship.g.dart';

/// The relationship of the related resource to the main resource.
abstract class Relationship
    with _i1.AWSEquatable<Relationship>
    implements Built<Relationship, RelationshipBuilder> {
  /// The relationship of the related resource to the main resource.
  factory Relationship({
    String? relationshipName,
    String? resourceId,
    String? resourceName,
    _i2.ResourceType? resourceType,
  }) {
    return _$Relationship._(
      relationshipName: relationshipName,
      resourceId: resourceId,
      resourceName: resourceName,
      resourceType: resourceType,
    );
  }

  /// The relationship of the related resource to the main resource.
  factory Relationship.build([void Function(RelationshipBuilder) updates]) =
      _$Relationship;

  const Relationship._();

  static const List<_i3.SmithySerializer> serializers = [
    RelationshipAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RelationshipBuilder b) {}

  /// The type of relationship with the related resource.
  String? get relationshipName;

  /// The ID of the related resource (for example, `sg-xxxxxx`).
  String? get resourceId;

  /// The custom name of the related resource, if available.
  String? get resourceName;

  /// The resource type of the related resource.
  _i2.ResourceType? get resourceType;
  @override
  List<Object?> get props => [
        relationshipName,
        resourceId,
        resourceName,
        resourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Relationship');
    helper.add(
      'relationshipName',
      relationshipName,
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

class RelationshipAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<Relationship> {
  const RelationshipAwsJson11Serializer() : super('Relationship');

  @override
  Iterable<Type> get types => const [
        Relationship,
        _$Relationship,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  Relationship deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelationshipBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'relationshipName':
          if (value != null) {
            result.relationshipName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as Relationship);
    final result = <Object?>[];
    if (payload.relationshipName != null) {
      result
        ..add('relationshipName')
        ..add(serializers.serialize(
          payload.relationshipName!,
          specifiedType: const FullType(String),
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
