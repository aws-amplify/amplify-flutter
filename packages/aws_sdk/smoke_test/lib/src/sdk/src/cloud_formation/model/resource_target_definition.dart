// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.resource_target_definition; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/requires_recreation.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_attribute.dart'
    as _i2;

part 'resource_target_definition.g.dart';

/// The field that CloudFormation will change, such as the name of a resource's property, and whether the resource will be recreated.
abstract class ResourceTargetDefinition
    with _i1.AWSEquatable<ResourceTargetDefinition>
    implements
        Built<ResourceTargetDefinition, ResourceTargetDefinitionBuilder> {
  /// The field that CloudFormation will change, such as the name of a resource's property, and whether the resource will be recreated.
  factory ResourceTargetDefinition({
    _i2.ResourceAttribute? attribute,
    String? name,
    _i3.RequiresRecreation? requiresRecreation,
  }) {
    return _$ResourceTargetDefinition._(
      attribute: attribute,
      name: name,
      requiresRecreation: requiresRecreation,
    );
  }

  /// The field that CloudFormation will change, such as the name of a resource's property, and whether the resource will be recreated.
  factory ResourceTargetDefinition.build(
          [void Function(ResourceTargetDefinitionBuilder) updates]) =
      _$ResourceTargetDefinition;

  const ResourceTargetDefinition._();

  static const List<_i4.SmithySerializer> serializers = [
    ResourceTargetDefinitionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceTargetDefinitionBuilder b) {}

  /// Indicates which resource attribute is triggering this update, such as a change in the resource attribute's `Metadata`, `Properties`, or `Tags`.
  _i2.ResourceAttribute? get attribute;

  /// If the `Attribute` value is `Properties`, the name of the property. For all other attributes, the value is null.
  String? get name;

  /// If the `Attribute` value is `Properties`, indicates whether a change to this property causes the resource to be recreated. The value can be `Never`, `Always`, or `Conditionally`. To determine the conditions for a `Conditionally` recreation, see the update behavior for that [property](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html) in the CloudFormation User Guide.
  _i3.RequiresRecreation? get requiresRecreation;
  @override
  List<Object?> get props => [
        attribute,
        name,
        requiresRecreation,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceTargetDefinition');
    helper.add(
      'attribute',
      attribute,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'requiresRecreation',
      requiresRecreation,
    );
    return helper.toString();
  }
}

class ResourceTargetDefinitionAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ResourceTargetDefinition> {
  const ResourceTargetDefinitionAwsQuerySerializer()
      : super('ResourceTargetDefinition');

  @override
  Iterable<Type> get types => const [
        ResourceTargetDefinition,
        _$ResourceTargetDefinition,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ResourceTargetDefinition deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceTargetDefinitionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Attribute':
          if (value != null) {
            result.attribute = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ResourceAttribute),
            ) as _i2.ResourceAttribute);
          }
          break;
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RequiresRecreation':
          if (value != null) {
            result.requiresRecreation = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.RequiresRecreation),
            ) as _i3.RequiresRecreation);
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
    final payload = (object as ResourceTargetDefinition);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ResourceTargetDefinitionResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.attribute != null) {
      result
        ..add(const _i4.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          payload.attribute!,
          specifiedType: const FullType.nullable(_i2.ResourceAttribute),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i4.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.requiresRecreation != null) {
      result
        ..add(const _i4.XmlElementName('RequiresRecreation'))
        ..add(serializers.serialize(
          payload.requiresRecreation!,
          specifiedType: const FullType.nullable(_i3.RequiresRecreation),
        ));
    }
    return result;
  }
}
