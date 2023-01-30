// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.member_account_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/member_account_rule_status.dart'
    as _i2;

part 'member_account_status.g.dart';

/// Organization Config rule creation or deletion status in each member account. This includes the name of the rule, the status, error code and error message when the rule creation or deletion failed.
abstract class MemberAccountStatus
    with _i1.AWSEquatable<MemberAccountStatus>
    implements Built<MemberAccountStatus, MemberAccountStatusBuilder> {
  /// Organization Config rule creation or deletion status in each member account. This includes the name of the rule, the status, error code and error message when the rule creation or deletion failed.
  factory MemberAccountStatus({
    required String accountId,
    required String configRuleName,
    String? errorCode,
    String? errorMessage,
    DateTime? lastUpdateTime,
    required _i2.MemberAccountRuleStatus memberAccountRuleStatus,
  }) {
    return _$MemberAccountStatus._(
      accountId: accountId,
      configRuleName: configRuleName,
      errorCode: errorCode,
      errorMessage: errorMessage,
      lastUpdateTime: lastUpdateTime,
      memberAccountRuleStatus: memberAccountRuleStatus,
    );
  }

  /// Organization Config rule creation or deletion status in each member account. This includes the name of the rule, the status, error code and error message when the rule creation or deletion failed.
  factory MemberAccountStatus.build(
          [void Function(MemberAccountStatusBuilder) updates]) =
      _$MemberAccountStatus;

  const MemberAccountStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    MemberAccountStatusAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MemberAccountStatusBuilder b) {}

  /// The 12-digit account ID of a member account.
  String get accountId;

  /// The name of Config rule deployed in the member account.
  String get configRuleName;

  /// An error code that is returned when Config rule creation or deletion failed in the member account.
  String? get errorCode;

  /// An error message indicating that Config rule account creation or deletion has failed due to an error in the member account.
  String? get errorMessage;

  /// The timestamp of the last status update.
  DateTime? get lastUpdateTime;

  /// Indicates deployment status for Config rule in the member account. When master account calls `PutOrganizationConfigRule` action for the first time, Config rule status is created in the member account. When master account calls `PutOrganizationConfigRule` action for the second time, Config rule status is updated in the member account. Config rule status is deleted when the master account deletes `OrganizationConfigRule` and disables service access for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// Config sets the state of the rule to:
  ///
  /// *   `CREATE_SUCCESSFUL` when Config rule has been created in the member account.
  ///
  /// *   `CREATE\_IN\_PROGRESS` when Config rule is being created in the member account.
  ///
  /// *   `CREATE_FAILED` when Config rule creation has failed in the member account.
  ///
  /// *   `DELETE_FAILED` when Config rule deletion has failed in the member account.
  ///
  /// *   `DELETE\_IN\_PROGRESS` when Config rule is being deleted in the member account.
  ///
  /// *   `DELETE_SUCCESSFUL` when Config rule has been deleted in the member account.
  ///
  /// *   `UPDATE_SUCCESSFUL` when Config rule has been updated in the member account.
  ///
  /// *   `UPDATE\_IN\_PROGRESS` when Config rule is being updated in the member account.
  ///
  /// *   `UPDATE_FAILED` when Config rule deletion has failed in the member account.
  _i2.MemberAccountRuleStatus get memberAccountRuleStatus;
  @override
  List<Object?> get props => [
        accountId,
        configRuleName,
        errorCode,
        errorMessage,
        lastUpdateTime,
        memberAccountRuleStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MemberAccountStatus');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'errorCode',
      errorCode,
    );
    helper.add(
      'errorMessage',
      errorMessage,
    );
    helper.add(
      'lastUpdateTime',
      lastUpdateTime,
    );
    helper.add(
      'memberAccountRuleStatus',
      memberAccountRuleStatus,
    );
    return helper.toString();
  }
}

class MemberAccountStatusAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<MemberAccountStatus> {
  const MemberAccountStatusAwsJson11Serializer() : super('MemberAccountStatus');

  @override
  Iterable<Type> get types => const [
        MemberAccountStatus,
        _$MemberAccountStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  MemberAccountStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemberAccountStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccountId':
          result.accountId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ErrorCode':
          if (value != null) {
            result.errorCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ErrorMessage':
          if (value != null) {
            result.errorMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastUpdateTime':
          if (value != null) {
            result.lastUpdateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'MemberAccountRuleStatus':
          result.memberAccountRuleStatus = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.MemberAccountRuleStatus),
          ) as _i2.MemberAccountRuleStatus);
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
    final payload = (object as MemberAccountStatus);
    final result = <Object?>[
      'AccountId',
      serializers.serialize(
        payload.accountId,
        specifiedType: const FullType(String),
      ),
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
      'MemberAccountRuleStatus',
      serializers.serialize(
        payload.memberAccountRuleStatus,
        specifiedType: const FullType(_i2.MemberAccountRuleStatus),
      ),
    ];
    if (payload.errorCode != null) {
      result
        ..add('ErrorCode')
        ..add(serializers.serialize(
          payload.errorCode!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.errorMessage != null) {
      result
        ..add('ErrorMessage')
        ..add(serializers.serialize(
          payload.errorMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastUpdateTime != null) {
      result
        ..add('LastUpdateTime')
        ..add(serializers.serialize(
          payload.lastUpdateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
