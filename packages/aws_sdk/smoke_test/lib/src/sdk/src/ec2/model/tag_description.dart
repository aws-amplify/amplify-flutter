// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.tag_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_type.dart';

part 'tag_description.g.dart';

/// Describes a tag.
abstract class TagDescription
    with _i1.AWSEquatable<TagDescription>
    implements Built<TagDescription, TagDescriptionBuilder> {
  /// Describes a tag.
  factory TagDescription({
    String? key,
    String? resourceId,
    ResourceType? resourceType,
    String? value,
  }) {
    return _$TagDescription._(
      key: key,
      resourceId: resourceId,
      resourceType: resourceType,
      value: value,
    );
  }

  /// Describes a tag.
  factory TagDescription.build([void Function(TagDescriptionBuilder) updates]) =
      _$TagDescription;

  const TagDescription._();

  static const List<_i2.SmithySerializer<TagDescription>> serializers = [
    TagDescriptionEc2QuerySerializer()
  ];

  /// The tag key.
  String? get key;

  /// The ID of the resource.
  String? get resourceId;

  /// The resource type.
  ResourceType? get resourceType;

  /// The tag value.
  String? get value;
  @override
  List<Object?> get props => [
        key,
        resourceId,
        resourceType,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagDescription')
      ..add(
        'key',
        key,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class TagDescriptionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TagDescription> {
  const TagDescriptionEc2QuerySerializer() : super('TagDescription');

  @override
  Iterable<Type> get types => const [
        TagDescription,
        _$TagDescription,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TagDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceType),
          ) as ResourceType);
        case 'value':
          result.value = (serializers.deserialize(
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
    TagDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TagDescriptionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TagDescription(:key, :resourceId, :resourceType, :value) = object;
    if (key != null) {
      result$
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(ResourceType),
        ));
    }
    if (value != null) {
      result$
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
