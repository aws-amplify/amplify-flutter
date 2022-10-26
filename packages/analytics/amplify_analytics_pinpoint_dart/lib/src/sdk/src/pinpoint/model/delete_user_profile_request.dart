// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.delete_user_profile_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_user_profile_request.g.dart';

abstract class DeleteUserProfileRequest
    with
        _i1.HttpInput<DeleteUserProfileRequestPayload>,
        _i2.AWSEquatable<DeleteUserProfileRequest>
    implements
        Built<DeleteUserProfileRequest, DeleteUserProfileRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteUserProfileRequestPayload> {
  factory DeleteUserProfileRequest(
      {required String applicationId,
      bool? deleteEndpoints,
      required String userId}) {
    return _$DeleteUserProfileRequest._(
        applicationId: applicationId,
        deleteEndpoints: deleteEndpoints,
        userId: userId);
  }

  factory DeleteUserProfileRequest.build(
          [void Function(DeleteUserProfileRequestBuilder) updates]) =
      _$DeleteUserProfileRequest;

  const DeleteUserProfileRequest._();

  factory DeleteUserProfileRequest.fromRequest(
          DeleteUserProfileRequestPayload payload,
          _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      DeleteUserProfileRequest.build((b) {
        if (request.queryParameters['delete-endpoints'] != null) {
          b.deleteEndpoints =
              request.queryParameters['delete-endpoints']! == 'true';
        }
        if (labels['applicationId'] != null) {
          b.applicationId = labels['applicationId']!;
        }
        if (labels['userId'] != null) {
          b.userId = labels['userId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    _DeleteUserProfileRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteUserProfileRequestBuilder b) {}
  String get applicationId;
  bool? get deleteEndpoints;
  String get userId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'ApplicationId':
        return applicationId;
      case 'UserId':
        return userId;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  DeleteUserProfileRequestPayload getPayload() =>
      DeleteUserProfileRequestPayload();
  @override
  List<Object?> get props => [applicationId, deleteEndpoints, userId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteUserProfileRequest');
    helper.add('applicationId', applicationId);
    helper.add('deleteEndpoints', deleteEndpoints);
    helper.add('userId', userId);
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteUserProfileRequestPayload
    with
        _i2.AWSEquatable<DeleteUserProfileRequestPayload>
    implements
        Built<DeleteUserProfileRequestPayload,
            DeleteUserProfileRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteUserProfileRequestPayload(
          [void Function(DeleteUserProfileRequestPayloadBuilder) updates]) =
      _$DeleteUserProfileRequestPayload;

  const DeleteUserProfileRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteUserProfileRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteUserProfileRequestPayload');
    return helper.toString();
  }
}

class _DeleteUserProfileRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteUserProfileRequestPayload> {
  const _DeleteUserProfileRequestRestJson1Serializer()
      : super('DeleteUserProfileRequest');

  @override
  Iterable<Type> get types => const [
        DeleteUserProfileRequest,
        _$DeleteUserProfileRequest,
        DeleteUserProfileRequestPayload,
        _$DeleteUserProfileRequestPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  DeleteUserProfileRequestPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return DeleteUserProfileRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
