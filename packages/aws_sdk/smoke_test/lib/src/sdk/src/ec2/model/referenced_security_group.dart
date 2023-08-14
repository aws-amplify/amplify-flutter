// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.referenced_security_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'referenced_security_group.g.dart';

/// Describes the security group that is referenced in the security group rule.
abstract class ReferencedSecurityGroup
    with _i1.AWSEquatable<ReferencedSecurityGroup>
    implements Built<ReferencedSecurityGroup, ReferencedSecurityGroupBuilder> {
  /// Describes the security group that is referenced in the security group rule.
  factory ReferencedSecurityGroup({
    String? groupId,
    String? peeringStatus,
    String? userId,
    String? vpcId,
    String? vpcPeeringConnectionId,
  }) {
    return _$ReferencedSecurityGroup._(
      groupId: groupId,
      peeringStatus: peeringStatus,
      userId: userId,
      vpcId: vpcId,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
    );
  }

  /// Describes the security group that is referenced in the security group rule.
  factory ReferencedSecurityGroup.build(
          [void Function(ReferencedSecurityGroupBuilder) updates]) =
      _$ReferencedSecurityGroup;

  const ReferencedSecurityGroup._();

  static const List<_i2.SmithySerializer<ReferencedSecurityGroup>> serializers =
      [ReferencedSecurityGroupEc2QuerySerializer()];

  /// The ID of the security group.
  String? get groupId;

  /// The status of a VPC peering connection, if applicable.
  String? get peeringStatus;

  /// The Amazon Web Services account ID.
  String? get userId;

  /// The ID of the VPC.
  String? get vpcId;

  /// The ID of the VPC peering connection.
  String? get vpcPeeringConnectionId;
  @override
  List<Object?> get props => [
        groupId,
        peeringStatus,
        userId,
        vpcId,
        vpcPeeringConnectionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReferencedSecurityGroup')
      ..add(
        'groupId',
        groupId,
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

class ReferencedSecurityGroupEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ReferencedSecurityGroup> {
  const ReferencedSecurityGroupEc2QuerySerializer()
      : super('ReferencedSecurityGroup');

  @override
  Iterable<Type> get types => const [
        ReferencedSecurityGroup,
        _$ReferencedSecurityGroup,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReferencedSecurityGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferencedSecurityGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'groupId':
          result.groupId = (serializers.deserialize(
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
    ReferencedSecurityGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReferencedSecurityGroupResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReferencedSecurityGroup(
      :groupId,
      :peeringStatus,
      :userId,
      :vpcId,
      :vpcPeeringConnectionId
    ) = object;
    if (groupId != null) {
      result$
        ..add(const _i2.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
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
