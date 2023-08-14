// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_subnet_cidr_block_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_ipv6_cidr_block_association.dart';

part 'associate_subnet_cidr_block_result.g.dart';

abstract class AssociateSubnetCidrBlockResult
    with
        _i1.AWSEquatable<AssociateSubnetCidrBlockResult>
    implements
        Built<AssociateSubnetCidrBlockResult,
            AssociateSubnetCidrBlockResultBuilder> {
  factory AssociateSubnetCidrBlockResult({
    SubnetIpv6CidrBlockAssociation? ipv6CidrBlockAssociation,
    String? subnetId,
  }) {
    return _$AssociateSubnetCidrBlockResult._(
      ipv6CidrBlockAssociation: ipv6CidrBlockAssociation,
      subnetId: subnetId,
    );
  }

  factory AssociateSubnetCidrBlockResult.build(
          [void Function(AssociateSubnetCidrBlockResultBuilder) updates]) =
      _$AssociateSubnetCidrBlockResult;

  const AssociateSubnetCidrBlockResult._();

  /// Constructs a [AssociateSubnetCidrBlockResult] from a [payload] and [response].
  factory AssociateSubnetCidrBlockResult.fromResponse(
    AssociateSubnetCidrBlockResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AssociateSubnetCidrBlockResult>>
      serializers = [AssociateSubnetCidrBlockResultEc2QuerySerializer()];

  /// Information about the IPv6 association.
  SubnetIpv6CidrBlockAssociation? get ipv6CidrBlockAssociation;

  /// The ID of the subnet.
  String? get subnetId;
  @override
  List<Object?> get props => [
        ipv6CidrBlockAssociation,
        subnetId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateSubnetCidrBlockResult')
      ..add(
        'ipv6CidrBlockAssociation',
        ipv6CidrBlockAssociation,
      )
      ..add(
        'subnetId',
        subnetId,
      );
    return helper.toString();
  }
}

class AssociateSubnetCidrBlockResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AssociateSubnetCidrBlockResult> {
  const AssociateSubnetCidrBlockResultEc2QuerySerializer()
      : super('AssociateSubnetCidrBlockResult');

  @override
  Iterable<Type> get types => const [
        AssociateSubnetCidrBlockResult,
        _$AssociateSubnetCidrBlockResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateSubnetCidrBlockResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateSubnetCidrBlockResultBuilder();
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
            specifiedType: const FullType(SubnetIpv6CidrBlockAssociation),
          ) as SubnetIpv6CidrBlockAssociation));
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
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
    AssociateSubnetCidrBlockResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociateSubnetCidrBlockResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateSubnetCidrBlockResult(:ipv6CidrBlockAssociation, :subnetId) =
        object;
    if (ipv6CidrBlockAssociation != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6CidrBlockAssociation'))
        ..add(serializers.serialize(
          ipv6CidrBlockAssociation,
          specifiedType: const FullType(SubnetIpv6CidrBlockAssociation),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i2.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
