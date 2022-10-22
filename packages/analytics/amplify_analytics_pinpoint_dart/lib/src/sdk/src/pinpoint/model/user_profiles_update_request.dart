// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_profiles_update_request;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profile.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'user_profiles_update_request.g.dart';

abstract class UserProfilesUpdateRequest
    with _i1.AWSEquatable<UserProfilesUpdateRequest>
    implements
        Built<UserProfilesUpdateRequest, UserProfilesUpdateRequestBuilder> {
  factory UserProfilesUpdateRequest(
      {_i2.BuiltList<_i3.UserProfile>? userProfiles}) {
    return _$UserProfilesUpdateRequest._(userProfiles: userProfiles);
  }

  factory UserProfilesUpdateRequest.build(
          [void Function(UserProfilesUpdateRequestBuilder) updates]) =
      _$UserProfilesUpdateRequest;

  const UserProfilesUpdateRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    _UserProfilesUpdateRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserProfilesUpdateRequestBuilder b) {}
  _i2.BuiltList<_i3.UserProfile>? get userProfiles;
  @override
  List<Object?> get props => [userProfiles];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserProfilesUpdateRequest');
    helper.add('userProfiles', userProfiles);
    return helper.toString();
  }
}

class _UserProfilesUpdateRequestRestJson1Serializer
    extends _i4.StructuredSmithySerializer<UserProfilesUpdateRequest> {
  const _UserProfilesUpdateRequestRestJson1Serializer()
      : super('UserProfilesUpdateRequest');

  @override
  Iterable<Type> get types =>
      const [UserProfilesUpdateRequest, _$UserProfilesUpdateRequest];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserProfilesUpdateRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserProfilesUpdateRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'UserProfiles':
          if (value != null) {
            result.userProfiles.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltList, [FullType(_i3.UserProfile)]))
                as _i2.BuiltList<_i3.UserProfile>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserProfilesUpdateRequest);
    final result = <Object?>[];
    if (payload.userProfiles != null) {
      result
        ..add('UserProfiles')
        ..add(serializers.serialize(payload.userProfiles!,
            specifiedType:
                const FullType(_i2.BuiltList, [FullType(_i3.UserProfile)])));
    }
    return result;
  }
}
