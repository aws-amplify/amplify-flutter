// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.remediation_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i5;
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/config_service/model/execution_controls.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_parameter_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_target_type.dart'
    as _i2;

part 'remediation_configuration.g.dart';

/// An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.
abstract class RemediationConfiguration
    with _i1.AWSEquatable<RemediationConfiguration>
    implements
        Built<RemediationConfiguration, RemediationConfigurationBuilder> {
  /// An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.
  factory RemediationConfiguration({
    required String configRuleName,
    required _i2.RemediationTargetType targetType,
    required String targetId,
    String? targetVersion,
    Map<String, _i3.RemediationParameterValue>? parameters,
    String? resourceType,
    bool? automatic,
    _i4.ExecutionControls? executionControls,
    int? maximumAutomaticAttempts,
    _i5.Int64? retryAttemptSeconds,
    String? arn,
    String? createdByService,
  }) {
    automatic ??= false;
    return _$RemediationConfiguration._(
      configRuleName: configRuleName,
      targetType: targetType,
      targetId: targetId,
      targetVersion: targetVersion,
      parameters: parameters == null ? null : _i6.BuiltMap(parameters),
      resourceType: resourceType,
      automatic: automatic,
      executionControls: executionControls,
      maximumAutomaticAttempts: maximumAutomaticAttempts,
      retryAttemptSeconds: retryAttemptSeconds,
      arn: arn,
      createdByService: createdByService,
    );
  }

  /// An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.
  factory RemediationConfiguration.build(
          [void Function(RemediationConfigurationBuilder) updates]) =
      _$RemediationConfiguration;

  const RemediationConfiguration._();

  static const List<_i7.SmithySerializer<RemediationConfiguration>>
      serializers = [RemediationConfigurationAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationConfigurationBuilder b) {
    b.automatic = false;
  }

  /// The name of the Config rule.
  String get configRuleName;

  /// The type of the target. Target executes remediation. For example, SSM document.
  _i2.RemediationTargetType get targetType;

  /// Target ID is the name of the SSM document.
  String get targetId;

  /// Version of the target. For example, version of the SSM document.
  ///
  /// If you make backward incompatible changes to the SSM document, you must call PutRemediationConfiguration API again to ensure the remediations can run.
  String? get targetVersion;

  /// An object of the RemediationParameterValue.
  _i6.BuiltMap<String, _i3.RemediationParameterValue>? get parameters;

  /// The type of a resource.
  String? get resourceType;

  /// The remediation is triggered automatically.
  bool get automatic;

  /// An ExecutionControls object.
  _i4.ExecutionControls? get executionControls;

  /// The maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.
  ///
  /// For example, if you specify MaximumAutomaticAttempts as 5 with RetryAttemptSeconds as 50 seconds, Config will put a RemediationException on your behalf for the failing resource after the 5th failed attempt within 50 seconds.
  int? get maximumAutomaticAttempts;

  /// Maximum time in seconds that Config runs auto-remediation. If you do not select a number, the default is 60 seconds.
  ///
  /// For example, if you specify RetryAttemptSeconds as 50 seconds and MaximumAutomaticAttempts as 5, Config will run auto-remediations 5 times within 50 seconds before throwing an exception.
  _i5.Int64? get retryAttemptSeconds;

  /// Amazon Resource Name (ARN) of remediation configuration.
  String? get arn;

  /// Name of the service that owns the service-linked rule, if applicable.
  String? get createdByService;
  @override
  List<Object?> get props => [
        configRuleName,
        targetType,
        targetId,
        targetVersion,
        parameters,
        resourceType,
        automatic,
        executionControls,
        maximumAutomaticAttempts,
        retryAttemptSeconds,
        arn,
        createdByService,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RemediationConfiguration')
      ..add(
        'configRuleName',
        configRuleName,
      )
      ..add(
        'targetType',
        targetType,
      )
      ..add(
        'targetId',
        targetId,
      )
      ..add(
        'targetVersion',
        targetVersion,
      )
      ..add(
        'parameters',
        parameters,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'automatic',
        automatic,
      )
      ..add(
        'executionControls',
        executionControls,
      )
      ..add(
        'maximumAutomaticAttempts',
        maximumAutomaticAttempts,
      )
      ..add(
        'retryAttemptSeconds',
        retryAttemptSeconds,
      )
      ..add(
        'arn',
        arn,
      )
      ..add(
        'createdByService',
        createdByService,
      );
    return helper.toString();
  }
}

class RemediationConfigurationAwsJson11Serializer
    extends _i7.StructuredSmithySerializer<RemediationConfiguration> {
  const RemediationConfigurationAwsJson11Serializer()
      : super('RemediationConfiguration');

  @override
  Iterable<Type> get types => const [
        RemediationConfiguration,
        _$RemediationConfiguration,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RemediationConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemediationConfigurationBuilder();
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
        case 'TargetType':
          result.targetType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RemediationTargetType),
          ) as _i2.RemediationTargetType);
        case 'TargetId':
          result.targetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TargetVersion':
          result.targetVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Parameters':
          result.parameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(_i3.RemediationParameterValue),
              ],
            ),
          ) as _i6.BuiltMap<String, _i3.RemediationParameterValue>));
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Automatic':
          result.automatic = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ExecutionControls':
          result.executionControls.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ExecutionControls),
          ) as _i4.ExecutionControls));
        case 'MaximumAutomaticAttempts':
          result.maximumAutomaticAttempts = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'RetryAttemptSeconds':
          result.retryAttemptSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.Int64),
          ) as _i5.Int64);
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CreatedByService':
          result.createdByService = (serializers.deserialize(
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
    RemediationConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RemediationConfiguration(
      :configRuleName,
      :targetType,
      :targetId,
      :targetVersion,
      :parameters,
      :resourceType,
      :automatic,
      :executionControls,
      :maximumAutomaticAttempts,
      :retryAttemptSeconds,
      :arn,
      :createdByService
    ) = object;
    result$.addAll([
      'ConfigRuleName',
      serializers.serialize(
        configRuleName,
        specifiedType: const FullType(String),
      ),
      'TargetType',
      serializers.serialize(
        targetType,
        specifiedType: const FullType(_i2.RemediationTargetType),
      ),
      'TargetId',
      serializers.serialize(
        targetId,
        specifiedType: const FullType(String),
      ),
      'Automatic',
      serializers.serialize(
        automatic,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (targetVersion != null) {
      result$
        ..add('TargetVersion')
        ..add(serializers.serialize(
          targetVersion,
          specifiedType: const FullType(String),
        ));
    }
    if (parameters != null) {
      result$
        ..add('Parameters')
        ..add(serializers.serialize(
          parameters,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(_i3.RemediationParameterValue),
            ],
          ),
        ));
    }
    if (resourceType != null) {
      result$
        ..add('ResourceType')
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(String),
        ));
    }
    if (executionControls != null) {
      result$
        ..add('ExecutionControls')
        ..add(serializers.serialize(
          executionControls,
          specifiedType: const FullType(_i4.ExecutionControls),
        ));
    }
    if (maximumAutomaticAttempts != null) {
      result$
        ..add('MaximumAutomaticAttempts')
        ..add(serializers.serialize(
          maximumAutomaticAttempts,
          specifiedType: const FullType(int),
        ));
    }
    if (retryAttemptSeconds != null) {
      result$
        ..add('RetryAttemptSeconds')
        ..add(serializers.serialize(
          retryAttemptSeconds,
          specifiedType: const FullType(_i5.Int64),
        ));
    }
    if (arn != null) {
      result$
        ..add('Arn')
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (createdByService != null) {
      result$
        ..add('CreatedByService')
        ..add(serializers.serialize(
          createdByService,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
