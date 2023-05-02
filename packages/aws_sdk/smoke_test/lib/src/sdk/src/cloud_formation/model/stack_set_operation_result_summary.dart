// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_set_operation_result_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_gate_result.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_result_status.dart'
    as _i2;

part 'stack_set_operation_result_summary.g.dart';

/// The structure that contains information about a specified operation's results for a given account in a given Region.
abstract class StackSetOperationResultSummary
    with
        _i1.AWSEquatable<StackSetOperationResultSummary>
    implements
        Built<StackSetOperationResultSummary,
            StackSetOperationResultSummaryBuilder> {
  /// The structure that contains information about a specified operation's results for a given account in a given Region.
  factory StackSetOperationResultSummary({
    String? account,
    String? region,
    _i2.StackSetOperationResultStatus? status,
    String? statusReason,
    _i3.AccountGateResult? accountGateResult,
    String? organizationalUnitId,
  }) {
    return _$StackSetOperationResultSummary._(
      account: account,
      region: region,
      status: status,
      statusReason: statusReason,
      accountGateResult: accountGateResult,
      organizationalUnitId: organizationalUnitId,
    );
  }

  /// The structure that contains information about a specified operation's results for a given account in a given Region.
  factory StackSetOperationResultSummary.build(
          [void Function(StackSetOperationResultSummaryBuilder) updates]) =
      _$StackSetOperationResultSummary;

  const StackSetOperationResultSummary._();

  static const List<_i4.SmithySerializer> serializers = [
    StackSetOperationResultSummaryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackSetOperationResultSummaryBuilder b) {}

  /// \[Self-managed permissions\] The name of the Amazon Web Services account for this operation result.
  String? get account;

  /// The name of the Amazon Web Services Region for this operation result.
  String? get region;

  /// The result status of the stack set operation for the given account in the given Region.
  ///
  /// *   `CANCELLED`: The operation in the specified account and Region has been canceled. This is either because a user has stopped the stack set operation, or because the failure tolerance of the stack set operation has been exceeded.
  ///
  /// *   `FAILED`: The operation in the specified account and Region failed.
  ///
  ///     If the stack set operation fails in enough accounts within a Region, the failure tolerance for the stack set operation as a whole might be exceeded.
  ///
  /// *   `RUNNING`: The operation in the specified account and Region is currently in progress.
  ///
  /// *   `PENDING`: The operation in the specified account and Region has yet to start.
  ///
  /// *   `SUCCEEDED`: The operation in the specified account and Region completed successfully.
  _i2.StackSetOperationResultStatus? get status;

  /// The reason for the assigned result status.
  String? get statusReason;

  /// The results of the account gate function CloudFormation invokes, if present, before proceeding with stack set operations in an account.
  _i3.AccountGateResult? get accountGateResult;

  /// \[Service-managed permissions\] The organization root ID or organizational unit (OU) IDs that you specified for [DeploymentTargets](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html).
  String? get organizationalUnitId;
  @override
  List<Object?> get props => [
        account,
        region,
        status,
        statusReason,
        accountGateResult,
        organizationalUnitId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StackSetOperationResultSummary');
    helper.add(
      'account',
      account,
    );
    helper.add(
      'region',
      region,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'statusReason',
      statusReason,
    );
    helper.add(
      'accountGateResult',
      accountGateResult,
    );
    helper.add(
      'organizationalUnitId',
      organizationalUnitId,
    );
    return helper.toString();
  }
}

class StackSetOperationResultSummaryAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<StackSetOperationResultSummary> {
  const StackSetOperationResultSummaryAwsQuerySerializer()
      : super('StackSetOperationResultSummary');

  @override
  Iterable<Type> get types => const [
        StackSetOperationResultSummary,
        _$StackSetOperationResultSummary,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackSetOperationResultSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackSetOperationResultSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Account':
          if (value != null) {
            result.account = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Region':
          if (value != null) {
            result.region = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.StackSetOperationResultStatus),
            ) as _i2.StackSetOperationResultStatus);
          }
          break;
        case 'StatusReason':
          if (value != null) {
            result.statusReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AccountGateResult':
          if (value != null) {
            result.accountGateResult.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AccountGateResult),
            ) as _i3.AccountGateResult));
          }
          break;
        case 'OrganizationalUnitId':
          if (value != null) {
            result.organizationalUnitId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as StackSetOperationResultSummary);
    final result = <Object?>[
      const _i4.XmlElementName(
        'StackSetOperationResultSummaryResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.account != null) {
      result
        ..add(const _i4.XmlElementName('Account'))
        ..add(serializers.serialize(
          payload.account!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.region != null) {
      result
        ..add(const _i4.XmlElementName('Region'))
        ..add(serializers.serialize(
          payload.region!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i4.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType:
              const FullType.nullable(_i2.StackSetOperationResultStatus),
        ));
    }
    if (payload.statusReason != null) {
      result
        ..add(const _i4.XmlElementName('StatusReason'))
        ..add(serializers.serialize(
          payload.statusReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.accountGateResult != null) {
      result
        ..add(const _i4.XmlElementName('AccountGateResult'))
        ..add(serializers.serialize(
          payload.accountGateResult!,
          specifiedType: const FullType(_i3.AccountGateResult),
        ));
    }
    if (payload.organizationalUnitId != null) {
      result
        ..add(const _i4.XmlElementName('OrganizationalUnitId'))
        ..add(serializers.serialize(
          payload.organizationalUnitId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
