// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.configuration_recorder; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/recording_group.dart'
    as _i2;

part 'configuration_recorder.g.dart';

/// An object that represents the recording of configuration changes of an Amazon Web Services resource.
abstract class ConfigurationRecorder
    with _i1.AWSEquatable<ConfigurationRecorder>
    implements Built<ConfigurationRecorder, ConfigurationRecorderBuilder> {
  /// An object that represents the recording of configuration changes of an Amazon Web Services resource.
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

  /// An object that represents the recording of configuration changes of an Amazon Web Services resource.
  factory ConfigurationRecorder.build(
          [void Function(ConfigurationRecorderBuilder) updates]) =
      _$ConfigurationRecorder;

  const ConfigurationRecorder._();

  static const List<_i3.SmithySerializer> serializers = [
    ConfigurationRecorderAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfigurationRecorderBuilder b) {}

  /// The name of the recorder. By default, Config automatically assigns the name "default" when creating the configuration recorder. You cannot change the assigned name.
  String? get name;

  /// Amazon Resource Name (ARN) of the IAM role used to describe the Amazon Web Services resources associated with the account.
  ///
  /// While the API model does not require this field, the server will reject a request without a defined roleARN for the configuration recorder.
  String? get roleArn;

  /// Specifies the types of Amazon Web Services resources for which Config records configuration changes.
  _i2.RecordingGroup? get recordingGroup;
  @override
  List<Object?> get props => [
        name,
        roleArn,
        recordingGroup,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfigurationRecorder');
    helper.add(
      'name',
      name,
    );
    helper.add(
      'roleArn',
      roleArn,
    );
    helper.add(
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ConfigurationRecorder);
    final result = <Object?>[];
    final ConfigurationRecorder(:name, :roleArn, :recordingGroup) = payload;
    if (name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (roleArn != null) {
      result
        ..add('roleARN')
        ..add(serializers.serialize(
          roleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (recordingGroup != null) {
      result
        ..add('recordingGroup')
        ..add(serializers.serialize(
          recordingGroup,
          specifiedType: const FullType(_i2.RecordingGroup),
        ));
    }
    return result;
  }
}
