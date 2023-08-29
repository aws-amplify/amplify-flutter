// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_client_vpn_connections_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_client_vpn_connections_request.g.dart';

abstract class DescribeClientVpnConnectionsRequest
    with
        _i1.HttpInput<DescribeClientVpnConnectionsRequest>,
        _i2.AWSEquatable<DescribeClientVpnConnectionsRequest>
    implements
        Built<DescribeClientVpnConnectionsRequest,
            DescribeClientVpnConnectionsRequestBuilder> {
  factory DescribeClientVpnConnectionsRequest({
    String? clientVpnEndpointId,
    List<Filter>? filters,
    String? nextToken,
    int? maxResults,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeClientVpnConnectionsRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      filters: filters == null ? null : _i3.BuiltList(filters),
      nextToken: nextToken,
      maxResults: maxResults,
      dryRun: dryRun,
    );
  }

  factory DescribeClientVpnConnectionsRequest.build(
          [void Function(DescribeClientVpnConnectionsRequestBuilder) updates]) =
      _$DescribeClientVpnConnectionsRequest;

  const DescribeClientVpnConnectionsRequest._();

  factory DescribeClientVpnConnectionsRequest.fromRequest(
    DescribeClientVpnConnectionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeClientVpnConnectionsRequest>>
      serializers = [DescribeClientVpnConnectionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeClientVpnConnectionsRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The ID of the Client VPN endpoint.
  String? get clientVpnEndpointId;

  /// One or more filters. Filter names and values are case-sensitive.
  ///
  /// *   `connection-id` \- The ID of the connection.
  ///
  /// *   `username` \- For Active Directory client authentication, the user name of the client who established the client connection.
  _i3.BuiltList<Filter>? get filters;

  /// The token to retrieve the next page of results.
  String? get nextToken;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeClientVpnConnectionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        filters,
        nextToken,
        maxResults,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeClientVpnConnectionsRequest')
          ..add(
            'clientVpnEndpointId',
            clientVpnEndpointId,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DescribeClientVpnConnectionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeClientVpnConnectionsRequest> {
  const DescribeClientVpnConnectionsRequestEc2QuerySerializer()
      : super('DescribeClientVpnConnectionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnConnectionsRequest,
        _$DescribeClientVpnConnectionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnConnectionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnConnectionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    DescribeClientVpnConnectionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeClientVpnConnectionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeClientVpnConnectionsRequest(
      :clientVpnEndpointId,
      :filters,
      :nextToken,
      :maxResults,
      :dryRun
    ) = object;
    if (clientVpnEndpointId != null) {
      result$
        ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          clientVpnEndpointId,
          specifiedType: const FullType(String),
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
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
