// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_integration_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_integration_response_request.g.dart';

/// Represents a get integration response request.
abstract class GetIntegrationResponseRequest
    with
        _i1.HttpInput<GetIntegrationResponseRequestPayload>,
        _i2.AWSEquatable<GetIntegrationResponseRequest>
    implements
        Built<GetIntegrationResponseRequest,
            GetIntegrationResponseRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetIntegrationResponseRequestPayload> {
  /// Represents a get integration response request.
  factory GetIntegrationResponseRequest({
    required String httpMethod,
    required String resourceId,
    required String restApiId,
    required String statusCode,
  }) {
    return _$GetIntegrationResponseRequest._(
      httpMethod: httpMethod,
      resourceId: resourceId,
      restApiId: restApiId,
      statusCode: statusCode,
    );
  }

  /// Represents a get integration response request.
  factory GetIntegrationResponseRequest.build(
          [void Function(GetIntegrationResponseRequestBuilder) updates]) =
      _$GetIntegrationResponseRequest;

  const GetIntegrationResponseRequest._();

  factory GetIntegrationResponseRequest.fromRequest(
    GetIntegrationResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetIntegrationResponseRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
        if (labels['httpMethod'] != null) {
          b.httpMethod = labels['httpMethod']!;
        }
        if (labels['statusCode'] != null) {
          b.statusCode = labels['statusCode']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetIntegrationResponseRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIntegrationResponseRequestBuilder b) {}

  /// Specifies a get integration response request's HTTP method.
  String get httpMethod;

  /// Specifies a get integration response request's resource identifier.
  String get resourceId;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// Specifies a get integration response request's status code.
  String get statusCode;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
      case 'httpMethod':
        return httpMethod;
      case 'statusCode':
        return statusCode;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetIntegrationResponseRequestPayload getPayload() =>
      GetIntegrationResponseRequestPayload();
  @override
  List<Object?> get props => [
        httpMethod,
        resourceId,
        restApiId,
        statusCode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIntegrationResponseRequest');
    helper.add(
      'httpMethod',
      httpMethod,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'statusCode',
      statusCode,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetIntegrationResponseRequestPayload
    with
        _i2.AWSEquatable<GetIntegrationResponseRequestPayload>
    implements
        Built<GetIntegrationResponseRequestPayload,
            GetIntegrationResponseRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetIntegrationResponseRequestPayload(
      [void Function(GetIntegrationResponseRequestPayloadBuilder)
          updates]) = _$GetIntegrationResponseRequestPayload;

  const GetIntegrationResponseRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIntegrationResponseRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetIntegrationResponseRequestPayload');
    return helper.toString();
  }
}

class GetIntegrationResponseRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<GetIntegrationResponseRequestPayload> {
  const GetIntegrationResponseRequestRestJson1Serializer()
      : super('GetIntegrationResponseRequest');

  @override
  Iterable<Type> get types => const [
        GetIntegrationResponseRequest,
        _$GetIntegrationResponseRequest,
        GetIntegrationResponseRequestPayload,
        _$GetIntegrationResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetIntegrationResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetIntegrationResponseRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
