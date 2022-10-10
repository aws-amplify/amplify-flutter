// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.remediation_execution_step; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_step_state.dart'
    as _i2;

part 'remediation_execution_step.g.dart';

/// Name of the step from the SSM document.
abstract class RemediationExecutionStep
    with _i1.AWSEquatable<RemediationExecutionStep>
    implements
        Built<RemediationExecutionStep, RemediationExecutionStepBuilder> {
  /// Name of the step from the SSM document.
  factory RemediationExecutionStep({
    String? errorMessage,
    String? name,
    DateTime? startTime,
    _i2.RemediationExecutionStepState? state,
    DateTime? stopTime,
  }) {
    return _$RemediationExecutionStep._(
      errorMessage: errorMessage,
      name: name,
      startTime: startTime,
      state: state,
      stopTime: stopTime,
    );
  }

  /// Name of the step from the SSM document.
  factory RemediationExecutionStep.build(
          [void Function(RemediationExecutionStepBuilder) updates]) =
      _$RemediationExecutionStep;

  const RemediationExecutionStep._();

  static const List<_i3.SmithySerializer> serializers = [
    RemediationExecutionStepAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationExecutionStepBuilder b) {}

  /// An error message if the step was interrupted during execution.
  String? get errorMessage;

  /// The details of the step.
  String? get name;

  /// The time when the step started.
  DateTime? get startTime;

  /// The valid status of the step.
  _i2.RemediationExecutionStepState? get state;

  /// The time when the step stopped.
  DateTime? get stopTime;
  @override
  List<Object?> get props => [
        errorMessage,
        name,
        startTime,
        state,
        stopTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RemediationExecutionStep');
    helper.add(
      'errorMessage',
      errorMessage,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'startTime',
      startTime,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'stopTime',
      stopTime,
    );
    return helper.toString();
  }
}

class RemediationExecutionStepAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<RemediationExecutionStep> {
  const RemediationExecutionStepAwsJson11Serializer()
      : super('RemediationExecutionStep');

  @override
  Iterable<Type> get types => const [
        RemediationExecutionStep,
        _$RemediationExecutionStep,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RemediationExecutionStep deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemediationExecutionStepBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ErrorMessage':
          if (value != null) {
            result.errorMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StartTime':
          if (value != null) {
            result.startTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'State':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RemediationExecutionStepState),
            ) as _i2.RemediationExecutionStepState);
          }
          break;
        case 'StopTime':
          if (value != null) {
            result.stopTime = (serializers.deserialize(
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
    final payload = (object as RemediationExecutionStep);
    final result = <Object?>[];
    if (payload.errorMessage != null) {
      result
        ..add('ErrorMessage')
        ..add(serializers.serialize(
          payload.errorMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.startTime != null) {
      result
        ..add('StartTime')
        ..add(serializers.serialize(
          payload.startTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.state != null) {
      result
        ..add('State')
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType(_i2.RemediationExecutionStepState),
        ));
    }
    if (payload.stopTime != null) {
      result
        ..add('StopTime')
        ..add(serializers.serialize(
          payload.stopTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
