// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.user_id_group_pair; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_id_group_pair.g.dart';

/// Describes a security group and Amazon Web Services account ID pair.
abstract class UserIdGroupPair
    with _i1.AWSEquatable<UserIdGroupPair>
    implements Built<UserIdGroupPair, UserIdGroupPairBuilder> {
  /// Describes a security group and Amazon Web Services account ID pair.
  factory UserIdGroupPair({
    String? description,
    String? groupId,
    String? groupName,
    String? peeringStatus,
    String? userId,
    String? vpcId,
    String? vpcPeeringConnectionId,
  }) {
    return _$UserIdGroupPair._(
      description: description,
      groupId: groupId,
      groupName: groupName,
      peeringStatus: peeringStatus,
      userId: userId,
      vpcId: vpcId,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
    );
  }

  /// Describes a security group and Amazon Web Services account ID pair.
  factory UserIdGroupPair.build(
      [void Function(UserIdGroupPairBuilder) updates]) = _$UserIdGroupPair;

  const UserIdGroupPair._();

  static const List<_i2.SmithySerializer<UserIdGroupPair>> serializers = [
    UserIdGroupPairEc2QuerySerializer()
  ];

  /// A description for the security group rule that references this user ID group pair.
  ///
  /// Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@\[\]+=;{}!$*
  String? get description;

  /// The ID of the security group.
  String? get groupId;

  /// \[Default VPC\] The name of the security group. For a security group in a nondefault VPC, use the security group ID.
  ///
  /// For a referenced security group in another VPC, this value is not returned if the referenced security group is deleted.
  String? get groupName;

  /// The status of a VPC peering connection, if applicable.
  String? get peeringStatus;

  /// The ID of an Amazon Web Services account.
  ///
  /// For a referenced security group in another VPC, the account ID of the referenced security group is returned in the response. If the referenced security group is deleted, this value is not returned.
  String? get userId;

  /// The ID of the VPC for the referenced security group, if applicable.
  String? get vpcId;

  /// The ID of the VPC peering connection, if applicable.
  String? get vpcPeeringConnectionId;
  @override
  List<Object?> get props => [
        description,
        groupId,
        groupName,
        peeringStatus,
        userId,
        vpcId,
        vpcPeeringConnectionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserIdGroupPair')
      ..add(
        'description',
        description,
      )
      ..add(
        'groupId',
        groupId,
      )
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'peeringStatus',
        peeringStatus,
      )
      ..add(
        'userId',
        userId,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'vpcPeeringConnectionId',
        vpcPeeringConnectionId,
      );
    return helper.toString();
  }
}

class UserIdGroupPairEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<UserIdGroupPair> {
  const UserIdGroupPairEc2QuerySerializer() : super('UserIdGroupPair');

  @override
  Iterable<Type> get types => const [
        UserIdGroupPair,
        _$UserIdGroupPair,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UserIdGroupPair deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserIdGroupPairBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupId':
          result.groupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'groupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'peeringStatus':
          result.peeringStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'userId':
          result.userId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcPeeringConnectionId':
          result.vpcPeeringConnectionId = (serializers.deserialize(
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
    UserIdGroupPair object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'UserIdGroupPairResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final UserIdGroupPair(
      :description,
      :groupId,
      :groupName,
      :peeringStatus,
      :userId,
      :vpcId,
      :vpcPeeringConnectionId
    ) = object;
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (groupId != null) {
      result$
        ..add(const _i2.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
          specifiedType: const FullType(String),
        ));
    }
    if (groupName != null) {
      result$
        ..add(const _i2.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (peeringStatus != null) {
      result$
        ..add(const _i2.XmlElementName('PeeringStatus'))
        ..add(serializers.serialize(
          peeringStatus,
          specifiedType: const FullType(String),
        ));
    }
    if (userId != null) {
      result$
        ..add(const _i2.XmlElementName('UserId'))
        ..add(serializers.serialize(
          userId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i2.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcPeeringConnectionId != null) {
      result$
        ..add(const _i2.XmlElementName('VpcPeeringConnectionId'))
        ..add(serializers.serialize(
          vpcPeeringConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
