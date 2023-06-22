// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.organization_custom_policy_rule_metadata; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/maximum_execution_frequency.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_trigger_type_no_sn.dart'
    as _i2;

part 'organization_custom_policy_rule_metadata.g.dart';

/// An object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have debug logging enabled, and other custom rule metadata, such as resource type, resource ID of Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.
abstract class OrganizationCustomPolicyRuleMetadata
    with
        _i1.AWSEquatable<OrganizationCustomPolicyRuleMetadata>
    implements
        Built<OrganizationCustomPolicyRuleMetadata,
            OrganizationCustomPolicyRuleMetadataBuilder> {
  /// An object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have debug logging enabled, and other custom rule metadata, such as resource type, resource ID of Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.
  factory OrganizationCustomPolicyRuleMetadata({
    String? description,
    List<_i2.OrganizationConfigRuleTriggerTypeNoSn>?
        organizationConfigRuleTriggerTypes,
    String? inputParameters,
    _i3.MaximumExecutionFrequency? maximumExecutionFrequency,
    List<String>? resourceTypesScope,
    String? resourceIdScope,
    String? tagKeyScope,
    String? tagValueScope,
    required String policyRuntime,
    required String policyText,
    List<String>? debugLogDeliveryAccounts,
  }) {
    return _$OrganizationCustomPolicyRuleMetadata._(
      description: description,
      organizationConfigRuleTriggerTypes:
          organizationConfigRuleTriggerTypes == null
              ? null
              : _i4.BuiltList(organizationConfigRuleTriggerTypes),
      inputParameters: inputParameters,
      maximumExecutionFrequency: maximumExecutionFrequency,
      resourceTypesScope:
          resourceTypesScope == null ? null : _i4.BuiltList(resourceTypesScope),
      resourceIdScope: resourceIdScope,
      tagKeyScope: tagKeyScope,
      tagValueScope: tagValueScope,
      policyRuntime: policyRuntime,
      policyText: policyText,
      debugLogDeliveryAccounts: debugLogDeliveryAccounts == null
          ? null
          : _i4.BuiltList(debugLogDeliveryAccounts),
    );
  }

  /// An object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have debug logging enabled, and other custom rule metadata, such as resource type, resource ID of Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.
  factory OrganizationCustomPolicyRuleMetadata.build(
      [void Function(OrganizationCustomPolicyRuleMetadataBuilder)
          updates]) = _$OrganizationCustomPolicyRuleMetadata;

  const OrganizationCustomPolicyRuleMetadata._();

  static const List<_i5.SmithySerializer<OrganizationCustomPolicyRuleMetadata>>
      serializers = [OrganizationCustomPolicyRuleMetadataAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationCustomPolicyRuleMetadataBuilder b) {}

  /// The description that you provide for your organization Config Custom Policy rule.
  String? get description;

  /// The type of notification that initiates Config to run an evaluation for a rule. For Config Custom Policy rules, Config supports change-initiated notification types:
  ///
  /// *   `ConfigurationItemChangeNotification` \- Initiates an evaluation when Config delivers a configuration item as a result of a resource change.
  ///
  /// *   `OversizedConfigurationItemChangeNotification` \- Initiates an evaluation when Config delivers an oversized configuration item. Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.
  _i4.BuiltList<_i2.OrganizationConfigRuleTriggerTypeNoSn>?
      get organizationConfigRuleTriggerTypes;

  /// A string, in JSON format, that is passed to your organization Config Custom Policy rule.
  String? get inputParameters;

  /// The maximum frequency with which Config runs evaluations for a rule. Your Config Custom Policy rule is triggered when Config delivers the configuration snapshot. For more information, see ConfigSnapshotDeliveryProperties.
  _i3.MaximumExecutionFrequency? get maximumExecutionFrequency;

  /// The type of the Amazon Web Services resource that was evaluated.
  _i4.BuiltList<String>? get resourceTypesScope;

  /// The ID of the Amazon Web Services resource that was evaluated.
  String? get resourceIdScope;

  /// One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
  String? get tagKeyScope;

  /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
  String? get tagValueScope;

  /// The runtime system for your organization Config Custom Policy rules. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the [Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard).
  String get policyRuntime;

  /// The policy definition containing the logic for your organization Config Custom Policy rule.
  String get policyText;

  /// A list of accounts that you can enable debug logging for your organization Config Custom Policy rule. List is null when debug logging is enabled for all accounts.
  _i4.BuiltList<String>? get debugLogDeliveryAccounts;
  @override
  List<Object?> get props => [
        description,
        organizationConfigRuleTriggerTypes,
        inputParameters,
        maximumExecutionFrequency,
        resourceTypesScope,
        resourceIdScope,
        tagKeyScope,
        tagValueScope,
        policyRuntime,
        policyText,
        debugLogDeliveryAccounts,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('OrganizationCustomPolicyRuleMetadata')
          ..add(
            'description',
            description,
          )
          ..add(
            'organizationConfigRuleTriggerTypes',
            organizationConfigRuleTriggerTypes,
          )
          ..add(
            'inputParameters',
            inputParameters,
          )
          ..add(
            'maximumExecutionFrequency',
            maximumExecutionFrequency,
          )
          ..add(
            'resourceTypesScope',
            resourceTypesScope,
          )
          ..add(
            'resourceIdScope',
            resourceIdScope,
          )
          ..add(
            'tagKeyScope',
            tagKeyScope,
          )
          ..add(
            'tagValueScope',
            tagValueScope,
          )
          ..add(
            'policyRuntime',
            policyRuntime,
          )
          ..add(
            'policyText',
            policyText,
          )
          ..add(
            'debugLogDeliveryAccounts',
            debugLogDeliveryAccounts,
          );
    return helper.toString();
  }
}

class OrganizationCustomPolicyRuleMetadataAwsJson11Serializer extends _i5
    .StructuredSmithySerializer<OrganizationCustomPolicyRuleMetadata> {
  const OrganizationCustomPolicyRuleMetadataAwsJson11Serializer()
      : super('OrganizationCustomPolicyRuleMetadata');

  @override
  Iterable<Type> get types => const [
        OrganizationCustomPolicyRuleMetadata,
        _$OrganizationCustomPolicyRuleMetadata,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationCustomPolicyRuleMetadata deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationCustomPolicyRuleMetadataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OrganizationConfigRuleTriggerTypes':
          result.organizationConfigRuleTriggerTypes
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.OrganizationConfigRuleTriggerTypeNoSn)],
            ),
          ) as _i4.BuiltList<_i2.OrganizationConfigRuleTriggerTypeNoSn>));
        case 'InputParameters':
          result.inputParameters = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaximumExecutionFrequency':
          result.maximumExecutionFrequency = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.MaximumExecutionFrequency),
          ) as _i3.MaximumExecutionFrequency);
        case 'ResourceTypesScope':
          result.resourceTypesScope.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'ResourceIdScope':
          result.resourceIdScope = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagKeyScope':
          result.tagKeyScope = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagValueScope':
          result.tagValueScope = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyRuntime':
          result.policyRuntime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyText':
          result.policyText = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DebugLogDeliveryAccounts':
          result.debugLogDeliveryAccounts.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OrganizationCustomPolicyRuleMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OrganizationCustomPolicyRuleMetadata(
      :description,
      :organizationConfigRuleTriggerTypes,
      :inputParameters,
      :maximumExecutionFrequency,
      :resourceTypesScope,
      :resourceIdScope,
      :tagKeyScope,
      :tagValueScope,
      :policyRuntime,
      :policyText,
      :debugLogDeliveryAccounts
    ) = object;
    result$.addAll([
      'PolicyRuntime',
      serializers.serialize(
        policyRuntime,
        specifiedType: const FullType(String),
      ),
      'PolicyText',
      serializers.serialize(
        policyText,
        specifiedType: const FullType(String),
      ),
    ]);
    if (description != null) {
      result$
        ..add('Description')
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (organizationConfigRuleTriggerTypes != null) {
      result$
        ..add('OrganizationConfigRuleTriggerTypes')
        ..add(serializers.serialize(
          organizationConfigRuleTriggerTypes,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.OrganizationConfigRuleTriggerTypeNoSn)],
          ),
        ));
    }
    if (inputParameters != null) {
      result$
        ..add('InputParameters')
        ..add(serializers.serialize(
          inputParameters,
          specifiedType: const FullType(String),
        ));
    }
    if (maximumExecutionFrequency != null) {
      result$
        ..add('MaximumExecutionFrequency')
        ..add(serializers.serialize(
          maximumExecutionFrequency,
          specifiedType: const FullType(_i3.MaximumExecutionFrequency),
        ));
    }
    if (resourceTypesScope != null) {
      result$
        ..add('ResourceTypesScope')
        ..add(serializers.serialize(
          resourceTypesScope,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (resourceIdScope != null) {
      result$
        ..add('ResourceIdScope')
        ..add(serializers.serialize(
          resourceIdScope,
          specifiedType: const FullType(String),
        ));
    }
    if (tagKeyScope != null) {
      result$
        ..add('TagKeyScope')
        ..add(serializers.serialize(
          tagKeyScope,
          specifiedType: const FullType(String),
        ));
    }
    if (tagValueScope != null) {
      result$
        ..add('TagValueScope')
        ..add(serializers.serialize(
          tagValueScope,
          specifiedType: const FullType(String),
        ));
    }
    if (debugLogDeliveryAccounts != null) {
      result$
        ..add('DebugLogDeliveryAccounts')
        ..add(serializers.serialize(
          debugLogDeliveryAccounts,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
