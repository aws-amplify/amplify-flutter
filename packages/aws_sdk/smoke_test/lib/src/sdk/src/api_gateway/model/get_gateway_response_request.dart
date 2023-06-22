// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_gateway_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response_type.dart'
    as _i3;

part 'get_gateway_response_request.g.dart';

/// Gets a GatewayResponse of a specified response type on the given RestApi.
abstract class GetGatewayResponseRequest
    with
        _i1.HttpInput<GetGatewayResponseRequestPayload>,
        _i2.AWSEquatable<GetGatewayResponseRequest>
    implements
        Built<GetGatewayResponseRequest, GetGatewayResponseRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetGatewayResponseRequestPayload> {
  /// Gets a GatewayResponse of a specified response type on the given RestApi.
  factory GetGatewayResponseRequest({
    required String restApiId,
    required _i3.GatewayResponseType responseType,
  }) {
    return _$GetGatewayResponseRequest._(
      restApiId: restApiId,
      responseType: responseType,
    );
  }

  /// Gets a GatewayResponse of a specified response type on the given RestApi.
  factory GetGatewayResponseRequest.build(
          [void Function(GetGatewayResponseRequestBuilder) updates]) =
      _$GetGatewayResponseRequest;

  const GetGatewayResponseRequest._();

  factory GetGatewayResponseRequest.fromRequest(
    GetGatewayResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetGatewayResponseRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['responseType'] != null) {
          b.responseType =
              _i3.GatewayResponseType.values.byValue(labels['responseType']!);
        }
      });

  static const List<_i1.SmithySerializer<GetGatewayResponseRequestPayload>>
      serializers = [GetGatewayResponseRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetGatewayResponseRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The response type of the associated GatewayResponse.
  _i3.GatewayResponseType get responseType;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'responseType':
        return responseType.value;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetGatewayResponseRequestPayload getPayload() =>
      GetGatewayResponseRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        responseType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetGatewayResponseRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'responseType',
        responseType,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class GetGatewayResponseRequestPayload
    with
        _i2.AWSEquatable<GetGatewayResponseRequestPayload>
    implements
        Built<GetGatewayResponseRequestPayload,
            GetGatewayResponseRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetGatewayResponseRequestPayload(
          [void Function(GetGatewayResponseRequestPayloadBuilder) updates]) =
      _$GetGatewayResponseRequestPayload;

  const GetGatewayResponseRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetGatewayResponseRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetGatewayResponseRequestPayload');
    return helper.toString();
  }
}

class GetGatewayResponseRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetGatewayResponseRequestPayload> {
  const GetGatewayResponseRequestRestJson1Serializer()
      : super('GetGatewayResponseRequest');

  @override
  Iterable<Type> get types => const [
        GetGatewayResponseRequest,
        _$GetGatewayResponseRequest,
        GetGatewayResponseRequestPayload,
        _$GetGatewayResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetGatewayResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetGatewayResponseRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetGatewayResponseRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
