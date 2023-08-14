// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.get_endpoint_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_response.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_endpoint_response.g.dart';

abstract class GetEndpointResponse
    with _i1.AWSEquatable<GetEndpointResponse>
    implements
        Built<GetEndpointResponse, GetEndpointResponseBuilder>,
        _i2.HasPayload<EndpointResponse> {
  factory GetEndpointResponse({required EndpointResponse endpointResponse}) {
    return _$GetEndpointResponse._(endpointResponse: endpointResponse);
  }

  factory GetEndpointResponse.build(
          [void Function(GetEndpointResponseBuilder) updates]) =
      _$GetEndpointResponse;

  const GetEndpointResponse._();

  /// Constructs a [GetEndpointResponse] from a [payload] and [response].
  factory GetEndpointResponse.fromResponse(
    EndpointResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetEndpointResponse.build((b) {
        b.endpointResponse.replace(payload);
      });

  static const List<_i2.SmithySerializer<EndpointResponse>> serializers = [
    GetEndpointResponseRestJson1Serializer()
  ];

  /// Provides information about the channel type and other settings for an endpoint.
  EndpointResponse get endpointResponse;
  @override
  EndpointResponse getPayload() => endpointResponse;
  @override
  List<Object?> get props => [endpointResponse];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetEndpointResponse')
      ..add(
        'endpointResponse',
        endpointResponse,
      );
    return helper.toString();
  }
}

class GetEndpointResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<EndpointResponse> {
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
  EndpointResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(EndpointResponse),
    ) as EndpointResponse);
  }

  @override
  Object serialize(
    Serializers serializers,
    EndpointResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(EndpointResponse),
    )!;
  }
}
