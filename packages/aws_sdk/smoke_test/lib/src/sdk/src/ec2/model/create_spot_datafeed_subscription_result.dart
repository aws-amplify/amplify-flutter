// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_spot_datafeed_subscription_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_datafeed_subscription.dart';

part 'create_spot_datafeed_subscription_result.g.dart';

/// Contains the output of CreateSpotDatafeedSubscription.
abstract class CreateSpotDatafeedSubscriptionResult
    with
        _i1.AWSEquatable<CreateSpotDatafeedSubscriptionResult>
    implements
        Built<CreateSpotDatafeedSubscriptionResult,
            CreateSpotDatafeedSubscriptionResultBuilder> {
  /// Contains the output of CreateSpotDatafeedSubscription.
  factory CreateSpotDatafeedSubscriptionResult(
      {SpotDatafeedSubscription? spotDatafeedSubscription}) {
    return _$CreateSpotDatafeedSubscriptionResult._(
        spotDatafeedSubscription: spotDatafeedSubscription);
  }

  /// Contains the output of CreateSpotDatafeedSubscription.
  factory CreateSpotDatafeedSubscriptionResult.build(
      [void Function(CreateSpotDatafeedSubscriptionResultBuilder)
          updates]) = _$CreateSpotDatafeedSubscriptionResult;

  const CreateSpotDatafeedSubscriptionResult._();

  /// Constructs a [CreateSpotDatafeedSubscriptionResult] from a [payload] and [response].
  factory CreateSpotDatafeedSubscriptionResult.fromResponse(
    CreateSpotDatafeedSubscriptionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateSpotDatafeedSubscriptionResult>>
      serializers = [CreateSpotDatafeedSubscriptionResultEc2QuerySerializer()];

  /// The Spot Instance data feed subscription.
  SpotDatafeedSubscription? get spotDatafeedSubscription;
  @override
  List<Object?> get props => [spotDatafeedSubscription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateSpotDatafeedSubscriptionResult')
          ..add(
            'spotDatafeedSubscription',
            spotDatafeedSubscription,
          );
    return helper.toString();
  }
}

class CreateSpotDatafeedSubscriptionResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateSpotDatafeedSubscriptionResult> {
  const CreateSpotDatafeedSubscriptionResultEc2QuerySerializer()
      : super('CreateSpotDatafeedSubscriptionResult');

  @override
  Iterable<Type> get types => const [
        CreateSpotDatafeedSubscriptionResult,
        _$CreateSpotDatafeedSubscriptionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSpotDatafeedSubscriptionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSpotDatafeedSubscriptionResultBuilder();
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
    CreateSpotDatafeedSubscriptionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateSpotDatafeedSubscriptionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateSpotDatafeedSubscriptionResult(:spotDatafeedSubscription) =
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
