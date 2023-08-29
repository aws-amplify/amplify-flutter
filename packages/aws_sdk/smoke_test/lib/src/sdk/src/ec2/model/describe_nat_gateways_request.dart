// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_nat_gateways_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_nat_gateways_request.g.dart';

abstract class DescribeNatGatewaysRequest
    with
        _i1.HttpInput<DescribeNatGatewaysRequest>,
        _i2.AWSEquatable<DescribeNatGatewaysRequest>
    implements
        Built<DescribeNatGatewaysRequest, DescribeNatGatewaysRequestBuilder> {
  factory DescribeNatGatewaysRequest({
    bool? dryRun,
    List<Filter>? filter,
    int? maxResults,
    List<String>? natGatewayIds,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeNatGatewaysRequest._(
      dryRun: dryRun,
      filter: filter == null ? null : _i3.BuiltList(filter),
      maxResults: maxResults,
      natGatewayIds:
          natGatewayIds == null ? null : _i3.BuiltList(natGatewayIds),
      nextToken: nextToken,
    );
  }

  factory DescribeNatGatewaysRequest.build(
          [void Function(DescribeNatGatewaysRequestBuilder) updates]) =
      _$DescribeNatGatewaysRequest;

  const DescribeNatGatewaysRequest._();

  factory DescribeNatGatewaysRequest.fromRequest(
    DescribeNatGatewaysRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeNatGatewaysRequest>>
      serializers = [DescribeNatGatewaysRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNatGatewaysRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The filters.
  ///
  /// *   `nat-gateway-id` \- The ID of the NAT gateway.
  ///
  /// *   `state` \- The state of the NAT gateway (`pending` | `failed` | `available` | `deleting` | `deleted`).
  ///
  /// *   `subnet-id` \- The ID of the subnet in which the NAT gateway resides.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-id` \- The ID of the VPC in which the NAT gateway resides.
  _i3.BuiltList<Filter>? get filter;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The IDs of the NAT gateways.
  _i3.BuiltList<String>? get natGatewayIds;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;
  @override
  DescribeNatGatewaysRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filter,
        maxResults,
        natGatewayIds,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeNatGatewaysRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'filter',
        filter,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'natGatewayIds',
        natGatewayIds,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeNatGatewaysRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeNatGatewaysRequest> {
  const DescribeNatGatewaysRequestEc2QuerySerializer()
      : super('DescribeNatGatewaysRequest');

  @override
  Iterable<Type> get types => const [
        DescribeNatGatewaysRequest,
        _$DescribeNatGatewaysRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNatGatewaysRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNatGatewaysRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Filter':
          result.filter.replace((const _i1.XmlBuiltListSerializer(
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
        case 'NatGatewayId':
          result.natGatewayIds.replace((const _i1.XmlBuiltListSerializer(
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
        case 'NextToken':
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
    DescribeNatGatewaysRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeNatGatewaysRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNatGatewaysRequest(
      :dryRun,
      :filter,
      :maxResults,
      :natGatewayIds,
      :nextToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (filter != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filter,
          specifiedType: const FullType.nullable(
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
    if (natGatewayIds != null) {
      result$
        ..add(const _i1.XmlElementName('NatGatewayId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          natGatewayIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
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
    return result$;
  }
}
