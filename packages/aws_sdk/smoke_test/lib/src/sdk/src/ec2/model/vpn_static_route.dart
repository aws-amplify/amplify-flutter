// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpn_static_route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_static_route_source.dart';

part 'vpn_static_route.g.dart';

/// Describes a static route for a VPN connection.
abstract class VpnStaticRoute
    with _i1.AWSEquatable<VpnStaticRoute>
    implements Built<VpnStaticRoute, VpnStaticRouteBuilder> {
  /// Describes a static route for a VPN connection.
  factory VpnStaticRoute({
    String? destinationCidrBlock,
    VpnStaticRouteSource? source,
    VpnState? state,
  }) {
    return _$VpnStaticRoute._(
      destinationCidrBlock: destinationCidrBlock,
      source: source,
      state: state,
    );
  }

  /// Describes a static route for a VPN connection.
  factory VpnStaticRoute.build([void Function(VpnStaticRouteBuilder) updates]) =
      _$VpnStaticRoute;

  const VpnStaticRoute._();

  static const List<_i2.SmithySerializer<VpnStaticRoute>> serializers = [
    VpnStaticRouteEc2QuerySerializer()
  ];

  /// The CIDR block associated with the local subnet of the customer data center.
  String? get destinationCidrBlock;

  /// Indicates how the routes were provided.
  VpnStaticRouteSource? get source;

  /// The current state of the static route.
  VpnState? get state;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        source,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpnStaticRoute')
      ..add(
        'destinationCidrBlock',
        destinationCidrBlock,
      )
      ..add(
        'source',
        source,
      )
      ..add(
        'state',
        state,
      );
    return helper.toString();
  }
}

class VpnStaticRouteEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VpnStaticRoute> {
  const VpnStaticRouteEc2QuerySerializer() : super('VpnStaticRoute');

  @override
  Iterable<Type> get types => const [
        VpnStaticRoute,
        _$VpnStaticRoute,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnStaticRoute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnStaticRouteBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'destinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'source':
          result.source = (serializers.deserialize(
            value,
            specifiedType: const FullType(VpnStaticRouteSource),
          ) as VpnStaticRouteSource);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(VpnState),
          ) as VpnState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VpnStaticRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VpnStaticRouteResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpnStaticRoute(:destinationCidrBlock, :source, :state) = object;
    if (destinationCidrBlock != null) {
      result$
        ..add(const _i2.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          destinationCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (source != null) {
      result$
        ..add(const _i2.XmlElementName('Source'))
        ..add(serializers.serialize(
          source,
          specifiedType: const FullType(VpnStaticRouteSource),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(VpnState),
        ));
    }
    return result$;
  }
}
