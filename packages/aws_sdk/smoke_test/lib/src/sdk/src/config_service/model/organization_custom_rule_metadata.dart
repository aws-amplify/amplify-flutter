// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.organization_custom_rule_metadata; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/maximum_execution_frequency.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_trigger_type.dart'
    as _i2;

part 'organization_custom_rule_metadata.g.dart';

/// organization custom rule metadata such as resource type, resource ID of Amazon Web Services resource, Lambda function ARN, and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
abstract class OrganizationCustomRuleMetadata
    with
        _i1.AWSEquatable<OrganizationCustomRuleMetadata>
    implements
        Built<OrganizationCustomRuleMetadata,
            OrganizationCustomRuleMetadataBuilder> {
  /// organization custom rule metadata such as resource type, resource ID of Amazon Web Services resource, Lambda function ARN, and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
  factory OrganizationCustomRuleMetadata({
    String? description,
    required String lambdaFunctionArn,
    required List<_i2.OrganizationConfigRuleTriggerType>
        organizationConfigRuleTriggerTypes,
    String? inputParameters,
    _i3.MaximumExecutionFrequency? maximumExecutionFrequency,
    List<String>? resourceTypesScope,
    String? resourceIdScope,
    String? tagKeyScope,
    String? tagValueScope,
  }) {
    return _$OrganizationCustomRuleMetadata._(
      description: description,
      lambdaFunctionArn: lambdaFunctionArn,
      organizationConfigRuleTriggerTypes:
          _i4.BuiltList(organizationConfigRuleTriggerTypes),
      inputParameters: inputParameters,
      maximumExecutionFrequency: maximumExecutionFrequency,
      resourceTypesScope:
          resourceTypesScope == null ? null : _i4.BuiltList(resourceTypesScope),
      resourceIdScope: resourceIdScope,
      tagKeyScope: tagKeyScope,
      tagValueScope: tagValueScope,
    );
  }

  /// organization custom rule metadata such as resource type, resource ID of Amazon Web Services resource, Lambda function ARN, and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
  factory OrganizationCustomRuleMetadata.build(
          [void Function(OrganizationCustomRuleMetadataBuilder) updates]) =
      _$OrganizationCustomRuleMetadata;

  const OrganizationCustomRuleMetadata._();

  static const List<_i5.SmithySerializer<OrganizationCustomRuleMetadata>>
      serializers = [OrganizationCustomRuleMetadataAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationCustomRuleMetadataBuilder b) {}

  /// The description that you provide for your organization Config rule.
  String? get description;

  /// The lambda function ARN.
  String get lambdaFunctionArn;

  /// The type of notification that triggers Config to run an evaluation for a rule. You can specify the following notification types:
  ///
  /// *   `ConfigurationItemChangeNotification` \- Triggers an evaluation when Config delivers a configuration item as a result of a resource change.
  ///
  /// *   `OversizedConfigurationItemChangeNotification` \- Triggers an evaluation when Config delivers an oversized configuration item. Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.
  ///
  /// *   `ScheduledNotification` \- Triggers a periodic evaluation at the frequency specified for `MaximumExecutionFrequency`.
  _i4.BuiltList<_i2.OrganizationConfigRuleTriggerType>
      get organizationConfigRuleTriggerTypes;

  /// A string, in JSON format, that is passed to your organization Config rule Lambda function.
  String? get inputParameters;

  /// The maximum frequency with which Config runs evaluations for a rule. Your custom rule is triggered when Config delivers the configuration snapshot. For more information, see ConfigSnapshotDeliveryProperties.
  ///
  /// By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the `MaximumExecutionFrequency` parameter.
  _i3.MaximumExecutionFrequency? get maximumExecutionFrequency;

  /// The type of the Amazon Web Services resource that was evaluated.
  _i4.BuiltList<String>? get resourceTypesScope;

  /// The ID of the Amazon Web Services resource that was evaluated.
  String? get resourceIdScope;

  /// One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
  String? get tagKeyScope;

  /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
  String? get tagValueScope;
  @override
  List<Object?> get props => [
        description,
        lambdaFunctionArn,
        organizationConfigRuleTriggerTypes,
        inputParameters,
        maximumExecutionFrequency,
        resourceTypesScope,
        resourceIdScope,
        tagKeyScope,
        tagValueScope,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OrganizationCustomRuleMetadata')
      ..add(
        'description',
        description,
      )
      ..add(
        'lambdaFunctionArn',
        lambdaFunctionArn,
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
      );
    return helper.toString();
  }
}

class OrganizationCustomRuleMetadataAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<OrganizationCustomRuleMetadata> {
  const OrganizationCustomRuleMetadataAwsJson11Serializer()
      : super('OrganizationCustomRuleMetadata');

  @override
  Iterable<Type> get types => const [
        OrganizationCustomRuleMetadata,
        _$OrganizationCustomRuleMetadata,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationCustomRuleMetadata deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationCustomRuleMetadataBuilder();
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
        case 'LambdaFunctionArn':
          result.lambdaFunctionArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OrganizationConfigRuleTriggerTypes':
          result.organizationConfigRuleTriggerTypes
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.OrganizationConfigRuleTriggerType)],
            ),
          ) as _i4.BuiltList<_i2.OrganizationConfigRuleTriggerType>));
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OrganizationCustomRuleMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OrganizationCustomRuleMetadata(
      :description,
      :lambdaFunctionArn,
      :organizationConfigRuleTriggerTypes,
      :inputParameters,
      :maximumExecutionFrequency,
      :resourceTypesScope,
      :resourceIdScope,
      :tagKeyScope,
      :tagValueScope
    ) = object;
    result$.addAll([
      'LambdaFunctionArn',
      serializers.serialize(
        lambdaFunctionArn,
        specifiedType: const FullType(String),
      ),
      'OrganizationConfigRuleTriggerTypes',
      serializers.serialize(
        organizationConfigRuleTriggerTypes,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i2.OrganizationConfigRuleTriggerType)],
        ),
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
    return result$;
  }
}
