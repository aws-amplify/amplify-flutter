// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.get_user_profile_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profile_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_user_profile_response.g.dart';

abstract class GetUserProfileResponse
    with _i1.AWSEquatable<GetUserProfileResponse>
    implements
        Built<GetUserProfileResponse, GetUserProfileResponseBuilder>,
        _i2.HasPayload<_i3.UserProfileResponse> {
  factory GetUserProfileResponse(
      {required _i3.UserProfileResponse userProfileResponse}) {
    return _$GetUserProfileResponse._(userProfileResponse: userProfileResponse);
  }

  factory GetUserProfileResponse.build(
          [void Function(GetUserProfileResponseBuilder) updates]) =
      _$GetUserProfileResponse;

  const GetUserProfileResponse._();

  /// Constructs a [GetUserProfileResponse] from a [payload] and [response].
  factory GetUserProfileResponse.fromResponse(
          _i3.UserProfileResponse payload, _i1.AWSBaseHttpResponse response) =>
      GetUserProfileResponse.build((b) {
        b.userProfileResponse.replace(payload);
      });

  static const List<_i2.SmithySerializer> serializers = [
    _GetUserProfileResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserProfileResponseBuilder b) {}
  _i3.UserProfileResponse get userProfileResponse;
  @override
  _i3.UserProfileResponse getPayload() => userProfileResponse;
  @override
  List<Object?> get props => [userProfileResponse];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserProfileResponse');
    helper.add('userProfileResponse', userProfileResponse);
    return helper.toString();
  }
}

class _GetUserProfileResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<Object> {
  const _GetUserProfileResponseRestJson1Serializer()
      : super('GetUserProfileResponse');

  @override
  Iterable<Type> get types =>
      const [GetUserProfileResponse, _$GetUserProfileResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i3.UserProfileResponse deserialize(
      Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
            specifiedType: const FullType(_i3.UserProfileResponse))
        as _i3.UserProfileResponse);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is GetUserProfileResponse
        ? object.getPayload()
        : (object as _i3.UserProfileResponse);
    return (serializers.serialize(payload,
        specifiedType: const FullType(_i3.UserProfileResponse)) as Object);
  }
}
