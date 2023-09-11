// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.tag_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'tag_specification.g.dart';

/// The tags to apply to a resource when the resource is being created. When you specify a tag, you must specify the resource type to tag, otherwise the request will fail.
///
/// The `Valid Values` lists all the resource types that can be tagged. However, the action you're using might not support tagging all of these resource types. If you try to tag a resource type that is unsupported for the action you're using, you'll get an error.
abstract class TagSpecification
    with _i1.AWSEquatable<TagSpecification>
    implements Built<TagSpecification, TagSpecificationBuilder> {
  /// The tags to apply to a resource when the resource is being created. When you specify a tag, you must specify the resource type to tag, otherwise the request will fail.
  ///
  /// The `Valid Values` lists all the resource types that can be tagged. However, the action you're using might not support tagging all of these resource types. If you try to tag a resource type that is unsupported for the action you're using, you'll get an error.
  factory TagSpecification({
    ResourceType? resourceType,
    List<Tag>? tags,
  }) {
    return _$TagSpecification._(
      resourceType: resourceType,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// The tags to apply to a resource when the resource is being created. When you specify a tag, you must specify the resource type to tag, otherwise the request will fail.
  ///
  /// The `Valid Values` lists all the resource types that can be tagged. However, the action you're using might not support tagging all of these resource types. If you try to tag a resource type that is unsupported for the action you're using, you'll get an error.
  factory TagSpecification.build(
      [void Function(TagSpecificationBuilder) updates]) = _$TagSpecification;

  const TagSpecification._();

  static const List<_i3.SmithySerializer<TagSpecification>> serializers = [
    TagSpecificationEc2QuerySerializer()
  ];

  /// The type of resource to tag on creation.
  ResourceType? get resourceType;

  /// The tags to apply to the resource.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        resourceType,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagSpecification')
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TagSpecificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TagSpecification> {
  const TagSpecificationEc2QuerySerializer() : super('TagSpecification');

  @override
  Iterable<Type> get types => const [
        TagSpecification,
        _$TagSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TagSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagSpecificationBuilder();
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
            specifiedType: const FullType(ResourceType),
          ) as ResourceType);
        case 'Tag':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TagSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TagSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TagSpecification(:resourceType, :tags) = object;
    if (resourceType != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(ResourceType),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('Tag'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
