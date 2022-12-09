// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_request_validator_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_request_validator_request.g.dart';

/// Deletes a specified RequestValidator of a given RestApi.
abstract class DeleteRequestValidatorRequest
    with
        _i1.HttpInput<DeleteRequestValidatorRequestPayload>,
        _i2.AWSEquatable<DeleteRequestValidatorRequest>
    implements
        Built<DeleteRequestValidatorRequest,
            DeleteRequestValidatorRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteRequestValidatorRequestPayload> {
  /// Deletes a specified RequestValidator of a given RestApi.
  factory DeleteRequestValidatorRequest({
    required String requestValidatorId,
    required String restApiId,
  }) {
    return _$DeleteRequestValidatorRequest._(
      requestValidatorId: requestValidatorId,
      restApiId: restApiId,
    );
  }

  /// Deletes a specified RequestValidator of a given RestApi.
  factory DeleteRequestValidatorRequest.build(
          [void Function(DeleteRequestValidatorRequestBuilder) updates]) =
      _$DeleteRequestValidatorRequest;

  const DeleteRequestValidatorRequest._();

  factory DeleteRequestValidatorRequest.fromRequest(
    DeleteRequestValidatorRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteRequestValidatorRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['requestValidatorId'] != null) {
          b.requestValidatorId = labels['requestValidatorId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteRequestValidatorRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRequestValidatorRequestBuilder b) {}

  /// The identifier of the RequestValidator to be deleted.
  String get requestValidatorId;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'requestValidatorId':
        return requestValidatorId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteRequestValidatorRequestPayload getPayload() =>
      DeleteRequestValidatorRequestPayload();
  @override
  List<Object?> get props => [
        requestValidatorId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteRequestValidatorRequest');
    helper.add(
      'requestValidatorId',
      requestValidatorId,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteRequestValidatorRequestPayload
    with
        _i2.AWSEquatable<DeleteRequestValidatorRequestPayload>
    implements
        Built<DeleteRequestValidatorRequestPayload,
            DeleteRequestValidatorRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteRequestValidatorRequestPayload(
      [void Function(DeleteRequestValidatorRequestPayloadBuilder)
          updates]) = _$DeleteRequestValidatorRequestPayload;

  const DeleteRequestValidatorRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRequestValidatorRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteRequestValidatorRequestPayload');
    return helper.toString();
  }
}

class DeleteRequestValidatorRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<DeleteRequestValidatorRequestPayload> {
  const DeleteRequestValidatorRequestRestJson1Serializer()
      : super('DeleteRequestValidatorRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRequestValidatorRequest,
        _$DeleteRequestValidatorRequest,
        DeleteRequestValidatorRequestPayload,
        _$DeleteRequestValidatorRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteRequestValidatorRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteRequestValidatorRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
