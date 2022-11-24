// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    String? lastErrorCode,
    String? lastErrorMessage,
    _i2.DeliveryStatus? lastStatus,
    DateTime? lastStatusChangeTime,
  }) {
    return _$ConfigStreamDeliveryInfo._(
      lastErrorCode: lastErrorCode,
      lastErrorMessage: lastErrorMessage,
      lastStatus: lastStatus,
      lastStatusChangeTime: lastStatusChangeTime,
    );
  }

  /// A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.
  factory ConfigStreamDeliveryInfo.build(
          [void Function(ConfigStreamDeliveryInfoBuilder) updates]) =
      _$ConfigStreamDeliveryInfo;

  const ConfigStreamDeliveryInfo._();

  static const List<_i3.SmithySerializer> serializers = [
    ConfigStreamDeliveryInfoAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigStreamDeliveryInfoBuilder b) {}

  /// The error code from the last attempted delivery.
  String? get lastErrorCode;

  /// The error message from the last attempted delivery.
  String? get lastErrorMessage;

  /// Status of the last attempted delivery.
  ///
  /// **Note** Providing an SNS topic on a [DeliveryChannel](https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html) for Config is optional. If the SNS delivery is turned off, the last status will be **Not_Applicable**.
  _i2.DeliveryStatus? get lastStatus;

  /// The time from the last status change.
  DateTime? get lastStatusChangeTime;
  @override
  List<Object?> get props => [
        lastErrorCode,
        lastErrorMessage,
        lastStatus,
        lastStatusChangeTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigStreamDeliveryInfo');
    helper.add(
      'lastErrorCode',
      lastErrorCode,
    );
    helper.add(
      'lastErrorMessage',
      lastErrorMessage,
    );
    helper.add(
      'lastStatus',
      lastStatus,
    );
    helper.add(
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
      switch (key) {
        case 'lastErrorCode':
          if (value != null) {
            result.lastErrorCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'lastErrorMessage':
          if (value != null) {
            result.lastErrorMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'lastStatus':
          if (value != null) {
            result.lastStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DeliveryStatus),
            ) as _i2.DeliveryStatus);
          }
          break;
        case 'lastStatusChangeTime':
          if (value != null) {
            result.lastStatusChangeTime = (serializers.deserialize(
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
    final payload = (object as ConfigStreamDeliveryInfo);
    final result = <Object?>[];
    if (payload.lastErrorCode != null) {
      result
        ..add('lastErrorCode')
        ..add(serializers.serialize(
          payload.lastErrorCode!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastErrorMessage != null) {
      result
        ..add('lastErrorMessage')
        ..add(serializers.serialize(
          payload.lastErrorMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastStatus != null) {
      result
        ..add('lastStatus')
        ..add(serializers.serialize(
          payload.lastStatus!,
          specifiedType: const FullType(_i2.DeliveryStatus),
        ));
    }
    if (payload.lastStatusChangeTime != null) {
      result
        ..add('lastStatusChangeTime')
        ..add(serializers.serialize(
          payload.lastStatusChangeTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
