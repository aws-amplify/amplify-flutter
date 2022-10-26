// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.remediation_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/config_service/model/execution_controls.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_parameter_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_target_type.dart'
    as _i5;

part 'remediation_configuration.g.dart';

/// An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.
abstract class RemediationConfiguration
    with _i1.AWSEquatable<RemediationConfiguration>
    implements
        Built<RemediationConfiguration, RemediationConfigurationBuilder> {
  /// An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.
  factory RemediationConfiguration({
    String? arn,
    bool? automatic,
    required String configRuleName,
    String? createdByService,
    _i2.ExecutionControls? executionControls,
    int? maximumAutomaticAttempts,
    Map<String, _i3.RemediationParameterValue>? parameters,
    String? resourceType,
    _i4.Int64? retryAttemptSeconds,
    required String targetId,
    required _i5.RemediationTargetType targetType,
    String? targetVersion,
  }) {
    return _$RemediationConfiguration._(
      arn: arn,
      automatic: automatic,
      configRuleName: configRuleName,
      createdByService: createdByService,
      executionControls: executionControls,
      maximumAutomaticAttempts: maximumAutomaticAttempts,
      parameters: parameters == null ? null : _i6.BuiltMap(parameters),
      resourceType: resourceType,
      retryAttemptSeconds: retryAttemptSeconds,
      targetId: targetId,
      targetType: targetType,
      targetVersion: targetVersion,
    );
  }

  /// An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.
  factory RemediationConfiguration.build(
          [void Function(RemediationConfigurationBuilder) updates]) =
      _$RemediationConfiguration;

  const RemediationConfiguration._();

  static const List<_i7.SmithySerializer> serializers = [
    RemediationConfigurationAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationConfigurationBuilder b) {}

  /// Amazon Resource Name (ARN) of remediation configuration.
  String? get arn;

  /// The remediation is triggered automatically.
  bool? get automatic;

  /// The name of the Config rule.
  String get configRuleName;

  /// Name of the service that owns the service-linked rule, if applicable.
  String? get createdByService;

  /// An ExecutionControls object.
  _i2.ExecutionControls? get executionControls;

  /// The maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.
  ///
  /// For example, if you specify MaximumAutomaticAttempts as 5 with RetryAttemptSeconds as 50 seconds, Config will put a RemediationException on your behalf for the failing resource after the 5th failed attempt within 50 seconds.
  int? get maximumAutomaticAttempts;

  /// An object of the RemediationParameterValue.
  _i6.BuiltMap<String, _i3.RemediationParameterValue>? get parameters;

  /// The type of a resource.
  String? get resourceType;

  /// Maximum time in seconds that Config runs auto-remediation. If you do not select a number, the default is 60 seconds.
  ///
  /// For example, if you specify RetryAttemptSeconds as 50 seconds and MaximumAutomaticAttempts as 5, Config will run auto-remediations 5 times within 50 seconds before throwing an exception.
  _i4.Int64? get retryAttemptSeconds;

  /// Target ID is the name of the public document.
  String get targetId;

  /// The type of the target. Target executes remediation. For example, SSM document.
  _i5.RemediationTargetType get targetType;

  /// Version of the target. For example, version of the SSM document.
  ///
  /// If you make backward incompatible changes to the SSM document, you must call PutRemediationConfiguration API again to ensure the remediations can run.
  String? get targetVersion;
  @override
  List<Object?> get props => [
        arn,
        automatic,
        configRuleName,
        createdByService,
        executionControls,
        maximumAutomaticAttempts,
        parameters,
        resourceType,
        retryAttemptSeconds,
        targetId,
        targetType,
        targetVersion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RemediationConfiguration');
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'automatic',
      automatic,
    );
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'createdByService',
      createdByService,
    );
    helper.add(
      'executionControls',
      executionControls,
    );
    helper.add(
      'maximumAutomaticAttempts',
      maximumAutomaticAttempts,
    );
    helper.add(
      'parameters',
      parameters,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'retryAttemptSeconds',
      retryAttemptSeconds,
    );
    helper.add(
      'targetId',
      targetId,
    );
    helper.add(
      'targetType',
      targetType,
    );
    helper.add(
      'targetVersion',
      targetVersion,
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
      switch (key) {
        case 'Arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Automatic':
          if (value != null) {
            result.automatic = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'CreatedByService':
          if (value != null) {
            result.createdByService = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ExecutionControls':
          if (value != null) {
            result.executionControls.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ExecutionControls),
            ) as _i2.ExecutionControls));
          }
          break;
        case 'MaximumAutomaticAttempts':
          if (value != null) {
            result.maximumAutomaticAttempts = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'Parameters':
          if (value != null) {
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
          }
          break;
        case 'ResourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RetryAttemptSeconds':
          if (value != null) {
            result.retryAttemptSeconds = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Int64),
            ) as _i4.Int64);
          }
          break;
        case 'TargetId':
          result.targetId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TargetType':
          result.targetType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i5.RemediationTargetType),
          ) as _i5.RemediationTargetType);
          break;
        case 'TargetVersion':
          if (value != null) {
            result.targetVersion = (serializers.deserialize(
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
    final payload = (object as RemediationConfiguration);
    final result = <Object?>[
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
      'TargetId',
      serializers.serialize(
        payload.targetId,
        specifiedType: const FullType(String),
      ),
      'TargetType',
      serializers.serialize(
        payload.targetType,
        specifiedType: const FullType(_i5.RemediationTargetType),
      ),
    ];
    if (payload.arn != null) {
      result
        ..add('Arn')
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.automatic != null) {
      result
        ..add('Automatic')
        ..add(serializers.serialize(
          payload.automatic!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.createdByService != null) {
      result
        ..add('CreatedByService')
        ..add(serializers.serialize(
          payload.createdByService!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.executionControls != null) {
      result
        ..add('ExecutionControls')
        ..add(serializers.serialize(
          payload.executionControls!,
          specifiedType: const FullType(_i2.ExecutionControls),
        ));
    }
    if (payload.maximumAutomaticAttempts != null) {
      result
        ..add('MaximumAutomaticAttempts')
        ..add(serializers.serialize(
          payload.maximumAutomaticAttempts!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.parameters != null) {
      result
        ..add('Parameters')
        ..add(serializers.serialize(
          payload.parameters!,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(_i3.RemediationParameterValue),
            ],
          ),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add('ResourceType')
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.retryAttemptSeconds != null) {
      result
        ..add('RetryAttemptSeconds')
        ..add(serializers.serialize(
          payload.retryAttemptSeconds!,
          specifiedType: const FullType(_i4.Int64),
        ));
    }
    if (payload.targetVersion != null) {
      result
        ..add('TargetVersion')
        ..add(serializers.serialize(
          payload.targetVersion!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
