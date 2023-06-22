// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_instance_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_comprehensive_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_status.dart'
    as _i2;

part 'stack_instance_summary.g.dart';

/// The structure that contains summary information about a stack instance.
abstract class StackInstanceSummary
    with _i1.AWSEquatable<StackInstanceSummary>
    implements Built<StackInstanceSummary, StackInstanceSummaryBuilder> {
  /// The structure that contains summary information about a stack instance.
  factory StackInstanceSummary({
    String? stackSetId,
    String? region,
    String? account,
    String? stackId,
    _i2.StackInstanceStatus? status,
    String? statusReason,
    _i3.StackInstanceComprehensiveStatus? stackInstanceStatus,
    String? organizationalUnitId,
    _i4.StackDriftStatus? driftStatus,
    DateTime? lastDriftCheckTimestamp,
    String? lastOperationId,
  }) {
    return _$StackInstanceSummary._(
      stackSetId: stackSetId,
      region: region,
      account: account,
      stackId: stackId,
      status: status,
      statusReason: statusReason,
      stackInstanceStatus: stackInstanceStatus,
      organizationalUnitId: organizationalUnitId,
      driftStatus: driftStatus,
      lastDriftCheckTimestamp: lastDriftCheckTimestamp,
      lastOperationId: lastOperationId,
    );
  }

  /// The structure that contains summary information about a stack instance.
  factory StackInstanceSummary.build(
          [void Function(StackInstanceSummaryBuilder) updates]) =
      _$StackInstanceSummary;

  const StackInstanceSummary._();

  static const List<_i5.SmithySerializer<StackInstanceSummary>> serializers = [
    StackInstanceSummaryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackInstanceSummaryBuilder b) {}

  /// The name or unique ID of the stack set that the stack instance is associated with.
  String? get stackSetId;

  /// The name of the Amazon Web Services Region that the stack instance is associated with.
  String? get region;

  /// \[Self-managed permissions\] The name of the Amazon Web Services account that the stack instance is associated with.
  String? get account;

  /// The ID of the stack instance.
  String? get stackId;

  /// The status of the stack instance, in terms of its synchronization with its associated stack set.
  ///
  /// *   `INOPERABLE`: A `DeleteStackInstances` operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further `UpdateStackSet` operations. You might need to perform a `DeleteStackInstances` operation, with `RetainStacks` set to `true`, to delete the stack instance, and then delete the stack manually.
  ///
  /// *   `OUTDATED`: The stack isn't currently up to date with the stack set because:
  ///
  ///     *   The associated stack failed during a `CreateStackSet` or `UpdateStackSet` operation.
  ///
  ///     *   The stack was part of a `CreateStackSet` or `UpdateStackSet` operation that failed or was stopped before the stack was created or updated.
  ///
  /// *   `CURRENT`: The stack is currently up to date with the stack set.
  _i2.StackInstanceStatus? get status;

  /// The explanation for the specific status code assigned to this stack instance.
  String? get statusReason;

  /// The detailed status of the stack instance.
  _i3.StackInstanceComprehensiveStatus? get stackInstanceStatus;

  /// \[Service-managed permissions\] The organization root ID or organizational unit (OU) IDs that you specified for [DeploymentTargets](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html).
  String? get organizationalUnitId;

  /// Status of the stack instance's actual configuration compared to the expected template and parameter configuration of the stack set to which it belongs.
  ///
  /// *   `DRIFTED`: The stack differs from the expected template and parameter configuration of the stack set to which it belongs. A stack instance is considered to have drifted if one or more of the resources in the associated stack have drifted.
  ///
  /// *   `NOT_CHECKED`: CloudFormation hasn't checked if the stack instance differs from its expected stack set configuration.
  ///
  /// *   `IN_SYNC`: The stack instance's actual configuration matches its expected stack set configuration.
  ///
  /// *   `UNKNOWN`: This value is reserved for future use.
  _i4.StackDriftStatus? get driftStatus;

  /// Most recent time when CloudFormation performed a drift detection operation on the stack instance. This value will be `NULL` for any stack instance on which drift detection hasn't yet been performed.
  DateTime? get lastDriftCheckTimestamp;

  /// The last unique ID of a StackSet operation performed on a stack instance.
  String? get lastOperationId;
  @override
  List<Object?> get props => [
        stackSetId,
        region,
        account,
        stackId,
        status,
        statusReason,
        stackInstanceStatus,
        organizationalUnitId,
        driftStatus,
        lastDriftCheckTimestamp,
        lastOperationId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackInstanceSummary')
      ..add(
        'stackSetId',
        stackSetId,
      )
      ..add(
        'region',
        region,
      )
      ..add(
        'account',
        account,
      )
      ..add(
        'stackId',
        stackId,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'statusReason',
        statusReason,
      )
      ..add(
        'stackInstanceStatus',
        stackInstanceStatus,
      )
      ..add(
        'organizationalUnitId',
        organizationalUnitId,
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
        'lastOperationId',
        lastOperationId,
      );
    return helper.toString();
  }
}

class StackInstanceSummaryAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<StackInstanceSummary> {
  const StackInstanceSummaryAwsQuerySerializer()
      : super('StackInstanceSummary');

  @override
  Iterable<Type> get types => const [
        StackInstanceSummary,
        _$StackInstanceSummary,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackInstanceSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackInstanceSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackSetId':
          result.stackSetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Account':
          result.account = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackId':
          result.stackId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackInstanceStatus),
          ) as _i2.StackInstanceStatus);
        case 'StatusReason':
          result.statusReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackInstanceStatus':
          result.stackInstanceStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StackInstanceComprehensiveStatus),
          ) as _i3.StackInstanceComprehensiveStatus));
        case 'OrganizationalUnitId':
          result.organizationalUnitId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DriftStatus':
          result.driftStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.StackDriftStatus),
          ) as _i4.StackDriftStatus);
        case 'LastDriftCheckTimestamp':
          result.lastDriftCheckTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastOperationId':
          result.lastOperationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StackInstanceSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'StackInstanceSummaryResponse',
        _i5.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackInstanceSummary(
      :stackSetId,
      :region,
      :account,
      :stackId,
      :status,
      :statusReason,
      :stackInstanceStatus,
      :organizationalUnitId,
      :driftStatus,
      :lastDriftCheckTimestamp,
      :lastOperationId
    ) = object;
    if (stackSetId != null) {
      result$
        ..add(const _i5.XmlElementName('StackSetId'))
        ..add(serializers.serialize(
          stackSetId,
          specifiedType: const FullType(String),
        ));
    }
    if (region != null) {
      result$
        ..add(const _i5.XmlElementName('Region'))
        ..add(serializers.serialize(
          region,
          specifiedType: const FullType(String),
        ));
    }
    if (account != null) {
      result$
        ..add(const _i5.XmlElementName('Account'))
        ..add(serializers.serialize(
          account,
          specifiedType: const FullType(String),
        ));
    }
    if (stackId != null) {
      result$
        ..add(const _i5.XmlElementName('StackId'))
        ..add(serializers.serialize(
          stackId,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i5.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i2.StackInstanceStatus),
        ));
    }
    if (statusReason != null) {
      result$
        ..add(const _i5.XmlElementName('StatusReason'))
        ..add(serializers.serialize(
          statusReason,
          specifiedType: const FullType(String),
        ));
    }
    if (stackInstanceStatus != null) {
      result$
        ..add(const _i5.XmlElementName('StackInstanceStatus'))
        ..add(serializers.serialize(
          stackInstanceStatus,
          specifiedType: const FullType(_i3.StackInstanceComprehensiveStatus),
        ));
    }
    if (organizationalUnitId != null) {
      result$
        ..add(const _i5.XmlElementName('OrganizationalUnitId'))
        ..add(serializers.serialize(
          organizationalUnitId,
          specifiedType: const FullType(String),
        ));
    }
    if (driftStatus != null) {
      result$
        ..add(const _i5.XmlElementName('DriftStatus'))
        ..add(serializers.serialize(
          driftStatus,
          specifiedType: const FullType.nullable(_i4.StackDriftStatus),
        ));
    }
    if (lastDriftCheckTimestamp != null) {
      result$
        ..add(const _i5.XmlElementName('LastDriftCheckTimestamp'))
        ..add(serializers.serialize(
          lastDriftCheckTimestamp,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (lastOperationId != null) {
      result$
        ..add(const _i5.XmlElementName('LastOperationId'))
        ..add(serializers.serialize(
          lastOperationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
