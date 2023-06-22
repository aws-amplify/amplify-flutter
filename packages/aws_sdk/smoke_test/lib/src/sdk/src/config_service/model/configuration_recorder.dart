// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.configuration_recorder; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/recording_group.dart'
    as _i2;

part 'configuration_recorder.g.dart';

/// Records configuration changes to specified resource types. For more information about the configuration recorder, see [**Managing the Configuration Recorder**](https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html) in the _Config Developer Guide_.
abstract class ConfigurationRecorder
    with _i1.AWSEquatable<ConfigurationRecorder>
    implements Built<ConfigurationRecorder, ConfigurationRecorderBuilder> {
  /// Records configuration changes to specified resource types. For more information about the configuration recorder, see [**Managing the Configuration Recorder**](https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html) in the _Config Developer Guide_.
  factory ConfigurationRecorder({
    String? name,
    String? roleArn,
    _i2.RecordingGroup? recordingGroup,
  }) {
    return _$ConfigurationRecorder._(
      name: name,
      roleArn: roleArn,
      recordingGroup: recordingGroup,
    );
  }

  /// Records configuration changes to specified resource types. For more information about the configuration recorder, see [**Managing the Configuration Recorder**](https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html) in the _Config Developer Guide_.
  factory ConfigurationRecorder.build(
          [void Function(ConfigurationRecorderBuilder) updates]) =
      _$ConfigurationRecorder;

  const ConfigurationRecorder._();

  static const List<_i3.SmithySerializer<ConfigurationRecorder>> serializers = [
    ConfigurationRecorderAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigurationRecorderBuilder b) {}

  /// The name of the configuration recorder. Config automatically assigns the name of "default" when creating the configuration recorder.
  ///
  /// You cannot change the name of the configuration recorder after it has been created. To change the configuration recorder name, you must delete it and create a new configuration recorder with a new name.
  String? get name;

  /// Amazon Resource Name (ARN) of the IAM role assumed by Config and used by the configuration recorder.
  ///
  /// While the API model does not require this field, the server will reject a request without a defined `roleARN` for the configuration recorder.
  ///
  /// **Pre-existing Config role**
  ///
  /// If you have used an Amazon Web Services service that uses Config, such as Security Hub or Control Tower, and an Config role has already been created, make sure that the IAM role that you use when setting up Config keeps the same minimum permissions as the already created Config role. You must do this so that the other Amazon Web Services service continues to run as expected.
  ///
  /// For example, if Control Tower has an IAM role that allows Config to read Amazon Simple Storage Service (Amazon S3) objects, make sure that the same permissions are granted within the IAM role you use when setting up Config. Otherwise, it may interfere with how Control Tower operates. For more information about IAM roles for Config, see [**Identity and Access Management for Config**](https://docs.aws.amazon.com/config/latest/developerguide/security-iam.html) in the _Config Developer Guide_.
  String? get roleArn;

  /// Specifies which resource types Config records for configuration changes.
  ///
  /// **High Number of Config Evaluations**
  ///
  /// You may notice increased activity in your account during your initial month recording with Config when compared to subsequent months. During the initial bootstrapping process, Config runs evaluations on all the resources in your account that you have selected for Config to record.
  ///
  /// If you are running ephemeral workloads, you may see increased activity from Config as it records configuration changes associated with creating and deleting these temporary resources. An _ephemeral workload_ is a temporary use of computing resources that are loaded and run when needed. Examples include Amazon Elastic Compute Cloud (Amazon EC2) Spot Instances, Amazon EMR jobs, and Auto Scaling. If you want to avoid the increased activity from running ephemeral workloads, you can run these types of workloads in a separate account with Config turned off to avoid increased configuration recording and rule evaluations.
  _i2.RecordingGroup? get recordingGroup;
  @override
  List<Object?> get props => [
        name,
        roleArn,
        recordingGroup,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigurationRecorder')
      ..add(
        'name',
        name,
      )
      ..add(
        'roleArn',
        roleArn,
      )
      ..add(
        'recordingGroup',
        recordingGroup,
      );
    return helper.toString();
  }
}

class ConfigurationRecorderAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ConfigurationRecorder> {
  const ConfigurationRecorderAwsJson11Serializer()
      : super('ConfigurationRecorder');

  @override
  Iterable<Type> get types => const [
        ConfigurationRecorder,
        _$ConfigurationRecorder,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConfigurationRecorder deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigurationRecorderBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'roleARN':
          result.roleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'recordingGroup':
          result.recordingGroup.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RecordingGroup),
          ) as _i2.RecordingGroup));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConfigurationRecorder object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConfigurationRecorder(:name, :roleArn, :recordingGroup) = object;
    if (name != null) {
      result$
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (roleArn != null) {
      result$
        ..add('roleARN')
        ..add(serializers.serialize(
          roleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (recordingGroup != null) {
      result$
        ..add('recordingGroup')
        ..add(serializers.serialize(
          recordingGroup,
          specifiedType: const FullType(_i2.RecordingGroup),
        ));
    }
    return result$;
  }
}
