// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_set_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/auto_deployment.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/managed_execution.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/permission_models.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_status.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_status.dart'
    as _i2;

part 'stack_set_summary.g.dart';

/// The structures that contain summary information about the specified stack set.
abstract class StackSetSummary
    with _i1.AWSEquatable<StackSetSummary>
    implements Built<StackSetSummary, StackSetSummaryBuilder> {
  /// The structures that contain summary information about the specified stack set.
  factory StackSetSummary({
    String? stackSetName,
    String? stackSetId,
    String? description,
    _i2.StackSetStatus? status,
    _i3.AutoDeployment? autoDeployment,
    _i4.PermissionModels? permissionModel,
    _i5.StackDriftStatus? driftStatus,
    DateTime? lastDriftCheckTimestamp,
    _i6.ManagedExecution? managedExecution,
  }) {
    return _$StackSetSummary._(
      stackSetName: stackSetName,
      stackSetId: stackSetId,
      description: description,
      status: status,
      autoDeployment: autoDeployment,
      permissionModel: permissionModel,
      driftStatus: driftStatus,
      lastDriftCheckTimestamp: lastDriftCheckTimestamp,
      managedExecution: managedExecution,
    );
  }

  /// The structures that contain summary information about the specified stack set.
  factory StackSetSummary.build(
      [void Function(StackSetSummaryBuilder) updates]) = _$StackSetSummary;

  const StackSetSummary._();

  static const List<_i7.SmithySerializer<StackSetSummary>> serializers = [
    StackSetSummaryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackSetSummaryBuilder b) {}

  /// The name of the stack set.
  String? get stackSetName;

  /// The ID of the stack set.
  String? get stackSetId;

  /// A description of the stack set that you specify when the stack set is created or updated.
  String? get description;

  /// The status of the stack set.
  _i2.StackSetStatus? get status;

  /// \[Service-managed permissions\] Describes whether StackSets automatically deploys to Organizations accounts that are added to a target organizational unit (OU).
  _i3.AutoDeployment? get autoDeployment;

  /// Describes how the IAM roles required for stack set operations are created.
  ///
  /// *   With `self-managed` permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see [Grant Self-Managed Stack Set Permissions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html).
  ///
  /// *   With `service-managed` permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by Organizations. For more information, see [Grant Service-Managed Stack Set Permissions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html).
  _i4.PermissionModels? get permissionModel;

  /// Status of the stack set's actual configuration compared to its expected template and parameter configuration. A stack set is considered to have drifted if one or more of its stack instances have drifted from their expected template and parameter configuration.
  ///
  /// *   `DRIFTED`: One or more of the stack instances belonging to the stack set stack differs from the expected template and parameter configuration. A stack instance is considered to have drifted if one or more of the resources in the associated stack have drifted.
  ///
  /// *   `NOT_CHECKED`: CloudFormation hasn't checked the stack set for drift.
  ///
  /// *   `IN_SYNC`: All the stack instances belonging to the stack set stack match from the expected template and parameter configuration.
  ///
  /// *   `UNKNOWN`: This value is reserved for future use.
  _i5.StackDriftStatus? get driftStatus;

  /// Most recent time when CloudFormation performed a drift detection operation on the stack set. This value will be `NULL` for any stack set on which drift detection hasn't yet been performed.
  DateTime? get lastDriftCheckTimestamp;

  /// Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
  _i6.ManagedExecution? get managedExecution;
  @override
  List<Object?> get props => [
        stackSetName,
        stackSetId,
        description,
        status,
        autoDeployment,
        permissionModel,
        driftStatus,
        lastDriftCheckTimestamp,
        managedExecution,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackSetSummary')
      ..add(
        'stackSetName',
        stackSetName,
      )
      ..add(
        'stackSetId',
        stackSetId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'autoDeployment',
        autoDeployment,
      )
      ..add(
        'permissionModel',
        permissionModel,
      )
      ..add(
        'driftStatus',
        driftStatus,
      )
      ..add(
        'lastDriftCheckTimestamp',
        lastDriftCheckTimestamp,
      )
      ..add(
        'managedExecution',
        managedExecution,
      );
    return helper.toString();
  }
}

class StackSetSummaryAwsQuerySerializer
    extends _i7.StructuredSmithySerializer<StackSetSummary> {
  const StackSetSummaryAwsQuerySerializer() : super('StackSetSummary');

  @override
  Iterable<Type> get types => const [
        StackSetSummary,
        _$StackSetSummary,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackSetSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackSetSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackSetName':
          result.stackSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackSetId':
          result.stackSetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackSetStatus),
          ) as _i2.StackSetStatus);
        case 'AutoDeployment':
          result.autoDeployment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AutoDeployment),
          ) as _i3.AutoDeployment));
        case 'PermissionModel':
          result.permissionModel = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.PermissionModels),
          ) as _i4.PermissionModels);
        case 'DriftStatus':
          result.driftStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.StackDriftStatus),
          ) as _i5.StackDriftStatus);
        case 'LastDriftCheckTimestamp':
          result.lastDriftCheckTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ManagedExecution':
          result.managedExecution.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ManagedExecution),
          ) as _i6.ManagedExecution));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StackSetSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i7.XmlElementName(
        'StackSetSummaryResponse',
        _i7.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackSetSummary(
      :stackSetName,
      :stackSetId,
      :description,
      :status,
      :autoDeployment,
      :permissionModel,
      :driftStatus,
      :lastDriftCheckTimestamp,
      :managedExecution
    ) = object;
    if (stackSetName != null) {
      result$
        ..add(const _i7.XmlElementName('StackSetName'))
        ..add(serializers.serialize(
          stackSetName,
          specifiedType: const FullType(String),
        ));
    }
    if (stackSetId != null) {
      result$
        ..add(const _i7.XmlElementName('StackSetId'))
        ..add(serializers.serialize(
          stackSetId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i7.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i7.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i2.StackSetStatus),
        ));
    }
    if (autoDeployment != null) {
      result$
        ..add(const _i7.XmlElementName('AutoDeployment'))
        ..add(serializers.serialize(
          autoDeployment,
          specifiedType: const FullType(_i3.AutoDeployment),
        ));
    }
    if (permissionModel != null) {
      result$
        ..add(const _i7.XmlElementName('PermissionModel'))
        ..add(serializers.serialize(
          permissionModel,
          specifiedType: const FullType.nullable(_i4.PermissionModels),
        ));
    }
    if (driftStatus != null) {
      result$
        ..add(const _i7.XmlElementName('DriftStatus'))
        ..add(serializers.serialize(
          driftStatus,
          specifiedType: const FullType.nullable(_i5.StackDriftStatus),
        ));
    }
    if (lastDriftCheckTimestamp != null) {
      result$
        ..add(const _i7.XmlElementName('LastDriftCheckTimestamp'))
        ..add(serializers.serialize(
          lastDriftCheckTimestamp,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (managedExecution != null) {
      result$
        ..add(const _i7.XmlElementName('ManagedExecution'))
        ..add(serializers.serialize(
          managedExecution,
          specifiedType: const FullType(_i6.ManagedExecution),
        ));
    }
    return result$;
  }
}
