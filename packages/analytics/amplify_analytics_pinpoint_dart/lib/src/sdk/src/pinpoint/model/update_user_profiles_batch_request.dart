// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.update_user_profiles_batch_request;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profiles_update_request.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_user_profiles_batch_request.g.dart';

abstract class UpdateUserProfilesBatchRequest
    with
        _i1.HttpInput<_i2.UserProfilesUpdateRequest>,
        _i3.AWSEquatable<UpdateUserProfilesBatchRequest>
    implements
        Built<UpdateUserProfilesBatchRequest,
            UpdateUserProfilesBatchRequestBuilder>,
        _i1.HasPayload<_i2.UserProfilesUpdateRequest> {
  factory UpdateUserProfilesBatchRequest(
      {required String applicationId,
      required _i2.UserProfilesUpdateRequest userProfilesUpdateRequest}) {
    return _$UpdateUserProfilesBatchRequest._(
        applicationId: applicationId,
        userProfilesUpdateRequest: userProfilesUpdateRequest);
  }

  factory UpdateUserProfilesBatchRequest.build(
          [void Function(UpdateUserProfilesBatchRequestBuilder) updates]) =
      _$UpdateUserProfilesBatchRequest;

  const UpdateUserProfilesBatchRequest._();

  factory UpdateUserProfilesBatchRequest.fromRequest(
          _i2.UserProfilesUpdateRequest payload, _i3.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      UpdateUserProfilesBatchRequest.build((b) {
        b.userProfilesUpdateRequest.replace(payload);
        if (labels['applicationId'] != null) {
          b.applicationId = labels['applicationId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    _UpdateUserProfilesBatchRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateUserProfilesBatchRequestBuilder b) {}
  String get applicationId;
  _i2.UserProfilesUpdateRequest get userProfilesUpdateRequest;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'ApplicationId':
        return applicationId;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  _i2.UserProfilesUpdateRequest getPayload() => userProfilesUpdateRequest;
  @override
  List<Object?> get props => [applicationId, userProfilesUpdateRequest];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateUserProfilesBatchRequest');
    helper.add('applicationId', applicationId);
    helper.add('userProfilesUpdateRequest', userProfilesUpdateRequest);
    return helper.toString();
  }
}

class _UpdateUserProfilesBatchRequestRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _UpdateUserProfilesBatchRequestRestJson1Serializer()
      : super('UpdateUserProfilesBatchRequest');

  @override
  Iterable<Type> get types =>
      const [UpdateUserProfilesBatchRequest, _$UpdateUserProfilesBatchRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.UserProfilesUpdateRequest deserialize(
      Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
            specifiedType: const FullType(_i2.UserProfilesUpdateRequest))
        as _i2.UserProfilesUpdateRequest);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is UpdateUserProfilesBatchRequest
        ? object.getPayload()
        : (object as _i2.UserProfilesUpdateRequest);
    return (serializers.serialize(payload,
            specifiedType: const FullType(_i2.UserProfilesUpdateRequest))
        as Object);
  }
}
