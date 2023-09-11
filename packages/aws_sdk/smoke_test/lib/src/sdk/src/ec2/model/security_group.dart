// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.security_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'security_group.g.dart';

/// Describes a security group.
abstract class SecurityGroup
    with _i1.AWSEquatable<SecurityGroup>
    implements Built<SecurityGroup, SecurityGroupBuilder> {
  /// Describes a security group.
  factory SecurityGroup({
    String? description,
    String? groupName,
    List<IpPermission>? ipPermissions,
    String? ownerId,
    String? groupId,
    List<IpPermission>? ipPermissionsEgress,
    List<Tag>? tags,
    String? vpcId,
  }) {
    return _$SecurityGroup._(
      description: description,
      groupName: groupName,
      ipPermissions:
          ipPermissions == null ? null : _i2.BuiltList(ipPermissions),
      ownerId: ownerId,
      groupId: groupId,
      ipPermissionsEgress: ipPermissionsEgress == null
          ? null
          : _i2.BuiltList(ipPermissionsEgress),
      tags: tags == null ? null : _i2.BuiltList(tags),
      vpcId: vpcId,
    );
  }

  /// Describes a security group.
  factory SecurityGroup.build([void Function(SecurityGroupBuilder) updates]) =
      _$SecurityGroup;

  const SecurityGroup._();

  static const List<_i3.SmithySerializer<SecurityGroup>> serializers = [
    SecurityGroupEc2QuerySerializer()
  ];

  /// A description of the security group.
  String? get description;

  /// The name of the security group.
  String? get groupName;

  /// The inbound rules associated with the security group.
  _i2.BuiltList<IpPermission>? get ipPermissions;

  /// The Amazon Web Services account ID of the owner of the security group.
  String? get ownerId;

  /// The ID of the security group.
  String? get groupId;

  /// The outbound rules associated with the security group.
  _i2.BuiltList<IpPermission>? get ipPermissionsEgress;

  /// Any tags assigned to the security group.
  _i2.BuiltList<Tag>? get tags;

  /// The ID of the VPC for the security group.
  String? get vpcId;
  @override
  List<Object?> get props => [
        description,
        groupName,
        ipPermissions,
        ownerId,
        groupId,
        ipPermissionsEgress,
        tags,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SecurityGroup')
      ..add(
        'description',
        description,
      )
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'ipPermissions',
        ipPermissions,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'groupId',
        groupId,
      )
      ..add(
        'ipPermissionsEgress',
        ipPermissionsEgress,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'vpcId',
        vpcId,
      );
    return helper.toString();
  }
}

class SecurityGroupEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SecurityGroup> {
  const SecurityGroupEc2QuerySerializer() : super('SecurityGroup');

  @override
  Iterable<Type> get types => const [
        SecurityGroup,
        _$SecurityGroup,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SecurityGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecurityGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'groupDescription':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipPermissions':
          result.ipPermissions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpPermission)],
            ),
          ) as _i2.BuiltList<IpPermission>));
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupId':
          result.groupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipPermissionsEgress':
          result.ipPermissionsEgress.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpPermission)],
            ),
          ) as _i2.BuiltList<IpPermission>));
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
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
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
    SecurityGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SecurityGroupResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SecurityGroup(
      :description,
      :groupName,
      :ipPermissions,
      :ownerId,
      :groupId,
      :ipPermissionsEgress,
      :tags,
      :vpcId
    ) = object;
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('GroupDescription'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (groupName != null) {
      result$
        ..add(const _i3.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (ipPermissions != null) {
      result$
        ..add(const _i3.XmlElementName('IpPermissions'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipPermissions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IpPermission)],
          ),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (groupId != null) {
      result$
        ..add(const _i3.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipPermissionsEgress != null) {
      result$
        ..add(const _i3.XmlElementName('IpPermissionsEgress'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipPermissionsEgress,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IpPermission)],
          ),
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
    if (vpcId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
