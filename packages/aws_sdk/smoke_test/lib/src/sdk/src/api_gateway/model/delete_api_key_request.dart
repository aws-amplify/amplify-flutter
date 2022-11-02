// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_api_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_api_key_request.g.dart';

/// A request to delete the ApiKey resource.
abstract class DeleteApiKeyRequest
    with
        _i1.HttpInput<DeleteApiKeyRequestPayload>,
        _i2.AWSEquatable<DeleteApiKeyRequest>
    implements
        Built<DeleteApiKeyRequest, DeleteApiKeyRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteApiKeyRequestPayload> {
  /// A request to delete the ApiKey resource.
  factory DeleteApiKeyRequest({required String apiKey}) {
    return _$DeleteApiKeyRequest._(apiKey: apiKey);
  }

  /// A request to delete the ApiKey resource.
  factory DeleteApiKeyRequest.build(
          [void Function(DeleteApiKeyRequestBuilder) updates]) =
      _$DeleteApiKeyRequest;

  const DeleteApiKeyRequest._();

  factory DeleteApiKeyRequest.fromRequest(
    DeleteApiKeyRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteApiKeyRequest.build((b) {
        if (labels['apiKey'] != null) {
          b.apiKey = labels['apiKey']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteApiKeyRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteApiKeyRequestBuilder b) {}

  /// The identifier of the ApiKey resource to be deleted.
  String get apiKey;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'apiKey':
        return apiKey;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteApiKeyRequestPayload getPayload() => DeleteApiKeyRequestPayload();
  @override
  List<Object?> get props => [apiKey];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteApiKeyRequest');
    helper.add(
      'apiKey',
      apiKey,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteApiKeyRequestPayload
    with _i2.AWSEquatable<DeleteApiKeyRequestPayload>
    implements
        Built<DeleteApiKeyRequestPayload, DeleteApiKeyRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteApiKeyRequestPayload(
          [void Function(DeleteApiKeyRequestPayloadBuilder) updates]) =
      _$DeleteApiKeyRequestPayload;

  const DeleteApiKeyRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteApiKeyRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteApiKeyRequestPayload');
    return helper.toString();
  }
}

class DeleteApiKeyRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteApiKeyRequestPayload> {
  const DeleteApiKeyRequestRestJson1Serializer() : super('DeleteApiKeyRequest');

  @override
  Iterable<Type> get types => const [
        DeleteApiKeyRequest,
        _$DeleteApiKeyRequest,
        DeleteApiKeyRequestPayload,
        _$DeleteApiKeyRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteApiKeyRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteApiKeyRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
