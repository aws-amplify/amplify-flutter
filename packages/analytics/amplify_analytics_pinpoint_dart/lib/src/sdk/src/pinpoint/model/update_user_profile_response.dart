// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.update_user_profile_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profile_update_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'update_user_profile_response.g.dart';

abstract class UpdateUserProfileResponse
    with _i1.AWSEquatable<UpdateUserProfileResponse>
    implements
        Built<UpdateUserProfileResponse, UpdateUserProfileResponseBuilder>,
        _i2.HasPayload<_i3.UserProfileUpdateResponse> {
  factory UpdateUserProfileResponse(
      {required _i3.UserProfileUpdateResponse userProfileUpdateResponse}) {
    return _$UpdateUserProfileResponse._(
        userProfileUpdateResponse: userProfileUpdateResponse);
  }

  factory UpdateUserProfileResponse.build(
          [void Function(UpdateUserProfileResponseBuilder) updates]) =
      _$UpdateUserProfileResponse;

  const UpdateUserProfileResponse._();

  /// Constructs a [UpdateUserProfileResponse] from a [payload] and [response].
  factory UpdateUserProfileResponse.fromResponse(
          _i3.UserProfileUpdateResponse payload,
          _i1.AWSBaseHttpResponse response) =>
      UpdateUserProfileResponse.build((b) {
        b.userProfileUpdateResponse.replace(payload);
      });

  static const List<_i2.SmithySerializer> serializers = [
    _UpdateUserProfileResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateUserProfileResponseBuilder b) {}
  _i3.UserProfileUpdateResponse get userProfileUpdateResponse;
  @override
  _i3.UserProfileUpdateResponse getPayload() => userProfileUpdateResponse;
  @override
  List<Object?> get props => [userProfileUpdateResponse];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateUserProfileResponse');
    helper.add('userProfileUpdateResponse', userProfileUpdateResponse);
    return helper.toString();
  }
}

class _UpdateUserProfileResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<Object> {
  const _UpdateUserProfileResponseRestJson1Serializer()
      : super('UpdateUserProfileResponse');

  @override
  Iterable<Type> get types =>
      const [UpdateUserProfileResponse, _$UpdateUserProfileResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i3.UserProfileUpdateResponse deserialize(
      Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
            specifiedType: const FullType(_i3.UserProfileUpdateResponse))
        as _i3.UserProfileUpdateResponse);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is UpdateUserProfileResponse
        ? object.getPayload()
        : (object as _i3.UserProfileUpdateResponse);
    return (serializers.serialize(payload,
            specifiedType: const FullType(_i3.UserProfileUpdateResponse))
        as Object);
  }
}
