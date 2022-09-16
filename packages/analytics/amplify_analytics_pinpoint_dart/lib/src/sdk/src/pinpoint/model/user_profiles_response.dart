// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_profiles_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_batch_failure.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profile.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'user_profiles_response.g.dart';

abstract class UserProfilesResponse
    with _i1.AWSEquatable<UserProfilesResponse>
    implements Built<UserProfilesResponse, UserProfilesResponseBuilder> {
  factory UserProfilesResponse(
      {_i2.BuiltList<_i3.UserBatchFailure>? failures,
      _i2.BuiltList<_i4.UserProfile>? userProfiles}) {
    return _$UserProfilesResponse._(
        failures: failures, userProfiles: userProfiles);
  }

  factory UserProfilesResponse.build(
          [void Function(UserProfilesResponseBuilder) updates]) =
      _$UserProfilesResponse;

  const UserProfilesResponse._();

  static const List<_i5.SmithySerializer> serializers = [
    _UserProfilesResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserProfilesResponseBuilder b) {}
  _i2.BuiltList<_i3.UserBatchFailure>? get failures;
  _i2.BuiltList<_i4.UserProfile>? get userProfiles;
  @override
  List<Object?> get props => [failures, userProfiles];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserProfilesResponse');
    helper.add('failures', failures);
    helper.add('userProfiles', userProfiles);
    return helper.toString();
  }
}

class _UserProfilesResponseRestJson1Serializer
    extends _i5.StructuredSmithySerializer<UserProfilesResponse> {
  const _UserProfilesResponseRestJson1Serializer()
      : super('UserProfilesResponse');

  @override
  Iterable<Type> get types =>
      const [UserProfilesResponse, _$UserProfilesResponse];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserProfilesResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserProfilesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Failures':
          if (value != null) {
            result.failures.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltList, [FullType(_i3.UserBatchFailure)]))
                as _i2.BuiltList<_i3.UserBatchFailure>));
          }
          break;
        case 'UserProfiles':
          if (value != null) {
            result.userProfiles.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltList, [FullType(_i4.UserProfile)]))
                as _i2.BuiltList<_i4.UserProfile>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserProfilesResponse);
    final result = <Object?>[];
    if (payload.failures != null) {
      result
        ..add('Failures')
        ..add(serializers.serialize(payload.failures!,
            specifiedType: const FullType(
                _i2.BuiltList, [FullType(_i3.UserBatchFailure)])));
    }
    if (payload.userProfiles != null) {
      result
        ..add('UserProfiles')
        ..add(serializers.serialize(payload.userProfiles!,
            specifiedType:
                const FullType(_i2.BuiltList, [FullType(_i4.UserProfile)])));
    }
    return result;
  }
}
