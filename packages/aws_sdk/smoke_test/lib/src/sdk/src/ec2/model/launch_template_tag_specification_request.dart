// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_tag_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'launch_template_tag_specification_request.g.dart';

/// The tags specification for the resources that are created during instance launch.
abstract class LaunchTemplateTagSpecificationRequest
    with
        _i1.AWSEquatable<LaunchTemplateTagSpecificationRequest>
    implements
        Built<LaunchTemplateTagSpecificationRequest,
            LaunchTemplateTagSpecificationRequestBuilder> {
  /// The tags specification for the resources that are created during instance launch.
  factory LaunchTemplateTagSpecificationRequest({
    ResourceType? resourceType,
    List<Tag>? tags,
  }) {
    return _$LaunchTemplateTagSpecificationRequest._(
      resourceType: resourceType,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// The tags specification for the resources that are created during instance launch.
  factory LaunchTemplateTagSpecificationRequest.build(
      [void Function(LaunchTemplateTagSpecificationRequestBuilder)
          updates]) = _$LaunchTemplateTagSpecificationRequest;

  const LaunchTemplateTagSpecificationRequest._();

  static const List<_i3.SmithySerializer<LaunchTemplateTagSpecificationRequest>>
      serializers = [LaunchTemplateTagSpecificationRequestEc2QuerySerializer()];

  /// The type of resource to tag.
  ///
  /// The `Valid Values` are all the resource types that can be tagged. However, when creating a launch template, you can specify tags for the following resource types only: `instance` | `volume` | `elastic-gpu` | `network-interface` | `spot-instances-request`
  ///
  /// To tag a resource after it has been created, see [CreateTags](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).
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
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateTagSpecificationRequest')
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

class LaunchTemplateTagSpecificationRequestEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<LaunchTemplateTagSpecificationRequest> {
  const LaunchTemplateTagSpecificationRequestEc2QuerySerializer()
      : super('LaunchTemplateTagSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateTagSpecificationRequest,
        _$LaunchTemplateTagSpecificationRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateTagSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateTagSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceType':
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
    LaunchTemplateTagSpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateTagSpecificationRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateTagSpecificationRequest(:resourceType, :tags) = object;
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
        ..add(const _i3.XmlElementName('Tag'))
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
