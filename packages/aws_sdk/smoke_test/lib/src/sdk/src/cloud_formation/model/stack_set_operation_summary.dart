// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.stack_set_operation_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_action.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_preferences.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_status_details.dart';

part 'stack_set_operation_summary.g.dart';

/// The structures that contain summary information about the specified operation.
abstract class StackSetOperationSummary
    with _i1.AWSEquatable<StackSetOperationSummary>
    implements
        Built<StackSetOperationSummary, StackSetOperationSummaryBuilder> {
  /// The structures that contain summary information about the specified operation.
  factory StackSetOperationSummary({
    String? operationId,
    StackSetOperationAction? action,
    StackSetOperationStatus? status,
    DateTime? creationTimestamp,
    DateTime? endTimestamp,
    String? statusReason,
    StackSetOperationStatusDetails? statusDetails,
    StackSetOperationPreferences? operationPreferences,
  }) {
    return _$StackSetOperationSummary._(
      operationId: operationId,
      action: action,
      status: status,
      creationTimestamp: creationTimestamp,
      endTimestamp: endTimestamp,
      statusReason: statusReason,
      statusDetails: statusDetails,
      operationPreferences: operationPreferences,
    );
  }

  /// The structures that contain summary information about the specified operation.
  factory StackSetOperationSummary.build(
          [void Function(StackSetOperationSummaryBuilder) updates]) =
      _$StackSetOperationSummary;

  const StackSetOperationSummary._();

  static const List<_i2.SmithySerializer<StackSetOperationSummary>>
      serializers = [StackSetOperationSummaryAwsQuerySerializer()];

  /// The unique ID of the stack set operation.
  String? get operationId;

  /// The type of operation: `CREATE`, `UPDATE`, or `DELETE`. Create and delete operations affect only the specified stack instances that are associated with the specified stack set. Update operations affect both the stack set itself and _all_ associated stack set instances.
  StackSetOperationAction? get action;

  /// The overall status of the operation.
  ///
  /// *   `FAILED`: The operation exceeded the specified failure tolerance. The failure tolerance value that you've set for an operation is applied for each Region during stack create and update operations. If the number of failed stacks within a Region exceeds the failure tolerance, the status of the operation in the Region is set to `FAILED`. This in turn sets the status of the operation as a whole to `FAILED`, and CloudFormation cancels the operation in any remaining Regions.
  ///
  /// *   `QUEUED`: \[Service-managed permissions\] For automatic deployments that require a sequence of operations, the operation is queued to be performed. For more information, see the [stack set operation status codes](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-status-codes) in the CloudFormation User Guide.
  ///
  /// *   `RUNNING`: The operation is currently being performed.
  ///
  /// *   `STOPPED`: The user has canceled the operation.
  ///
  /// *   `STOPPING`: The operation is in the process of stopping, at user request.
  ///
  /// *   `SUCCEEDED`: The operation completed creating or updating all the specified stacks without exceeding the failure tolerance for the operation.
  StackSetOperationStatus? get status;

  /// The time at which the operation was initiated. Note that the creation times for the stack set operation might differ from the creation time of the individual stacks themselves. This is because CloudFormation needs to perform preparatory work for the operation, such as dispatching the work to the requested Regions, before actually creating the first stacks.
  DateTime? get creationTimestamp;

  /// The time at which the stack set operation ended, across all accounts and Regions specified. Note that this doesn't necessarily mean that the stack set operation was successful, or even attempted, in each account or Region.
  DateTime? get endTimestamp;

  /// The status of the operation in details.
  String? get statusReason;

  /// Detailed information about the stack set operation.
  StackSetOperationStatusDetails? get statusDetails;

  /// The user-specified preferences for how CloudFormation performs a stack set operation.
  ///
  /// For more information about maximum concurrent accounts and failure tolerance, see [Stack set operation options](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options).
  StackSetOperationPreferences? get operationPreferences;
  @override
  List<Object?> get props => [
        operationId,
        action,
        status,
        creationTimestamp,
        endTimestamp,
        statusReason,
        statusDetails,
        operationPreferences,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackSetOperationSummary')
      ..add(
        'operationId',
        operationId,
      )
      ..add(
        'action',
        action,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'creationTimestamp',
        creationTimestamp,
      )
      ..add(
        'endTimestamp',
        endTimestamp,
      )
      ..add(
        'statusReason',
        statusReason,
      )
      ..add(
        'statusDetails',
        statusDetails,
      )
      ..add(
        'operationPreferences',
        operationPreferences,
      );
    return helper.toString();
  }
}

class StackSetOperationSummaryAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<StackSetOperationSummary> {
  const StackSetOperationSummaryAwsQuerySerializer()
      : super('StackSetOperationSummary');

  @override
  Iterable<Type> get types => const [
        StackSetOperationSummary,
        _$StackSetOperationSummary,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackSetOperationSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackSetOperationSummaryBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OperationId':
          result.operationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Action':
          result.action = (serializers.deserialize(
            value,
            specifiedType: const FullType(StackSetOperationAction),
          ) as StackSetOperationAction);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(StackSetOperationStatus),
          ) as StackSetOperationStatus);
        case 'CreationTimestamp':
          result.creationTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'EndTimestamp':
          result.endTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'StatusReason':
          result.statusReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StatusDetails':
          result.statusDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StackSetOperationStatusDetails),
          ) as StackSetOperationStatusDetails));
        case 'OperationPreferences':
          result.operationPreferences.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StackSetOperationPreferences),
          ) as StackSetOperationPreferences));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StackSetOperationSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StackSetOperationSummaryResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackSetOperationSummary(
      :operationId,
      :action,
      :status,
      :creationTimestamp,
      :endTimestamp,
      :statusReason,
      :statusDetails,
      :operationPreferences
    ) = object;
    if (operationId != null) {
      result$
        ..add(const _i2.XmlElementName('OperationId'))
        ..add(serializers.serialize(
          operationId,
          specifiedType: const FullType(String),
        ));
    }
    if (action != null) {
      result$
        ..add(const _i2.XmlElementName('Action'))
        ..add(serializers.serialize(
          action,
          specifiedType: const FullType(StackSetOperationAction),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(StackSetOperationStatus),
        ));
    }
    if (creationTimestamp != null) {
      result$
        ..add(const _i2.XmlElementName('CreationTimestamp'))
        ..add(serializers.serialize(
          creationTimestamp,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (endTimestamp != null) {
      result$
        ..add(const _i2.XmlElementName('EndTimestamp'))
        ..add(serializers.serialize(
          endTimestamp,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (statusReason != null) {
      result$
        ..add(const _i2.XmlElementName('StatusReason'))
        ..add(serializers.serialize(
          statusReason,
          specifiedType: const FullType(String),
        ));
    }
    if (statusDetails != null) {
      result$
        ..add(const _i2.XmlElementName('StatusDetails'))
        ..add(serializers.serialize(
          statusDetails,
          specifiedType: const FullType(StackSetOperationStatusDetails),
        ));
    }
    if (operationPreferences != null) {
      result$
        ..add(const _i2.XmlElementName('OperationPreferences'))
        ..add(serializers.serialize(
          operationPreferences,
          specifiedType: const FullType(StackSetOperationPreferences),
        ));
    }
    return result$;
  }
}
