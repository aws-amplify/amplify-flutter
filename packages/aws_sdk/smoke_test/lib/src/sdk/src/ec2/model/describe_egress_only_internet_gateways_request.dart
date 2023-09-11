// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_egress_only_internet_gateways_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_egress_only_internet_gateways_request.g.dart';

abstract class DescribeEgressOnlyInternetGatewaysRequest
    with
        _i1.HttpInput<DescribeEgressOnlyInternetGatewaysRequest>,
        _i2.AWSEquatable<DescribeEgressOnlyInternetGatewaysRequest>
    implements
        Built<DescribeEgressOnlyInternetGatewaysRequest,
            DescribeEgressOnlyInternetGatewaysRequestBuilder> {
  factory DescribeEgressOnlyInternetGatewaysRequest({
    bool? dryRun,
    List<String>? egressOnlyInternetGatewayIds,
    int? maxResults,
    String? nextToken,
    List<Filter>? filters,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeEgressOnlyInternetGatewaysRequest._(
      dryRun: dryRun,
      egressOnlyInternetGatewayIds: egressOnlyInternetGatewayIds == null
          ? null
          : _i3.BuiltList(egressOnlyInternetGatewayIds),
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters == null ? null : _i3.BuiltList(filters),
    );
  }

  factory DescribeEgressOnlyInternetGatewaysRequest.build(
      [void Function(DescribeEgressOnlyInternetGatewaysRequestBuilder)
          updates]) = _$DescribeEgressOnlyInternetGatewaysRequest;

  const DescribeEgressOnlyInternetGatewaysRequest._();

  factory DescribeEgressOnlyInternetGatewaysRequest.fromRequest(
    DescribeEgressOnlyInternetGatewaysRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeEgressOnlyInternetGatewaysRequest>>
      serializers = [
    DescribeEgressOnlyInternetGatewaysRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeEgressOnlyInternetGatewaysRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the egress-only internet gateways.
  _i3.BuiltList<String>? get egressOnlyInternetGatewayIds;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The filters.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i3.BuiltList<Filter>? get filters;
  @override
  DescribeEgressOnlyInternetGatewaysRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        egressOnlyInternetGatewayIds,
        maxResults,
        nextToken,
        filters,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeEgressOnlyInternetGatewaysRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'egressOnlyInternetGatewayIds',
            egressOnlyInternetGatewayIds,
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
          );
    return helper.toString();
  }
}

class DescribeEgressOnlyInternetGatewaysRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeEgressOnlyInternetGatewaysRequest> {
  const DescribeEgressOnlyInternetGatewaysRequestEc2QuerySerializer()
      : super('DescribeEgressOnlyInternetGatewaysRequest');

  @override
  Iterable<Type> get types => const [
        DescribeEgressOnlyInternetGatewaysRequest,
        _$DescribeEgressOnlyInternetGatewaysRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeEgressOnlyInternetGatewaysRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeEgressOnlyInternetGatewaysRequestBuilder();
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
        case 'EgressOnlyInternetGatewayId':
          result.egressOnlyInternetGatewayIds
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeEgressOnlyInternetGatewaysRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeEgressOnlyInternetGatewaysRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeEgressOnlyInternetGatewaysRequest(
      :dryRun,
      :egressOnlyInternetGatewayIds,
      :maxResults,
      :nextToken,
      :filters
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (egressOnlyInternetGatewayIds != null) {
      result$
        ..add(const _i1.XmlElementName('EgressOnlyInternetGatewayId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          egressOnlyInternetGatewayIds,
          specifiedType: const FullType(
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
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    return result$;
  }
}
