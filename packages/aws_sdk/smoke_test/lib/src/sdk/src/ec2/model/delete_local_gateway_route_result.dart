// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_local_gateway_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route.dart';

part 'delete_local_gateway_route_result.g.dart';

abstract class DeleteLocalGatewayRouteResult
    with
        _i1.AWSEquatable<DeleteLocalGatewayRouteResult>
    implements
        Built<DeleteLocalGatewayRouteResult,
            DeleteLocalGatewayRouteResultBuilder> {
  factory DeleteLocalGatewayRouteResult({LocalGatewayRoute? route}) {
    return _$DeleteLocalGatewayRouteResult._(route: route);
  }

  factory DeleteLocalGatewayRouteResult.build(
          [void Function(DeleteLocalGatewayRouteResultBuilder) updates]) =
      _$DeleteLocalGatewayRouteResult;

  const DeleteLocalGatewayRouteResult._();

  /// Constructs a [DeleteLocalGatewayRouteResult] from a [payload] and [response].
  factory DeleteLocalGatewayRouteResult.fromResponse(
    DeleteLocalGatewayRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteLocalGatewayRouteResult>>
      serializers = [DeleteLocalGatewayRouteResultEc2QuerySerializer()];

  /// Information about the route.
  LocalGatewayRoute? get route;
  @override
  List<Object?> get props => [route];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteLocalGatewayRouteResult')
      ..add(
        'route',
        route,
      );
    return helper.toString();
  }
}

class DeleteLocalGatewayRouteResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteLocalGatewayRouteResult> {
  const DeleteLocalGatewayRouteResultEc2QuerySerializer()
      : super('DeleteLocalGatewayRouteResult');

  @override
  Iterable<Type> get types => const [
        DeleteLocalGatewayRouteResult,
        _$DeleteLocalGatewayRouteResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLocalGatewayRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLocalGatewayRouteResultBuilder();
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
            specifiedType: const FullType(LocalGatewayRoute),
          ) as LocalGatewayRoute));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteLocalGatewayRouteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteLocalGatewayRouteResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteLocalGatewayRouteResult(:route) = object;
    if (route != null) {
      result$
        ..add(const _i2.XmlElementName('Route'))
        ..add(serializers.serialize(
          route,
          specifiedType: const FullType(LocalGatewayRoute),
        ));
    }
    return result$;
  }
}
