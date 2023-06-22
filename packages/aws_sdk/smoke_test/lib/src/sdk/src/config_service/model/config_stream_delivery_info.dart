// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.config_stream_delivery_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_status.dart'
    as _i2;

part 'config_stream_delivery_info.g.dart';

/// A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.
abstract class ConfigStreamDeliveryInfo
    with _i1.AWSEquatable<ConfigStreamDeliveryInfo>
    implements
        Built<ConfigStreamDeliveryInfo, ConfigStreamDeliveryInfoBuilder> {
  /// A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.
  factory ConfigStreamDeliveryInfo({
    _i2.DeliveryStatus? lastStatus,
    String? lastErrorCode,
    String? lastErrorMessage,
    DateTime? lastStatusChangeTime,
  }) {
    return _$ConfigStreamDeliveryInfo._(
      lastStatus: lastStatus,
      lastErrorCode: lastErrorCode,
      lastErrorMessage: lastErrorMessage,
      lastStatusChangeTime: lastStatusChangeTime,
    );
  }

  /// A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.
  factory ConfigStreamDeliveryInfo.build(
          [void Function(ConfigStreamDeliveryInfoBuilder) updates]) =
      _$ConfigStreamDeliveryInfo;

  const ConfigStreamDeliveryInfo._();

  static const List<_i3.SmithySerializer<ConfigStreamDeliveryInfo>>
      serializers = [ConfigStreamDeliveryInfoAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigStreamDeliveryInfoBuilder b) {}

  /// Status of the last attempted delivery.
  ///
  /// **Note** Providing an SNS topic on a [DeliveryChannel](https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html) for Config is optional. If the SNS delivery is turned off, the last status will be **Not_Applicable**.
  _i2.DeliveryStatus? get lastStatus;

  /// The error code from the last attempted delivery.
  String? get lastErrorCode;

  /// The error message from the last attempted delivery.
  String? get lastErrorMessage;

  /// The time from the last status change.
  DateTime? get lastStatusChangeTime;
  @override
  List<Object?> get props => [
        lastStatus,
        lastErrorCode,
        lastErrorMessage,
        lastStatusChangeTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigStreamDeliveryInfo')
      ..add(
        'lastStatus',
        lastStatus,
      )
      ..add(
        'lastErrorCode',
        lastErrorCode,
      )
      ..add(
        'lastErrorMessage',
        lastErrorMessage,
      )
      ..add(
        'lastStatusChangeTime',
        lastStatusChangeTime,
      );
    return helper.toString();
  }
}

class ConfigStreamDeliveryInfoAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ConfigStreamDeliveryInfo> {
  const ConfigStreamDeliveryInfoAwsJson11Serializer()
      : super('ConfigStreamDeliveryInfo');

  @override
  Iterable<Type> get types => const [
        ConfigStreamDeliveryInfo,
        _$ConfigStreamDeliveryInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfigStreamDeliveryInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigStreamDeliveryInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'lastStatus':
          result.lastStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.DeliveryStatus),
          ) as _i2.DeliveryStatus);
        case 'lastErrorCode':
          result.lastErrorCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'lastErrorMessage':
          result.lastErrorMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'lastStatusChangeTime':
          result.lastStatusChangeTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConfigStreamDeliveryInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfigStreamDeliveryInfo(
      :lastStatus,
      :lastErrorCode,
      :lastErrorMessage,
      :lastStatusChangeTime
    ) = object;
    if (lastStatus != null) {
      result$
        ..add('lastStatus')
        ..add(serializers.serialize(
          lastStatus,
          specifiedType: const FullType(_i2.DeliveryStatus),
        ));
    }
    if (lastErrorCode != null) {
      result$
        ..add('lastErrorCode')
        ..add(serializers.serialize(
          lastErrorCode,
          specifiedType: const FullType(String),
        ));
    }
    if (lastErrorMessage != null) {
      result$
        ..add('lastErrorMessage')
        ..add(serializers.serialize(
          lastErrorMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (lastStatusChangeTime != null) {
      result$
        ..add('lastStatusChangeTime')
        ..add(serializers.serialize(
          lastStatusChangeTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
