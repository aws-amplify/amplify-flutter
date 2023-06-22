// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String organizationConfigRuleName,
    required _i2.OrganizationRuleStatus organizationRuleStatus,
    String? errorCode,
    String? errorMessage,
    DateTime? lastUpdateTime,
  }) {
    return _$OrganizationConfigRuleStatus._(
      organizationConfigRuleName: organizationConfigRuleName,
      organizationRuleStatus: organizationRuleStatus,
      errorCode: errorCode,
      errorMessage: errorMessage,
      lastUpdateTime: lastUpdateTime,
    );
  }

  /// Returns the status for an organization Config rule in an organization.
  factory OrganizationConfigRuleStatus.build(
          [void Function(OrganizationConfigRuleStatusBuilder) updates]) =
      _$OrganizationConfigRuleStatus;

  const OrganizationConfigRuleStatus._();

  static const List<_i3.SmithySerializer<OrganizationConfigRuleStatus>>
      serializers = [OrganizationConfigRuleStatusAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationConfigRuleStatusBuilder b) {}

  /// The name that you assign to organization Config rule.
  String get organizationConfigRuleName;

  /// Indicates deployment status of an organization Config rule. When management account calls PutOrganizationConfigRule action for the first time, Config rule status is created in all the member accounts. When management account calls PutOrganizationConfigRule action for the second time, Config rule status is updated in all the member accounts. Additionally, Config rule status is updated when one or more member accounts join or leave an organization. Config rule status is deleted when the management account deletes OrganizationConfigRule in all the member accounts and disables service access for `config-multiaccountsetup.amazonaws.com`.
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

  /// An error code that is returned when organization Config rule creation or deletion has failed.
  String? get errorCode;

  /// An error message indicating that organization Config rule creation or deletion failed due to an error.
  String? get errorMessage;

  /// The timestamp of the last update.
  DateTime? get lastUpdateTime;
  @override
  List<Object?> get props => [
        organizationConfigRuleName,
        organizationRuleStatus,
        errorCode,
        errorMessage,
        lastUpdateTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OrganizationConfigRuleStatus')
      ..add(
        'organizationConfigRuleName',
        organizationConfigRuleName,
      )
      ..add(
        'organizationRuleStatus',
        organizationRuleStatus,
      )
      ..add(
        'errorCode',
        errorCode,
      )
      ..add(
        'errorMessage',
        errorMessage,
      )
      ..add(
        'lastUpdateTime',
        lastUpdateTime,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConfigRuleName':
          result.organizationConfigRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OrganizationRuleStatus':
          result.organizationRuleStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.OrganizationRuleStatus),
          ) as _i2.OrganizationRuleStatus);
        case 'ErrorCode':
          result.errorCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ErrorMessage':
          result.errorMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastUpdateTime':
          result.lastUpdateTime = (serializers.deserialize(
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
    OrganizationConfigRuleStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OrganizationConfigRuleStatus(
      :organizationConfigRuleName,
      :organizationRuleStatus,
      :errorCode,
      :errorMessage,
      :lastUpdateTime
    ) = object;
    result$.addAll([
      'OrganizationConfigRuleName',
      serializers.serialize(
        organizationConfigRuleName,
        specifiedType: const FullType(String),
      ),
      'OrganizationRuleStatus',
      serializers.serialize(
        organizationRuleStatus,
        specifiedType: const FullType(_i2.OrganizationRuleStatus),
      ),
    ]);
    if (errorCode != null) {
      result$
        ..add('ErrorCode')
        ..add(serializers.serialize(
          errorCode,
          specifiedType: const FullType(String),
        ));
    }
    if (errorMessage != null) {
      result$
        ..add('ErrorMessage')
        ..add(serializers.serialize(
          errorMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (lastUpdateTime != null) {
      result$
        ..add('LastUpdateTime')
        ..add(serializers.serialize(
          lastUpdateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
