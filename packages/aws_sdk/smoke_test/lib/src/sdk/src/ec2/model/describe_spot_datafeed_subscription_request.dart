// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_spot_datafeed_subscription_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_spot_datafeed_subscription_request.g.dart';

/// Contains the parameters for DescribeSpotDatafeedSubscription.
abstract class DescribeSpotDatafeedSubscriptionRequest
    with
        _i1.HttpInput<DescribeSpotDatafeedSubscriptionRequest>,
        _i2.AWSEquatable<DescribeSpotDatafeedSubscriptionRequest>
    implements
        Built<DescribeSpotDatafeedSubscriptionRequest,
            DescribeSpotDatafeedSubscriptionRequestBuilder> {
  /// Contains the parameters for DescribeSpotDatafeedSubscription.
  factory DescribeSpotDatafeedSubscriptionRequest({bool? dryRun}) {
    dryRun ??= false;
    return _$DescribeSpotDatafeedSubscriptionRequest._(dryRun: dryRun);
  }

  /// Contains the parameters for DescribeSpotDatafeedSubscription.
  factory DescribeSpotDatafeedSubscriptionRequest.build(
      [void Function(DescribeSpotDatafeedSubscriptionRequestBuilder)
          updates]) = _$DescribeSpotDatafeedSubscriptionRequest;

  const DescribeSpotDatafeedSubscriptionRequest._();

  factory DescribeSpotDatafeedSubscriptionRequest.fromRequest(
    DescribeSpotDatafeedSubscriptionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeSpotDatafeedSubscriptionRequest>>
      serializers = [
    DescribeSpotDatafeedSubscriptionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotDatafeedSubscriptionRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeSpotDatafeedSubscriptionRequest getPayload() => this;
  @override
  List<Object?> get props => [dryRun];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotDatafeedSubscriptionRequest')
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DescribeSpotDatafeedSubscriptionRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeSpotDatafeedSubscriptionRequest> {
  const DescribeSpotDatafeedSubscriptionRequestEc2QuerySerializer()
      : super('DescribeSpotDatafeedSubscriptionRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSpotDatafeedSubscriptionRequest,
        _$DescribeSpotDatafeedSubscriptionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotDatafeedSubscriptionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotDatafeedSubscriptionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
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
    DescribeSpotDatafeedSubscriptionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeSpotDatafeedSubscriptionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSpotDatafeedSubscriptionRequest(:dryRun) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
