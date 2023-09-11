// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_connect_endpoints_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_instance_connect_endpoints_request.g.dart';

abstract class DescribeInstanceConnectEndpointsRequest
    with
        _i1.HttpInput<DescribeInstanceConnectEndpointsRequest>,
        _i2.AWSEquatable<DescribeInstanceConnectEndpointsRequest>
    implements
        Built<DescribeInstanceConnectEndpointsRequest,
            DescribeInstanceConnectEndpointsRequestBuilder> {
  factory DescribeInstanceConnectEndpointsRequest({
    bool? dryRun,
    int? maxResults,
    String? nextToken,
    List<Filter>? filters,
    List<String>? instanceConnectEndpointIds,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeInstanceConnectEndpointsRequest._(
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters == null ? null : _i3.BuiltList(filters),
      instanceConnectEndpointIds: instanceConnectEndpointIds == null
          ? null
          : _i3.BuiltList(instanceConnectEndpointIds),
    );
  }

  factory DescribeInstanceConnectEndpointsRequest.build(
      [void Function(DescribeInstanceConnectEndpointsRequestBuilder)
          updates]) = _$DescribeInstanceConnectEndpointsRequest;

  const DescribeInstanceConnectEndpointsRequest._();

  factory DescribeInstanceConnectEndpointsRequest.fromRequest(
    DescribeInstanceConnectEndpointsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeInstanceConnectEndpointsRequest>>
      serializers = [
    DescribeInstanceConnectEndpointsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceConnectEndpointsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// One or more filters.
  ///
  /// *   `instance-connect-endpoint-id` \- The ID of the EC2 Instance Connect Endpoint.
  ///
  /// *   `state` \- The state of the EC2 Instance Connect Endpoint (`create-in-progress` | `create-complete` | `create-failed` | `delete-in-progress` | `delete-complete` | `delete-failed`).
  ///
  /// *   `subnet-id` \- The ID of the subnet in which the EC2 Instance Connect Endpoint was created.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `tag-value` \- The value of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific value, regardless of tag key.
  ///
  /// *   `vpc-id` \- The ID of the VPC in which the EC2 Instance Connect Endpoint was created.
  _i3.BuiltList<Filter>? get filters;

  /// One or more EC2 Instance Connect Endpoint IDs.
  _i3.BuiltList<String>? get instanceConnectEndpointIds;
  @override
  DescribeInstanceConnectEndpointsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        maxResults,
        nextToken,
        filters,
        instanceConnectEndpointIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeInstanceConnectEndpointsRequest')
          ..add(
            'dryRun',
            dryRun,
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
            'instanceConnectEndpointIds',
            instanceConnectEndpointIds,
          );
    return helper.toString();
  }
}

class DescribeInstanceConnectEndpointsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeInstanceConnectEndpointsRequest> {
  const DescribeInstanceConnectEndpointsRequestEc2QuerySerializer()
      : super('DescribeInstanceConnectEndpointsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceConnectEndpointsRequest,
        _$DescribeInstanceConnectEndpointsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceConnectEndpointsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceConnectEndpointsRequestBuilder();
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
        case 'InstanceConnectEndpointId':
          result.instanceConnectEndpointIds
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeInstanceConnectEndpointsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeInstanceConnectEndpointsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceConnectEndpointsRequest(
      :dryRun,
      :maxResults,
      :nextToken,
      :filters,
      :instanceConnectEndpointIds
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
    if (instanceConnectEndpointIds != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceConnectEndpointId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceConnectEndpointIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
