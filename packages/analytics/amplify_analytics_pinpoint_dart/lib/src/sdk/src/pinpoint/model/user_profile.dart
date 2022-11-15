// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_profile;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/public_endpoint.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'user_profile.g.dart';

abstract class UserProfile
    with _i1.AWSEquatable<UserProfile>
    implements Built<UserProfile, UserProfileBuilder> {
  factory UserProfile(
      {_i2.BuiltList<_i3.PublicEndpoint>? endpoints,
      _i4.User? user,
      String? userId}) {
    return _$UserProfile._(endpoints: endpoints, user: user, userId: userId);
  }

  factory UserProfile.build([void Function(UserProfileBuilder) updates]) =
      _$UserProfile;

  const UserProfile._();

  static const List<_i5.SmithySerializer> serializers = [
    _UserProfileRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserProfileBuilder b) {}
  _i2.BuiltList<_i3.PublicEndpoint>? get endpoints;
  _i4.User? get user;
  String? get userId;
  @override
  List<Object?> get props => [endpoints, user, userId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserProfile');
    helper.add('endpoints', endpoints);
    helper.add('user', user);
    helper.add('userId', userId);
    return helper.toString();
  }
}

class _UserProfileRestJson1Serializer
    extends _i5.StructuredSmithySerializer<UserProfile> {
  const _UserProfileRestJson1Serializer() : super('UserProfile');

  @override
  Iterable<Type> get types => const [UserProfile, _$UserProfile];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserProfile deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserProfileBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Endpoints':
          if (value != null) {
            result.endpoints.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltList, [FullType(_i3.PublicEndpoint)]))
                as _i2.BuiltList<_i3.PublicEndpoint>));
          }
          break;
        case 'User':
          if (value != null) {
            result.user.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i4.User)) as _i4.User));
          }
          break;
        case 'UserId':
          if (value != null) {
            result.userId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserProfile);
    final result = <Object?>[];
    if (payload.endpoints != null) {
      result
        ..add('Endpoints')
        ..add(serializers.serialize(payload.endpoints!,
            specifiedType:
                const FullType(_i2.BuiltList, [FullType(_i3.PublicEndpoint)])));
    }
    if (payload.user != null) {
      result
        ..add('User')
        ..add(serializers.serialize(payload.user!,
            specifiedType: const FullType(_i4.User)));
    }
    if (payload.userId != null) {
      result
        ..add('UserId')
        ..add(serializers.serialize(payload.userId!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
