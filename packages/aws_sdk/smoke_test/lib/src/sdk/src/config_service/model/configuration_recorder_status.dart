// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.configuration_recorder_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/recorder_status.dart'
    as _i2;

part 'configuration_recorder_status.g.dart';

/// The current status of the configuration recorder.
///
/// For a detailed status of recording events over time, add your Config events to CloudWatch metrics and use CloudWatch metrics.
abstract class ConfigurationRecorderStatus
    with _i1.AWSEquatable<ConfigurationRecorderStatus>
    implements
        Built<ConfigurationRecorderStatus, ConfigurationRecorderStatusBuilder> {
  /// The current status of the configuration recorder.
  ///
  /// For a detailed status of recording events over time, add your Config events to CloudWatch metrics and use CloudWatch metrics.
  factory ConfigurationRecorderStatus({
    String? name,
    DateTime? lastStartTime,
    DateTime? lastStopTime,
    bool? recording,
    _i2.RecorderStatus? lastStatus,
    String? lastErrorCode,
    String? lastErrorMessage,
    DateTime? lastStatusChangeTime,
  }) {
    recording ??= false;
    return _$ConfigurationRecorderStatus._(
      name: name,
      lastStartTime: lastStartTime,
      lastStopTime: lastStopTime,
      recording: recording,
      lastStatus: lastStatus,
      lastErrorCode: lastErrorCode,
      lastErrorMessage: lastErrorMessage,
      lastStatusChangeTime: lastStatusChangeTime,
    );
  }

  /// The current status of the configuration recorder.
  ///
  /// For a detailed status of recording events over time, add your Config events to CloudWatch metrics and use CloudWatch metrics.
  factory ConfigurationRecorderStatus.build(
          [void Function(ConfigurationRecorderStatusBuilder) updates]) =
      _$ConfigurationRecorderStatus;

  const ConfigurationRecorderStatus._();

  static const List<_i3.SmithySerializer<ConfigurationRecorderStatus>>
      serializers = [ConfigurationRecorderStatusAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigurationRecorderStatusBuilder b) {
    b.recording = false;
  }

  /// The name of the configuration recorder.
  String? get name;

  /// The time the recorder was last started.
  DateTime? get lastStartTime;

  /// The time the recorder was last stopped.
  DateTime? get lastStopTime;

  /// Specifies whether or not the recorder is currently recording.
  bool get recording;

  /// The status of the latest recording event processed by the recorder.
  _i2.RecorderStatus? get lastStatus;

  /// The latest error code from when the recorder last failed.
  String? get lastErrorCode;

  /// The latest error message from when the recorder last failed.
  String? get lastErrorMessage;

  /// The time of the latest change in status of an recording event processed by the recorder.
  DateTime? get lastStatusChangeTime;
  @override
  List<Object?> get props => [
        name,
        lastStartTime,
        lastStopTime,
        recording,
        lastStatus,
        lastErrorCode,
        lastErrorMessage,
        lastStatusChangeTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigurationRecorderStatus')
      ..add(
        'name',
        name,
      )
      ..add(
        'lastStartTime',
        lastStartTime,
      )
      ..add(
        'lastStopTime',
        lastStopTime,
      )
      ..add(
        'recording',
        recording,
      )
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

class ConfigurationRecorderStatusAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ConfigurationRecorderStatus> {
  const ConfigurationRecorderStatusAwsJson11Serializer()
      : super('ConfigurationRecorderStatus');

  @override
  Iterable<Type> get types => const [
        ConfigurationRecorderStatus,
        _$ConfigurationRecorderStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfigurationRecorderStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigurationRecorderStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'lastStartTime':
          result.lastStartTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'lastStopTime':
          result.lastStopTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'recording':
          result.recording = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'lastStatus':
          result.lastStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RecorderStatus),
          ) as _i2.RecorderStatus);
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
    ConfigurationRecorderStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfigurationRecorderStatus(
      :name,
      :lastStartTime,
      :lastStopTime,
      :recording,
      :lastStatus,
      :lastErrorCode,
      :lastErrorMessage,
      :lastStatusChangeTime
    ) = object;
    result$.addAll([
      'recording',
      serializers.serialize(
        recording,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (name != null) {
      result$
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (lastStartTime != null) {
      result$
        ..add('lastStartTime')
        ..add(serializers.serialize(
          lastStartTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastStopTime != null) {
      result$
        ..add('lastStopTime')
        ..add(serializers.serialize(
          lastStopTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastStatus != null) {
      result$
        ..add('lastStatus')
        ..add(serializers.serialize(
          lastStatus,
          specifiedType: const FullType(_i2.RecorderStatus),
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
