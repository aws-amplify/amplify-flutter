// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_set_drift_detection_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_detection_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_status.dart'
    as _i2;

part 'stack_set_drift_detection_details.g.dart';

/// Detailed information about the drift status of the stack set.
///
/// For stack sets, contains information about the last _completed_ drift operation performed on the stack set. Information about drift operations in-progress isn't included.
///
/// For stack set operations, includes information about drift operations currently being performed on the stack set.
///
/// For more information, see [Detecting unmanaged changes in stack sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html) in the _CloudFormation User Guide_.
abstract class StackSetDriftDetectionDetails
    with
        _i1.AWSEquatable<StackSetDriftDetectionDetails>
    implements
        Built<StackSetDriftDetectionDetails,
            StackSetDriftDetectionDetailsBuilder> {
  /// Detailed information about the drift status of the stack set.
  ///
  /// For stack sets, contains information about the last _completed_ drift operation performed on the stack set. Information about drift operations in-progress isn't included.
  ///
  /// For stack set operations, includes information about drift operations currently being performed on the stack set.
  ///
  /// For more information, see [Detecting unmanaged changes in stack sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html) in the _CloudFormation User Guide_.
  factory StackSetDriftDetectionDetails({
    _i2.StackSetDriftStatus? driftStatus,
    _i3.StackSetDriftDetectionStatus? driftDetectionStatus,
    DateTime? lastDriftCheckTimestamp,
    int? totalStackInstancesCount,
    int? driftedStackInstancesCount,
    int? inSyncStackInstancesCount,
    int? inProgressStackInstancesCount,
    int? failedStackInstancesCount,
  }) {
    totalStackInstancesCount ??= 0;
    driftedStackInstancesCount ??= 0;
    inSyncStackInstancesCount ??= 0;
    inProgressStackInstancesCount ??= 0;
    failedStackInstancesCount ??= 0;
    return _$StackSetDriftDetectionDetails._(
      driftStatus: driftStatus,
      driftDetectionStatus: driftDetectionStatus,
      lastDriftCheckTimestamp: lastDriftCheckTimestamp,
      totalStackInstancesCount: totalStackInstancesCount,
      driftedStackInstancesCount: driftedStackInstancesCount,
      inSyncStackInstancesCount: inSyncStackInstancesCount,
      inProgressStackInstancesCount: inProgressStackInstancesCount,
      failedStackInstancesCount: failedStackInstancesCount,
    );
  }

  /// Detailed information about the drift status of the stack set.
  ///
  /// For stack sets, contains information about the last _completed_ drift operation performed on the stack set. Information about drift operations in-progress isn't included.
  ///
  /// For stack set operations, includes information about drift operations currently being performed on the stack set.
  ///
  /// For more information, see [Detecting unmanaged changes in stack sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html) in the _CloudFormation User Guide_.
  factory StackSetDriftDetectionDetails.build(
          [void Function(StackSetDriftDetectionDetailsBuilder) updates]) =
      _$StackSetDriftDetectionDetails;

  const StackSetDriftDetectionDetails._();

  static const List<_i4.SmithySerializer<StackSetDriftDetectionDetails>>
      serializers = [StackSetDriftDetectionDetailsAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackSetDriftDetectionDetailsBuilder b) {
    b.totalStackInstancesCount = 0;
    b.driftedStackInstancesCount = 0;
    b.inSyncStackInstancesCount = 0;
    b.inProgressStackInstancesCount = 0;
    b.failedStackInstancesCount = 0;
  }

  /// Status of the stack set's actual configuration compared to its expected template and parameter configuration. A stack set is considered to have drifted if one or more of its stack instances have drifted from their expected template and parameter configuration.
  ///
  /// *   `DRIFTED`: One or more of the stack instances belonging to the stack set stack differs from the expected template and parameter configuration. A stack instance is considered to have drifted if one or more of the resources in the associated stack have drifted.
  ///
  /// *   `NOT_CHECKED`: CloudFormation hasn't checked the stack set for drift.
  ///
  /// *   `IN_SYNC`: All of the stack instances belonging to the stack set stack match from the expected template and parameter configuration.
  _i2.StackSetDriftStatus? get driftStatus;

  /// The status of the stack set drift detection operation.
  ///
  /// *   `COMPLETED`: The drift detection operation completed without failing on any stack instances.
  ///
  /// *   `FAILED`: The drift detection operation exceeded the specified failure tolerance.
  ///
  /// *   `PARTIAL_SUCCESS`: The drift detection operation completed without exceeding the failure tolerance for the operation.
  ///
  /// *   `IN_PROGRESS`: The drift detection operation is currently being performed.
  ///
  /// *   `STOPPED`: The user has canceled the drift detection operation.
  _i3.StackSetDriftDetectionStatus? get driftDetectionStatus;

  /// Most recent time when CloudFormation performed a drift detection operation on the stack set. This value will be `NULL` for any stack set on which drift detection hasn't yet been performed.
  DateTime? get lastDriftCheckTimestamp;

  /// The total number of stack instances belonging to this stack set.
  ///
  /// The total number of stack instances is equal to the total of:
  ///
  /// *   Stack instances that match the stack set configuration.
  ///
  /// *   Stack instances that have drifted from the stack set configuration.
  ///
  /// *   Stack instances where the drift detection operation has failed.
  ///
  /// *   Stack instances currently being checked for drift.
  int get totalStackInstancesCount;

  /// The number of stack instances that have drifted from the expected template and parameter configuration of the stack set. A stack instance is considered to have drifted if one or more of the resources in the associated stack don't match their expected configuration.
  int get driftedStackInstancesCount;

  /// The number of stack instances which match the expected template and parameter configuration of the stack set.
  int get inSyncStackInstancesCount;

  /// The number of stack instances that are currently being checked for drift.
  int get inProgressStackInstancesCount;

  /// The number of stack instances for which the drift detection operation failed.
  int get failedStackInstancesCount;
  @override
  List<Object?> get props => [
        driftStatus,
        driftDetectionStatus,
        lastDriftCheckTimestamp,
        totalStackInstancesCount,
        driftedStackInstancesCount,
        inSyncStackInstancesCount,
        inProgressStackInstancesCount,
        failedStackInstancesCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackSetDriftDetectionDetails')
      ..add(
        'driftStatus',
        driftStatus,
      )
      ..add(
        'driftDetectionStatus',
        driftDetectionStatus,
      )
      ..add(
        'lastDriftCheckTimestamp',
        lastDriftCheckTimestamp,
      )
      ..add(
        'totalStackInstancesCount',
        totalStackInstancesCount,
      )
      ..add(
        'driftedStackInstancesCount',
        driftedStackInstancesCount,
      )
      ..add(
        'inSyncStackInstancesCount',
        inSyncStackInstancesCount,
      )
      ..add(
        'inProgressStackInstancesCount',
        inProgressStackInstancesCount,
      )
      ..add(
        'failedStackInstancesCount',
        failedStackInstancesCount,
      );
    return helper.toString();
  }
}

class StackSetDriftDetectionDetailsAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<StackSetDriftDetectionDetails> {
  const StackSetDriftDetectionDetailsAwsQuerySerializer()
      : super('StackSetDriftDetectionDetails');

  @override
  Iterable<Type> get types => const [
        StackSetDriftDetectionDetails,
        _$StackSetDriftDetectionDetails,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackSetDriftDetectionDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackSetDriftDetectionDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DriftStatus':
          result.driftStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackSetDriftStatus),
          ) as _i2.StackSetDriftStatus);
        case 'DriftDetectionStatus':
          result.driftDetectionStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StackSetDriftDetectionStatus),
          ) as _i3.StackSetDriftDetectionStatus);
        case 'LastDriftCheckTimestamp':
          result.lastDriftCheckTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'TotalStackInstancesCount':
          result.totalStackInstancesCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DriftedStackInstancesCount':
          result.driftedStackInstancesCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'InSyncStackInstancesCount':
          result.inSyncStackInstancesCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'InProgressStackInstancesCount':
          result.inProgressStackInstancesCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'FailedStackInstancesCount':
          result.failedStackInstancesCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StackSetDriftDetectionDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'StackSetDriftDetectionDetailsResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackSetDriftDetectionDetails(
      :driftStatus,
      :driftDetectionStatus,
      :lastDriftCheckTimestamp,
      :totalStackInstancesCount,
      :driftedStackInstancesCount,
      :inSyncStackInstancesCount,
      :inProgressStackInstancesCount,
      :failedStackInstancesCount
    ) = object;
    if (driftStatus != null) {
      result$
        ..add(const _i4.XmlElementName('DriftStatus'))
        ..add(serializers.serialize(
          driftStatus,
          specifiedType: const FullType.nullable(_i2.StackSetDriftStatus),
        ));
    }
    if (driftDetectionStatus != null) {
      result$
        ..add(const _i4.XmlElementName('DriftDetectionStatus'))
        ..add(serializers.serialize(
          driftDetectionStatus,
          specifiedType:
              const FullType.nullable(_i3.StackSetDriftDetectionStatus),
        ));
    }
    if (lastDriftCheckTimestamp != null) {
      result$
        ..add(const _i4.XmlElementName('LastDriftCheckTimestamp'))
        ..add(serializers.serialize(
          lastDriftCheckTimestamp,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('TotalStackInstancesCount'))
      ..add(serializers.serialize(
        totalStackInstancesCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i4.XmlElementName('DriftedStackInstancesCount'))
      ..add(serializers.serialize(
        driftedStackInstancesCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i4.XmlElementName('InSyncStackInstancesCount'))
      ..add(serializers.serialize(
        inSyncStackInstancesCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i4.XmlElementName('InProgressStackInstancesCount'))
      ..add(serializers.serialize(
        inProgressStackInstancesCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i4.XmlElementName('FailedStackInstancesCount'))
      ..add(serializers.serialize(
        failedStackInstancesCount,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
