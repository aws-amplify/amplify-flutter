// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route.dart';

part 'create_transit_gateway_route_result.g.dart';

abstract class CreateTransitGatewayRouteResult
    with
        _i1.AWSEquatable<CreateTransitGatewayRouteResult>
    implements
        Built<CreateTransitGatewayRouteResult,
            CreateTransitGatewayRouteResultBuilder> {
  factory CreateTransitGatewayRouteResult({TransitGatewayRoute? route}) {
    return _$CreateTransitGatewayRouteResult._(route: route);
  }

  factory CreateTransitGatewayRouteResult.build(
          [void Function(CreateTransitGatewayRouteResultBuilder) updates]) =
      _$CreateTransitGatewayRouteResult;

  const CreateTransitGatewayRouteResult._();

  /// Constructs a [CreateTransitGatewayRouteResult] from a [payload] and [response].
  factory CreateTransitGatewayRouteResult.fromResponse(
    CreateTransitGatewayRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateTransitGatewayRouteResult>>
      serializers = [CreateTransitGatewayRouteResultEc2QuerySerializer()];

  /// Information about the route.
  TransitGatewayRoute? get route;
  @override
  List<Object?> get props => [route];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayRouteResult')
          ..add(
            'route',
            route,
          );
    return helper.toString();
  }
}

class CreateTransitGatewayRouteResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateTransitGatewayRouteResult> {
  const CreateTransitGatewayRouteResultEc2QuerySerializer()
      : super('CreateTransitGatewayRouteResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayRouteResult,
        _$CreateTransitGatewayRouteResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayRouteResultBuilder();
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
    CreateTransitGatewayRouteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTransitGatewayRouteResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayRouteResult(:route) = object;
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
