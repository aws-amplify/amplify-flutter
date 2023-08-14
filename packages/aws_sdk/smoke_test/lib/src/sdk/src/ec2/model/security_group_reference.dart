// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.security_group_reference; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'security_group_reference.g.dart';

/// Describes a VPC with a security group that references your security group.
abstract class SecurityGroupReference
    with _i1.AWSEquatable<SecurityGroupReference>
    implements Built<SecurityGroupReference, SecurityGroupReferenceBuilder> {
  /// Describes a VPC with a security group that references your security group.
  factory SecurityGroupReference({
    String? groupId,
    String? referencingVpcId,
    String? vpcPeeringConnectionId,
  }) {
    return _$SecurityGroupReference._(
      groupId: groupId,
      referencingVpcId: referencingVpcId,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
    );
  }

  /// Describes a VPC with a security group that references your security group.
  factory SecurityGroupReference.build(
          [void Function(SecurityGroupReferenceBuilder) updates]) =
      _$SecurityGroupReference;

  const SecurityGroupReference._();

  static const List<_i2.SmithySerializer<SecurityGroupReference>> serializers =
      [SecurityGroupReferenceEc2QuerySerializer()];

  /// The ID of your security group.
  String? get groupId;

  /// The ID of the VPC with the referencing security group.
  String? get referencingVpcId;

  /// The ID of the VPC peering connection.
  String? get vpcPeeringConnectionId;
  @override
  List<Object?> get props => [
        groupId,
        referencingVpcId,
        vpcPeeringConnectionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SecurityGroupReference')
      ..add(
        'groupId',
        groupId,
      )
      ..add(
        'referencingVpcId',
        referencingVpcId,
      )
      ..add(
        'vpcPeeringConnectionId',
        vpcPeeringConnectionId,
      );
    return helper.toString();
  }
}

class SecurityGroupReferenceEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SecurityGroupReference> {
  const SecurityGroupReferenceEc2QuerySerializer()
      : super('SecurityGroupReference');

  @override
  Iterable<Type> get types => const [
        SecurityGroupReference,
        _$SecurityGroupReference,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SecurityGroupReference deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecurityGroupReferenceBuilder();
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
        case 'referencingVpcId':
          result.referencingVpcId = (serializers.deserialize(
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
    SecurityGroupReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SecurityGroupReferenceResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SecurityGroupReference(
      :groupId,
      :referencingVpcId,
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
    if (referencingVpcId != null) {
      result$
        ..add(const _i2.XmlElementName('ReferencingVpcId'))
        ..add(serializers.serialize(
          referencingVpcId,
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
