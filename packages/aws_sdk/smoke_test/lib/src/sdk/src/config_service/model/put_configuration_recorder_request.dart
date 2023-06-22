// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.put_configuration_recorder_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/configuration_recorder.dart'
    as _i3;

part 'put_configuration_recorder_request.g.dart';

/// The input for the PutConfigurationRecorder action.
abstract class PutConfigurationRecorderRequest
    with
        _i1.HttpInput<PutConfigurationRecorderRequest>,
        _i2.AWSEquatable<PutConfigurationRecorderRequest>
    implements
        Built<PutConfigurationRecorderRequest,
            PutConfigurationRecorderRequestBuilder> {
  /// The input for the PutConfigurationRecorder action.
  factory PutConfigurationRecorderRequest(
      {required _i3.ConfigurationRecorder configurationRecorder}) {
    return _$PutConfigurationRecorderRequest._(
        configurationRecorder: configurationRecorder);
  }

  /// The input for the PutConfigurationRecorder action.
  factory PutConfigurationRecorderRequest.build(
          [void Function(PutConfigurationRecorderRequestBuilder) updates]) =
      _$PutConfigurationRecorderRequest;

  const PutConfigurationRecorderRequest._();

  factory PutConfigurationRecorderRequest.fromRequest(
    PutConfigurationRecorderRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutConfigurationRecorderRequest>>
      serializers = [PutConfigurationRecorderRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutConfigurationRecorderRequestBuilder b) {}

  /// An object for the configuration recorder to record configuration changes for specified resource types.
  _i3.ConfigurationRecorder get configurationRecorder;
  @override
  PutConfigurationRecorderRequest getPayload() => this;
  @override
  List<Object?> get props => [configurationRecorder];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutConfigurationRecorderRequest')
          ..add(
            'configurationRecorder',
            configurationRecorder,
          );
    return helper.toString();
  }
}

class PutConfigurationRecorderRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutConfigurationRecorderRequest> {
  const PutConfigurationRecorderRequestAwsJson11Serializer()
      : super('PutConfigurationRecorderRequest');

  @override
  Iterable<Type> get types => const [
        PutConfigurationRecorderRequest,
        _$PutConfigurationRecorderRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutConfigurationRecorderRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutConfigurationRecorderRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationRecorder':
          result.configurationRecorder.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ConfigurationRecorder),
          ) as _i3.ConfigurationRecorder));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutConfigurationRecorderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutConfigurationRecorderRequest(:configurationRecorder) = object;
    result$.addAll([
      'ConfigurationRecorder',
      serializers.serialize(
        configurationRecorder,
        specifiedType: const FullType(_i3.ConfigurationRecorder),
      ),
    ]);
    return result$;
  }
}
