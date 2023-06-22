// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.remediation_execution_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_state.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_step.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_key.dart'
    as _i2;

part 'remediation_execution_status.g.dart';

/// Provides details of the current status of the invoked remediation action for that resource.
abstract class RemediationExecutionStatus
    with _i1.AWSEquatable<RemediationExecutionStatus>
    implements
        Built<RemediationExecutionStatus, RemediationExecutionStatusBuilder> {
  /// Provides details of the current status of the invoked remediation action for that resource.
  factory RemediationExecutionStatus({
    _i2.ResourceKey? resourceKey,
    _i3.RemediationExecutionState? state,
    List<_i4.RemediationExecutionStep>? stepDetails,
    DateTime? invocationTime,
    DateTime? lastUpdatedTime,
  }) {
    return _$RemediationExecutionStatus._(
      resourceKey: resourceKey,
      state: state,
      stepDetails: stepDetails == null ? null : _i5.BuiltList(stepDetails),
      invocationTime: invocationTime,
      lastUpdatedTime: lastUpdatedTime,
    );
  }

  /// Provides details of the current status of the invoked remediation action for that resource.
  factory RemediationExecutionStatus.build(
          [void Function(RemediationExecutionStatusBuilder) updates]) =
      _$RemediationExecutionStatus;

  const RemediationExecutionStatus._();

  static const List<_i6.SmithySerializer<RemediationExecutionStatus>>
      serializers = [RemediationExecutionStatusAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationExecutionStatusBuilder b) {}

  /// The details that identify a resource within Config, including the resource type and resource ID.
  _i2.ResourceKey? get resourceKey;

  /// ENUM of the values.
  _i3.RemediationExecutionState? get state;

  /// Details of every step.
  _i5.BuiltList<_i4.RemediationExecutionStep>? get stepDetails;

  /// Start time when the remediation was executed.
  DateTime? get invocationTime;

  /// The time when the remediation execution was last updated.
  DateTime? get lastUpdatedTime;
  @override
  List<Object?> get props => [
        resourceKey,
        state,
        stepDetails,
        invocationTime,
        lastUpdatedTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RemediationExecutionStatus')
      ..add(
        'resourceKey',
        resourceKey,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'stepDetails',
        stepDetails,
      )
      ..add(
        'invocationTime',
        invocationTime,
      )
      ..add(
        'lastUpdatedTime',
        lastUpdatedTime,
      );
    return helper.toString();
  }
}

class RemediationExecutionStatusAwsJson11Serializer
    extends _i6.StructuredSmithySerializer<RemediationExecutionStatus> {
  const RemediationExecutionStatusAwsJson11Serializer()
      : super('RemediationExecutionStatus');

  @override
  Iterable<Type> get types => const [
        RemediationExecutionStatus,
        _$RemediationExecutionStatus,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RemediationExecutionStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemediationExecutionStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceKey':
          result.resourceKey.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ResourceKey),
          ) as _i2.ResourceKey));
        case 'State':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.RemediationExecutionState),
          ) as _i3.RemediationExecutionState);
        case 'StepDetails':
          result.stepDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.RemediationExecutionStep)],
            ),
          ) as _i5.BuiltList<_i4.RemediationExecutionStep>));
        case 'InvocationTime':
          result.invocationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastUpdatedTime':
          result.lastUpdatedTime = (serializers.deserialize(
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
    RemediationExecutionStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RemediationExecutionStatus(
      :resourceKey,
      :state,
      :stepDetails,
      :invocationTime,
      :lastUpdatedTime
    ) = object;
    if (resourceKey != null) {
      result$
        ..add('ResourceKey')
        ..add(serializers.serialize(
          resourceKey,
          specifiedType: const FullType(_i2.ResourceKey),
        ));
    }
    if (state != null) {
      result$
        ..add('State')
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(_i3.RemediationExecutionState),
        ));
    }
    if (stepDetails != null) {
      result$
        ..add('StepDetails')
        ..add(serializers.serialize(
          stepDetails,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i4.RemediationExecutionStep)],
          ),
        ));
    }
    if (invocationTime != null) {
      result$
        ..add('InvocationTime')
        ..add(serializers.serialize(
          invocationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastUpdatedTime != null) {
      result$
        ..add('LastUpdatedTime')
        ..add(serializers.serialize(
          lastUpdatedTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
