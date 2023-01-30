// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.stop_configuration_recorder_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'stop_configuration_recorder_request.g.dart';

/// The input for the StopConfigurationRecorder action.
abstract class StopConfigurationRecorderRequest
    with
        _i1.HttpInput<StopConfigurationRecorderRequest>,
        _i2.AWSEquatable<StopConfigurationRecorderRequest>
    implements
        Built<StopConfigurationRecorderRequest,
            StopConfigurationRecorderRequestBuilder> {
  /// The input for the StopConfigurationRecorder action.
  factory StopConfigurationRecorderRequest(
      {required String configurationRecorderName}) {
    return _$StopConfigurationRecorderRequest._(
        configurationRecorderName: configurationRecorderName);
  }

  /// The input for the StopConfigurationRecorder action.
  factory StopConfigurationRecorderRequest.build(
          [void Function(StopConfigurationRecorderRequestBuilder) updates]) =
      _$StopConfigurationRecorderRequest;

  const StopConfigurationRecorderRequest._();

  factory StopConfigurationRecorderRequest.fromRequest(
    StopConfigurationRecorderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    StopConfigurationRecorderRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StopConfigurationRecorderRequestBuilder b) {}

  /// The name of the recorder object that records each configuration change made to the resources.
  String get configurationRecorderName;
  @override
  StopConfigurationRecorderRequest getPayload() => this;
  @override
  List<Object?> get props => [configurationRecorderName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StopConfigurationRecorderRequest');
    helper.add(
      'configurationRecorderName',
      configurationRecorderName,
    );
    return helper.toString();
  }
}

class StopConfigurationRecorderRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<StopConfigurationRecorderRequest> {
  const StopConfigurationRecorderRequestAwsJson11Serializer()
      : super('StopConfigurationRecorderRequest');

  @override
  Iterable<Type> get types => const [
        StopConfigurationRecorderRequest,
        _$StopConfigurationRecorderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StopConfigurationRecorderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StopConfigurationRecorderRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigurationRecorderName':
          result.configurationRecorderName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as StopConfigurationRecorderRequest);
    final result = <Object?>[
      'ConfigurationRecorderName',
      serializers.serialize(
        payload.configurationRecorderName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
