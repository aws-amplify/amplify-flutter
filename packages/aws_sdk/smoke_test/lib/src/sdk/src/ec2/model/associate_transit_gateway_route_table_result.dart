// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_transit_gateway_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association.dart';

part 'associate_transit_gateway_route_table_result.g.dart';

abstract class AssociateTransitGatewayRouteTableResult
    with
        _i1.AWSEquatable<AssociateTransitGatewayRouteTableResult>
    implements
        Built<AssociateTransitGatewayRouteTableResult,
            AssociateTransitGatewayRouteTableResultBuilder> {
  factory AssociateTransitGatewayRouteTableResult(
      {TransitGatewayAssociation? association}) {
    return _$AssociateTransitGatewayRouteTableResult._(
        association: association);
  }

  factory AssociateTransitGatewayRouteTableResult.build(
      [void Function(AssociateTransitGatewayRouteTableResultBuilder)
          updates]) = _$AssociateTransitGatewayRouteTableResult;

  const AssociateTransitGatewayRouteTableResult._();

  /// Constructs a [AssociateTransitGatewayRouteTableResult] from a [payload] and [response].
  factory AssociateTransitGatewayRouteTableResult.fromResponse(
    AssociateTransitGatewayRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<AssociateTransitGatewayRouteTableResult>>
      serializers = [
    AssociateTransitGatewayRouteTableResultEc2QuerySerializer()
  ];

  /// The ID of the association.
  TransitGatewayAssociation? get association;
  @override
  List<Object?> get props => [association];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateTransitGatewayRouteTableResult')
          ..add(
            'association',
            association,
          );
    return helper.toString();
  }
}

class AssociateTransitGatewayRouteTableResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<AssociateTransitGatewayRouteTableResult> {
  const AssociateTransitGatewayRouteTableResultEc2QuerySerializer()
      : super('AssociateTransitGatewayRouteTableResult');

  @override
  Iterable<Type> get types => const [
        AssociateTransitGatewayRouteTableResult,
        _$AssociateTransitGatewayRouteTableResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateTransitGatewayRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateTransitGatewayRouteTableResultBuilder();
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
    AssociateTransitGatewayRouteTableResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociateTransitGatewayRouteTableResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateTransitGatewayRouteTableResult(:association) = object;
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
