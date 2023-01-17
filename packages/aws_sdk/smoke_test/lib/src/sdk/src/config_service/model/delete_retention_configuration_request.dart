// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.delete_retention_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_retention_configuration_request.g.dart';

abstract class DeleteRetentionConfigurationRequest
    with
        _i1.HttpInput<DeleteRetentionConfigurationRequest>,
        _i2.AWSEquatable<DeleteRetentionConfigurationRequest>
    implements
        Built<DeleteRetentionConfigurationRequest,
            DeleteRetentionConfigurationRequestBuilder> {
  factory DeleteRetentionConfigurationRequest(
      {required String retentionConfigurationName}) {
    return _$DeleteRetentionConfigurationRequest._(
        retentionConfigurationName: retentionConfigurationName);
  }

  factory DeleteRetentionConfigurationRequest.build(
          [void Function(DeleteRetentionConfigurationRequestBuilder) updates]) =
      _$DeleteRetentionConfigurationRequest;

  const DeleteRetentionConfigurationRequest._();

  factory DeleteRetentionConfigurationRequest.fromRequest(
    DeleteRetentionConfigurationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteRetentionConfigurationRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRetentionConfigurationRequestBuilder b) {}

  /// The name of the retention configuration to delete.
  String get retentionConfigurationName;
  @override
  DeleteRetentionConfigurationRequest getPayload() => this;
  @override
  List<Object?> get props => [retentionConfigurationName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteRetentionConfigurationRequest');
    helper.add(
      'retentionConfigurationName',
      retentionConfigurationName,
    );
    return helper.toString();
  }
}

class DeleteRetentionConfigurationRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DeleteRetentionConfigurationRequest> {
  const DeleteRetentionConfigurationRequestAwsJson11Serializer()
      : super('DeleteRetentionConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRetentionConfigurationRequest,
        _$DeleteRetentionConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteRetentionConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteRetentionConfigurationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'RetentionConfigurationName':
          result.retentionConfigurationName = (serializers.deserialize(
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
    final payload = (object as DeleteRetentionConfigurationRequest);
    final result = <Object?>[
      'RetentionConfigurationName',
      serializers.serialize(
        payload.retentionConfigurationName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
