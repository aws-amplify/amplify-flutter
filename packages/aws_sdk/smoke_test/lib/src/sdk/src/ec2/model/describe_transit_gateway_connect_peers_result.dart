// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_transit_gateway_connect_peers_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer.dart';

part 'describe_transit_gateway_connect_peers_result.g.dart';

abstract class DescribeTransitGatewayConnectPeersResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayConnectPeersResult>
    implements
        Built<DescribeTransitGatewayConnectPeersResult,
            DescribeTransitGatewayConnectPeersResultBuilder> {
  factory DescribeTransitGatewayConnectPeersResult({
    List<TransitGatewayConnectPeer>? transitGatewayConnectPeers,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayConnectPeersResult._(
      transitGatewayConnectPeers: transitGatewayConnectPeers == null
          ? null
          : _i2.BuiltList(transitGatewayConnectPeers),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayConnectPeersResult.build(
      [void Function(DescribeTransitGatewayConnectPeersResultBuilder)
          updates]) = _$DescribeTransitGatewayConnectPeersResult;

  const DescribeTransitGatewayConnectPeersResult._();

  /// Constructs a [DescribeTransitGatewayConnectPeersResult] from a [payload] and [response].
  factory DescribeTransitGatewayConnectPeersResult.fromResponse(
    DescribeTransitGatewayConnectPeersResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeTransitGatewayConnectPeersResult>>
      serializers = [
    DescribeTransitGatewayConnectPeersResultEc2QuerySerializer()
  ];

  /// Information about the Connect peers.
  _i2.BuiltList<TransitGatewayConnectPeer>? get transitGatewayConnectPeers;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayConnectPeers,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewayConnectPeersResult')
          ..add(
            'transitGatewayConnectPeers',
            transitGatewayConnectPeers,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeTransitGatewayConnectPeersResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeTransitGatewayConnectPeersResult> {
  const DescribeTransitGatewayConnectPeersResultEc2QuerySerializer()
      : super('DescribeTransitGatewayConnectPeersResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayConnectPeersResult,
        _$DescribeTransitGatewayConnectPeersResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayConnectPeersResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayConnectPeersResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayConnectPeerSet':
          result.transitGatewayConnectPeers
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayConnectPeer)],
            ),
          ) as _i2.BuiltList<TransitGatewayConnectPeer>));
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
    DescribeTransitGatewayConnectPeersResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTransitGatewayConnectPeersResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewayConnectPeersResult(
      :transitGatewayConnectPeers,
      :nextToken
    ) = object;
    if (transitGatewayConnectPeers != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayConnectPeerSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayConnectPeers,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TransitGatewayConnectPeer)],
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
