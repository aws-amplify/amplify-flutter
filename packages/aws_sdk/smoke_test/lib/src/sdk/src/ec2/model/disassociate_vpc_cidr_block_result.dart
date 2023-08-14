// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_vpc_cidr_block_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_ipv6_cidr_block_association.dart';

part 'disassociate_vpc_cidr_block_result.g.dart';

abstract class DisassociateVpcCidrBlockResult
    with
        _i1.AWSEquatable<DisassociateVpcCidrBlockResult>
    implements
        Built<DisassociateVpcCidrBlockResult,
            DisassociateVpcCidrBlockResultBuilder> {
  factory DisassociateVpcCidrBlockResult({
    VpcIpv6CidrBlockAssociation? ipv6CidrBlockAssociation,
    VpcCidrBlockAssociation? cidrBlockAssociation,
    String? vpcId,
  }) {
    return _$DisassociateVpcCidrBlockResult._(
      ipv6CidrBlockAssociation: ipv6CidrBlockAssociation,
      cidrBlockAssociation: cidrBlockAssociation,
      vpcId: vpcId,
    );
  }

  factory DisassociateVpcCidrBlockResult.build(
          [void Function(DisassociateVpcCidrBlockResultBuilder) updates]) =
      _$DisassociateVpcCidrBlockResult;

  const DisassociateVpcCidrBlockResult._();

  /// Constructs a [DisassociateVpcCidrBlockResult] from a [payload] and [response].
  factory DisassociateVpcCidrBlockResult.fromResponse(
    DisassociateVpcCidrBlockResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DisassociateVpcCidrBlockResult>>
      serializers = [DisassociateVpcCidrBlockResultEc2QuerySerializer()];

  /// Information about the IPv6 CIDR block association.
  VpcIpv6CidrBlockAssociation? get ipv6CidrBlockAssociation;

  /// Information about the IPv4 CIDR block association.
  VpcCidrBlockAssociation? get cidrBlockAssociation;

  /// The ID of the VPC.
  String? get vpcId;
  @override
  List<Object?> get props => [
        ipv6CidrBlockAssociation,
        cidrBlockAssociation,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DisassociateVpcCidrBlockResult')
      ..add(
        'ipv6CidrBlockAssociation',
        ipv6CidrBlockAssociation,
      )
      ..add(
        'cidrBlockAssociation',
        cidrBlockAssociation,
      )
      ..add(
        'vpcId',
        vpcId,
      );
    return helper.toString();
  }
}

class DisassociateVpcCidrBlockResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DisassociateVpcCidrBlockResult> {
  const DisassociateVpcCidrBlockResultEc2QuerySerializer()
      : super('DisassociateVpcCidrBlockResult');

  @override
  Iterable<Type> get types => const [
        DisassociateVpcCidrBlockResult,
        _$DisassociateVpcCidrBlockResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateVpcCidrBlockResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateVpcCidrBlockResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipv6CidrBlockAssociation':
          result.ipv6CidrBlockAssociation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpcIpv6CidrBlockAssociation),
          ) as VpcIpv6CidrBlockAssociation));
        case 'cidrBlockAssociation':
          result.cidrBlockAssociation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpcCidrBlockAssociation),
          ) as VpcCidrBlockAssociation));
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
    DisassociateVpcCidrBlockResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisassociateVpcCidrBlockResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateVpcCidrBlockResult(
      :ipv6CidrBlockAssociation,
      :cidrBlockAssociation,
      :vpcId
    ) = object;
    if (ipv6CidrBlockAssociation != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6CidrBlockAssociation'))
        ..add(serializers.serialize(
          ipv6CidrBlockAssociation,
          specifiedType: const FullType(VpcIpv6CidrBlockAssociation),
        ));
    }
    if (cidrBlockAssociation != null) {
      result$
        ..add(const _i2.XmlElementName('CidrBlockAssociation'))
        ..add(serializers.serialize(
          cidrBlockAssociation,
          specifiedType: const FullType(VpcCidrBlockAssociation),
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
    return result$;
  }
}
