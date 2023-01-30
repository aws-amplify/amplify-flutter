// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.config_snapshot_delivery_properties; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/maximum_execution_frequency.dart'
    as _i2;

part 'config_snapshot_delivery_properties.g.dart';

/// Provides options for how often Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.
///
/// The frequency for a rule that triggers evaluations for your resources when Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:
///
/// *   The value for the `deliveryFrequency` parameter within the delivery channel configuration, which sets how often Config delivers configuration snapshots. This value also sets how often Config invokes evaluations for Config rules.
///
/// *   The value for the `MaximumExecutionFrequency` parameter, which sets the maximum frequency with which Config invokes evaluations for the rule. For more information, see ConfigRule.
///
///
/// If the `deliveryFrequency` value is less frequent than the `MaximumExecutionFrequency` value for a rule, Config invokes the rule only as often as the `deliveryFrequency` value.
///
/// 1.  For example, you want your rule to run evaluations when Config delivers the configuration snapshot.
///
/// 2.  You specify the `MaximumExecutionFrequency` value for `Six_Hours`.
///
/// 3.  You then specify the delivery channel `deliveryFrequency` value for `TwentyFour_Hours`.
///
/// 4.  Because the value for `deliveryFrequency` is less frequent than `MaximumExecutionFrequency`, Config invokes evaluations for the rule every 24 hours.
///
///
/// You should set the `MaximumExecutionFrequency` value to be at least as frequent as the `deliveryFrequency` value. You can view the `deliveryFrequency` value by using the `DescribeDeliveryChannnels` action.
///
/// To update the `deliveryFrequency` with which Config delivers your configuration snapshots, use the `PutDeliveryChannel` action.
abstract class ConfigSnapshotDeliveryProperties
    with
        _i1.AWSEquatable<ConfigSnapshotDeliveryProperties>
    implements
        Built<ConfigSnapshotDeliveryProperties,
            ConfigSnapshotDeliveryPropertiesBuilder> {
  /// Provides options for how often Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.
  ///
  /// The frequency for a rule that triggers evaluations for your resources when Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:
  ///
  /// *   The value for the `deliveryFrequency` parameter within the delivery channel configuration, which sets how often Config delivers configuration snapshots. This value also sets how often Config invokes evaluations for Config rules.
  ///
  /// *   The value for the `MaximumExecutionFrequency` parameter, which sets the maximum frequency with which Config invokes evaluations for the rule. For more information, see ConfigRule.
  ///
  ///
  /// If the `deliveryFrequency` value is less frequent than the `MaximumExecutionFrequency` value for a rule, Config invokes the rule only as often as the `deliveryFrequency` value.
  ///
  /// 1.  For example, you want your rule to run evaluations when Config delivers the configuration snapshot.
  ///
  /// 2.  You specify the `MaximumExecutionFrequency` value for `Six_Hours`.
  ///
  /// 3.  You then specify the delivery channel `deliveryFrequency` value for `TwentyFour_Hours`.
  ///
  /// 4.  Because the value for `deliveryFrequency` is less frequent than `MaximumExecutionFrequency`, Config invokes evaluations for the rule every 24 hours.
  ///
  ///
  /// You should set the `MaximumExecutionFrequency` value to be at least as frequent as the `deliveryFrequency` value. You can view the `deliveryFrequency` value by using the `DescribeDeliveryChannnels` action.
  ///
  /// To update the `deliveryFrequency` with which Config delivers your configuration snapshots, use the `PutDeliveryChannel` action.
  factory ConfigSnapshotDeliveryProperties(
      {_i2.MaximumExecutionFrequency? deliveryFrequency}) {
    return _$ConfigSnapshotDeliveryProperties._(
        deliveryFrequency: deliveryFrequency);
  }

  /// Provides options for how often Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.
  ///
  /// The frequency for a rule that triggers evaluations for your resources when Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:
  ///
  /// *   The value for the `deliveryFrequency` parameter within the delivery channel configuration, which sets how often Config delivers configuration snapshots. This value also sets how often Config invokes evaluations for Config rules.
  ///
  /// *   The value for the `MaximumExecutionFrequency` parameter, which sets the maximum frequency with which Config invokes evaluations for the rule. For more information, see ConfigRule.
  ///
  ///
  /// If the `deliveryFrequency` value is less frequent than the `MaximumExecutionFrequency` value for a rule, Config invokes the rule only as often as the `deliveryFrequency` value.
  ///
  /// 1.  For example, you want your rule to run evaluations when Config delivers the configuration snapshot.
  ///
  /// 2.  You specify the `MaximumExecutionFrequency` value for `Six_Hours`.
  ///
  /// 3.  You then specify the delivery channel `deliveryFrequency` value for `TwentyFour_Hours`.
  ///
  /// 4.  Because the value for `deliveryFrequency` is less frequent than `MaximumExecutionFrequency`, Config invokes evaluations for the rule every 24 hours.
  ///
  ///
  /// You should set the `MaximumExecutionFrequency` value to be at least as frequent as the `deliveryFrequency` value. You can view the `deliveryFrequency` value by using the `DescribeDeliveryChannnels` action.
  ///
  /// To update the `deliveryFrequency` with which Config delivers your configuration snapshots, use the `PutDeliveryChannel` action.
  factory ConfigSnapshotDeliveryProperties.build(
          [void Function(ConfigSnapshotDeliveryPropertiesBuilder) updates]) =
      _$ConfigSnapshotDeliveryProperties;

  const ConfigSnapshotDeliveryProperties._();

  static const List<_i3.SmithySerializer> serializers = [
    ConfigSnapshotDeliveryPropertiesAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigSnapshotDeliveryPropertiesBuilder b) {}

  /// The frequency with which Config delivers configuration snapshots.
  _i2.MaximumExecutionFrequency? get deliveryFrequency;
  @override
  List<Object?> get props => [deliveryFrequency];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConfigSnapshotDeliveryProperties');
    helper.add(
      'deliveryFrequency',
      deliveryFrequency,
    );
    return helper.toString();
  }
}

class ConfigSnapshotDeliveryPropertiesAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ConfigSnapshotDeliveryProperties> {
  const ConfigSnapshotDeliveryPropertiesAwsJson11Serializer()
      : super('ConfigSnapshotDeliveryProperties');

  @override
  Iterable<Type> get types => const [
        ConfigSnapshotDeliveryProperties,
        _$ConfigSnapshotDeliveryProperties,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfigSnapshotDeliveryProperties deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigSnapshotDeliveryPropertiesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'deliveryFrequency':
          if (value != null) {
            result.deliveryFrequency = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.MaximumExecutionFrequency),
            ) as _i2.MaximumExecutionFrequency);
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
    final payload = (object as ConfigSnapshotDeliveryProperties);
    final result = <Object?>[];
    if (payload.deliveryFrequency != null) {
      result
        ..add('deliveryFrequency')
        ..add(serializers.serialize(
          payload.deliveryFrequency!,
          specifiedType: const FullType(_i2.MaximumExecutionFrequency),
        ));
    }
    return result;
  }
}
