// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_client_vpn_connections_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection.dart';

part 'describe_client_vpn_connections_result.g.dart';

abstract class DescribeClientVpnConnectionsResult
    with
        _i1.AWSEquatable<DescribeClientVpnConnectionsResult>
    implements
        Built<DescribeClientVpnConnectionsResult,
            DescribeClientVpnConnectionsResultBuilder> {
  factory DescribeClientVpnConnectionsResult({
    List<ClientVpnConnection>? connections,
    String? nextToken,
  }) {
    return _$DescribeClientVpnConnectionsResult._(
      connections: connections == null ? null : _i2.BuiltList(connections),
      nextToken: nextToken,
    );
  }

  factory DescribeClientVpnConnectionsResult.build(
          [void Function(DescribeClientVpnConnectionsResultBuilder) updates]) =
      _$DescribeClientVpnConnectionsResult;

  const DescribeClientVpnConnectionsResult._();

  /// Constructs a [DescribeClientVpnConnectionsResult] from a [payload] and [response].
  factory DescribeClientVpnConnectionsResult.fromResponse(
    DescribeClientVpnConnectionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeClientVpnConnectionsResult>>
      serializers = [DescribeClientVpnConnectionsResultEc2QuerySerializer()];

  /// Information about the active and terminated client connections.
  _i2.BuiltList<ClientVpnConnection>? get connections;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        connections,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeClientVpnConnectionsResult')
          ..add(
            'connections',
            connections,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeClientVpnConnectionsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeClientVpnConnectionsResult> {
  const DescribeClientVpnConnectionsResultEc2QuerySerializer()
      : super('DescribeClientVpnConnectionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnConnectionsResult,
        _$DescribeClientVpnConnectionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnConnectionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnConnectionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'connections':
          result.connections.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ClientVpnConnection)],
            ),
          ) as _i2.BuiltList<ClientVpnConnection>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeClientVpnConnectionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeClientVpnConnectionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeClientVpnConnectionsResult(:connections, :nextToken) = object;
    if (connections != null) {
      result$
        ..add(const _i3.XmlElementName('Connections'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          connections,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ClientVpnConnection)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
