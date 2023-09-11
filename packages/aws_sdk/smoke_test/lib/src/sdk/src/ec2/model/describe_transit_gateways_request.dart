// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_transit_gateways_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_transit_gateways_request.g.dart';

abstract class DescribeTransitGatewaysRequest
    with
        _i1.HttpInput<DescribeTransitGatewaysRequest>,
        _i2.AWSEquatable<DescribeTransitGatewaysRequest>
    implements
        Built<DescribeTransitGatewaysRequest,
            DescribeTransitGatewaysRequestBuilder> {
  factory DescribeTransitGatewaysRequest({
    List<String>? transitGatewayIds,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeTransitGatewaysRequest._(
      transitGatewayIds:
          transitGatewayIds == null ? null : _i3.BuiltList(transitGatewayIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory DescribeTransitGatewaysRequest.build(
          [void Function(DescribeTransitGatewaysRequestBuilder) updates]) =
      _$DescribeTransitGatewaysRequest;

  const DescribeTransitGatewaysRequest._();

  factory DescribeTransitGatewaysRequest.fromRequest(
    DescribeTransitGatewaysRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeTransitGatewaysRequest>>
      serializers = [DescribeTransitGatewaysRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewaysRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The IDs of the transit gateways.
  _i3.BuiltList<String>? get transitGatewayIds;

  /// One or more filters. The possible values are:
  ///
  /// *   `options.propagation-default-route-table-id` \- The ID of the default propagation route table.
  ///
  /// *   `options.amazon-side-asn` \- The private ASN for the Amazon side of a BGP session.
  ///
  /// *   `options.association-default-route-table-id` \- The ID of the default association route table.
  ///
  /// *   `options.auto-accept-shared-attachments` \- Indicates whether there is automatic acceptance of attachment requests (`enable` | `disable`).
  ///
  /// *   `options.default-route-table-association` \- Indicates whether resource attachments are automatically associated with the default association route table (`enable` | `disable`).
  ///
  /// *   `options.default-route-table-propagation` \- Indicates whether resource attachments automatically propagate routes to the default propagation route table (`enable` | `disable`).
  ///
  /// *   `options.dns-support` \- Indicates whether DNS support is enabled (`enable` | `disable`).
  ///
  /// *   `options.vpn-ecmp-support` \- Indicates whether Equal Cost Multipath Protocol support is enabled (`enable` | `disable`).
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the transit gateway.
  ///
  /// *   `state` \- The state of the transit gateway (`available` | `deleted` | `deleting` | `modifying` | `pending`).
  ///
  /// *   `transit-gateway-id` \- The ID of the transit gateway.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeTransitGatewaysRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayIds,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTransitGatewaysRequest')
      ..add(
        'transitGatewayIds',
        transitGatewayIds,
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

class DescribeTransitGatewaysRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeTransitGatewaysRequest> {
  const DescribeTransitGatewaysRequestEc2QuerySerializer()
      : super('DescribeTransitGatewaysRequest');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewaysRequest,
        _$DescribeTransitGatewaysRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewaysRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewaysRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayIds':
          result.transitGatewayIds.replace((const _i1.XmlBuiltListSerializer(
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
    DescribeTransitGatewaysRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeTransitGatewaysRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewaysRequest(
      :transitGatewayIds,
      :filters,
      :maxResults,
      :nextToken,
      :dryRun
    ) = object;
    if (transitGatewayIds != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayIds,
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
