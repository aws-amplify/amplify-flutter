// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_client_vpn_target_networks_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_client_vpn_target_networks_request.g.dart';

abstract class DescribeClientVpnTargetNetworksRequest
    with
        _i1.HttpInput<DescribeClientVpnTargetNetworksRequest>,
        _i2.AWSEquatable<DescribeClientVpnTargetNetworksRequest>
    implements
        Built<DescribeClientVpnTargetNetworksRequest,
            DescribeClientVpnTargetNetworksRequestBuilder> {
  factory DescribeClientVpnTargetNetworksRequest({
    String? clientVpnEndpointId,
    List<String>? associationIds,
    int? maxResults,
    String? nextToken,
    List<Filter>? filters,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeClientVpnTargetNetworksRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      associationIds:
          associationIds == null ? null : _i3.BuiltList(associationIds),
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
    );
  }

  factory DescribeClientVpnTargetNetworksRequest.build(
      [void Function(DescribeClientVpnTargetNetworksRequestBuilder)
          updates]) = _$DescribeClientVpnTargetNetworksRequest;

  const DescribeClientVpnTargetNetworksRequest._();

  factory DescribeClientVpnTargetNetworksRequest.fromRequest(
    DescribeClientVpnTargetNetworksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeClientVpnTargetNetworksRequest>>
      serializers = [
    DescribeClientVpnTargetNetworksRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeClientVpnTargetNetworksRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The ID of the Client VPN endpoint.
  String? get clientVpnEndpointId;

  /// The IDs of the target network associations.
  _i3.BuiltList<String>? get associationIds;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
  int get maxResults;

  /// The token to retrieve the next page of results.
  String? get nextToken;

  /// One or more filters. Filter names and values are case-sensitive.
  ///
  /// *   `association-id` \- The ID of the association.
  ///
  /// *   `target-network-id` \- The ID of the subnet specified as the target network.
  ///
  /// *   `vpc-id` \- The ID of the VPC in which the target network is located.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeClientVpnTargetNetworksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        associationIds,
        maxResults,
        nextToken,
        filters,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeClientVpnTargetNetworksRequest')
          ..add(
            'clientVpnEndpointId',
            clientVpnEndpointId,
          )
          ..add(
            'associationIds',
            associationIds,
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
            'filters',
            filters,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DescribeClientVpnTargetNetworksRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeClientVpnTargetNetworksRequest> {
  const DescribeClientVpnTargetNetworksRequestEc2QuerySerializer()
      : super('DescribeClientVpnTargetNetworksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnTargetNetworksRequest,
        _$DescribeClientVpnTargetNetworksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnTargetNetworksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnTargetNetworksRequestBuilder();
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
        case 'AssociationIds':
          result.associationIds.replace((const _i1.XmlBuiltListSerializer(
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
    DescribeClientVpnTargetNetworksRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeClientVpnTargetNetworksRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeClientVpnTargetNetworksRequest(
      :clientVpnEndpointId,
      :associationIds,
      :maxResults,
      :nextToken,
      :filters,
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
    if (associationIds != null) {
      result$
        ..add(const _i1.XmlElementName('AssociationIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          associationIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
