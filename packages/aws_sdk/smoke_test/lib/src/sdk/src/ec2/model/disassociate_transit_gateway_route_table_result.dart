// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_transit_gateway_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association.dart';

part 'disassociate_transit_gateway_route_table_result.g.dart';

abstract class DisassociateTransitGatewayRouteTableResult
    with
        _i1.AWSEquatable<DisassociateTransitGatewayRouteTableResult>
    implements
        Built<DisassociateTransitGatewayRouteTableResult,
            DisassociateTransitGatewayRouteTableResultBuilder> {
  factory DisassociateTransitGatewayRouteTableResult(
      {TransitGatewayAssociation? association}) {
    return _$DisassociateTransitGatewayRouteTableResult._(
        association: association);
  }

  factory DisassociateTransitGatewayRouteTableResult.build(
      [void Function(DisassociateTransitGatewayRouteTableResultBuilder)
          updates]) = _$DisassociateTransitGatewayRouteTableResult;

  const DisassociateTransitGatewayRouteTableResult._();

  /// Constructs a [DisassociateTransitGatewayRouteTableResult] from a [payload] and [response].
  factory DisassociateTransitGatewayRouteTableResult.fromResponse(
    DisassociateTransitGatewayRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DisassociateTransitGatewayRouteTableResult>>
      serializers = [
    DisassociateTransitGatewayRouteTableResultEc2QuerySerializer()
  ];

  /// Information about the association.
  TransitGatewayAssociation? get association;
  @override
  List<Object?> get props => [association];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisassociateTransitGatewayRouteTableResult')
      ..add(
        'association',
        association,
      );
    return helper.toString();
  }
}

class DisassociateTransitGatewayRouteTableResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DisassociateTransitGatewayRouteTableResult> {
  const DisassociateTransitGatewayRouteTableResultEc2QuerySerializer()
      : super('DisassociateTransitGatewayRouteTableResult');

  @override
  Iterable<Type> get types => const [
        DisassociateTransitGatewayRouteTableResult,
        _$DisassociateTransitGatewayRouteTableResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateTransitGatewayRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateTransitGatewayRouteTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'association':
          result.association.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayAssociation),
          ) as TransitGatewayAssociation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisassociateTransitGatewayRouteTableResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisassociateTransitGatewayRouteTableResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateTransitGatewayRouteTableResult(:association) = object;
    if (association != null) {
      result$
        ..add(const _i2.XmlElementName('Association'))
        ..add(serializers.serialize(
          association,
          specifiedType: const FullType(TransitGatewayAssociation),
        ));
    }
    return result$;
  }
}
