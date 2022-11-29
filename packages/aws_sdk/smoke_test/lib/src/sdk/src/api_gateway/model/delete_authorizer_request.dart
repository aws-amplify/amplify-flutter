// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_authorizer_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_authorizer_request.g.dart';

/// Request to delete an existing Authorizer resource.
abstract class DeleteAuthorizerRequest
    with
        _i1.HttpInput<DeleteAuthorizerRequestPayload>,
        _i2.AWSEquatable<DeleteAuthorizerRequest>
    implements
        Built<DeleteAuthorizerRequest, DeleteAuthorizerRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteAuthorizerRequestPayload> {
  /// Request to delete an existing Authorizer resource.
  factory DeleteAuthorizerRequest({
    required String authorizerId,
    required String restApiId,
  }) {
    return _$DeleteAuthorizerRequest._(
      authorizerId: authorizerId,
      restApiId: restApiId,
    );
  }

  /// Request to delete an existing Authorizer resource.
  factory DeleteAuthorizerRequest.build(
          [void Function(DeleteAuthorizerRequestBuilder) updates]) =
      _$DeleteAuthorizerRequest;

  const DeleteAuthorizerRequest._();

  factory DeleteAuthorizerRequest.fromRequest(
    DeleteAuthorizerRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteAuthorizerRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['authorizerId'] != null) {
          b.authorizerId = labels['authorizerId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteAuthorizerRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteAuthorizerRequestBuilder b) {}

  /// The identifier of the Authorizer resource.
  String get authorizerId;

  /// The string identifier of the associated RestApi.
  String get restApiId;
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
  DeleteAuthorizerRequestPayload getPayload() =>
      DeleteAuthorizerRequestPayload();
  @override
  List<Object?> get props => [
        authorizerId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteAuthorizerRequest');
    helper.add(
      'authorizerId',
      authorizerId,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteAuthorizerRequestPayload
    with
        _i2.AWSEquatable<DeleteAuthorizerRequestPayload>
    implements
        Built<DeleteAuthorizerRequestPayload,
            DeleteAuthorizerRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteAuthorizerRequestPayload(
          [void Function(DeleteAuthorizerRequestPayloadBuilder) updates]) =
      _$DeleteAuthorizerRequestPayload;

  const DeleteAuthorizerRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteAuthorizerRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteAuthorizerRequestPayload');
    return helper.toString();
  }
}

class DeleteAuthorizerRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteAuthorizerRequestPayload> {
  const DeleteAuthorizerRequestRestJson1Serializer()
      : super('DeleteAuthorizerRequest');

  @override
  Iterable<Type> get types => const [
        DeleteAuthorizerRequest,
        _$DeleteAuthorizerRequest,
        DeleteAuthorizerRequestPayload,
        _$DeleteAuthorizerRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteAuthorizerRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteAuthorizerRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
