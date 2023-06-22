// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.config_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_state.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_mode_configuration.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/maximum_execution_frequency.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/scope.dart' as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/source.dart' as _i3;

part 'config_rule.g.dart';

/// Config rules evaluate the configuration settings of your Amazon Web Services resources. A rule can run when Config detects a configuration change to an Amazon Web Services resource or at a periodic frequency that you choose (for example, every 24 hours). There are two types of rules: _Config Managed Rules_ and _Config Custom Rules_.
///
/// Config Managed Rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
///
/// Config Custom Rules are rules that you create from scratch. There are two ways to create Config custom rules: with Lambda functions ( [Lambda Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function)) and with Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)), a policy-as-code language. Config custom rules created with Lambda are called _Config Custom Lambda Rules_ and Config custom rules created with Guard are called _Config Custom Policy Rules_.
///
/// For more information about developing and using Config rules, see [Evaluating Resource with Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the _Config Developer Guide_.
///
/// You can use the Amazon Web Services CLI and Amazon Web Services SDKs if you want to create a rule that triggers evaluations for your resources when Config delivers the configuration snapshot. For more information, see ConfigSnapshotDeliveryProperties.
abstract class ConfigRule
    with _i1.AWSEquatable<ConfigRule>
    implements Built<ConfigRule, ConfigRuleBuilder> {
  /// Config rules evaluate the configuration settings of your Amazon Web Services resources. A rule can run when Config detects a configuration change to an Amazon Web Services resource or at a periodic frequency that you choose (for example, every 24 hours). There are two types of rules: _Config Managed Rules_ and _Config Custom Rules_.
  ///
  /// Config Managed Rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
  ///
  /// Config Custom Rules are rules that you create from scratch. There are two ways to create Config custom rules: with Lambda functions ( [Lambda Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function)) and with Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)), a policy-as-code language. Config custom rules created with Lambda are called _Config Custom Lambda Rules_ and Config custom rules created with Guard are called _Config Custom Policy Rules_.
  ///
  /// For more information about developing and using Config rules, see [Evaluating Resource with Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the _Config Developer Guide_.
  ///
  /// You can use the Amazon Web Services CLI and Amazon Web Services SDKs if you want to create a rule that triggers evaluations for your resources when Config delivers the configuration snapshot. For more information, see ConfigSnapshotDeliveryProperties.
  factory ConfigRule({
    String? configRuleName,
    String? configRuleArn,
    String? configRuleId,
    String? description,
    _i2.Scope? scope,
    required _i3.Source source,
    String? inputParameters,
    _i4.MaximumExecutionFrequency? maximumExecutionFrequency,
    _i5.ConfigRuleState? configRuleState,
    String? createdBy,
    List<_i6.EvaluationModeConfiguration>? evaluationModes,
  }) {
    return _$ConfigRule._(
      configRuleName: configRuleName,
      configRuleArn: configRuleArn,
      configRuleId: configRuleId,
      description: description,
      scope: scope,
      source: source,
      inputParameters: inputParameters,
      maximumExecutionFrequency: maximumExecutionFrequency,
      configRuleState: configRuleState,
      createdBy: createdBy,
      evaluationModes:
          evaluationModes == null ? null : _i7.BuiltList(evaluationModes),
    );
  }

  /// Config rules evaluate the configuration settings of your Amazon Web Services resources. A rule can run when Config detects a configuration change to an Amazon Web Services resource or at a periodic frequency that you choose (for example, every 24 hours). There are two types of rules: _Config Managed Rules_ and _Config Custom Rules_.
  ///
  /// Config Managed Rules are predefined, customizable rules created by Config. For a list of managed rules, see [List of Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).
  ///
  /// Config Custom Rules are rules that you create from scratch. There are two ways to create Config custom rules: with Lambda functions ( [Lambda Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function)) and with Guard ([Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard)), a policy-as-code language. Config custom rules created with Lambda are called _Config Custom Lambda Rules_ and Config custom rules created with Guard are called _Config Custom Policy Rules_.
  ///
  /// For more information about developing and using Config rules, see [Evaluating Resource with Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html) in the _Config Developer Guide_.
  ///
  /// You can use the Amazon Web Services CLI and Amazon Web Services SDKs if you want to create a rule that triggers evaluations for your resources when Config delivers the configuration snapshot. For more information, see ConfigSnapshotDeliveryProperties.
  factory ConfigRule.build([void Function(ConfigRuleBuilder) updates]) =
      _$ConfigRule;

  const ConfigRule._();

  static const List<_i8.SmithySerializer<ConfigRule>> serializers = [
    ConfigRuleAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigRuleBuilder b) {}

  /// The name that you assign to the Config rule. The name is required if you are adding a new rule.
  String? get configRuleName;

  /// The Amazon Resource Name (ARN) of the Config rule.
  String? get configRuleArn;

  /// The ID of the Config rule.
  String? get configRuleId;

  /// The description that you provide for the Config rule.
  String? get description;

  /// Defines which resources can trigger an evaluation for the rule. The scope can include one or more resource types, a combination of one resource type and one resource ID, or a combination of a tag key and value. Specify a scope to constrain the resources that can trigger an evaluation for the rule. If you do not specify a scope, evaluations are triggered when any resource in the recording group changes.
  ///
  /// The scope can be empty.
  _i2.Scope? get scope;

  /// Provides the rule owner (`Amazon Web Services` for managed rules, `CUSTOM_POLICY` for Custom Policy rules, and `CUSTOM_LAMBDA` for Custom Lambda rules), the rule identifier, and the notifications that cause the function to evaluate your Amazon Web Services resources.
  _i3.Source get source;

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
  _i4.MaximumExecutionFrequency? get maximumExecutionFrequency;

  /// Indicates whether the Config rule is active or is currently being deleted by Config. It can also indicate the evaluation status for the Config rule.
  ///
  /// Config sets the state of the rule to `EVALUATING` temporarily after you use the `StartConfigRulesEvaluation` request to evaluate your resources against the Config rule.
  ///
  /// Config sets the state of the rule to `DELETING_RESULTS` temporarily after you use the `DeleteEvaluationResults` request to delete the current evaluation results for the Config rule.
  ///
  /// Config temporarily sets the state of a rule to `DELETING` after you use the `DeleteConfigRule` request to delete the rule. After Config deletes the rule, the rule and all of its evaluations are erased and are no longer available.
  _i5.ConfigRuleState? get configRuleState;

  /// Service principal name of the service that created the rule.
  ///
  /// The field is populated only if the service-linked rule is created by a service. The field is empty if you create your own rule.
  String? get createdBy;

  /// The modes the Config rule can be evaluated in. The valid values are distinct objects. By default, the value is Detective evaluation mode only.
  _i7.BuiltList<_i6.EvaluationModeConfiguration>? get evaluationModes;
  @override
  List<Object?> get props => [
        configRuleName,
        configRuleArn,
        configRuleId,
        description,
        scope,
        source,
        inputParameters,
        maximumExecutionFrequency,
        configRuleState,
        createdBy,
        evaluationModes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigRule')
      ..add(
        'configRuleName',
        configRuleName,
      )
      ..add(
        'configRuleArn',
        configRuleArn,
      )
      ..add(
        'configRuleId',
        configRuleId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'scope',
        scope,
      )
      ..add(
        'source',
        source,
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
        'configRuleState',
        configRuleState,
      )
      ..add(
        'createdBy',
        createdBy,
      )
      ..add(
        'evaluationModes',
        evaluationModes,
      );
    return helper.toString();
  }
}

class ConfigRuleAwsJson11Serializer
    extends _i8.StructuredSmithySerializer<ConfigRule> {
  const ConfigRuleAwsJson11Serializer() : super('ConfigRule');

  @override
  Iterable<Type> get types => const [
        ConfigRule,
        _$ConfigRule,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConfigRuleArn':
          result.configRuleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConfigRuleId':
          result.configRuleId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Scope':
          result.scope.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Scope),
          ) as _i2.Scope));
        case 'Source':
          result.source.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Source),
          ) as _i3.Source));
        case 'InputParameters':
          result.inputParameters = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaximumExecutionFrequency':
          result.maximumExecutionFrequency = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.MaximumExecutionFrequency),
          ) as _i4.MaximumExecutionFrequency);
        case 'ConfigRuleState':
          result.configRuleState = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ConfigRuleState),
          ) as _i5.ConfigRuleState);
        case 'CreatedBy':
          result.createdBy = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EvaluationModes':
          result.evaluationModes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i6.EvaluationModeConfiguration)],
            ),
          ) as _i7.BuiltList<_i6.EvaluationModeConfiguration>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConfigRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfigRule(
      :configRuleName,
      :configRuleArn,
      :configRuleId,
      :description,
      :scope,
      :source,
      :inputParameters,
      :maximumExecutionFrequency,
      :configRuleState,
      :createdBy,
      :evaluationModes
    ) = object;
    result$.addAll([
      'Source',
      serializers.serialize(
        source,
        specifiedType: const FullType(_i3.Source),
      ),
    ]);
    if (configRuleName != null) {
      result$
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          configRuleName,
          specifiedType: const FullType(String),
        ));
    }
    if (configRuleArn != null) {
      result$
        ..add('ConfigRuleArn')
        ..add(serializers.serialize(
          configRuleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (configRuleId != null) {
      result$
        ..add('ConfigRuleId')
        ..add(serializers.serialize(
          configRuleId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add('Description')
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (scope != null) {
      result$
        ..add('Scope')
        ..add(serializers.serialize(
          scope,
          specifiedType: const FullType(_i2.Scope),
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
          specifiedType: const FullType(_i4.MaximumExecutionFrequency),
        ));
    }
    if (configRuleState != null) {
      result$
        ..add('ConfigRuleState')
        ..add(serializers.serialize(
          configRuleState,
          specifiedType: const FullType(_i5.ConfigRuleState),
        ));
    }
    if (createdBy != null) {
      result$
        ..add('CreatedBy')
        ..add(serializers.serialize(
          createdBy,
          specifiedType: const FullType(String),
        ));
    }
    if (evaluationModes != null) {
      result$
        ..add('EvaluationModes')
        ..add(serializers.serialize(
          evaluationModes,
          specifiedType: const FullType(
            _i7.BuiltList,
            [FullType(_i6.EvaluationModeConfiguration)],
          ),
        ));
    }
    return result$;
  }
}
