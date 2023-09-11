// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_transit_gateway_connect_peers_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_transit_gateway_connect_peers_request.g.dart';

abstract class DescribeTransitGatewayConnectPeersRequest
    with
        _i1.HttpInput<DescribeTransitGatewayConnectPeersRequest>,
        _i2.AWSEquatable<DescribeTransitGatewayConnectPeersRequest>
    implements
        Built<DescribeTransitGatewayConnectPeersRequest,
            DescribeTransitGatewayConnectPeersRequestBuilder> {
  factory DescribeTransitGatewayConnectPeersRequest({
    List<String>? transitGatewayConnectPeerIds,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeTransitGatewayConnectPeersRequest._(
      transitGatewayConnectPeerIds: transitGatewayConnectPeerIds == null
          ? null
          : _i3.BuiltList(transitGatewayConnectPeerIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory DescribeTransitGatewayConnectPeersRequest.build(
      [void Function(DescribeTransitGatewayConnectPeersRequestBuilder)
          updates]) = _$DescribeTransitGatewayConnectPeersRequest;

  const DescribeTransitGatewayConnectPeersRequest._();

  factory DescribeTransitGatewayConnectPeersRequest.fromRequest(
    DescribeTransitGatewayConnectPeersRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeTransitGatewayConnectPeersRequest>>
      serializers = [
    DescribeTransitGatewayConnectPeersRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewayConnectPeersRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The IDs of the Connect peers.
  _i3.BuiltList<String>? get transitGatewayConnectPeerIds;

  /// One or more filters. The possible values are:
  ///
  /// *   `state` \- The state of the Connect peer (`pending` | `available` | `deleting` | `deleted`).
  ///
  /// *   `transit-gateway-attachment-id` \- The ID of the attachment.
  ///
  /// *   `transit-gateway-connect-peer-id` \- The ID of the Connect peer.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeTransitGatewayConnectPeersRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayConnectPeerIds,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewayConnectPeersRequest')
          ..add(
            'transitGatewayConnectPeerIds',
            transitGatewayConnectPeerIds,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DescribeTransitGatewayConnectPeersRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeTransitGatewayConnectPeersRequest> {
  const DescribeTransitGatewayConnectPeersRequestEc2QuerySerializer()
      : super('DescribeTransitGatewayConnectPeersRequest');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayConnectPeersRequest,
        _$DescribeTransitGatewayConnectPeersRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayConnectPeersRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayConnectPeersRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayConnectPeerIds':
          result.transitGatewayConnectPeerIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeTransitGatewayConnectPeersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeTransitGatewayConnectPeersRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewayConnectPeersRequest(
      :transitGatewayConnectPeerIds,
      :filters,
      :maxResults,
      :nextToken,
      :dryRun
    ) = object;
    if (transitGatewayConnectPeerIds != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayConnectPeerIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayConnectPeerIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
