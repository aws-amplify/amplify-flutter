// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.coip_cidr; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'coip_cidr.g.dart';

/// Information about a customer-owned IP address range.
abstract class CoipCidr
    with _i1.AWSEquatable<CoipCidr>
    implements Built<CoipCidr, CoipCidrBuilder> {
  /// Information about a customer-owned IP address range.
  factory CoipCidr({
    String? cidr,
    String? coipPoolId,
    String? localGatewayRouteTableId,
  }) {
    return _$CoipCidr._(
      cidr: cidr,
      coipPoolId: coipPoolId,
      localGatewayRouteTableId: localGatewayRouteTableId,
    );
  }

  /// Information about a customer-owned IP address range.
  factory CoipCidr.build([void Function(CoipCidrBuilder) updates]) = _$CoipCidr;

  const CoipCidr._();

  static const List<_i2.SmithySerializer<CoipCidr>> serializers = [
    CoipCidrEc2QuerySerializer()
  ];

  /// An address range in a customer-owned IP address space.
  String? get cidr;

  /// The ID of the address pool.
  String? get coipPoolId;

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;
  @override
  List<Object?> get props => [
        cidr,
        coipPoolId,
        localGatewayRouteTableId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CoipCidr')
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'coipPoolId',
        coipPoolId,
      )
      ..add(
        'localGatewayRouteTableId',
        localGatewayRouteTableId,
      );
    return helper.toString();
  }
}

class CoipCidrEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CoipCidr> {
  const CoipCidrEc2QuerySerializer() : super('CoipCidr');

  @override
  Iterable<Type> get types => const [
        CoipCidr,
        _$CoipCidr,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CoipCidr deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoipCidrBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'coipPoolId':
          result.coipPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
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
    CoipCidr object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CoipCidrResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CoipCidr(:cidr, :coipPoolId, :localGatewayRouteTableId) = object;
    if (cidr != null) {
      result$
        ..add(const _i2.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (coipPoolId != null) {
      result$
        ..add(const _i2.XmlElementName('CoipPoolId'))
        ..add(serializers.serialize(
          coipPoolId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayRouteTableId != null) {
      result$
        ..add(const _i2.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          localGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
