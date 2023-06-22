// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    _i2.DeliveryStatus? lastStatus,
    String? lastErrorCode,
    String? lastErrorMessage,
    DateTime? lastAttemptTime,
    DateTime? lastSuccessfulTime,
    DateTime? nextDeliveryTime,
  }) {
    return _$ConfigExportDeliveryInfo._(
      lastStatus: lastStatus,
      lastErrorCode: lastErrorCode,
      lastErrorMessage: lastErrorMessage,
      lastAttemptTime: lastAttemptTime,
      lastSuccessfulTime: lastSuccessfulTime,
      nextDeliveryTime: nextDeliveryTime,
    );
  }

  /// Provides status of the delivery of the snapshot or the configuration history to the specified Amazon S3 bucket. Also provides the status of notifications about the Amazon S3 delivery to the specified Amazon SNS topic.
  factory ConfigExportDeliveryInfo.build(
          [void Function(ConfigExportDeliveryInfoBuilder) updates]) =
      _$ConfigExportDeliveryInfo;

  const ConfigExportDeliveryInfo._();

  static const List<_i3.SmithySerializer<ConfigExportDeliveryInfo>>
      serializers = [ConfigExportDeliveryInfoAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigExportDeliveryInfoBuilder b) {}

  /// Status of the last attempted delivery.
  _i2.DeliveryStatus? get lastStatus;

  /// The error code from the last attempted delivery.
  String? get lastErrorCode;

  /// The error message from the last attempted delivery.
  String? get lastErrorMessage;

  /// The time of the last attempted delivery.
  DateTime? get lastAttemptTime;

  /// The time of the last successful delivery.
  DateTime? get lastSuccessfulTime;

  /// The time that the next delivery occurs.
  DateTime? get nextDeliveryTime;
  @override
  List<Object?> get props => [
        lastStatus,
        lastErrorCode,
        lastErrorMessage,
        lastAttemptTime,
        lastSuccessfulTime,
        nextDeliveryTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigExportDeliveryInfo')
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
        'lastAttemptTime',
        lastAttemptTime,
      )
      ..add(
        'lastSuccessfulTime',
        lastSuccessfulTime,
      )
      ..add(
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
        case 'lastAttemptTime':
          result.lastAttemptTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'lastSuccessfulTime':
          result.lastSuccessfulTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'nextDeliveryTime':
          result.nextDeliveryTime = (serializers.deserialize(
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
    ConfigExportDeliveryInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfigExportDeliveryInfo(
      :lastStatus,
      :lastErrorCode,
      :lastErrorMessage,
      :lastAttemptTime,
      :lastSuccessfulTime,
      :nextDeliveryTime
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
    if (lastAttemptTime != null) {
      result$
        ..add('lastAttemptTime')
        ..add(serializers.serialize(
          lastAttemptTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastSuccessfulTime != null) {
      result$
        ..add('lastSuccessfulTime')
        ..add(serializers.serialize(
          lastSuccessfulTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (nextDeliveryTime != null) {
      result$
        ..add('nextDeliveryTime')
        ..add(serializers.serialize(
          nextDeliveryTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
