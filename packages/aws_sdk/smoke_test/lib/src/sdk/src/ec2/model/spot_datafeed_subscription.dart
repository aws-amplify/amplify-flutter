// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_datafeed_subscription; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/datafeed_subscription_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_state_fault.dart';

part 'spot_datafeed_subscription.g.dart';

/// Describes the data feed for a Spot Instance.
abstract class SpotDatafeedSubscription
    with _i1.AWSEquatable<SpotDatafeedSubscription>
    implements
        Built<SpotDatafeedSubscription, SpotDatafeedSubscriptionBuilder> {
  /// Describes the data feed for a Spot Instance.
  factory SpotDatafeedSubscription({
    String? bucket,
    SpotInstanceStateFault? fault,
    String? ownerId,
    String? prefix,
    DatafeedSubscriptionState? state,
  }) {
    return _$SpotDatafeedSubscription._(
      bucket: bucket,
      fault: fault,
      ownerId: ownerId,
      prefix: prefix,
      state: state,
    );
  }

  /// Describes the data feed for a Spot Instance.
  factory SpotDatafeedSubscription.build(
          [void Function(SpotDatafeedSubscriptionBuilder) updates]) =
      _$SpotDatafeedSubscription;

  const SpotDatafeedSubscription._();

  static const List<_i2.SmithySerializer<SpotDatafeedSubscription>>
      serializers = [SpotDatafeedSubscriptionEc2QuerySerializer()];

  /// The name of the Amazon S3 bucket where the Spot Instance data feed is located.
  String? get bucket;

  /// The fault codes for the Spot Instance request, if any.
  SpotInstanceStateFault? get fault;

  /// The Amazon Web Services account ID of the account.
  String? get ownerId;

  /// The prefix for the data feed files.
  String? get prefix;

  /// The state of the Spot Instance data feed subscription.
  DatafeedSubscriptionState? get state;
  @override
  List<Object?> get props => [
        bucket,
        fault,
        ownerId,
        prefix,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotDatafeedSubscription')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'fault',
        fault,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'state',
        state,
      );
    return helper.toString();
  }
}

class SpotDatafeedSubscriptionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotDatafeedSubscription> {
  const SpotDatafeedSubscriptionEc2QuerySerializer()
      : super('SpotDatafeedSubscription');

  @override
  Iterable<Type> get types => const [
        SpotDatafeedSubscription,
        _$SpotDatafeedSubscription,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotDatafeedSubscription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotDatafeedSubscriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bucket':
          result.bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'fault':
          result.fault.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SpotInstanceStateFault),
          ) as SpotInstanceStateFault));
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(DatafeedSubscriptionState),
          ) as DatafeedSubscriptionState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SpotDatafeedSubscription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SpotDatafeedSubscriptionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotDatafeedSubscription(:bucket, :fault, :ownerId, :prefix, :state) =
        object;
    if (bucket != null) {
      result$
        ..add(const _i2.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (fault != null) {
      result$
        ..add(const _i2.XmlElementName('Fault'))
        ..add(serializers.serialize(
          fault,
          specifiedType: const FullType(SpotInstanceStateFault),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i2.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (prefix != null) {
      result$
        ..add(const _i2.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(DatafeedSubscriptionState),
        ));
    }
    return result$;
  }
}
