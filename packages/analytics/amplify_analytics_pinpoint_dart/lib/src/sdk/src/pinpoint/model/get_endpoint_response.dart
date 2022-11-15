// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.get_endpoint_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_endpoint_response.g.dart';

abstract class GetEndpointResponse
    with _i1.AWSEquatable<GetEndpointResponse>
    implements
        Built<GetEndpointResponse, GetEndpointResponseBuilder>,
        _i2.HasPayload<_i3.EndpointResponse> {
  factory GetEndpointResponse(
      {required _i3.EndpointResponse endpointResponse}) {
    return _$GetEndpointResponse._(endpointResponse: endpointResponse);
  }

  factory GetEndpointResponse.build(
          [void Function(GetEndpointResponseBuilder) updates]) =
      _$GetEndpointResponse;

  const GetEndpointResponse._();

  /// Constructs a [GetEndpointResponse] from a [payload] and [response].
  factory GetEndpointResponse.fromResponse(
    _i3.EndpointResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetEndpointResponse.build((b) {
        b.endpointResponse.replace(payload);
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetEndpointResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetEndpointResponseBuilder b) {}

  /// Provides information about the channel type and other settings for an endpoint.
  _i3.EndpointResponse get endpointResponse;
  @override
  _i3.EndpointResponse getPayload() => endpointResponse;
  @override
  List<Object?> get props => [endpointResponse];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetEndpointResponse');
    helper.add(
      'endpointResponse',
      endpointResponse,
    );
    return helper.toString();
  }
}

class GetEndpointResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<_i3.EndpointResponse> {
  const GetEndpointResponseRestJson1Serializer() : super('GetEndpointResponse');

  @override
  Iterable<Type> get types => const [
        GetEndpointResponse,
        _$GetEndpointResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i3.EndpointResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i3.EndpointResponse),
    ) as _i3.EndpointResponse);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is GetEndpointResponse
        ? object.getPayload()
        : (object as _i3.EndpointResponse);
    return (serializers.serialize(
      payload,
      specifiedType: const FullType(_i3.EndpointResponse),
    ) as Object);
  }
}
