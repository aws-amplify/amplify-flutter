// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_transit_gateway_route_table_propagation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation.dart';

part 'enable_transit_gateway_route_table_propagation_result.g.dart';

abstract class EnableTransitGatewayRouteTablePropagationResult
    with
        _i1.AWSEquatable<EnableTransitGatewayRouteTablePropagationResult>
    implements
        Built<EnableTransitGatewayRouteTablePropagationResult,
            EnableTransitGatewayRouteTablePropagationResultBuilder> {
  factory EnableTransitGatewayRouteTablePropagationResult(
      {TransitGatewayPropagation? propagation}) {
    return _$EnableTransitGatewayRouteTablePropagationResult._(
        propagation: propagation);
  }

  factory EnableTransitGatewayRouteTablePropagationResult.build(
      [void Function(EnableTransitGatewayRouteTablePropagationResultBuilder)
          updates]) = _$EnableTransitGatewayRouteTablePropagationResult;

  const EnableTransitGatewayRouteTablePropagationResult._();

  /// Constructs a [EnableTransitGatewayRouteTablePropagationResult] from a [payload] and [response].
  factory EnableTransitGatewayRouteTablePropagationResult.fromResponse(
    EnableTransitGatewayRouteTablePropagationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<EnableTransitGatewayRouteTablePropagationResult>>
      serializers = [
    EnableTransitGatewayRouteTablePropagationResultEc2QuerySerializer()
  ];

  /// Information about route propagation.
  TransitGatewayPropagation? get propagation;
  @override
  List<Object?> get props => [propagation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'EnableTransitGatewayRouteTablePropagationResult')
      ..add(
        'propagation',
        propagation,
      );
    return helper.toString();
  }
}

class EnableTransitGatewayRouteTablePropagationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        EnableTransitGatewayRouteTablePropagationResult> {
  const EnableTransitGatewayRouteTablePropagationResultEc2QuerySerializer()
      : super('EnableTransitGatewayRouteTablePropagationResult');

  @override
  Iterable<Type> get types => const [
        EnableTransitGatewayRouteTablePropagationResult,
        _$EnableTransitGatewayRouteTablePropagationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableTransitGatewayRouteTablePropagationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableTransitGatewayRouteTablePropagationResultBuilder();
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
    EnableTransitGatewayRouteTablePropagationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnableTransitGatewayRouteTablePropagationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableTransitGatewayRouteTablePropagationResult(:propagation) =
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
