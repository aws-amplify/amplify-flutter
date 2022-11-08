// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.config_export_delivery_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/delivery_status.dart'
    as _i2;

part 'config_export_delivery_info.g.dart';

/// Provides status of the delivery of the snapshot or the configuration history to the specified Amazon S3 bucket. Also provides the status of notifications about the Amazon S3 delivery to the specified Amazon SNS topic.
abstract class ConfigExportDeliveryInfo
    with _i1.AWSEquatable<ConfigExportDeliveryInfo>
    implements
        Built<ConfigExportDeliveryInfo, ConfigExportDeliveryInfoBuilder> {
  /// Provides status of the delivery of the snapshot or the configuration history to the specified Amazon S3 bucket. Also provides the status of notifications about the Amazon S3 delivery to the specified Amazon SNS topic.
  factory ConfigExportDeliveryInfo({
    DateTime? lastAttemptTime,
    String? lastErrorCode,
    String? lastErrorMessage,
    _i2.DeliveryStatus? lastStatus,
    DateTime? lastSuccessfulTime,
    DateTime? nextDeliveryTime,
  }) {
    return _$ConfigExportDeliveryInfo._(
      lastAttemptTime: lastAttemptTime,
      lastErrorCode: lastErrorCode,
      lastErrorMessage: lastErrorMessage,
      lastStatus: lastStatus,
      lastSuccessfulTime: lastSuccessfulTime,
      nextDeliveryTime: nextDeliveryTime,
    );
  }

  /// Provides status of the delivery of the snapshot or the configuration history to the specified Amazon S3 bucket. Also provides the status of notifications about the Amazon S3 delivery to the specified Amazon SNS topic.
  factory ConfigExportDeliveryInfo.build(
          [void Function(ConfigExportDeliveryInfoBuilder) updates]) =
      _$ConfigExportDeliveryInfo;

  const ConfigExportDeliveryInfo._();

  static const List<_i3.SmithySerializer> serializers = [
    ConfigExportDeliveryInfoAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigExportDeliveryInfoBuilder b) {}

  /// The time of the last attempted delivery.
  DateTime? get lastAttemptTime;

  /// The error code from the last attempted delivery.
  String? get lastErrorCode;

  /// The error message from the last attempted delivery.
  String? get lastErrorMessage;

  /// Status of the last attempted delivery.
  _i2.DeliveryStatus? get lastStatus;

  /// The time of the last successful delivery.
  DateTime? get lastSuccessfulTime;

  /// The time that the next delivery occurs.
  DateTime? get nextDeliveryTime;
  @override
  List<Object?> get props => [
        lastAttemptTime,
        lastErrorCode,
        lastErrorMessage,
        lastStatus,
        lastSuccessfulTime,
        nextDeliveryTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigExportDeliveryInfo');
    helper.add(
      'lastAttemptTime',
      lastAttemptTime,
    );
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
      'lastSuccessfulTime',
      lastSuccessfulTime,
    );
    helper.add(
      'nextDeliveryTime',
      nextDeliveryTime,
    );
    return helper.toString();
  }
}

class ConfigExportDeliveryInfoAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ConfigExportDeliveryInfo> {
  const ConfigExportDeliveryInfoAwsJson11Serializer()
      : super('ConfigExportDeliveryInfo');

  @override
  Iterable<Type> get types => const [
        ConfigExportDeliveryInfo,
        _$ConfigExportDeliveryInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfigExportDeliveryInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigExportDeliveryInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'lastAttemptTime':
          if (value != null) {
            result.lastAttemptTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
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
        case 'lastSuccessfulTime':
          if (value != null) {
            result.lastSuccessfulTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'nextDeliveryTime':
          if (value != null) {
            result.nextDeliveryTime = (serializers.deserialize(
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
    final payload = (object as ConfigExportDeliveryInfo);
    final result = <Object?>[];
    if (payload.lastAttemptTime != null) {
      result
        ..add('lastAttemptTime')
        ..add(serializers.serialize(
          payload.lastAttemptTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
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
    if (payload.lastSuccessfulTime != null) {
      result
        ..add('lastSuccessfulTime')
        ..add(serializers.serialize(
          payload.lastSuccessfulTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.nextDeliveryTime != null) {
      result
        ..add('nextDeliveryTime')
        ..add(serializers.serialize(
          payload.nextDeliveryTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
