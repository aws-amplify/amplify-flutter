// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.subnet_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_mulitcast_domain_association_state.dart';

part 'subnet_association.g.dart';

/// Describes the subnet association with the transit gateway multicast domain.
abstract class SubnetAssociation
    with _i1.AWSEquatable<SubnetAssociation>
    implements Built<SubnetAssociation, SubnetAssociationBuilder> {
  /// Describes the subnet association with the transit gateway multicast domain.
  factory SubnetAssociation({
    String? subnetId,
    TransitGatewayMulitcastDomainAssociationState? state,
  }) {
    return _$SubnetAssociation._(
      subnetId: subnetId,
      state: state,
    );
  }

  /// Describes the subnet association with the transit gateway multicast domain.
  factory SubnetAssociation.build(
      [void Function(SubnetAssociationBuilder) updates]) = _$SubnetAssociation;

  const SubnetAssociation._();

  static const List<_i2.SmithySerializer<SubnetAssociation>> serializers = [
    SubnetAssociationEc2QuerySerializer()
  ];

  /// The ID of the subnet.
  String? get subnetId;

  /// The state of the subnet association.
  TransitGatewayMulitcastDomainAssociationState? get state;
  @override
  List<Object?> get props => [
        subnetId,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SubnetAssociation')
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'state',
        state,
      );
    return helper.toString();
  }
}

class SubnetAssociationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SubnetAssociation> {
  const SubnetAssociationEc2QuerySerializer() : super('SubnetAssociation');

  @override
  Iterable<Type> get types => const [
        SubnetAssociation,
        _$SubnetAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SubnetAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubnetAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransitGatewayMulitcastDomainAssociationState),
          ) as TransitGatewayMulitcastDomainAssociationState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SubnetAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SubnetAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SubnetAssociation(:subnetId, :state) = object;
    if (subnetId != null) {
      result$
        ..add(const _i2.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType(TransitGatewayMulitcastDomainAssociationState),
        ));
    }
    return result$;
  }
}
