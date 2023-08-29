// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpn_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_gateway.dart';

part 'describe_vpn_gateways_result.g.dart';

/// Contains the output of DescribeVpnGateways.
abstract class DescribeVpnGatewaysResult
    with _i1.AWSEquatable<DescribeVpnGatewaysResult>
    implements
        Built<DescribeVpnGatewaysResult, DescribeVpnGatewaysResultBuilder> {
  /// Contains the output of DescribeVpnGateways.
  factory DescribeVpnGatewaysResult({List<VpnGateway>? vpnGateways}) {
    return _$DescribeVpnGatewaysResult._(
        vpnGateways: vpnGateways == null ? null : _i2.BuiltList(vpnGateways));
  }

  /// Contains the output of DescribeVpnGateways.
  factory DescribeVpnGatewaysResult.build(
          [void Function(DescribeVpnGatewaysResultBuilder) updates]) =
      _$DescribeVpnGatewaysResult;

  const DescribeVpnGatewaysResult._();

  /// Constructs a [DescribeVpnGatewaysResult] from a [payload] and [response].
  factory DescribeVpnGatewaysResult.fromResponse(
    DescribeVpnGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVpnGatewaysResult>>
      serializers = [DescribeVpnGatewaysResultEc2QuerySerializer()];

  /// Information about one or more virtual private gateways.
  _i2.BuiltList<VpnGateway>? get vpnGateways;
  @override
  List<Object?> get props => [vpnGateways];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpnGatewaysResult')
      ..add(
        'vpnGateways',
        vpnGateways,
      );
    return helper.toString();
  }
}

class DescribeVpnGatewaysResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVpnGatewaysResult> {
  const DescribeVpnGatewaysResultEc2QuerySerializer()
      : super('DescribeVpnGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpnGatewaysResult,
        _$DescribeVpnGatewaysResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpnGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpnGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpnGatewaySet':
          result.vpnGateways.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VpnGateway)],
            ),
          ) as _i2.BuiltList<VpnGateway>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeVpnGatewaysResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVpnGatewaysResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpnGatewaysResult(:vpnGateways) = object;
    if (vpnGateways != null) {
      result$
        ..add(const _i3.XmlElementName('VpnGatewaySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpnGateways,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VpnGateway)],
          ),
        ));
    }
    return result$;
  }
}
