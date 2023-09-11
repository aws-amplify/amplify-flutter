// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_aws_network_performance_metric_subscription_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/metric_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/statistic_type.dart';

part 'enable_aws_network_performance_metric_subscription_request.g.dart';

abstract class EnableAwsNetworkPerformanceMetricSubscriptionRequest
    with
        _i1.HttpInput<EnableAwsNetworkPerformanceMetricSubscriptionRequest>,
        _i2.AWSEquatable<EnableAwsNetworkPerformanceMetricSubscriptionRequest>
    implements
        Built<EnableAwsNetworkPerformanceMetricSubscriptionRequest,
            EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder> {
  factory EnableAwsNetworkPerformanceMetricSubscriptionRequest({
    String? source,
    String? destination,
    MetricType? metric,
    StatisticType? statistic,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$EnableAwsNetworkPerformanceMetricSubscriptionRequest._(
      source: source,
      destination: destination,
      metric: metric,
      statistic: statistic,
      dryRun: dryRun,
    );
  }

  factory EnableAwsNetworkPerformanceMetricSubscriptionRequest.build(
      [void Function(
              EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder)
          updates]) = _$EnableAwsNetworkPerformanceMetricSubscriptionRequest;

  const EnableAwsNetworkPerformanceMetricSubscriptionRequest._();

  factory EnableAwsNetworkPerformanceMetricSubscriptionRequest.fromRequest(
    EnableAwsNetworkPerformanceMetricSubscriptionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          EnableAwsNetworkPerformanceMetricSubscriptionRequest>> serializers = [
    EnableAwsNetworkPerformanceMetricSubscriptionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder b) {
    b.dryRun = false;
  }

  /// The source Region or Availability Zone that the metric subscription is enabled for. For example, `us-east-1`.
  String? get source;

  /// The target Region or Availability Zone that the metric subscription is enabled for. For example, `eu-west-1`.
  String? get destination;

  /// The metric used for the enabled subscription.
  MetricType? get metric;

  /// The statistic used for the enabled subscription.
  StatisticType? get statistic;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  EnableAwsNetworkPerformanceMetricSubscriptionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        source,
        destination,
        metric,
        statistic,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'EnableAwsNetworkPerformanceMetricSubscriptionRequest')
      ..add(
        'source',
        source,
      )
      ..add(
        'destination',
        destination,
      )
      ..add(
        'metric',
        metric,
      )
      ..add(
        'statistic',
        statistic,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class EnableAwsNetworkPerformanceMetricSubscriptionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        EnableAwsNetworkPerformanceMetricSubscriptionRequest> {
  const EnableAwsNetworkPerformanceMetricSubscriptionRequestEc2QuerySerializer()
      : super('EnableAwsNetworkPerformanceMetricSubscriptionRequest');

  @override
  Iterable<Type> get types => const [
        EnableAwsNetworkPerformanceMetricSubscriptionRequest,
        _$EnableAwsNetworkPerformanceMetricSubscriptionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableAwsNetworkPerformanceMetricSubscriptionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        EnableAwsNetworkPerformanceMetricSubscriptionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Source':
          result.source = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Destination':
          result.destination = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Metric':
          result.metric = (serializers.deserialize(
            value,
            specifiedType: const FullType(MetricType),
          ) as MetricType);
        case 'Statistic':
          result.statistic = (serializers.deserialize(
            value,
            specifiedType: const FullType(StatisticType),
          ) as StatisticType);
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
    EnableAwsNetworkPerformanceMetricSubscriptionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'EnableAwsNetworkPerformanceMetricSubscriptionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableAwsNetworkPerformanceMetricSubscriptionRequest(
      :source,
      :destination,
      :metric,
      :statistic,
      :dryRun
    ) = object;
    if (source != null) {
      result$
        ..add(const _i1.XmlElementName('Source'))
        ..add(serializers.serialize(
          source,
          specifiedType: const FullType(String),
        ));
    }
    if (destination != null) {
      result$
        ..add(const _i1.XmlElementName('Destination'))
        ..add(serializers.serialize(
          destination,
          specifiedType: const FullType(String),
        ));
    }
    if (metric != null) {
      result$
        ..add(const _i1.XmlElementName('Metric'))
        ..add(serializers.serialize(
          metric,
          specifiedType: const FullType(MetricType),
        ));
    }
    if (statistic != null) {
      result$
        ..add(const _i1.XmlElementName('Statistic'))
        ..add(serializers.serialize(
          statistic,
          specifiedType: const FullType(StatisticType),
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
