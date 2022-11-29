// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.configuration_recorder_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/recorder_status.dart'
    as _i2;

part 'configuration_recorder_status.g.dart';

/// The current status of the configuration recorder.
abstract class ConfigurationRecorderStatus
    with _i1.AWSEquatable<ConfigurationRecorderStatus>
    implements
        Built<ConfigurationRecorderStatus, ConfigurationRecorderStatusBuilder> {
  /// The current status of the configuration recorder.
  factory ConfigurationRecorderStatus({
    String? lastErrorCode,
    String? lastErrorMessage,
    DateTime? lastStartTime,
    _i2.RecorderStatus? lastStatus,
    DateTime? lastStatusChangeTime,
    DateTime? lastStopTime,
    String? name,
    bool? recording,
  }) {
    return _$ConfigurationRecorderStatus._(
      lastErrorCode: lastErrorCode,
      lastErrorMessage: lastErrorMessage,
      lastStartTime: lastStartTime,
      lastStatus: lastStatus,
      lastStatusChangeTime: lastStatusChangeTime,
      lastStopTime: lastStopTime,
      name: name,
      recording: recording,
    );
  }

  /// The current status of the configuration recorder.
  factory ConfigurationRecorderStatus.build(
          [void Function(ConfigurationRecorderStatusBuilder) updates]) =
      _$ConfigurationRecorderStatus;

  const ConfigurationRecorderStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    ConfigurationRecorderStatusAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigurationRecorderStatusBuilder b) {}

  /// The error code indicating that the recording failed.
  String? get lastErrorCode;

  /// The message indicating that the recording failed due to an error.
  String? get lastErrorMessage;

  /// The time the recorder was last started.
  DateTime? get lastStartTime;

  /// The last (previous) status of the recorder.
  _i2.RecorderStatus? get lastStatus;

  /// The time when the status was last changed.
  DateTime? get lastStatusChangeTime;

  /// The time the recorder was last stopped.
  DateTime? get lastStopTime;

  /// The name of the configuration recorder.
  String? get name;

  /// Specifies whether or not the recorder is currently recording.
  bool? get recording;
  @override
  List<Object?> get props => [
        lastErrorCode,
        lastErrorMessage,
        lastStartTime,
        lastStatus,
        lastStatusChangeTime,
        lastStopTime,
        name,
        recording,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigurationRecorderStatus');
    helper.add(
      'lastErrorCode',
      lastErrorCode,
    );
    helper.add(
      'lastErrorMessage',
      lastErrorMessage,
    );
    helper.add(
      'lastStartTime',
      lastStartTime,
    );
    helper.add(
      'lastStatus',
      lastStatus,
    );
    helper.add(
      'lastStatusChangeTime',
      lastStatusChangeTime,
    );
    helper.add(
      'lastStopTime',
      lastStopTime,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'recording',
      recording,
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
        case 'lastStartTime':
          if (value != null) {
            result.lastStartTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'lastStatus':
          if (value != null) {
            result.lastStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RecorderStatus),
            ) as _i2.RecorderStatus);
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
        case 'lastStopTime':
          if (value != null) {
            result.lastStopTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'recording':
          if (value != null) {
            result.recording = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as ConfigurationRecorderStatus);
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
    if (payload.lastStartTime != null) {
      result
        ..add('lastStartTime')
        ..add(serializers.serialize(
          payload.lastStartTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.lastStatus != null) {
      result
        ..add('lastStatus')
        ..add(serializers.serialize(
          payload.lastStatus!,
          specifiedType: const FullType(_i2.RecorderStatus),
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
    if (payload.lastStopTime != null) {
      result
        ..add('lastStopTime')
        ..add(serializers.serialize(
          payload.lastStopTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.recording != null) {
      result
        ..add('recording')
        ..add(serializers.serialize(
          payload.recording!,
          specifiedType: const FullType(bool),
        ));
    }
    return result;
  }
}
