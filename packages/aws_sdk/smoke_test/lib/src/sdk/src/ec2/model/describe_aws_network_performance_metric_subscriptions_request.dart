// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_aws_network_performance_metric_subscriptions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_aws_network_performance_metric_subscriptions_request.g.dart';

abstract class DescribeAwsNetworkPerformanceMetricSubscriptionsRequest
    with
        _i1.HttpInput<DescribeAwsNetworkPerformanceMetricSubscriptionsRequest>,
        _i2
        .AWSEquatable<DescribeAwsNetworkPerformanceMetricSubscriptionsRequest>
    implements
        Built<DescribeAwsNetworkPerformanceMetricSubscriptionsRequest,
            DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder> {
  factory DescribeAwsNetworkPerformanceMetricSubscriptionsRequest({
    int? maxResults,
    String? nextToken,
    List<Filter>? filters,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeAwsNetworkPerformanceMetricSubscriptionsRequest._(
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
    );
  }

  factory DescribeAwsNetworkPerformanceMetricSubscriptionsRequest.build(
      [void Function(
              DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder)
          updates]) = _$DescribeAwsNetworkPerformanceMetricSubscriptionsRequest;

  const DescribeAwsNetworkPerformanceMetricSubscriptionsRequest._();

  factory DescribeAwsNetworkPerformanceMetricSubscriptionsRequest.fromRequest(
    DescribeAwsNetworkPerformanceMetricSubscriptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<
              DescribeAwsNetworkPerformanceMetricSubscriptionsRequest>>
      serializers = [
    DescribeAwsNetworkPerformanceMetricSubscriptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// One or more filters.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeAwsNetworkPerformanceMetricSubscriptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        maxResults,
        nextToken,
        filters,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeAwsNetworkPerformanceMetricSubscriptionsRequest')
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

class DescribeAwsNetworkPerformanceMetricSubscriptionsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DescribeAwsNetworkPerformanceMetricSubscriptionsRequest> {
  const DescribeAwsNetworkPerformanceMetricSubscriptionsRequestEc2QuerySerializer()
      : super('DescribeAwsNetworkPerformanceMetricSubscriptionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAwsNetworkPerformanceMetricSubscriptionsRequest,
        _$DescribeAwsNetworkPerformanceMetricSubscriptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAwsNetworkPerformanceMetricSubscriptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DescribeAwsNetworkPerformanceMetricSubscriptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    DescribeAwsNetworkPerformanceMetricSubscriptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeAwsNetworkPerformanceMetricSubscriptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAwsNetworkPerformanceMetricSubscriptionsRequest(
      :maxResults,
      :nextToken,
      :filters,
      :dryRun
    ) = object;
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
