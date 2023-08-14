// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_transit_gateway_route_table_propagation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation.dart';

part 'disable_transit_gateway_route_table_propagation_result.g.dart';

abstract class DisableTransitGatewayRouteTablePropagationResult
    with
        _i1.AWSEquatable<DisableTransitGatewayRouteTablePropagationResult>
    implements
        Built<DisableTransitGatewayRouteTablePropagationResult,
            DisableTransitGatewayRouteTablePropagationResultBuilder> {
  factory DisableTransitGatewayRouteTablePropagationResult(
      {TransitGatewayPropagation? propagation}) {
    return _$DisableTransitGatewayRouteTablePropagationResult._(
        propagation: propagation);
  }

  factory DisableTransitGatewayRouteTablePropagationResult.build(
      [void Function(DisableTransitGatewayRouteTablePropagationResultBuilder)
          updates]) = _$DisableTransitGatewayRouteTablePropagationResult;

  const DisableTransitGatewayRouteTablePropagationResult._();

  /// Constructs a [DisableTransitGatewayRouteTablePropagationResult] from a [payload] and [response].
  factory DisableTransitGatewayRouteTablePropagationResult.fromResponse(
    DisableTransitGatewayRouteTablePropagationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          DisableTransitGatewayRouteTablePropagationResult>> serializers = [
    DisableTransitGatewayRouteTablePropagationResultEc2QuerySerializer()
  ];

  /// Information about route propagation.
  TransitGatewayPropagation? get propagation;
  @override
  List<Object?> get props => [propagation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisableTransitGatewayRouteTablePropagationResult')
      ..add(
        'propagation',
        propagation,
      );
    return helper.toString();
  }
}

class DisableTransitGatewayRouteTablePropagationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        DisableTransitGatewayRouteTablePropagationResult> {
  const DisableTransitGatewayRouteTablePropagationResultEc2QuerySerializer()
      : super('DisableTransitGatewayRouteTablePropagationResult');

  @override
  Iterable<Type> get types => const [
        DisableTransitGatewayRouteTablePropagationResult,
        _$DisableTransitGatewayRouteTablePropagationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableTransitGatewayRouteTablePropagationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableTransitGatewayRouteTablePropagationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'propagation':
          result.propagation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayPropagation),
          ) as TransitGatewayPropagation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisableTransitGatewayRouteTablePropagationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisableTransitGatewayRouteTablePropagationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableTransitGatewayRouteTablePropagationResult(:propagation) =
        object;
    if (propagation != null) {
      result$
        ..add(const _i2.XmlElementName('Propagation'))
        ..add(serializers.serialize(
          propagation,
          specifiedType: const FullType(TransitGatewayPropagation),
        ));
    }
    return result$;
  }
}
