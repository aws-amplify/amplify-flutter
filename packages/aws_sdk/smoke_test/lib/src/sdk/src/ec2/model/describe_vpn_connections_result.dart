// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpn_connections_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection.dart';

part 'describe_vpn_connections_result.g.dart';

/// Contains the output of DescribeVpnConnections.
abstract class DescribeVpnConnectionsResult
    with
        _i1.AWSEquatable<DescribeVpnConnectionsResult>
    implements
        Built<DescribeVpnConnectionsResult,
            DescribeVpnConnectionsResultBuilder> {
  /// Contains the output of DescribeVpnConnections.
  factory DescribeVpnConnectionsResult({List<VpnConnection>? vpnConnections}) {
    return _$DescribeVpnConnectionsResult._(
        vpnConnections:
            vpnConnections == null ? null : _i2.BuiltList(vpnConnections));
  }

  /// Contains the output of DescribeVpnConnections.
  factory DescribeVpnConnectionsResult.build(
          [void Function(DescribeVpnConnectionsResultBuilder) updates]) =
      _$DescribeVpnConnectionsResult;

  const DescribeVpnConnectionsResult._();

  /// Constructs a [DescribeVpnConnectionsResult] from a [payload] and [response].
  factory DescribeVpnConnectionsResult.fromResponse(
    DescribeVpnConnectionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVpnConnectionsResult>>
      serializers = [DescribeVpnConnectionsResultEc2QuerySerializer()];

  /// Information about one or more VPN connections.
  _i2.BuiltList<VpnConnection>? get vpnConnections;
  @override
  List<Object?> get props => [vpnConnections];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpnConnectionsResult')
      ..add(
        'vpnConnections',
        vpnConnections,
      );
    return helper.toString();
  }
}

class DescribeVpnConnectionsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVpnConnectionsResult> {
  const DescribeVpnConnectionsResultEc2QuerySerializer()
      : super('DescribeVpnConnectionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpnConnectionsResult,
        _$DescribeVpnConnectionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpnConnectionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpnConnectionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpnConnectionSet':
          result.vpnConnections.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VpnConnection)],
            ),
          ) as _i2.BuiltList<VpnConnection>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeVpnConnectionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVpnConnectionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpnConnectionsResult(:vpnConnections) = object;
    if (vpnConnections != null) {
      result$
        ..add(const _i3.XmlElementName('VpnConnectionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpnConnections,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VpnConnection)],
          ),
        ));
    }
    return result$;
  }
}
