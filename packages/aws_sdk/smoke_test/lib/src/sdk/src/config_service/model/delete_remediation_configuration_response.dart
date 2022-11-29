// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.delete_remediation_configuration_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_remediation_configuration_response.g.dart';

abstract class DeleteRemediationConfigurationResponse
    with
        _i1.AWSEquatable<DeleteRemediationConfigurationResponse>
    implements
        Built<DeleteRemediationConfigurationResponse,
            DeleteRemediationConfigurationResponseBuilder>,
        _i2.EmptyPayload {
  factory DeleteRemediationConfigurationResponse() {
    return _$DeleteRemediationConfigurationResponse._();
  }

  factory DeleteRemediationConfigurationResponse.build(
      [void Function(DeleteRemediationConfigurationResponseBuilder)
          updates]) = _$DeleteRemediationConfigurationResponse;

  const DeleteRemediationConfigurationResponse._();

  /// Constructs a [DeleteRemediationConfigurationResponse] from a [payload] and [response].
  factory DeleteRemediationConfigurationResponse.fromResponse(
    DeleteRemediationConfigurationResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DeleteRemediationConfigurationResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRemediationConfigurationResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteRemediationConfigurationResponse');
    return helper.toString();
  }
}

class DeleteRemediationConfigurationResponseAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<DeleteRemediationConfigurationResponse> {
  const DeleteRemediationConfigurationResponseAwsJson11Serializer()
      : super('DeleteRemediationConfigurationResponse');

  @override
  Iterable<Type> get types => const [
        DeleteRemediationConfigurationResponse,
        _$DeleteRemediationConfigurationResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteRemediationConfigurationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteRemediationConfigurationResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
