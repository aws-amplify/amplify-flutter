// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.update_user_profile_request;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profile_update_request.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_user_profile_request.g.dart';

abstract class UpdateUserProfileRequest
    with
        _i1.HttpInput<_i2.UserProfileUpdateRequest>,
        _i3.AWSEquatable<UpdateUserProfileRequest>
    implements
        Built<UpdateUserProfileRequest, UpdateUserProfileRequestBuilder>,
        _i1.HasPayload<_i2.UserProfileUpdateRequest> {
  factory UpdateUserProfileRequest(
      {required String applicationId,
      required String userId,
      required _i2.UserProfileUpdateRequest userProfileUpdateRequest}) {
    return _$UpdateUserProfileRequest._(
        applicationId: applicationId,
        userId: userId,
        userProfileUpdateRequest: userProfileUpdateRequest);
  }

  factory UpdateUserProfileRequest.build(
          [void Function(UpdateUserProfileRequestBuilder) updates]) =
      _$UpdateUserProfileRequest;

  const UpdateUserProfileRequest._();

  factory UpdateUserProfileRequest.fromRequest(
          _i2.UserProfileUpdateRequest payload, _i3.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      UpdateUserProfileRequest.build((b) {
        b.userProfileUpdateRequest.replace(payload);
        if (labels['applicationId'] != null) {
          b.applicationId = labels['applicationId']!;
        }
        if (labels['userId'] != null) {
          b.userId = labels['userId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    _UpdateUserProfileRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateUserProfileRequestBuilder b) {}
  String get applicationId;
  String get userId;
  _i2.UserProfileUpdateRequest get userProfileUpdateRequest;
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
  _i2.UserProfileUpdateRequest getPayload() => userProfileUpdateRequest;
  @override
  List<Object?> get props => [applicationId, userId, userProfileUpdateRequest];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateUserProfileRequest');
    helper.add('applicationId', applicationId);
    helper.add('userId', userId);
    helper.add('userProfileUpdateRequest', userProfileUpdateRequest);
    return helper.toString();
  }
}

class _UpdateUserProfileRequestRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _UpdateUserProfileRequestRestJson1Serializer()
      : super('UpdateUserProfileRequest');

  @override
  Iterable<Type> get types =>
      const [UpdateUserProfileRequest, _$UpdateUserProfileRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.UserProfileUpdateRequest deserialize(
      Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
            specifiedType: const FullType(_i2.UserProfileUpdateRequest))
        as _i2.UserProfileUpdateRequest);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is UpdateUserProfileRequest
        ? object.getPayload()
        : (object as _i2.UserProfileUpdateRequest);
    return (serializers.serialize(payload,
        specifiedType: const FullType(_i2.UserProfileUpdateRequest)) as Object);
  }
}
