// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.stack_set_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deployment_targets.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_detection_details.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_action.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_preferences.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_status_details.dart';

part 'stack_set_operation.g.dart';

/// The structure that contains information about a stack set operation.
abstract class StackSetOperation
    with _i1.AWSEquatable<StackSetOperation>
    implements Built<StackSetOperation, StackSetOperationBuilder> {
  /// The structure that contains information about a stack set operation.
  factory StackSetOperation({
    String? operationId,
    String? stackSetId,
    StackSetOperationAction? action,
    StackSetOperationStatus? status,
    StackSetOperationPreferences? operationPreferences,
    bool? retainStacks,
    String? administrationRoleArn,
    String? executionRoleName,
    DateTime? creationTimestamp,
    DateTime? endTimestamp,
    DeploymentTargets? deploymentTargets,
    StackSetDriftDetectionDetails? stackSetDriftDetectionDetails,
    String? statusReason,
    StackSetOperationStatusDetails? statusDetails,
  }) {
    return _$StackSetOperation._(
      operationId: operationId,
      stackSetId: stackSetId,
      action: action,
      status: status,
      operationPreferences: operationPreferences,
      retainStacks: retainStacks,
      administrationRoleArn: administrationRoleArn,
      executionRoleName: executionRoleName,
      creationTimestamp: creationTimestamp,
      endTimestamp: endTimestamp,
      deploymentTargets: deploymentTargets,
      stackSetDriftDetectionDetails: stackSetDriftDetectionDetails,
      statusReason: statusReason,
      statusDetails: statusDetails,
    );
  }

  /// The structure that contains information about a stack set operation.
  factory StackSetOperation.build(
      [void Function(StackSetOperationBuilder) updates]) = _$StackSetOperation;

  const StackSetOperation._();

  static const List<_i2.SmithySerializer<StackSetOperation>> serializers = [
    StackSetOperationAwsQuerySerializer()
  ];

  /// The unique ID of a stack set operation.
  String? get operationId;

  /// The ID of the stack set.
  String? get stackSetId;

  /// The type of stack set operation: `CREATE`, `UPDATE`, or `DELETE`. Create and delete operations affect only the specified stack set instances that are associated with the specified stack set. Update operations affect both the stack set itself, in addition to _all_ associated stack set instances.
  StackSetOperationAction? get action;

  /// The status of the operation.
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

  /// The preferences for how CloudFormation performs this stack set operation.
  StackSetOperationPreferences? get operationPreferences;

  /// For stack set operations of action type `DELETE`, specifies whether to remove the stack instances from the specified stack set, but doesn't delete the stacks. You can't re-associate a retained stack, or add an existing, saved stack to a new stack set.
  bool? get retainStacks;

  /// The Amazon Resource Name (ARN) of the IAM role used to perform this stack set operation.
  ///
  /// Use customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see [Define Permissions for Multiple Administrators](https://docs.aws.amazon.com/AWSCloudFormation/stacksets-prereqs.html) in the _CloudFormation User Guide_.
  String? get administrationRoleArn;

  /// The name of the IAM execution role used to create or update the stack set.
  ///
  /// Use customized execution roles to control which stack resources users and groups can include in their stack sets.
  String? get executionRoleName;

  /// The time at which the operation was initiated. Note that the creation times for the stack set operation might differ from the creation time of the individual stacks themselves. This is because CloudFormation needs to perform preparatory work for the operation, such as dispatching the work to the requested Regions, before actually creating the first stacks.
  DateTime? get creationTimestamp;

  /// The time at which the stack set operation ended, across all accounts and Regions specified. Note that this doesn't necessarily mean that the stack set operation was successful, or even attempted, in each account or Region.
  DateTime? get endTimestamp;

  /// \[Service-managed permissions\] The Organizations accounts affected by the stack operation.
  DeploymentTargets? get deploymentTargets;

  /// Detailed information about the drift status of the stack set. This includes information about drift operations currently being performed on the stack set.
  ///
  /// This information will only be present for stack set operations whose `Action` type is `DETECT_DRIFT`.
  ///
  /// For more information, see [Detecting Unmanaged Changes in Stack Sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html) in the CloudFormation User Guide.
  StackSetDriftDetectionDetails? get stackSetDriftDetectionDetails;

  /// The status of the operation in details.
  String? get statusReason;

  /// Detailed information about the StackSet operation.
  StackSetOperationStatusDetails? get statusDetails;
  @override
  List<Object?> get props => [
        operationId,
        stackSetId,
        action,
        status,
        operationPreferences,
        retainStacks,
        administrationRoleArn,
        executionRoleName,
        creationTimestamp,
        endTimestamp,
        deploymentTargets,
        stackSetDriftDetectionDetails,
        statusReason,
        statusDetails,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackSetOperation')
      ..add(
        'operationId',
        operationId,
      )
      ..add(
        'stackSetId',
        stackSetId,
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
        'operationPreferences',
        operationPreferences,
      )
      ..add(
        'retainStacks',
        retainStacks,
      )
      ..add(
        'administrationRoleArn',
        administrationRoleArn,
      )
      ..add(
        'executionRoleName',
        executionRoleName,
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
        'deploymentTargets',
        deploymentTargets,
      )
      ..add(
        'stackSetDriftDetectionDetails',
        stackSetDriftDetectionDetails,
      )
      ..add(
        'statusReason',
        statusReason,
      )
      ..add(
        'statusDetails',
        statusDetails,
      );
    return helper.toString();
  }
}

class StackSetOperationAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<StackSetOperation> {
  const StackSetOperationAwsQuerySerializer() : super('StackSetOperation');

  @override
  Iterable<Type> get types => const [
        StackSetOperation,
        _$StackSetOperation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackSetOperation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackSetOperationBuilder();
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
        case 'StackSetId':
          result.stackSetId = (serializers.deserialize(
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
        case 'OperationPreferences':
          result.operationPreferences.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StackSetOperationPreferences),
          ) as StackSetOperationPreferences));
        case 'RetainStacks':
          result.retainStacks = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AdministrationRoleARN':
          result.administrationRoleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExecutionRoleName':
          result.executionRoleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'DeploymentTargets':
          result.deploymentTargets.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DeploymentTargets),
          ) as DeploymentTargets));
        case 'StackSetDriftDetectionDetails':
          result.stackSetDriftDetectionDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StackSetDriftDetectionDetails),
          ) as StackSetDriftDetectionDetails));
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StackSetOperation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StackSetOperationResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackSetOperation(
      :operationId,
      :stackSetId,
      :action,
      :status,
      :operationPreferences,
      :retainStacks,
      :administrationRoleArn,
      :executionRoleName,
      :creationTimestamp,
      :endTimestamp,
      :deploymentTargets,
      :stackSetDriftDetectionDetails,
      :statusReason,
      :statusDetails
    ) = object;
    if (operationId != null) {
      result$
        ..add(const _i2.XmlElementName('OperationId'))
        ..add(serializers.serialize(
          operationId,
          specifiedType: const FullType(String),
        ));
    }
    if (stackSetId != null) {
      result$
        ..add(const _i2.XmlElementName('StackSetId'))
        ..add(serializers.serialize(
          stackSetId,
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
    if (operationPreferences != null) {
      result$
        ..add(const _i2.XmlElementName('OperationPreferences'))
        ..add(serializers.serialize(
          operationPreferences,
          specifiedType: const FullType(StackSetOperationPreferences),
        ));
    }
    if (retainStacks != null) {
      result$
        ..add(const _i2.XmlElementName('RetainStacks'))
        ..add(serializers.serialize(
          retainStacks,
          specifiedType: const FullType(bool),
        ));
    }
    if (administrationRoleArn != null) {
      result$
        ..add(const _i2.XmlElementName('AdministrationRoleARN'))
        ..add(serializers.serialize(
          administrationRoleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (executionRoleName != null) {
      result$
        ..add(const _i2.XmlElementName('ExecutionRoleName'))
        ..add(serializers.serialize(
          executionRoleName,
          specifiedType: const FullType(String),
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
    if (deploymentTargets != null) {
      result$
        ..add(const _i2.XmlElementName('DeploymentTargets'))
        ..add(serializers.serialize(
          deploymentTargets,
          specifiedType: const FullType(DeploymentTargets),
        ));
    }
    if (stackSetDriftDetectionDetails != null) {
      result$
        ..add(const _i2.XmlElementName('StackSetDriftDetectionDetails'))
        ..add(serializers.serialize(
          stackSetDriftDetectionDetails,
          specifiedType: const FullType(StackSetDriftDetectionDetails),
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
    return result$;
  }
}
