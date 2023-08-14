// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enable_aws_network_performance_metric_subscription_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'enable_aws_network_performance_metric_subscription_result.g.dart';

abstract class EnableAwsNetworkPerformanceMetricSubscriptionResult
    with
        _i1.AWSEquatable<EnableAwsNetworkPerformanceMetricSubscriptionResult>
    implements
        Built<EnableAwsNetworkPerformanceMetricSubscriptionResult,
            EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder> {
  factory EnableAwsNetworkPerformanceMetricSubscriptionResult({bool? output}) {
    output ??= false;
    return _$EnableAwsNetworkPerformanceMetricSubscriptionResult._(
        output: output);
  }

  factory EnableAwsNetworkPerformanceMetricSubscriptionResult.build(
      [void Function(EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder)
          updates]) = _$EnableAwsNetworkPerformanceMetricSubscriptionResult;

  const EnableAwsNetworkPerformanceMetricSubscriptionResult._();

  /// Constructs a [EnableAwsNetworkPerformanceMetricSubscriptionResult] from a [payload] and [response].
  factory EnableAwsNetworkPerformanceMetricSubscriptionResult.fromResponse(
    EnableAwsNetworkPerformanceMetricSubscriptionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          EnableAwsNetworkPerformanceMetricSubscriptionResult>> serializers = [
    EnableAwsNetworkPerformanceMetricSubscriptionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder b) {
    b.output = false;
  }

  /// Indicates whether the subscribe action was successful.
  bool get output;
  @override
  List<Object?> get props => [output];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'EnableAwsNetworkPerformanceMetricSubscriptionResult')
      ..add(
        'output',
        output,
      );
    return helper.toString();
  }
}

class EnableAwsNetworkPerformanceMetricSubscriptionResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        EnableAwsNetworkPerformanceMetricSubscriptionResult> {
  const EnableAwsNetworkPerformanceMetricSubscriptionResultEc2QuerySerializer()
      : super('EnableAwsNetworkPerformanceMetricSubscriptionResult');

  @override
  Iterable<Type> get types => const [
        EnableAwsNetworkPerformanceMetricSubscriptionResult,
        _$EnableAwsNetworkPerformanceMetricSubscriptionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableAwsNetworkPerformanceMetricSubscriptionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'output':
          result.output = (serializers.deserialize(
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
    EnableAwsNetworkPerformanceMetricSubscriptionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnableAwsNetworkPerformanceMetricSubscriptionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnableAwsNetworkPerformanceMetricSubscriptionResult(:output) = object;
    result$
      ..add(const _i2.XmlElementName('Output'))
      ..add(serializers.serialize(
        output,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
