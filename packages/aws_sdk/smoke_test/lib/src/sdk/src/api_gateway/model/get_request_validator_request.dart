// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_request_validator_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_request_validator_request.g.dart';

/// Gets a RequestValidator of a given RestApi.
abstract class GetRequestValidatorRequest
    with
        _i1.HttpInput<GetRequestValidatorRequestPayload>,
        _i2.AWSEquatable<GetRequestValidatorRequest>
    implements
        Built<GetRequestValidatorRequest, GetRequestValidatorRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetRequestValidatorRequestPayload> {
  /// Gets a RequestValidator of a given RestApi.
  factory GetRequestValidatorRequest({
    required String requestValidatorId,
    required String restApiId,
  }) {
    return _$GetRequestValidatorRequest._(
      requestValidatorId: requestValidatorId,
      restApiId: restApiId,
    );
  }

  /// Gets a RequestValidator of a given RestApi.
  factory GetRequestValidatorRequest.build(
          [void Function(GetRequestValidatorRequestBuilder) updates]) =
      _$GetRequestValidatorRequest;

  const GetRequestValidatorRequest._();

  factory GetRequestValidatorRequest.fromRequest(
    GetRequestValidatorRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetRequestValidatorRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['requestValidatorId'] != null) {
          b.requestValidatorId = labels['requestValidatorId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetRequestValidatorRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRequestValidatorRequestBuilder b) {}

  /// The identifier of the RequestValidator to be retrieved.
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
  GetRequestValidatorRequestPayload getPayload() =>
      GetRequestValidatorRequestPayload();
  @override
  List<Object?> get props => [
        requestValidatorId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRequestValidatorRequest');
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
abstract class GetRequestValidatorRequestPayload
    with
        _i2.AWSEquatable<GetRequestValidatorRequestPayload>
    implements
        Built<GetRequestValidatorRequestPayload,
            GetRequestValidatorRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetRequestValidatorRequestPayload(
          [void Function(GetRequestValidatorRequestPayloadBuilder) updates]) =
      _$GetRequestValidatorRequestPayload;

  const GetRequestValidatorRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRequestValidatorRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetRequestValidatorRequestPayload');
    return helper.toString();
  }
}

class GetRequestValidatorRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetRequestValidatorRequestPayload> {
  const GetRequestValidatorRequestRestJson1Serializer()
      : super('GetRequestValidatorRequest');

  @override
  Iterable<Type> get types => const [
        GetRequestValidatorRequest,
        _$GetRequestValidatorRequest,
        GetRequestValidatorRequestPayload,
        _$GetRequestValidatorRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetRequestValidatorRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetRequestValidatorRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
