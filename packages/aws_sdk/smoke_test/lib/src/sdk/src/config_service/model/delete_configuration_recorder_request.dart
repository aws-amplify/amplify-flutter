// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.delete_configuration_recorder_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_configuration_recorder_request.g.dart';

/// The request object for the `DeleteConfigurationRecorder` action.
abstract class DeleteConfigurationRecorderRequest
    with
        _i1.HttpInput<DeleteConfigurationRecorderRequest>,
        _i2.AWSEquatable<DeleteConfigurationRecorderRequest>
    implements
        Built<DeleteConfigurationRecorderRequest,
            DeleteConfigurationRecorderRequestBuilder> {
  /// The request object for the `DeleteConfigurationRecorder` action.
  factory DeleteConfigurationRecorderRequest(
      {required String configurationRecorderName}) {
    return _$DeleteConfigurationRecorderRequest._(
        configurationRecorderName: configurationRecorderName);
  }

  /// The request object for the `DeleteConfigurationRecorder` action.
  factory DeleteConfigurationRecorderRequest.build(
          [void Function(DeleteConfigurationRecorderRequestBuilder) updates]) =
      _$DeleteConfigurationRecorderRequest;

  const DeleteConfigurationRecorderRequest._();

  factory DeleteConfigurationRecorderRequest.fromRequest(
    DeleteConfigurationRecorderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteConfigurationRecorderRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteConfigurationRecorderRequestBuilder b) {}

  /// The name of the configuration recorder to be deleted. You can retrieve the name of your configuration recorder by using the `DescribeConfigurationRecorders` action.
  String get configurationRecorderName;
  @override
  DeleteConfigurationRecorderRequest getPayload() => this;
  @override
  List<Object?> get props => [configurationRecorderName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteConfigurationRecorderRequest');
    helper.add(
      'configurationRecorderName',
      configurationRecorderName,
    );
    return helper.toString();
  }
}

class DeleteConfigurationRecorderRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DeleteConfigurationRecorderRequest> {
  const DeleteConfigurationRecorderRequestAwsJson11Serializer()
      : super('DeleteConfigurationRecorderRequest');

  @override
  Iterable<Type> get types => const [
        DeleteConfigurationRecorderRequest,
        _$DeleteConfigurationRecorderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteConfigurationRecorderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteConfigurationRecorderRequestBuilder();
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
    final payload = (object as DeleteConfigurationRecorderRequest);
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
