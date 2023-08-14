// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.replace_transit_gateway_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route.dart';

part 'replace_transit_gateway_route_result.g.dart';

abstract class ReplaceTransitGatewayRouteResult
    with
        _i1.AWSEquatable<ReplaceTransitGatewayRouteResult>
    implements
        Built<ReplaceTransitGatewayRouteResult,
            ReplaceTransitGatewayRouteResultBuilder> {
  factory ReplaceTransitGatewayRouteResult({TransitGatewayRoute? route}) {
    return _$ReplaceTransitGatewayRouteResult._(route: route);
  }

  factory ReplaceTransitGatewayRouteResult.build(
          [void Function(ReplaceTransitGatewayRouteResultBuilder) updates]) =
      _$ReplaceTransitGatewayRouteResult;

  const ReplaceTransitGatewayRouteResult._();

  /// Constructs a [ReplaceTransitGatewayRouteResult] from a [payload] and [response].
  factory ReplaceTransitGatewayRouteResult.fromResponse(
    ReplaceTransitGatewayRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ReplaceTransitGatewayRouteResult>>
      serializers = [ReplaceTransitGatewayRouteResultEc2QuerySerializer()];

  /// Information about the modified route.
  TransitGatewayRoute? get route;
  @override
  List<Object?> get props => [route];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReplaceTransitGatewayRouteResult')
          ..add(
            'route',
            route,
          );
    return helper.toString();
  }
}

class ReplaceTransitGatewayRouteResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ReplaceTransitGatewayRouteResult> {
  const ReplaceTransitGatewayRouteResultEc2QuerySerializer()
      : super('ReplaceTransitGatewayRouteResult');

  @override
  Iterable<Type> get types => const [
        ReplaceTransitGatewayRouteResult,
        _$ReplaceTransitGatewayRouteResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceTransitGatewayRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceTransitGatewayRouteResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'route':
          result.route.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayRoute),
          ) as TransitGatewayRoute));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplaceTransitGatewayRouteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReplaceTransitGatewayRouteResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReplaceTransitGatewayRouteResult(:route) = object;
    if (route != null) {
      result$
        ..add(const _i2.XmlElementName('Route'))
        ..add(serializers.serialize(
          route,
          specifiedType: const FullType(TransitGatewayRoute),
        ));
    }
    return result$;
  }
}
