// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_spot_datafeed_subscription_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_datafeed_subscription.dart';

part 'describe_spot_datafeed_subscription_result.g.dart';

/// Contains the output of DescribeSpotDatafeedSubscription.
abstract class DescribeSpotDatafeedSubscriptionResult
    with
        _i1.AWSEquatable<DescribeSpotDatafeedSubscriptionResult>
    implements
        Built<DescribeSpotDatafeedSubscriptionResult,
            DescribeSpotDatafeedSubscriptionResultBuilder> {
  /// Contains the output of DescribeSpotDatafeedSubscription.
  factory DescribeSpotDatafeedSubscriptionResult(
      {SpotDatafeedSubscription? spotDatafeedSubscription}) {
    return _$DescribeSpotDatafeedSubscriptionResult._(
        spotDatafeedSubscription: spotDatafeedSubscription);
  }

  /// Contains the output of DescribeSpotDatafeedSubscription.
  factory DescribeSpotDatafeedSubscriptionResult.build(
      [void Function(DescribeSpotDatafeedSubscriptionResultBuilder)
          updates]) = _$DescribeSpotDatafeedSubscriptionResult;

  const DescribeSpotDatafeedSubscriptionResult._();

  /// Constructs a [DescribeSpotDatafeedSubscriptionResult] from a [payload] and [response].
  factory DescribeSpotDatafeedSubscriptionResult.fromResponse(
    DescribeSpotDatafeedSubscriptionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DescribeSpotDatafeedSubscriptionResult>>
      serializers = [
    DescribeSpotDatafeedSubscriptionResultEc2QuerySerializer()
  ];

  /// The Spot Instance data feed subscription.
  SpotDatafeedSubscription? get spotDatafeedSubscription;
  @override
  List<Object?> get props => [spotDatafeedSubscription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotDatafeedSubscriptionResult')
          ..add(
            'spotDatafeedSubscription',
            spotDatafeedSubscription,
          );
    return helper.toString();
  }
}

class DescribeSpotDatafeedSubscriptionResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DescribeSpotDatafeedSubscriptionResult> {
  const DescribeSpotDatafeedSubscriptionResultEc2QuerySerializer()
      : super('DescribeSpotDatafeedSubscriptionResult');

  @override
  Iterable<Type> get types => const [
        DescribeSpotDatafeedSubscriptionResult,
        _$DescribeSpotDatafeedSubscriptionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotDatafeedSubscriptionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotDatafeedSubscriptionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'spotDatafeedSubscription':
          result.spotDatafeedSubscription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SpotDatafeedSubscription),
          ) as SpotDatafeedSubscription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeSpotDatafeedSubscriptionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DescribeSpotDatafeedSubscriptionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSpotDatafeedSubscriptionResult(:spotDatafeedSubscription) =
        object;
    if (spotDatafeedSubscription != null) {
      result$
        ..add(const _i2.XmlElementName('SpotDatafeedSubscription'))
        ..add(serializers.serialize(
          spotDatafeedSubscription,
          specifiedType: const FullType(SpotDatafeedSubscription),
        ));
    }
    return result$;
  }
}
