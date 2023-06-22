// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.account_gate_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_gate_status.dart'
    as _i2;

part 'account_gate_result.g.dart';

/// Structure that contains the results of the account gate function which CloudFormation invokes, if present, before proceeding with a stack set operation in an account and Region.
///
/// For each account and Region, CloudFormation lets you specify a Lambda function that encapsulates any requirements that must be met before CloudFormation can proceed with a stack set operation in that account and Region. CloudFormation invokes the function each time a stack set operation is requested for that account and Region; if the function returns `FAILED`, CloudFormation cancels the operation in that account and Region, and sets the stack set operation result status for that account and Region to `FAILED`.
///
/// For more information, see [Configuring a target account gate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-account-gating.html).
abstract class AccountGateResult
    with _i1.AWSEquatable<AccountGateResult>
    implements Built<AccountGateResult, AccountGateResultBuilder> {
  /// Structure that contains the results of the account gate function which CloudFormation invokes, if present, before proceeding with a stack set operation in an account and Region.
  ///
  /// For each account and Region, CloudFormation lets you specify a Lambda function that encapsulates any requirements that must be met before CloudFormation can proceed with a stack set operation in that account and Region. CloudFormation invokes the function each time a stack set operation is requested for that account and Region; if the function returns `FAILED`, CloudFormation cancels the operation in that account and Region, and sets the stack set operation result status for that account and Region to `FAILED`.
  ///
  /// For more information, see [Configuring a target account gate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-account-gating.html).
  factory AccountGateResult({
    _i2.AccountGateStatus? status,
    String? statusReason,
  }) {
    return _$AccountGateResult._(
      status: status,
      statusReason: statusReason,
    );
  }

  /// Structure that contains the results of the account gate function which CloudFormation invokes, if present, before proceeding with a stack set operation in an account and Region.
  ///
  /// For each account and Region, CloudFormation lets you specify a Lambda function that encapsulates any requirements that must be met before CloudFormation can proceed with a stack set operation in that account and Region. CloudFormation invokes the function each time a stack set operation is requested for that account and Region; if the function returns `FAILED`, CloudFormation cancels the operation in that account and Region, and sets the stack set operation result status for that account and Region to `FAILED`.
  ///
  /// For more information, see [Configuring a target account gate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-account-gating.html).
  factory AccountGateResult.build(
      [void Function(AccountGateResultBuilder) updates]) = _$AccountGateResult;

  const AccountGateResult._();

  static const List<_i3.SmithySerializer<AccountGateResult>> serializers = [
    AccountGateResultAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccountGateResultBuilder b) {}

  /// The status of the account gate function.
  ///
  /// *   `SUCCEEDED`: The account gate function has determined that the account and Region passes any requirements for a stack set operation to occur. CloudFormation proceeds with the stack operation in that account and Region.
  ///
  /// *   `FAILED`: The account gate function has determined that the account and Region doesn't meet the requirements for a stack set operation to occur. CloudFormation cancels the stack set operation in that account and Region, and sets the stack set operation result status for that account and Region to `FAILED`.
  ///
  /// *   `SKIPPED`: CloudFormation has skipped calling the account gate function for this account and Region, for one of the following reasons:
  ///
  ///     *   An account gate function hasn't been specified for the account and Region. CloudFormation proceeds with the stack set operation in this account and Region.
  ///
  ///     *   The `AWSCloudFormationStackSetExecutionRole` of the stack set administration account lacks permissions to invoke the function. CloudFormation proceeds with the stack set operation in this account and Region.
  ///
  ///     *   Either no action is necessary, or no action is possible, on the stack. CloudFormation skips the stack set operation in this account and Region.
  _i2.AccountGateStatus? get status;

  /// The reason for the account gate status assigned to this account and Region for the stack set operation.
  String? get statusReason;
  @override
  List<Object?> get props => [
        status,
        statusReason,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccountGateResult')
      ..add(
        'status',
        status,
      )
      ..add(
        'statusReason',
        statusReason,
      );
    return helper.toString();
  }
}

class AccountGateResultAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<AccountGateResult> {
  const AccountGateResultAwsQuerySerializer() : super('AccountGateResult');

  @override
  Iterable<Type> get types => const [
        AccountGateResult,
        _$AccountGateResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AccountGateResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountGateResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AccountGateStatus),
          ) as _i2.AccountGateStatus);
        case 'StatusReason':
          result.statusReason = (serializers.deserialize(
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
    AccountGateResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AccountGateResultResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final AccountGateResult(:status, :statusReason) = object;
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i2.AccountGateStatus),
        ));
    }
    if (statusReason != null) {
      result$
        ..add(const _i3.XmlElementName('StatusReason'))
        ..add(serializers.serialize(
          statusReason,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
