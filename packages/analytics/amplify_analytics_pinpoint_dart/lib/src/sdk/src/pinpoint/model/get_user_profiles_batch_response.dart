// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.get_user_profiles_batch_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profiles_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_user_profiles_batch_response.g.dart';

abstract class GetUserProfilesBatchResponse
    with
        _i1.AWSEquatable<GetUserProfilesBatchResponse>
    implements
        Built<GetUserProfilesBatchResponse,
            GetUserProfilesBatchResponseBuilder>,
        _i2.HasPayload<_i3.UserProfilesResponse> {
  factory GetUserProfilesBatchResponse(
      {required _i3.UserProfilesResponse userProfilesResponse}) {
    return _$GetUserProfilesBatchResponse._(
        userProfilesResponse: userProfilesResponse);
  }

  factory GetUserProfilesBatchResponse.build(
          [void Function(GetUserProfilesBatchResponseBuilder) updates]) =
      _$GetUserProfilesBatchResponse;

  const GetUserProfilesBatchResponse._();

  /// Constructs a [GetUserProfilesBatchResponse] from a [payload] and [response].
  factory GetUserProfilesBatchResponse.fromResponse(
          _i3.UserProfilesResponse payload, _i1.AWSBaseHttpResponse response) =>
      GetUserProfilesBatchResponse.build((b) {
        b.userProfilesResponse.replace(payload);
      });

  static const List<_i2.SmithySerializer> serializers = [
    _GetUserProfilesBatchResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserProfilesBatchResponseBuilder b) {}
  _i3.UserProfilesResponse get userProfilesResponse;
  @override
  _i3.UserProfilesResponse getPayload() => userProfilesResponse;
  @override
  List<Object?> get props => [userProfilesResponse];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserProfilesBatchResponse');
    helper.add('userProfilesResponse', userProfilesResponse);
    return helper.toString();
  }
}

class _GetUserProfilesBatchResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<Object> {
  const _GetUserProfilesBatchResponseRestJson1Serializer()
      : super('GetUserProfilesBatchResponse');

  @override
  Iterable<Type> get types =>
      const [GetUserProfilesBatchResponse, _$GetUserProfilesBatchResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i3.UserProfilesResponse deserialize(
      Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
            specifiedType: const FullType(_i3.UserProfilesResponse))
        as _i3.UserProfilesResponse);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is GetUserProfilesBatchResponse
        ? object.getPayload()
        : (object as _i3.UserProfilesResponse);
    return (serializers.serialize(payload,
        specifiedType: const FullType(_i3.UserProfilesResponse)) as Object);
  }
}
