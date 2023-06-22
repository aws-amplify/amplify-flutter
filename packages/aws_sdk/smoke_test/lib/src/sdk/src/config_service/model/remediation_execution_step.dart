// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? name,
    _i2.RemediationExecutionStepState? state,
    String? errorMessage,
    DateTime? startTime,
    DateTime? stopTime,
  }) {
    return _$RemediationExecutionStep._(
      name: name,
      state: state,
      errorMessage: errorMessage,
      startTime: startTime,
      stopTime: stopTime,
    );
  }

  /// Name of the step from the SSM document.
  factory RemediationExecutionStep.build(
          [void Function(RemediationExecutionStepBuilder) updates]) =
      _$RemediationExecutionStep;

  const RemediationExecutionStep._();

  static const List<_i3.SmithySerializer<RemediationExecutionStep>>
      serializers = [RemediationExecutionStepAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationExecutionStepBuilder b) {}

  /// The details of the step.
  String? get name;

  /// The valid status of the step.
  _i2.RemediationExecutionStepState? get state;

  /// An error message if the step was interrupted during execution.
  String? get errorMessage;

  /// The time when the step started.
  DateTime? get startTime;

  /// The time when the step stopped.
  DateTime? get stopTime;
  @override
  List<Object?> get props => [
        name,
        state,
        errorMessage,
        startTime,
        stopTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RemediationExecutionStep')
      ..add(
        'name',
        name,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'errorMessage',
        errorMessage,
      )
      ..add(
        'startTime',
        startTime,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'State':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RemediationExecutionStepState),
          ) as _i2.RemediationExecutionStepState);
        case 'ErrorMessage':
          result.errorMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StartTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'StopTime':
          result.stopTime = (serializers.deserialize(
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
    RemediationExecutionStep object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RemediationExecutionStep(
      :name,
      :state,
      :errorMessage,
      :startTime,
      :stopTime
    ) = object;
    if (name != null) {
      result$
        ..add('Name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add('State')
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(_i2.RemediationExecutionStepState),
        ));
    }
    if (errorMessage != null) {
      result$
        ..add('ErrorMessage')
        ..add(serializers.serialize(
          errorMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (startTime != null) {
      result$
        ..add('StartTime')
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (stopTime != null) {
      result$
        ..add('StopTime')
        ..add(serializers.serialize(
          stopTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
