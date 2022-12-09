// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_integration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_integration_request.g.dart';

/// Represents a request to get the integration configuration.
abstract class GetIntegrationRequest
    with
        _i1.HttpInput<GetIntegrationRequestPayload>,
        _i2.AWSEquatable<GetIntegrationRequest>
    implements
        Built<GetIntegrationRequest, GetIntegrationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetIntegrationRequestPayload> {
  /// Represents a request to get the integration configuration.
  factory GetIntegrationRequest({
    required String httpMethod,
    required String resourceId,
    required String restApiId,
  }) {
    return _$GetIntegrationRequest._(
      httpMethod: httpMethod,
      resourceId: resourceId,
      restApiId: restApiId,
    );
  }

  /// Represents a request to get the integration configuration.
  factory GetIntegrationRequest.build(
          [void Function(GetIntegrationRequestBuilder) updates]) =
      _$GetIntegrationRequest;

  const GetIntegrationRequest._();

  factory GetIntegrationRequest.fromRequest(
    GetIntegrationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetIntegrationRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
        if (labels['httpMethod'] != null) {
          b.httpMethod = labels['httpMethod']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetIntegrationRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIntegrationRequestBuilder b) {}

  /// Specifies a get integration request's HTTP method.
  String get httpMethod;

  /// Specifies a get integration request's resource identifier
  String get resourceId;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
      case 'httpMethod':
        return httpMethod;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetIntegrationRequestPayload getPayload() => GetIntegrationRequestPayload();
  @override
  List<Object?> get props => [
        httpMethod,
        resourceId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIntegrationRequest');
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
    return helper.toString();
  }
}

@_i3.internal
abstract class GetIntegrationRequestPayload
    with
        _i2.AWSEquatable<GetIntegrationRequestPayload>
    implements
        Built<GetIntegrationRequestPayload,
            GetIntegrationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetIntegrationRequestPayload(
          [void Function(GetIntegrationRequestPayloadBuilder) updates]) =
      _$GetIntegrationRequestPayload;

  const GetIntegrationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIntegrationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIntegrationRequestPayload');
    return helper.toString();
  }
}

class GetIntegrationRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetIntegrationRequestPayload> {
  const GetIntegrationRequestRestJson1Serializer()
      : super('GetIntegrationRequest');

  @override
  Iterable<Type> get types => const [
        GetIntegrationRequest,
        _$GetIntegrationRequest,
        GetIntegrationRequestPayload,
        _$GetIntegrationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetIntegrationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetIntegrationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
