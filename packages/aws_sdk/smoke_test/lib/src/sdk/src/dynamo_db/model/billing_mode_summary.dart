// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.billing_mode_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart'
    as _i2;

part 'billing_mode_summary.g.dart';

/// Contains the details for the read/write capacity mode.
abstract class BillingModeSummary
    with _i1.AWSEquatable<BillingModeSummary>
    implements Built<BillingModeSummary, BillingModeSummaryBuilder> {
  /// Contains the details for the read/write capacity mode.
  factory BillingModeSummary({
    _i2.BillingMode? billingMode,
    DateTime? lastUpdateToPayPerRequestDateTime,
  }) {
    return _$BillingModeSummary._(
      billingMode: billingMode,
      lastUpdateToPayPerRequestDateTime: lastUpdateToPayPerRequestDateTime,
    );
  }

  /// Contains the details for the read/write capacity mode.
  factory BillingModeSummary.build(
          [void Function(BillingModeSummaryBuilder) updates]) =
      _$BillingModeSummary;

  const BillingModeSummary._();

  static const List<_i3.SmithySerializer> serializers = [
    BillingModeSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BillingModeSummaryBuilder b) {}

  /// Controls how you are charged for read and write throughput and how you manage capacity. This setting can be changed later.
  ///
  /// *   `PROVISIONED` \- Sets the read/write capacity mode to `PROVISIONED`. We recommend using `PROVISIONED` for predictable workloads.
  ///
  /// *   `PAY\_PER\_REQUEST` \- Sets the read/write capacity mode to `PAY\_PER\_REQUEST`. We recommend using `PAY\_PER\_REQUEST` for unpredictable workloads.
  _i2.BillingMode? get billingMode;

  /// Represents the time when `PAY\_PER\_REQUEST` was last set as the read/write capacity mode.
  DateTime? get lastUpdateToPayPerRequestDateTime;
  @override
  List<Object?> get props => [
        billingMode,
        lastUpdateToPayPerRequestDateTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BillingModeSummary');
    helper.add(
      'billingMode',
      billingMode,
    );
    helper.add(
      'lastUpdateToPayPerRequestDateTime',
      lastUpdateToPayPerRequestDateTime,
    );
    return helper.toString();
  }
}

class BillingModeSummaryAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<BillingModeSummary> {
  const BillingModeSummaryAwsJson10Serializer() : super('BillingModeSummary');

  @override
  Iterable<Type> get types => const [
        BillingModeSummary,
        _$BillingModeSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BillingModeSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BillingModeSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'BillingMode':
          if (value != null) {
            result.billingMode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.BillingMode),
            ) as _i2.BillingMode);
          }
          break;
        case 'LastUpdateToPayPerRequestDateTime':
          if (value != null) {
            result.lastUpdateToPayPerRequestDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as BillingModeSummary);
    final result = <Object?>[];
    if (payload.billingMode != null) {
      result
        ..add('BillingMode')
        ..add(serializers.serialize(
          payload.billingMode!,
          specifiedType: const FullType(_i2.BillingMode),
        ));
    }
    if (payload.lastUpdateToPayPerRequestDateTime != null) {
      result
        ..add('LastUpdateToPayPerRequestDateTime')
        ..add(serializers.serialize(
          payload.lastUpdateToPayPerRequestDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
