// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.config_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/maximum_execution_frequency.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/scope.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/source.dart' as _i5;

part 'config_rule.g.dart';

/// Config rules evaluate the configuration settings of your Amazon Web Services resources. A rule can run when Config detects a configuration change to an Amazon Web Services resource or at a periodic frequency that you choose (for example, every 24 hours). There are two types of rules: Config Managed Rules and Config Custom Rules. Managed rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
///
/// Custom rules are rules that you can create using either Guard or Lambda functions. Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)) is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. Lambda uses custom code that you upload to evaluate a custom rule. It is invoked by events that are published to it by an event source, which Config invokes when the custom rule is initiated.
///
/// For more information about developing and using Config rules, see [Evaluating Amazon Web Services resource Configurations with Config](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the _Config Developer Guide_.
///
/// You can use the Amazon Web Services CLI and Amazon Web Services SDKs if you want to create a rule that triggers evaluations for your resources when Config delivers the configuration snapshot. For more information, see ConfigSnapshotDeliveryProperties.
abstract class ConfigRule
    with _i1.AWSEquatable<ConfigRule>
    implements Built<ConfigRule, ConfigRuleBuilder> {
  /// Config rules evaluate the configuration settings of your Amazon Web Services resources. A rule can run when Config detects a configuration change to an Amazon Web Services resource or at a periodic frequency that you choose (for example, every 24 hours). There are two types of rules: Config Managed Rules and Config Custom Rules. Managed rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
  ///
  /// Custom rules are rules that you can create using either Guard or Lambda functions. Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)) is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. Lambda uses custom code that you upload to evaluate a custom rule. It is invoked by events that are published to it by an event source, which Config invokes when the custom rule is initiated.
  ///
  /// For more information about developing and using Config rules, see [Evaluating Amazon Web Services resource Configurations with Config](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the _Config Developer Guide_.
  ///
  /// You can use the Amazon Web Services CLI and Amazon Web Services SDKs if you want to create a rule that triggers evaluations for your resources when Config delivers the configuration snapshot. For more information, see ConfigSnapshotDeliveryProperties.
  factory ConfigRule({
    String? configRuleArn,
    String? configRuleId,
    String? configRuleName,
    _i2.ConfigRuleState? configRuleState,
    String? createdBy,
    String? description,
    String? inputParameters,
    _i3.MaximumExecutionFrequency? maximumExecutionFrequency,
    _i4.Scope? scope,
    required _i5.Source source,
  }) {
    return _$ConfigRule._(
      configRuleArn: configRuleArn,
      configRuleId: configRuleId,
      configRuleName: configRuleName,
      configRuleState: configRuleState,
      createdBy: createdBy,
      description: description,
      inputParameters: inputParameters,
      maximumExecutionFrequency: maximumExecutionFrequency,
      scope: scope,
      source: source,
    );
  }

  /// Config rules evaluate the configuration settings of your Amazon Web Services resources. A rule can run when Config detects a configuration change to an Amazon Web Services resource or at a periodic frequency that you choose (for example, every 24 hours). There are two types of rules: Config Managed Rules and Config Custom Rules. Managed rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
  ///
  /// Custom rules are rules that you can create using either Guard or Lambda functions. Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)) is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. Lambda uses custom code that you upload to evaluate a custom rule. It is invoked by events that are published to it by an event source, which Config invokes when the custom rule is initiated.
  ///
  /// For more information about developing and using Config rules, see [Evaluating Amazon Web Services resource Configurations with Config](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the _Config Developer Guide_.
  ///
  /// You can use the Amazon Web Services CLI and Amazon Web Services SDKs if you want to create a rule that triggers evaluations for your resources when Config delivers the configuration snapshot. For more information, see ConfigSnapshotDeliveryProperties.
  factory ConfigRule.build([void Function(ConfigRuleBuilder) updates]) =
      _$ConfigRule;

  const ConfigRule._();

  static const List<_i6.SmithySerializer> serializers = [
    ConfigRuleAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigRuleBuilder b) {}

  /// The Amazon Resource Name (ARN) of the Config rule.
  String? get configRuleArn;

  /// The ID of the Config rule.
  String? get configRuleId;

  /// The name that you assign to the Config rule. The name is required if you are adding a new rule.
  String? get configRuleName;

  /// Indicates whether the Config rule is active or is currently being deleted by Config. It can also indicate the evaluation status for the Config rule.
  ///
  /// Config sets the state of the rule to `EVALUATING` temporarily after you use the `StartConfigRulesEvaluation` request to evaluate your resources against the Config rule.
  ///
  /// Config sets the state of the rule to `DELETING_RESULTS` temporarily after you use the `DeleteEvaluationResults` request to delete the current evaluation results for the Config rule.
  ///
  /// Config temporarily sets the state of a rule to `DELETING` after you use the `DeleteConfigRule` request to delete the rule. After Config deletes the rule, the rule and all of its evaluations are erased and are no longer available.
  _i2.ConfigRuleState? get configRuleState;

  /// Service principal name of the service that created the rule.
  ///
  /// The field is populated only if the service-linked rule is created by a service. The field is empty if you create your own rule.
  String? get createdBy;

  /// The description that you provide for the Config rule.
  String? get description;

  /// A string, in JSON format, that is passed to the Config rule Lambda function.
  String? get inputParameters;

  /// The maximum frequency with which Config runs evaluations for a rule. You can specify a value for `MaximumExecutionFrequency` when:
  ///
  /// *   This is for an Config managed rule that is triggered at a periodic frequency.
  ///
  /// *   Your custom rule is triggered when Config delivers the configuration snapshot. For more information, see ConfigSnapshotDeliveryProperties.
  ///
  ///
  /// By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the `MaximumExecutionFrequency` parameter.
  _i3.MaximumExecutionFrequency? get maximumExecutionFrequency;

  /// Defines which resources can trigger an evaluation for the rule. The scope can include one or more resource types, a combination of one resource type and one resource ID, or a combination of a tag key and value. Specify a scope to constrain the resources that can trigger an evaluation for the rule. If you do not specify a scope, evaluations are triggered when any resource in the recording group changes.
  ///
  /// The scope can be empty.
  _i4.Scope? get scope;

  /// Provides the rule owner (`Amazon Web Services` for managed rules, `CUSTOM_POLICY` for Custom Policy rules, and `CUSTOM_LAMBDA` for Custom Lambda rules), the rule identifier, and the notifications that cause the function to evaluate your Amazon Web Services resources.
  _i5.Source get source;
  @override
  List<Object?> get props => [
        configRuleArn,
        configRuleId,
        configRuleName,
        configRuleState,
        createdBy,
        description,
        inputParameters,
        maximumExecutionFrequency,
        scope,
        source,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigRule');
    helper.add(
      'configRuleArn',
      configRuleArn,
    );
    helper.add(
      'configRuleId',
      configRuleId,
    );
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'configRuleState',
      configRuleState,
    );
    helper.add(
      'createdBy',
      createdBy,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'inputParameters',
      inputParameters,
    );
    helper.add(
      'maximumExecutionFrequency',
      maximumExecutionFrequency,
    );
    helper.add(
      'scope',
      scope,
    );
    helper.add(
      'source',
      source,
    );
    return helper.toString();
  }
}

class ConfigRuleAwsJson11Serializer
    extends _i6.StructuredSmithySerializer<ConfigRule> {
  const ConfigRuleAwsJson11Serializer() : super('ConfigRule');

  @override
  Iterable<Type> get types => const [
        ConfigRule,
        _$ConfigRule,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfigRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigRuleArn':
          if (value != null) {
            result.configRuleArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ConfigRuleId':
          if (value != null) {
            result.configRuleId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ConfigRuleName':
          if (value != null) {
            result.configRuleName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ConfigRuleState':
          if (value != null) {
            result.configRuleState = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ConfigRuleState),
            ) as _i2.ConfigRuleState);
          }
          break;
        case 'CreatedBy':
          if (value != null) {
            result.createdBy = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
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
        case 'MaximumExecutionFrequency':
          if (value != null) {
            result.maximumExecutionFrequency = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.MaximumExecutionFrequency),
            ) as _i3.MaximumExecutionFrequency);
          }
          break;
        case 'Scope':
          if (value != null) {
            result.scope.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Scope),
            ) as _i4.Scope));
          }
          break;
        case 'Source':
          result.source.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.Source),
          ) as _i5.Source));
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
    final payload = (object as ConfigRule);
    final result = <Object?>[
      'Source',
      serializers.serialize(
        payload.source,
        specifiedType: const FullType(_i5.Source),
      ),
    ];
    if (payload.configRuleArn != null) {
      result
        ..add('ConfigRuleArn')
        ..add(serializers.serialize(
          payload.configRuleArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.configRuleId != null) {
      result
        ..add('ConfigRuleId')
        ..add(serializers.serialize(
          payload.configRuleId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.configRuleName != null) {
      result
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          payload.configRuleName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.configRuleState != null) {
      result
        ..add('ConfigRuleState')
        ..add(serializers.serialize(
          payload.configRuleState!,
          specifiedType: const FullType(_i2.ConfigRuleState),
        ));
    }
    if (payload.createdBy != null) {
      result
        ..add('CreatedBy')
        ..add(serializers.serialize(
          payload.createdBy!,
          specifiedType: const FullType(String),
        ));
    }
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
          specifiedType: const FullType(_i3.MaximumExecutionFrequency),
        ));
    }
    if (payload.scope != null) {
      result
        ..add('Scope')
        ..add(serializers.serialize(
          payload.scope!,
          specifiedType: const FullType(_i4.Scope),
        ));
    }
    return result;
  }
}
