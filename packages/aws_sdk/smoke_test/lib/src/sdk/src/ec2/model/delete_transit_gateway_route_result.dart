// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route.dart';

part 'delete_transit_gateway_route_result.g.dart';

abstract class DeleteTransitGatewayRouteResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayRouteResult>
    implements
        Built<DeleteTransitGatewayRouteResult,
            DeleteTransitGatewayRouteResultBuilder> {
  factory DeleteTransitGatewayRouteResult({TransitGatewayRoute? route}) {
    return _$DeleteTransitGatewayRouteResult._(route: route);
  }

  factory DeleteTransitGatewayRouteResult.build(
          [void Function(DeleteTransitGatewayRouteResultBuilder) updates]) =
      _$DeleteTransitGatewayRouteResult;

  const DeleteTransitGatewayRouteResult._();

  /// Constructs a [DeleteTransitGatewayRouteResult] from a [payload] and [response].
  factory DeleteTransitGatewayRouteResult.fromResponse(
    DeleteTransitGatewayRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteTransitGatewayRouteResult>>
      serializers = [DeleteTransitGatewayRouteResultEc2QuerySerializer()];

  /// Information about the route.
  TransitGatewayRoute? get route;
  @override
  List<Object?> get props => [route];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayRouteResult')
          ..add(
            'route',
            route,
          );
    return helper.toString();
  }
}

class DeleteTransitGatewayRouteResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteTransitGatewayRouteResult> {
  const DeleteTransitGatewayRouteResultEc2QuerySerializer()
      : super('DeleteTransitGatewayRouteResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayRouteResult,
        _$DeleteTransitGatewayRouteResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayRouteResultBuilder();
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
    DeleteTransitGatewayRouteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteTransitGatewayRouteResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayRouteResult(:route) = object;
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
