// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_rest_api_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_rest_api_request.g.dart';

/// The GET request to list an existing RestApi defined for your collection.
abstract class GetRestApiRequest
    with
        _i1.HttpInput<GetRestApiRequestPayload>,
        _i2.AWSEquatable<GetRestApiRequest>
    implements
        Built<GetRestApiRequest, GetRestApiRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetRestApiRequestPayload> {
  /// The GET request to list an existing RestApi defined for your collection.
  factory GetRestApiRequest({required String restApiId}) {
    return _$GetRestApiRequest._(restApiId: restApiId);
  }

  /// The GET request to list an existing RestApi defined for your collection.
  factory GetRestApiRequest.build(
      [void Function(GetRestApiRequestBuilder) updates]) = _$GetRestApiRequest;

  const GetRestApiRequest._();

  factory GetRestApiRequest.fromRequest(
    GetRestApiRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetRestApiRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer<GetRestApiRequestPayload>>
      serializers = [GetRestApiRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRestApiRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;
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
  GetRestApiRequestPayload getPayload() => GetRestApiRequestPayload();
  @override
  List<Object?> get props => [restApiId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRestApiRequest')
      ..add(
        'restApiId',
        restApiId,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetRestApiRequestPayload
    with _i2.AWSEquatable<GetRestApiRequestPayload>
    implements
        Built<GetRestApiRequestPayload, GetRestApiRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetRestApiRequestPayload(
          [void Function(GetRestApiRequestPayloadBuilder) updates]) =
      _$GetRestApiRequestPayload;

  const GetRestApiRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRestApiRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRestApiRequestPayload');
    return helper.toString();
  }
}

class GetRestApiRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetRestApiRequestPayload> {
  const GetRestApiRequestRestJson1Serializer() : super('GetRestApiRequest');

  @override
  Iterable<Type> get types => const [
        GetRestApiRequest,
        _$GetRestApiRequest,
        GetRestApiRequestPayload,
        _$GetRestApiRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetRestApiRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetRestApiRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetRestApiRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
