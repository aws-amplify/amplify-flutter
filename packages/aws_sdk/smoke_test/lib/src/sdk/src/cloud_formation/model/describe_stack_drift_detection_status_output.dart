// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_stack_drift_detection_status_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_detection_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_status.dart'
    as _i2;

part 'describe_stack_drift_detection_status_output.g.dart';

abstract class DescribeStackDriftDetectionStatusOutput
    with
        _i1.AWSEquatable<DescribeStackDriftDetectionStatusOutput>
    implements
        Built<DescribeStackDriftDetectionStatusOutput,
            DescribeStackDriftDetectionStatusOutputBuilder> {
  factory DescribeStackDriftDetectionStatusOutput({
    required String stackId,
    required String stackDriftDetectionId,
    _i2.StackDriftStatus? stackDriftStatus,
    required _i3.StackDriftDetectionStatus detectionStatus,
    String? detectionStatusReason,
    int? driftedStackResourceCount,
    required DateTime timestamp,
  }) {
    return _$DescribeStackDriftDetectionStatusOutput._(
      stackId: stackId,
      stackDriftDetectionId: stackDriftDetectionId,
      stackDriftStatus: stackDriftStatus,
      detectionStatus: detectionStatus,
      detectionStatusReason: detectionStatusReason,
      driftedStackResourceCount: driftedStackResourceCount,
      timestamp: timestamp,
    );
  }

  factory DescribeStackDriftDetectionStatusOutput.build(
      [void Function(DescribeStackDriftDetectionStatusOutputBuilder)
          updates]) = _$DescribeStackDriftDetectionStatusOutput;

  const DescribeStackDriftDetectionStatusOutput._();

  /// Constructs a [DescribeStackDriftDetectionStatusOutput] from a [payload] and [response].
  factory DescribeStackDriftDetectionStatusOutput.fromResponse(
    DescribeStackDriftDetectionStatusOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i4.SmithySerializer<DescribeStackDriftDetectionStatusOutput>>
      serializers = [
    DescribeStackDriftDetectionStatusOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackDriftDetectionStatusOutputBuilder b) {}

  /// The ID of the stack.
  String get stackId;

  /// The ID of the drift detection results of this operation.
  ///
  /// CloudFormation generates new results, with a new drift detection ID, each time this operation is run. However, the number of reports CloudFormation retains for any given stack, and for how long, may vary.
  String get stackDriftDetectionId;

  /// Status of the stack's actual configuration compared to its expected configuration.
  ///
  /// *   `DRIFTED`: The stack differs from its expected template configuration. A stack is considered to have drifted if one or more of its resources have drifted.
  ///
  /// *   `NOT_CHECKED`: CloudFormation hasn't checked if the stack differs from its expected template configuration.
  ///
  /// *   `IN_SYNC`: The stack's actual configuration matches its expected template configuration.
  ///
  /// *   `UNKNOWN`: This value is reserved for future use.
  _i2.StackDriftStatus? get stackDriftStatus;

  /// The status of the stack drift detection operation.
  ///
  /// *   `DETECTION_COMPLETE`: The stack drift detection operation has successfully completed for all resources in the stack that support drift detection. (Resources that don't currently support stack detection remain unchecked.)
  ///
  ///     If you specified logical resource IDs for CloudFormation to use as a filter for the stack drift detection operation, only the resources with those logical IDs are checked for drift.
  ///
  /// *   `DETECTION_FAILED`: The stack drift detection operation has failed for at least one resource in the stack. Results will be available for resources on which CloudFormation successfully completed drift detection.
  ///
  /// *   `DETECTION\_IN\_PROGRESS`: The stack drift detection operation is currently in progress.
  _i3.StackDriftDetectionStatus get detectionStatus;

  /// The reason the stack drift detection operation has its current status.
  String? get detectionStatusReason;

  /// Total number of stack resources that have drifted. This is NULL until the drift detection operation reaches a status of `DETECTION_COMPLETE`. This value will be 0 for stacks whose drift status is `IN_SYNC`.
  int? get driftedStackResourceCount;

  /// Time at which the stack drift detection operation was initiated.
  DateTime get timestamp;
  @override
  List<Object?> get props => [
        stackId,
        stackDriftDetectionId,
        stackDriftStatus,
        detectionStatus,
        detectionStatusReason,
        driftedStackResourceCount,
        timestamp,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeStackDriftDetectionStatusOutput')
          ..add(
            'stackId',
            stackId,
          )
          ..add(
            'stackDriftDetectionId',
            stackDriftDetectionId,
          )
          ..add(
            'stackDriftStatus',
            stackDriftStatus,
          )
          ..add(
            'detectionStatus',
            detectionStatus,
          )
          ..add(
            'detectionStatusReason',
            detectionStatusReason,
          )
          ..add(
            'driftedStackResourceCount',
            driftedStackResourceCount,
          )
          ..add(
            'timestamp',
            timestamp,
          );
    return helper.toString();
  }
}

class DescribeStackDriftDetectionStatusOutputAwsQuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeStackDriftDetectionStatusOutput> {
  const DescribeStackDriftDetectionStatusOutputAwsQuerySerializer()
      : super('DescribeStackDriftDetectionStatusOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStackDriftDetectionStatusOutput,
        _$DescribeStackDriftDetectionStatusOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackDriftDetectionStatusOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackDriftDetectionStatusOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackId':
          result.stackId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackDriftDetectionId':
          result.stackDriftDetectionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackDriftStatus':
          result.stackDriftStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackDriftStatus),
          ) as _i2.StackDriftStatus);
        case 'DetectionStatus':
          result.detectionStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StackDriftDetectionStatus),
          ) as _i3.StackDriftDetectionStatus);
        case 'DetectionStatusReason':
          result.detectionStatusReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DriftedStackResourceCount':
          result.driftedStackResourceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Timestamp':
          result.timestamp = (serializers.deserialize(
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
    DescribeStackDriftDetectionStatusOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'DescribeStackDriftDetectionStatusOutputResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackDriftDetectionStatusOutput(
      :stackId,
      :stackDriftDetectionId,
      :stackDriftStatus,
      :detectionStatus,
      :detectionStatusReason,
      :driftedStackResourceCount,
      :timestamp
    ) = object;
    result$
      ..add(const _i4.XmlElementName('StackId'))
      ..add(serializers.serialize(
        stackId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i4.XmlElementName('StackDriftDetectionId'))
      ..add(serializers.serialize(
        stackDriftDetectionId,
        specifiedType: const FullType(String),
      ));
    if (stackDriftStatus != null) {
      result$
        ..add(const _i4.XmlElementName('StackDriftStatus'))
        ..add(serializers.serialize(
          stackDriftStatus,
          specifiedType: const FullType.nullable(_i2.StackDriftStatus),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('DetectionStatus'))
      ..add(serializers.serialize(
        detectionStatus,
        specifiedType: const FullType.nullable(_i3.StackDriftDetectionStatus),
      ));
    if (detectionStatusReason != null) {
      result$
        ..add(const _i4.XmlElementName('DetectionStatusReason'))
        ..add(serializers.serialize(
          detectionStatusReason,
          specifiedType: const FullType(String),
        ));
    }
    if (driftedStackResourceCount != null) {
      result$
        ..add(const _i4.XmlElementName('DriftedStackResourceCount'))
        ..add(serializers.serialize(
          driftedStackResourceCount,
          specifiedType: const FullType.nullable(int),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('Timestamp'))
      ..add(serializers.serialize(
        timestamp,
        specifiedType: const FullType.nullable(DateTime),
      ));
    return result$;
  }
}
