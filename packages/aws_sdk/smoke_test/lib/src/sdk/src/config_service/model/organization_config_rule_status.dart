// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.organization_config_rule_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_rule_status.dart'
    as _i2;

part 'organization_config_rule_status.g.dart';

/// Returns the status for an organization Config rule in an organization.
abstract class OrganizationConfigRuleStatus
    with
        _i1.AWSEquatable<OrganizationConfigRuleStatus>
    implements
        Built<OrganizationConfigRuleStatus,
            OrganizationConfigRuleStatusBuilder> {
  /// Returns the status for an organization Config rule in an organization.
  factory OrganizationConfigRuleStatus({
    String? errorCode,
    String? errorMessage,
    DateTime? lastUpdateTime,
    required String organizationConfigRuleName,
    required _i2.OrganizationRuleStatus organizationRuleStatus,
  }) {
    return _$OrganizationConfigRuleStatus._(
      errorCode: errorCode,
      errorMessage: errorMessage,
      lastUpdateTime: lastUpdateTime,
      organizationConfigRuleName: organizationConfigRuleName,
      organizationRuleStatus: organizationRuleStatus,
    );
  }

  /// Returns the status for an organization Config rule in an organization.
  factory OrganizationConfigRuleStatus.build(
          [void Function(OrganizationConfigRuleStatusBuilder) updates]) =
      _$OrganizationConfigRuleStatus;

  const OrganizationConfigRuleStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    OrganizationConfigRuleStatusAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationConfigRuleStatusBuilder b) {}

  /// An error code that is returned when organization Config rule creation or deletion has failed.
  String? get errorCode;

  /// An error message indicating that organization Config rule creation or deletion failed due to an error.
  String? get errorMessage;

  /// The timestamp of the last update.
  DateTime? get lastUpdateTime;

  /// The name that you assign to organization Config rule.
  String get organizationConfigRuleName;

  /// Indicates deployment status of an organization Config rule. When master account calls PutOrganizationConfigRule action for the first time, Config rule status is created in all the member accounts. When master account calls PutOrganizationConfigRule action for the second time, Config rule status is updated in all the member accounts. Additionally, Config rule status is updated when one or more member accounts join or leave an organization. Config rule status is deleted when the master account deletes OrganizationConfigRule in all the member accounts and disables service access for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// Config sets the state of the rule to:
  ///
  /// *   `CREATE_SUCCESSFUL` when an organization Config rule has been successfully created in all the member accounts.
  ///
  /// *   `CREATE\_IN\_PROGRESS` when an organization Config rule creation is in progress.
  ///
  /// *   `CREATE_FAILED` when an organization Config rule creation failed in one or more member accounts within that organization.
  ///
  /// *   `DELETE_FAILED` when an organization Config rule deletion failed in one or more member accounts within that organization.
  ///
  /// *   `DELETE\_IN\_PROGRESS` when an organization Config rule deletion is in progress.
  ///
  /// *   `DELETE_SUCCESSFUL` when an organization Config rule has been successfully deleted from all the member accounts.
  ///
  /// *   `UPDATE_SUCCESSFUL` when an organization Config rule has been successfully updated in all the member accounts.
  ///
  /// *   `UPDATE\_IN\_PROGRESS` when an organization Config rule update is in progress.
  ///
  /// *   `UPDATE_FAILED` when an organization Config rule update failed in one or more member accounts within that organization.
  _i2.OrganizationRuleStatus get organizationRuleStatus;
  @override
  List<Object?> get props => [
        errorCode,
        errorMessage,
        lastUpdateTime,
        organizationConfigRuleName,
        organizationRuleStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OrganizationConfigRuleStatus');
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
      'organizationConfigRuleName',
      organizationConfigRuleName,
    );
    helper.add(
      'organizationRuleStatus',
      organizationRuleStatus,
    );
    return helper.toString();
  }
}

class OrganizationConfigRuleStatusAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<OrganizationConfigRuleStatus> {
  const OrganizationConfigRuleStatusAwsJson11Serializer()
      : super('OrganizationConfigRuleStatus');

  @override
  Iterable<Type> get types => const [
        OrganizationConfigRuleStatus,
        _$OrganizationConfigRuleStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationConfigRuleStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationConfigRuleStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
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
        case 'OrganizationConfigRuleName':
          result.organizationConfigRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'OrganizationRuleStatus':
          result.organizationRuleStatus = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.OrganizationRuleStatus),
          ) as _i2.OrganizationRuleStatus);
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
    final payload = (object as OrganizationConfigRuleStatus);
    final result = <Object?>[
      'OrganizationConfigRuleName',
      serializers.serialize(
        payload.organizationConfigRuleName,
        specifiedType: const FullType(String),
      ),
      'OrganizationRuleStatus',
      serializers.serialize(
        payload.organizationRuleStatus,
        specifiedType: const FullType(_i2.OrganizationRuleStatus),
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
