// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_json1_v1.api_gateway.model.get_rest_apis_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_rest_apis_request.g.dart';

abstract class GetRestApisRequest
    with
        _i1.HttpInput<GetRestApisRequestPayload>,
        _i2.AWSEquatable<GetRestApisRequest>
    implements
        Built<GetRestApisRequest, GetRestApisRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetRestApisRequestPayload> {
  factory GetRestApisRequest({String? position, int? limit}) {
    return _$GetRestApisRequest._(position: position, limit: limit);
  }

  factory GetRestApisRequest.build([
    void Function(GetRestApisRequestBuilder) updates,
  ]) = _$GetRestApisRequest;

  const GetRestApisRequest._();

  factory GetRestApisRequest.fromRequest(
    GetRestApisRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => GetRestApisRequest.build((b) {
    if (request.queryParameters['position'] != null) {
      b.position = request.queryParameters['position']!;
    }
    if (request.queryParameters['limit'] != null) {
      b.limit = int.parse(request.queryParameters['limit']!);
    }
  });

  static const List<_i1.SmithySerializer<GetRestApisRequestPayload>>
  serializers = [GetRestApisRequestRestJson1Serializer()];

  String? get position;
  int? get limit;
  @override
  GetRestApisRequestPayload getPayload() => GetRestApisRequestPayload();

  @override
  List<Object?> get props => [position, limit];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRestApisRequest')
      ..add('position', position)
      ..add('limit', limit);
    return helper.toString();
  }
}

@_i3.internal
abstract class GetRestApisRequestPayload
    with _i2.AWSEquatable<GetRestApisRequestPayload>
    implements
        Built<GetRestApisRequestPayload, GetRestApisRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetRestApisRequestPayload([
    void Function(GetRestApisRequestPayloadBuilder) updates,
  ]) = _$GetRestApisRequestPayload;

  const GetRestApisRequestPayload._();

  @override
  List<Object?> get props => [];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRestApisRequestPayload');
    return helper.toString();
  }
}

class GetRestApisRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetRestApisRequestPayload> {
  const GetRestApisRequestRestJson1Serializer() : super('GetRestApisRequest');

  @override
  Iterable<Type> get types => const [
    GetRestApisRequest,
    _$GetRestApisRequest,
    GetRestApisRequestPayload,
    _$GetRestApisRequestPayload,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];

  @override
  GetRestApisRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetRestApisRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetRestApisRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) => const <Object?>[];
}
