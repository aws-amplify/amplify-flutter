// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_aws_network_performance_metric_subscription_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'disable_aws_network_performance_metric_subscription_result.g.dart';

abstract class DisableAwsNetworkPerformanceMetricSubscriptionResult
    with
        _i1.AWSEquatable<DisableAwsNetworkPerformanceMetricSubscriptionResult>
    implements
        Built<DisableAwsNetworkPerformanceMetricSubscriptionResult,
            DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder> {
  factory DisableAwsNetworkPerformanceMetricSubscriptionResult({bool? output}) {
    output ??= false;
    return _$DisableAwsNetworkPerformanceMetricSubscriptionResult._(
        output: output);
  }

  factory DisableAwsNetworkPerformanceMetricSubscriptionResult.build(
      [void Function(
              DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder)
          updates]) = _$DisableAwsNetworkPerformanceMetricSubscriptionResult;

  const DisableAwsNetworkPerformanceMetricSubscriptionResult._();

  /// Constructs a [DisableAwsNetworkPerformanceMetricSubscriptionResult] from a [payload] and [response].
  factory DisableAwsNetworkPerformanceMetricSubscriptionResult.fromResponse(
    DisableAwsNetworkPerformanceMetricSubscriptionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          DisableAwsNetworkPerformanceMetricSubscriptionResult>> serializers = [
    DisableAwsNetworkPerformanceMetricSubscriptionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder b) {
    b.output = false;
  }

  /// Indicates whether the unsubscribe action was successful.
  bool get output;
  @override
  List<Object?> get props => [output];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisableAwsNetworkPerformanceMetricSubscriptionResult')
      ..add(
        'output',
        output,
      );
    return helper.toString();
  }
}

class DisableAwsNetworkPerformanceMetricSubscriptionResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        DisableAwsNetworkPerformanceMetricSubscriptionResult> {
  const DisableAwsNetworkPerformanceMetricSubscriptionResultEc2QuerySerializer()
      : super('DisableAwsNetworkPerformanceMetricSubscriptionResult');

  @override
  Iterable<Type> get types => const [
        DisableAwsNetworkPerformanceMetricSubscriptionResult,
        _$DisableAwsNetworkPerformanceMetricSubscriptionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableAwsNetworkPerformanceMetricSubscriptionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder();
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
    DisableAwsNetworkPerformanceMetricSubscriptionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisableAwsNetworkPerformanceMetricSubscriptionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableAwsNetworkPerformanceMetricSubscriptionResult(:output) =
        object;
    result$
      ..add(const _i2.XmlElementName('Output'))
      ..add(serializers.serialize(
        output,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
