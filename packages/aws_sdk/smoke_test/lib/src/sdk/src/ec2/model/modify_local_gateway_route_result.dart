// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_local_gateway_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route.dart';

part 'modify_local_gateway_route_result.g.dart';

abstract class ModifyLocalGatewayRouteResult
    with
        _i1.AWSEquatable<ModifyLocalGatewayRouteResult>
    implements
        Built<ModifyLocalGatewayRouteResult,
            ModifyLocalGatewayRouteResultBuilder> {
  factory ModifyLocalGatewayRouteResult({LocalGatewayRoute? route}) {
    return _$ModifyLocalGatewayRouteResult._(route: route);
  }

  factory ModifyLocalGatewayRouteResult.build(
          [void Function(ModifyLocalGatewayRouteResultBuilder) updates]) =
      _$ModifyLocalGatewayRouteResult;

  const ModifyLocalGatewayRouteResult._();

  /// Constructs a [ModifyLocalGatewayRouteResult] from a [payload] and [response].
  factory ModifyLocalGatewayRouteResult.fromResponse(
    ModifyLocalGatewayRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyLocalGatewayRouteResult>>
      serializers = [ModifyLocalGatewayRouteResultEc2QuerySerializer()];

  /// Information about the local gateway route table.
  LocalGatewayRoute? get route;
  @override
  List<Object?> get props => [route];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyLocalGatewayRouteResult')
      ..add(
        'route',
        route,
      );
    return helper.toString();
  }
}

class ModifyLocalGatewayRouteResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyLocalGatewayRouteResult> {
  const ModifyLocalGatewayRouteResultEc2QuerySerializer()
      : super('ModifyLocalGatewayRouteResult');

  @override
  Iterable<Type> get types => const [
        ModifyLocalGatewayRouteResult,
        _$ModifyLocalGatewayRouteResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyLocalGatewayRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyLocalGatewayRouteResultBuilder();
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
    ModifyLocalGatewayRouteResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyLocalGatewayRouteResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyLocalGatewayRouteResult(:route) = object;
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
