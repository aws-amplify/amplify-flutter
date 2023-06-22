// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_gateway_responses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_gateway_responses_request.g.dart';

/// Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.
abstract class GetGatewayResponsesRequest
    with
        _i1.HttpInput<GetGatewayResponsesRequestPayload>,
        _i2.AWSEquatable<GetGatewayResponsesRequest>
    implements
        Built<GetGatewayResponsesRequest, GetGatewayResponsesRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetGatewayResponsesRequestPayload> {
  /// Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.
  factory GetGatewayResponsesRequest({
    required String restApiId,
    String? position,
    int? limit,
  }) {
    return _$GetGatewayResponsesRequest._(
      restApiId: restApiId,
      position: position,
      limit: limit,
    );
  }

  /// Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.
  factory GetGatewayResponsesRequest.build(
          [void Function(GetGatewayResponsesRequestBuilder) updates]) =
      _$GetGatewayResponsesRequest;

  const GetGatewayResponsesRequest._();

  factory GetGatewayResponsesRequest.fromRequest(
    GetGatewayResponsesRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetGatewayResponsesRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer<GetGatewayResponsesRequestPayload>>
      serializers = [GetGatewayResponsesRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetGatewayResponsesRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The current pagination position in the paged result set. The GatewayResponse collection does not support pagination and the position does not apply here.
  String? get position;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500. The GatewayResponses collection does not support pagination and the limit does not apply here.
  int? get limit;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetGatewayResponsesRequestPayload getPayload() =>
      GetGatewayResponsesRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        position,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetGatewayResponsesRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'position',
        position,
      )
      ..add(
        'limit',
        limit,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetGatewayResponsesRequestPayload
    with
        _i2.AWSEquatable<GetGatewayResponsesRequestPayload>
    implements
        Built<GetGatewayResponsesRequestPayload,
            GetGatewayResponsesRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetGatewayResponsesRequestPayload(
          [void Function(GetGatewayResponsesRequestPayloadBuilder) updates]) =
      _$GetGatewayResponsesRequestPayload;

  const GetGatewayResponsesRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetGatewayResponsesRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetGatewayResponsesRequestPayload');
    return helper.toString();
  }
}

class GetGatewayResponsesRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetGatewayResponsesRequestPayload> {
  const GetGatewayResponsesRequestRestJson1Serializer()
      : super('GetGatewayResponsesRequest');

  @override
  Iterable<Type> get types => const [
        GetGatewayResponsesRequest,
        _$GetGatewayResponsesRequest,
        GetGatewayResponsesRequestPayload,
        _$GetGatewayResponsesRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetGatewayResponsesRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetGatewayResponsesRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetGatewayResponsesRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
