// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_authorizer_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_authorizer_request.g.dart';

/// Request to describe an existing Authorizer resource.
abstract class GetAuthorizerRequest
    with
        _i1.HttpInput<GetAuthorizerRequestPayload>,
        _i2.AWSEquatable<GetAuthorizerRequest>
    implements
        Built<GetAuthorizerRequest, GetAuthorizerRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetAuthorizerRequestPayload> {
  /// Request to describe an existing Authorizer resource.
  factory GetAuthorizerRequest({
    required String restApiId,
    required String authorizerId,
  }) {
    return _$GetAuthorizerRequest._(
      restApiId: restApiId,
      authorizerId: authorizerId,
    );
  }

  /// Request to describe an existing Authorizer resource.
  factory GetAuthorizerRequest.build(
          [void Function(GetAuthorizerRequestBuilder) updates]) =
      _$GetAuthorizerRequest;

  const GetAuthorizerRequest._();

  factory GetAuthorizerRequest.fromRequest(
    GetAuthorizerRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetAuthorizerRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['authorizerId'] != null) {
          b.authorizerId = labels['authorizerId']!;
        }
      });

  static const List<_i1.SmithySerializer<GetAuthorizerRequestPayload>>
      serializers = [GetAuthorizerRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAuthorizerRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The identifier of the Authorizer resource.
  String get authorizerId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'authorizerId':
        return authorizerId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetAuthorizerRequestPayload getPayload() => GetAuthorizerRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        authorizerId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetAuthorizerRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'authorizerId',
        authorizerId,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetAuthorizerRequestPayload
    with _i2.AWSEquatable<GetAuthorizerRequestPayload>
    implements
        Built<GetAuthorizerRequestPayload, GetAuthorizerRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetAuthorizerRequestPayload(
          [void Function(GetAuthorizerRequestPayloadBuilder) updates]) =
      _$GetAuthorizerRequestPayload;

  const GetAuthorizerRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAuthorizerRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetAuthorizerRequestPayload');
    return helper.toString();
  }
}

class GetAuthorizerRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetAuthorizerRequestPayload> {
  const GetAuthorizerRequestRestJson1Serializer()
      : super('GetAuthorizerRequest');

  @override
  Iterable<Type> get types => const [
        GetAuthorizerRequest,
        _$GetAuthorizerRequest,
        GetAuthorizerRequestPayload,
        _$GetAuthorizerRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetAuthorizerRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetAuthorizerRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetAuthorizerRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
