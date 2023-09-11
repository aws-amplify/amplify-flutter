// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'verified_access_group.g.dart';

/// Describes a Verified Access group.
abstract class VerifiedAccessGroup
    with _i1.AWSEquatable<VerifiedAccessGroup>
    implements Built<VerifiedAccessGroup, VerifiedAccessGroupBuilder> {
  /// Describes a Verified Access group.
  factory VerifiedAccessGroup({
    String? verifiedAccessGroupId,
    String? verifiedAccessInstanceId,
    String? description,
    String? owner,
    String? verifiedAccessGroupArn,
    String? creationTime,
    String? lastUpdatedTime,
    String? deletionTime,
    List<Tag>? tags,
  }) {
    return _$VerifiedAccessGroup._(
      verifiedAccessGroupId: verifiedAccessGroupId,
      verifiedAccessInstanceId: verifiedAccessInstanceId,
      description: description,
      owner: owner,
      verifiedAccessGroupArn: verifiedAccessGroupArn,
      creationTime: creationTime,
      lastUpdatedTime: lastUpdatedTime,
      deletionTime: deletionTime,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a Verified Access group.
  factory VerifiedAccessGroup.build(
          [void Function(VerifiedAccessGroupBuilder) updates]) =
      _$VerifiedAccessGroup;

  const VerifiedAccessGroup._();

  static const List<_i3.SmithySerializer<VerifiedAccessGroup>> serializers = [
    VerifiedAccessGroupEc2QuerySerializer()
  ];

  /// The ID of the Verified Access group.
  String? get verifiedAccessGroupId;

  /// The ID of the Amazon Web Services Verified Access instance.
  String? get verifiedAccessInstanceId;

  /// A description for the Amazon Web Services Verified Access group.
  String? get description;

  /// The Amazon Web Services account number that owns the group.
  String? get owner;

  /// The ARN of the Verified Access group.
  String? get verifiedAccessGroupArn;

  /// The creation time.
  String? get creationTime;

  /// The last updated time.
  String? get lastUpdatedTime;

  /// The deletion time.
  String? get deletionTime;

  /// The tags.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        verifiedAccessGroupId,
        verifiedAccessInstanceId,
        description,
        owner,
        verifiedAccessGroupArn,
        creationTime,
        lastUpdatedTime,
        deletionTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifiedAccessGroup')
      ..add(
        'verifiedAccessGroupId',
        verifiedAccessGroupId,
      )
      ..add(
        'verifiedAccessInstanceId',
        verifiedAccessInstanceId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'owner',
        owner,
      )
      ..add(
        'verifiedAccessGroupArn',
        verifiedAccessGroupArn,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'lastUpdatedTime',
        lastUpdatedTime,
      )
      ..add(
        'deletionTime',
        deletionTime,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class VerifiedAccessGroupEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VerifiedAccessGroup> {
  const VerifiedAccessGroupEc2QuerySerializer() : super('VerifiedAccessGroup');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessGroup,
        _$VerifiedAccessGroup,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessGroupId':
          result.verifiedAccessGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'verifiedAccessInstanceId':
          result.verifiedAccessInstanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'owner':
          result.owner = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'verifiedAccessGroupArn':
          result.verifiedAccessGroupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'lastUpdatedTime':
          result.lastUpdatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'deletionTime':
          result.deletionTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    VerifiedAccessGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VerifiedAccessGroupResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessGroup(
      :verifiedAccessGroupId,
      :verifiedAccessInstanceId,
      :description,
      :owner,
      :verifiedAccessGroupArn,
      :creationTime,
      :lastUpdatedTime,
      :deletionTime,
      :tags
    ) = object;
    if (verifiedAccessGroupId != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessGroupId'))
        ..add(serializers.serialize(
          verifiedAccessGroupId,
          specifiedType: const FullType(String),
        ));
    }
    if (verifiedAccessInstanceId != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessInstanceId'))
        ..add(serializers.serialize(
          verifiedAccessInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i3.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(String),
        ));
    }
    if (verifiedAccessGroupArn != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessGroupArn'))
        ..add(serializers.serialize(
          verifiedAccessGroupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(String),
        ));
    }
    if (lastUpdatedTime != null) {
      result$
        ..add(const _i3.XmlElementName('LastUpdatedTime'))
        ..add(serializers.serialize(
          lastUpdatedTime,
          specifiedType: const FullType(String),
        ));
    }
    if (deletionTime != null) {
      result$
        ..add(const _i3.XmlElementName('DeletionTime'))
        ..add(serializers.serialize(
          deletionTime,
          specifiedType: const FullType(String),
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
