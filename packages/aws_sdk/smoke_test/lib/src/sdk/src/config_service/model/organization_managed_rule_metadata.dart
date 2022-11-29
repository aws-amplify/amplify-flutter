// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.organization_managed_rule_metadata; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/maximum_execution_frequency.dart'
    as _i2;

part 'organization_managed_rule_metadata.g.dart';

/// An object that specifies organization managed rule metadata such as resource type and ID of Amazon Web Services resource along with the rule identifier. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
abstract class OrganizationManagedRuleMetadata
    with
        _i1.AWSEquatable<OrganizationManagedRuleMetadata>
    implements
        Built<OrganizationManagedRuleMetadata,
            OrganizationManagedRuleMetadataBuilder> {
  /// An object that specifies organization managed rule metadata such as resource type and ID of Amazon Web Services resource along with the rule identifier. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
  factory OrganizationManagedRuleMetadata({
    String? description,
    String? inputParameters,
    _i2.MaximumExecutionFrequency? maximumExecutionFrequency,
    String? resourceIdScope,
    List<String>? resourceTypesScope,
    required String ruleIdentifier,
    String? tagKeyScope,
    String? tagValueScope,
  }) {
    return _$OrganizationManagedRuleMetadata._(
      description: description,
      inputParameters: inputParameters,
      maximumExecutionFrequency: maximumExecutionFrequency,
      resourceIdScope: resourceIdScope,
      resourceTypesScope:
          resourceTypesScope == null ? null : _i3.BuiltList(resourceTypesScope),
      ruleIdentifier: ruleIdentifier,
      tagKeyScope: tagKeyScope,
      tagValueScope: tagValueScope,
    );
  }

  /// An object that specifies organization managed rule metadata such as resource type and ID of Amazon Web Services resource along with the rule identifier. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
  factory OrganizationManagedRuleMetadata.build(
          [void Function(OrganizationManagedRuleMetadataBuilder) updates]) =
      _$OrganizationManagedRuleMetadata;

  const OrganizationManagedRuleMetadata._();

  static const List<_i4.SmithySerializer> serializers = [
    OrganizationManagedRuleMetadataAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationManagedRuleMetadataBuilder b) {}

  /// The description that you provide for your organization Config rule.
  String? get description;

  /// A string, in JSON format, that is passed to your organization Config rule Lambda function.
  String? get inputParameters;

  /// The maximum frequency with which Config runs evaluations for a rule. This is for an Config managed rule that is triggered at a periodic frequency.
  ///
  /// By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the `MaximumExecutionFrequency` parameter.
  _i2.MaximumExecutionFrequency? get maximumExecutionFrequency;

  /// The ID of the Amazon Web Services resource that was evaluated.
  String? get resourceIdScope;

  /// The type of the Amazon Web Services resource that was evaluated.
  _i3.BuiltList<String>? get resourceTypesScope;

  /// For organization config managed rules, a predefined identifier from a list. For example, `IAM\_PASSWORD\_POLICY` is a managed rule. To reference a managed rule, see [Using Config managed rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).
  String get ruleIdentifier;

  /// One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.
  String? get tagKeyScope;

  /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
  String? get tagValueScope;
  @override
  List<Object?> get props => [
        description,
        inputParameters,
        maximumExecutionFrequency,
        resourceIdScope,
        resourceTypesScope,
        ruleIdentifier,
        tagKeyScope,
        tagValueScope,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('OrganizationManagedRuleMetadata');
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
      'resourceIdScope',
      resourceIdScope,
    );
    helper.add(
      'resourceTypesScope',
      resourceTypesScope,
    );
    helper.add(
      'ruleIdentifier',
      ruleIdentifier,
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

class OrganizationManagedRuleMetadataAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<OrganizationManagedRuleMetadata> {
  const OrganizationManagedRuleMetadataAwsJson11Serializer()
      : super('OrganizationManagedRuleMetadata');

  @override
  Iterable<Type> get types => const [
        OrganizationManagedRuleMetadata,
        _$OrganizationManagedRuleMetadata,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationManagedRuleMetadata deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationManagedRuleMetadataBuilder();
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
        case 'MaximumExecutionFrequency':
          if (value != null) {
            result.maximumExecutionFrequency = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.MaximumExecutionFrequency),
            ) as _i2.MaximumExecutionFrequency);
          }
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
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'RuleIdentifier':
          result.ruleIdentifier = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as OrganizationManagedRuleMetadata);
    final result = <Object?>[
      'RuleIdentifier',
      serializers.serialize(
        payload.ruleIdentifier,
        specifiedType: const FullType(String),
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
            _i3.BuiltList,
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
