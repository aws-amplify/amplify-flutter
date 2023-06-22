// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.organization_config_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_custom_policy_rule_metadata_no_policy.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_custom_rule_metadata.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_managed_rule_metadata.dart'
    as _i2;

part 'organization_config_rule.g.dart';

/// An organization Config rule that has information about Config rules that Config creates in member accounts.
abstract class OrganizationConfigRule
    with _i1.AWSEquatable<OrganizationConfigRule>
    implements Built<OrganizationConfigRule, OrganizationConfigRuleBuilder> {
  /// An organization Config rule that has information about Config rules that Config creates in member accounts.
  factory OrganizationConfigRule({
    required String organizationConfigRuleName,
    required String organizationConfigRuleArn,
    _i2.OrganizationManagedRuleMetadata? organizationManagedRuleMetadata,
    _i3.OrganizationCustomRuleMetadata? organizationCustomRuleMetadata,
    List<String>? excludedAccounts,
    DateTime? lastUpdateTime,
    _i4.OrganizationCustomPolicyRuleMetadataNoPolicy?
        organizationCustomPolicyRuleMetadata,
  }) {
    return _$OrganizationConfigRule._(
      organizationConfigRuleName: organizationConfigRuleName,
      organizationConfigRuleArn: organizationConfigRuleArn,
      organizationManagedRuleMetadata: organizationManagedRuleMetadata,
      organizationCustomRuleMetadata: organizationCustomRuleMetadata,
      excludedAccounts:
          excludedAccounts == null ? null : _i5.BuiltList(excludedAccounts),
      lastUpdateTime: lastUpdateTime,
      organizationCustomPolicyRuleMetadata:
          organizationCustomPolicyRuleMetadata,
    );
  }

  /// An organization Config rule that has information about Config rules that Config creates in member accounts.
  factory OrganizationConfigRule.build(
          [void Function(OrganizationConfigRuleBuilder) updates]) =
      _$OrganizationConfigRule;

  const OrganizationConfigRule._();

  static const List<_i6.SmithySerializer<OrganizationConfigRule>> serializers =
      [OrganizationConfigRuleAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationConfigRuleBuilder b) {}

  /// The name that you assign to organization Config rule.
  String get organizationConfigRuleName;

  /// Amazon Resource Name (ARN) of organization Config rule.
  String get organizationConfigRuleArn;

  /// An `OrganizationManagedRuleMetadata` object.
  _i2.OrganizationManagedRuleMetadata? get organizationManagedRuleMetadata;

  /// An `OrganizationCustomRuleMetadata` object.
  _i3.OrganizationCustomRuleMetadata? get organizationCustomRuleMetadata;

  /// A comma-separated list of accounts excluded from organization Config rule.
  _i5.BuiltList<String>? get excludedAccounts;

  /// The timestamp of the last update.
  DateTime? get lastUpdateTime;

  /// An object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have debug logging enabled, and other custom rule metadata, such as resource type, resource ID of Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.
  _i4.OrganizationCustomPolicyRuleMetadataNoPolicy?
      get organizationCustomPolicyRuleMetadata;
  @override
  List<Object?> get props => [
        organizationConfigRuleName,
        organizationConfigRuleArn,
        organizationManagedRuleMetadata,
        organizationCustomRuleMetadata,
        excludedAccounts,
        lastUpdateTime,
        organizationCustomPolicyRuleMetadata,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OrganizationConfigRule')
      ..add(
        'organizationConfigRuleName',
        organizationConfigRuleName,
      )
      ..add(
        'organizationConfigRuleArn',
        organizationConfigRuleArn,
      )
      ..add(
        'organizationManagedRuleMetadata',
        organizationManagedRuleMetadata,
      )
      ..add(
        'organizationCustomRuleMetadata',
        organizationCustomRuleMetadata,
      )
      ..add(
        'excludedAccounts',
        excludedAccounts,
      )
      ..add(
        'lastUpdateTime',
        lastUpdateTime,
      )
      ..add(
        'organizationCustomPolicyRuleMetadata',
        organizationCustomPolicyRuleMetadata,
      );
    return helper.toString();
  }
}

class OrganizationConfigRuleAwsJson11Serializer
    extends _i6.StructuredSmithySerializer<OrganizationConfigRule> {
  const OrganizationConfigRuleAwsJson11Serializer()
      : super('OrganizationConfigRule');

  @override
  Iterable<Type> get types => const [
        OrganizationConfigRule,
        _$OrganizationConfigRule,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationConfigRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationConfigRuleBuilder();
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
        case 'OrganizationConfigRuleArn':
          result.organizationConfigRuleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OrganizationManagedRuleMetadata':
          result.organizationManagedRuleMetadata
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.OrganizationManagedRuleMetadata),
          ) as _i2.OrganizationManagedRuleMetadata));
        case 'OrganizationCustomRuleMetadata':
          result.organizationCustomRuleMetadata
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.OrganizationCustomRuleMetadata),
          ) as _i3.OrganizationCustomRuleMetadata));
        case 'ExcludedAccounts':
          result.excludedAccounts.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'LastUpdateTime':
          result.lastUpdateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'OrganizationCustomPolicyRuleMetadata':
          result.organizationCustomPolicyRuleMetadata
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
                _i4.OrganizationCustomPolicyRuleMetadataNoPolicy),
          ) as _i4.OrganizationCustomPolicyRuleMetadataNoPolicy));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OrganizationConfigRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OrganizationConfigRule(
      :organizationConfigRuleName,
      :organizationConfigRuleArn,
      :organizationManagedRuleMetadata,
      :organizationCustomRuleMetadata,
      :excludedAccounts,
      :lastUpdateTime,
      :organizationCustomPolicyRuleMetadata
    ) = object;
    result$.addAll([
      'OrganizationConfigRuleName',
      serializers.serialize(
        organizationConfigRuleName,
        specifiedType: const FullType(String),
      ),
      'OrganizationConfigRuleArn',
      serializers.serialize(
        organizationConfigRuleArn,
        specifiedType: const FullType(String),
      ),
    ]);
    if (organizationManagedRuleMetadata != null) {
      result$
        ..add('OrganizationManagedRuleMetadata')
        ..add(serializers.serialize(
          organizationManagedRuleMetadata,
          specifiedType: const FullType(_i2.OrganizationManagedRuleMetadata),
        ));
    }
    if (organizationCustomRuleMetadata != null) {
      result$
        ..add('OrganizationCustomRuleMetadata')
        ..add(serializers.serialize(
          organizationCustomRuleMetadata,
          specifiedType: const FullType(_i3.OrganizationCustomRuleMetadata),
        ));
    }
    if (excludedAccounts != null) {
      result$
        ..add('ExcludedAccounts')
        ..add(serializers.serialize(
          excludedAccounts,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(String)],
          ),
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
    if (organizationCustomPolicyRuleMetadata != null) {
      result$
        ..add('OrganizationCustomPolicyRuleMetadata')
        ..add(serializers.serialize(
          organizationCustomPolicyRuleMetadata,
          specifiedType:
              const FullType(_i4.OrganizationCustomPolicyRuleMetadataNoPolicy),
        ));
    }
    return result$;
  }
}
