// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_tag_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'launch_template_tag_specification.g.dart';

/// The tags specification for the launch template.
abstract class LaunchTemplateTagSpecification
    with
        _i1.AWSEquatable<LaunchTemplateTagSpecification>
    implements
        Built<LaunchTemplateTagSpecification,
            LaunchTemplateTagSpecificationBuilder> {
  /// The tags specification for the launch template.
  factory LaunchTemplateTagSpecification({
    ResourceType? resourceType,
    List<Tag>? tags,
  }) {
    return _$LaunchTemplateTagSpecification._(
      resourceType: resourceType,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// The tags specification for the launch template.
  factory LaunchTemplateTagSpecification.build(
          [void Function(LaunchTemplateTagSpecificationBuilder) updates]) =
      _$LaunchTemplateTagSpecification;

  const LaunchTemplateTagSpecification._();

  static const List<_i3.SmithySerializer<LaunchTemplateTagSpecification>>
      serializers = [LaunchTemplateTagSpecificationEc2QuerySerializer()];

  /// The type of resource to tag.
  ResourceType? get resourceType;

  /// The tags for the resource.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        resourceType,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplateTagSpecification')
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

class LaunchTemplateTagSpecificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LaunchTemplateTagSpecification> {
  const LaunchTemplateTagSpecificationEc2QuerySerializer()
      : super('LaunchTemplateTagSpecification');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateTagSpecification,
        _$LaunchTemplateTagSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateTagSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateTagSpecificationBuilder();
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
        case 'tagSet':
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
    LaunchTemplateTagSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateTagSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateTagSpecification(:resourceType, :tags) = object;
    if (resourceType != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType.nullable(ResourceType),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
