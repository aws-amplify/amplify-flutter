// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.get_user_profiles_batch_request;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profiles_get_request.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_user_profiles_batch_request.g.dart';

abstract class GetUserProfilesBatchRequest
    with
        _i1.HttpInput<_i2.UserProfilesGetRequest>,
        _i3.AWSEquatable<GetUserProfilesBatchRequest>
    implements
        Built<GetUserProfilesBatchRequest, GetUserProfilesBatchRequestBuilder>,
        _i1.HasPayload<_i2.UserProfilesGetRequest> {
  factory GetUserProfilesBatchRequest(
      {required String applicationId,
      required _i2.UserProfilesGetRequest userProfilesGetRequest}) {
    return _$GetUserProfilesBatchRequest._(
        applicationId: applicationId,
        userProfilesGetRequest: userProfilesGetRequest);
  }

  factory GetUserProfilesBatchRequest.build(
          [void Function(GetUserProfilesBatchRequestBuilder) updates]) =
      _$GetUserProfilesBatchRequest;

  const GetUserProfilesBatchRequest._();

  factory GetUserProfilesBatchRequest.fromRequest(
          _i2.UserProfilesGetRequest payload, _i3.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      GetUserProfilesBatchRequest.build((b) {
        b.userProfilesGetRequest.replace(payload);
        if (labels['applicationId'] != null) {
          b.applicationId = labels['applicationId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    _GetUserProfilesBatchRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserProfilesBatchRequestBuilder b) {}
  String get applicationId;
  _i2.UserProfilesGetRequest get userProfilesGetRequest;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'ApplicationId':
        return applicationId;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  _i2.UserProfilesGetRequest getPayload() => userProfilesGetRequest;
  @override
  List<Object?> get props => [applicationId, userProfilesGetRequest];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserProfilesBatchRequest');
    helper.add('applicationId', applicationId);
    helper.add('userProfilesGetRequest', userProfilesGetRequest);
    return helper.toString();
  }
}

class _GetUserProfilesBatchRequestRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const _GetUserProfilesBatchRequestRestJson1Serializer()
      : super('GetUserProfilesBatchRequest');

  @override
  Iterable<Type> get types =>
      const [GetUserProfilesBatchRequest, _$GetUserProfilesBatchRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i2.UserProfilesGetRequest deserialize(
      Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
            specifiedType: const FullType(_i2.UserProfilesGetRequest))
        as _i2.UserProfilesGetRequest);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is GetUserProfilesBatchRequest
        ? object.getPayload()
        : (object as _i2.UserProfilesGetRequest);
    return (serializers.serialize(payload,
        specifiedType: const FullType(_i2.UserProfilesGetRequest)) as Object);
  }
}
