// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_aws_network_performance_metric_subscriptions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/subscription.dart';

part 'describe_aws_network_performance_metric_subscriptions_result.g.dart';

abstract class DescribeAwsNetworkPerformanceMetricSubscriptionsResult
    with
        _i1.AWSEquatable<DescribeAwsNetworkPerformanceMetricSubscriptionsResult>
    implements
        Built<DescribeAwsNetworkPerformanceMetricSubscriptionsResult,
            DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder> {
  factory DescribeAwsNetworkPerformanceMetricSubscriptionsResult({
    String? nextToken,
    List<Subscription>? subscriptions,
  }) {
    return _$DescribeAwsNetworkPerformanceMetricSubscriptionsResult._(
      nextToken: nextToken,
      subscriptions:
          subscriptions == null ? null : _i2.BuiltList(subscriptions),
    );
  }

  factory DescribeAwsNetworkPerformanceMetricSubscriptionsResult.build(
      [void Function(
              DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder)
          updates]) = _$DescribeAwsNetworkPerformanceMetricSubscriptionsResult;

  const DescribeAwsNetworkPerformanceMetricSubscriptionsResult._();

  /// Constructs a [DescribeAwsNetworkPerformanceMetricSubscriptionsResult] from a [payload] and [response].
  factory DescribeAwsNetworkPerformanceMetricSubscriptionsResult.fromResponse(
    DescribeAwsNetworkPerformanceMetricSubscriptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<
              DescribeAwsNetworkPerformanceMetricSubscriptionsResult>>
      serializers = [
    DescribeAwsNetworkPerformanceMetricSubscriptionsResultEc2QuerySerializer()
  ];

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Describes the current Infrastructure Performance subscriptions.
  _i2.BuiltList<Subscription>? get subscriptions;
  @override
  List<Object?> get props => [
        nextToken,
        subscriptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeAwsNetworkPerformanceMetricSubscriptionsResult')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'subscriptions',
        subscriptions,
      );
    return helper.toString();
  }
}

class DescribeAwsNetworkPerformanceMetricSubscriptionsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DescribeAwsNetworkPerformanceMetricSubscriptionsResult> {
  const DescribeAwsNetworkPerformanceMetricSubscriptionsResultEc2QuerySerializer()
      : super('DescribeAwsNetworkPerformanceMetricSubscriptionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeAwsNetworkPerformanceMetricSubscriptionsResult,
        _$DescribeAwsNetworkPerformanceMetricSubscriptionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAwsNetworkPerformanceMetricSubscriptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subscriptionSet':
          result.subscriptions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Subscription)],
            ),
          ) as _i2.BuiltList<Subscription>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeAwsNetworkPerformanceMetricSubscriptionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeAwsNetworkPerformanceMetricSubscriptionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAwsNetworkPerformanceMetricSubscriptionsResult(
      :nextToken,
      :subscriptions
    ) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (subscriptions != null) {
      result$
        ..add(const _i3.XmlElementName('SubscriptionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subscriptions,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Subscription)],
          ),
        ));
    }
    return result$;
  }
}
