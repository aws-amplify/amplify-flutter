// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.start_configuration_recorder_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'start_configuration_recorder_request.g.dart';

/// The input for the StartConfigurationRecorder action.
abstract class StartConfigurationRecorderRequest
    with
        _i1.HttpInput<StartConfigurationRecorderRequest>,
        _i2.AWSEquatable<StartConfigurationRecorderRequest>
    implements
        Built<StartConfigurationRecorderRequest,
            StartConfigurationRecorderRequestBuilder> {
  /// The input for the StartConfigurationRecorder action.
  factory StartConfigurationRecorderRequest(
      {required String configurationRecorderName}) {
    return _$StartConfigurationRecorderRequest._(
        configurationRecorderName: configurationRecorderName);
  }

  /// The input for the StartConfigurationRecorder action.
  factory StartConfigurationRecorderRequest.build(
          [void Function(StartConfigurationRecorderRequestBuilder) updates]) =
      _$StartConfigurationRecorderRequest;

  const StartConfigurationRecorderRequest._();

  factory StartConfigurationRecorderRequest.fromRequest(
    StartConfigurationRecorderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<StartConfigurationRecorderRequest>>
      serializers = [StartConfigurationRecorderRequestAwsJson11Serializer()];

  /// The name of the recorder object that records each configuration change made to the resources.
  String get configurationRecorderName;
  @override
  StartConfigurationRecorderRequest getPayload() => this;
  @override
  List<Object?> get props => [configurationRecorderName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StartConfigurationRecorderRequest')
          ..add(
            'configurationRecorderName',
            configurationRecorderName,
          );
    return helper.toString();
  }
}

class StartConfigurationRecorderRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<StartConfigurationRecorderRequest> {
  const StartConfigurationRecorderRequestAwsJson11Serializer()
      : super('StartConfigurationRecorderRequest');

  @override
  Iterable<Type> get types => const [
        StartConfigurationRecorderRequest,
        _$StartConfigurationRecorderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StartConfigurationRecorderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartConfigurationRecorderRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationRecorderName':
          result.configurationRecorderName = (serializers.deserialize(
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
    StartConfigurationRecorderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StartConfigurationRecorderRequest(:configurationRecorderName) =
        object;
    result$.addAll([
      'ConfigurationRecorderName',
      serializers.serialize(
        configurationRecorderName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
