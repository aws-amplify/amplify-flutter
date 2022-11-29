// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_api_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_api_key_request.g.dart';

/// A request to get information about the current ApiKey resource.
abstract class GetApiKeyRequest
    with
        _i1.HttpInput<GetApiKeyRequestPayload>,
        _i2.AWSEquatable<GetApiKeyRequest>
    implements
        Built<GetApiKeyRequest, GetApiKeyRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetApiKeyRequestPayload> {
  /// A request to get information about the current ApiKey resource.
  factory GetApiKeyRequest({
    required String apiKey,
    bool? includeValue,
  }) {
    return _$GetApiKeyRequest._(
      apiKey: apiKey,
      includeValue: includeValue,
    );
  }

  /// A request to get information about the current ApiKey resource.
  factory GetApiKeyRequest.build(
      [void Function(GetApiKeyRequestBuilder) updates]) = _$GetApiKeyRequest;

  const GetApiKeyRequest._();

  factory GetApiKeyRequest.fromRequest(
    GetApiKeyRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetApiKeyRequest.build((b) {
        if (request.queryParameters['includeValue'] != null) {
          b.includeValue = request.queryParameters['includeValue']! == 'true';
        }
        if (labels['apiKey'] != null) {
          b.apiKey = labels['apiKey']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetApiKeyRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetApiKeyRequestBuilder b) {}

  /// The identifier of the ApiKey resource.
  String get apiKey;

  /// A boolean flag to specify whether (`true`) or not (`false`) the result contains the key value.
  bool? get includeValue;
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
  GetApiKeyRequestPayload getPayload() => GetApiKeyRequestPayload();
  @override
  List<Object?> get props => [
        apiKey,
        includeValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetApiKeyRequest');
    helper.add(
      'apiKey',
      apiKey,
    );
    helper.add(
      'includeValue',
      includeValue,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetApiKeyRequestPayload
    with _i2.AWSEquatable<GetApiKeyRequestPayload>
    implements
        Built<GetApiKeyRequestPayload, GetApiKeyRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetApiKeyRequestPayload(
          [void Function(GetApiKeyRequestPayloadBuilder) updates]) =
      _$GetApiKeyRequestPayload;

  const GetApiKeyRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetApiKeyRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetApiKeyRequestPayload');
    return helper.toString();
  }
}

class GetApiKeyRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetApiKeyRequestPayload> {
  const GetApiKeyRequestRestJson1Serializer() : super('GetApiKeyRequest');

  @override
  Iterable<Type> get types => const [
        GetApiKeyRequest,
        _$GetApiKeyRequest,
        GetApiKeyRequestPayload,
        _$GetApiKeyRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetApiKeyRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetApiKeyRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
