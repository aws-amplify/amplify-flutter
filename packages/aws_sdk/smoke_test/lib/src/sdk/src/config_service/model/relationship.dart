// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    _i2.ResourceType? resourceType,
    String? resourceId,
    String? resourceName,
    String? relationshipName,
  }) {
    return _$Relationship._(
      resourceType: resourceType,
      resourceId: resourceId,
      resourceName: resourceName,
      relationshipName: relationshipName,
    );
  }

  /// The relationship of the related resource to the main resource.
  factory Relationship.build([void Function(RelationshipBuilder) updates]) =
      _$Relationship;

  const Relationship._();

  static const List<_i3.SmithySerializer<Relationship>> serializers = [
    RelationshipAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RelationshipBuilder b) {}

  /// The resource type of the related resource.
  _i2.ResourceType? get resourceType;

  /// The ID of the related resource (for example, `sg-xxxxxx`).
  String? get resourceId;

  /// The custom name of the related resource, if available.
  String? get resourceName;

  /// The type of relationship with the related resource.
  String? get relationshipName;
  @override
  List<Object?> get props => [
        resourceType,
        resourceId,
        resourceName,
        relationshipName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Relationship')
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
        'relationshipName',
        relationshipName,
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
        case 'relationshipName':
          result.relationshipName = (serializers.deserialize(
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
    Relationship object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Relationship(
      :resourceType,
      :resourceId,
      :resourceName,
      :relationshipName
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
    if (relationshipName != null) {
      result$
        ..add('relationshipName')
        ..add(serializers.serialize(
          relationshipName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
