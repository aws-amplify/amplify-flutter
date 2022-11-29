// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    DateTime? invocationTime,
    DateTime? lastUpdatedTime,
    _i2.ResourceKey? resourceKey,
    _i3.RemediationExecutionState? state,
    List<_i4.RemediationExecutionStep>? stepDetails,
  }) {
    return _$RemediationExecutionStatus._(
      invocationTime: invocationTime,
      lastUpdatedTime: lastUpdatedTime,
      resourceKey: resourceKey,
      state: state,
      stepDetails: stepDetails == null ? null : _i5.BuiltList(stepDetails),
    );
  }

  /// Provides details of the current status of the invoked remediation action for that resource.
  factory RemediationExecutionStatus.build(
          [void Function(RemediationExecutionStatusBuilder) updates]) =
      _$RemediationExecutionStatus;

  const RemediationExecutionStatus._();

  static const List<_i6.SmithySerializer> serializers = [
    RemediationExecutionStatusAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationExecutionStatusBuilder b) {}

  /// Start time when the remediation was executed.
  DateTime? get invocationTime;

  /// The time when the remediation execution was last updated.
  DateTime? get lastUpdatedTime;

  /// The details that identify a resource within Config, including the resource type and resource ID.
  _i2.ResourceKey? get resourceKey;

  /// ENUM of the values.
  _i3.RemediationExecutionState? get state;

  /// Details of every step.
  _i5.BuiltList<_i4.RemediationExecutionStep>? get stepDetails;
  @override
  List<Object?> get props => [
        invocationTime,
        lastUpdatedTime,
        resourceKey,
        state,
        stepDetails,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RemediationExecutionStatus');
    helper.add(
      'invocationTime',
      invocationTime,
    );
    helper.add(
      'lastUpdatedTime',
      lastUpdatedTime,
    );
    helper.add(
      'resourceKey',
      resourceKey,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'stepDetails',
      stepDetails,
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
      switch (key) {
        case 'InvocationTime':
          if (value != null) {
            result.invocationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'LastUpdatedTime':
          if (value != null) {
            result.lastUpdatedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'ResourceKey':
          if (value != null) {
            result.resourceKey.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ResourceKey),
            ) as _i2.ResourceKey));
          }
          break;
        case 'State':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.RemediationExecutionState),
            ) as _i3.RemediationExecutionState);
          }
          break;
        case 'StepDetails':
          if (value != null) {
            result.stepDetails.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.RemediationExecutionStep)],
              ),
            ) as _i5.BuiltList<_i4.RemediationExecutionStep>));
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
    final payload = (object as RemediationExecutionStatus);
    final result = <Object?>[];
    if (payload.invocationTime != null) {
      result
        ..add('InvocationTime')
        ..add(serializers.serialize(
          payload.invocationTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.lastUpdatedTime != null) {
      result
        ..add('LastUpdatedTime')
        ..add(serializers.serialize(
          payload.lastUpdatedTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.resourceKey != null) {
      result
        ..add('ResourceKey')
        ..add(serializers.serialize(
          payload.resourceKey!,
          specifiedType: const FullType(_i2.ResourceKey),
        ));
    }
    if (payload.state != null) {
      result
        ..add('State')
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType(_i3.RemediationExecutionState),
        ));
    }
    if (payload.stepDetails != null) {
      result
        ..add('StepDetails')
        ..add(serializers.serialize(
          payload.stepDetails!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i4.RemediationExecutionStep)],
          ),
        ));
    }
    return result;
  }
}
