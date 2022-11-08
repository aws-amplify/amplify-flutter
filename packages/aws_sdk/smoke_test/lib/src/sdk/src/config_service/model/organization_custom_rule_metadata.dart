// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.organization_custom_rule_metadata; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/maximum_execution_frequency.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_trigger_type.dart'
    as _i3;

part 'organization_custom_rule_metadata.g.dart';

/// An object that specifies organization custom rule metadata such as resource type, resource ID of Amazon Web Services resource, Lambda function ARN, and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
abstract class OrganizationCustomRuleMetadata
    with
        _i1.AWSEquatable<OrganizationCustomRuleMetadata>
    implements
        Built<OrganizationCustomRuleMetadata,
            OrganizationCustomRuleMetadataBuilder> {
  /// An object that specifies organization custom rule metadata such as resource type, resource ID of Amazon Web Services resource, Lambda function ARN, and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
  factory OrganizationCustomRuleMetadata({
    String? description,
    String? inputParameters,
    required String lambdaFunctionArn,
    _i2.MaximumExecutionFrequency? maximumExecutionFrequency,
    required List<_i3.OrganizationConfigRuleTriggerType>
        organizationConfigRuleTriggerTypes,
    String? resourceIdScope,
    List<String>? resourceTypesScope,
    String? tagKeyScope,
    String? tagValueScope,
  }) {
    return _$OrganizationCustomRuleMetadata._(
      description: description,
      inputParameters: inputParameters,
      lambdaFunctionArn: lambdaFunctionArn,
      maximumExecutionFrequency: maximumExecutionFrequency,
      organizationConfigRuleTriggerTypes:
          _i4.BuiltList(organizationConfigRuleTriggerTypes),
      resourceIdScope: resourceIdScope,
      resourceTypesScope:
          resourceTypesScope == null ? null : _i4.BuiltList(resourceTypesScope),
      tagKeyScope: tagKeyScope,
      tagValueScope: tagValueScope,
    );
  }

  /// An object that specifies organization custom rule metadata such as resource type, resource ID of Amazon Web Services resource, Lambda function ARN, and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
  factory OrganizationCustomRuleMetadata.build(
          [void Function(OrganizationCustomRuleMetadataBuilder) updates]) =
      _$OrganizationCustomRuleMetadata;

  const OrganizationCustomRuleMetadata._();

  static const List<_i5.SmithySerializer> serializers = [
    OrganizationCustomRuleMetadataAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationCustomRuleMetadataBuilder b) {}

  /// The description that you provide for your organization Config rule.
  String? get description;

  /// A string, in JSON format, that is passed to your organization Config rule Lambda function.
  String? get inputParameters;

  /// The lambda function ARN.
  String get lambdaFunctionArn;

  /// The maximum frequency with which Config runs evaluations for a rule. Your custom rule is triggered when Config delivers the configuration snapshot. For more information, see ConfigSnapshotDeliveryProperties.
  ///
  /// By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the `MaximumExecutionFrequency` parameter.
  _i2.MaximumExecutionFrequency? get maximumExecutionFrequency;

  /// The type of notification that triggers Config to run an evaluation for a rule. You can specify the following notification types:
  ///
  /// *   `ConfigurationItemChangeNotification` \- Triggers an evaluation when Config delivers a configuration item as a result of a resource change.
  ///
  /// *   `OversizedConfigurationItemChangeNotification` \- Triggers an evaluation when Config delivers an oversized configuration item. Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.
  ///
  /// *   `ScheduledNotification` \- Triggers a periodic evaluation at the frequency specified for `MaximumExecutionFrequency`.
  _i4.BuiltList<_i3.OrganizationConfigRuleTriggerType>
      get organizationConfigRuleTriggerTypes;

  /// The ID of the Amazon Web Services resource that was evaluated.
  String? get resourceIdScope;

  /// The type of the Amazon Web Services resource that was evaluated.
  _i4.BuiltList<String>? get resourceTypesScope;

  /// One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
  String? get tagKeyScope;

  /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
  String? get tagValueScope;
  @override
  List<Object?> get props => [
        description,
        inputParameters,
        lambdaFunctionArn,
        maximumExecutionFrequency,
        organizationConfigRuleTriggerTypes,
        resourceIdScope,
        resourceTypesScope,
        tagKeyScope,
        tagValueScope,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('OrganizationCustomRuleMetadata');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'inputParameters',
      inputParameters,
    );
    helper.add(
      'lambdaFunctionArn',
      lambdaFunctionArn,
    );
    helper.add(
      'maximumExecutionFrequency',
      maximumExecutionFrequency,
    );
    helper.add(
      'organizationConfigRuleTriggerTypes',
      organizationConfigRuleTriggerTypes,
    );
    helper.add(
      'resourceIdScope',
      resourceIdScope,
    );
    helper.add(
      'resourceTypesScope',
      resourceTypesScope,
    );
    helper.add(
      'tagKeyScope',
      tagKeyScope,
    );
    helper.add(
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
      switch (key) {
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'InputParameters':
          if (value != null) {
            result.inputParameters = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LambdaFunctionArn':
          result.lambdaFunctionArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'MaximumExecutionFrequency':
          if (value != null) {
            result.maximumExecutionFrequency = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.MaximumExecutionFrequency),
            ) as _i2.MaximumExecutionFrequency);
          }
          break;
        case 'OrganizationConfigRuleTriggerTypes':
          result.organizationConfigRuleTriggerTypes
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.OrganizationConfigRuleTriggerType)],
            ),
          ) as _i4.BuiltList<_i3.OrganizationConfigRuleTriggerType>));
          break;
        case 'ResourceIdScope':
          if (value != null) {
            result.resourceIdScope = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceTypesScope':
          if (value != null) {
            result.resourceTypesScope.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'TagKeyScope':
          if (value != null) {
            result.tagKeyScope = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TagValueScope':
          if (value != null) {
            result.tagValueScope = (serializers.deserialize(
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
    final payload = (object as OrganizationCustomRuleMetadata);
    final result = <Object?>[
      'LambdaFunctionArn',
      serializers.serialize(
        payload.lambdaFunctionArn,
        specifiedType: const FullType(String),
      ),
      'OrganizationConfigRuleTriggerTypes',
      serializers.serialize(
        payload.organizationConfigRuleTriggerTypes,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.OrganizationConfigRuleTriggerType)],
        ),
      ),
    ];
    if (payload.description != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.inputParameters != null) {
      result
        ..add('InputParameters')
        ..add(serializers.serialize(
          payload.inputParameters!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maximumExecutionFrequency != null) {
      result
        ..add('MaximumExecutionFrequency')
        ..add(serializers.serialize(
          payload.maximumExecutionFrequency!,
          specifiedType: const FullType(_i2.MaximumExecutionFrequency),
        ));
    }
    if (payload.resourceIdScope != null) {
      result
        ..add('ResourceIdScope')
        ..add(serializers.serialize(
          payload.resourceIdScope!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceTypesScope != null) {
      result
        ..add('ResourceTypesScope')
        ..add(serializers.serialize(
          payload.resourceTypesScope!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.tagKeyScope != null) {
      result
        ..add('TagKeyScope')
        ..add(serializers.serialize(
          payload.tagKeyScope!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tagValueScope != null) {
      result
        ..add('TagValueScope')
        ..add(serializers.serialize(
          payload.tagValueScope!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
