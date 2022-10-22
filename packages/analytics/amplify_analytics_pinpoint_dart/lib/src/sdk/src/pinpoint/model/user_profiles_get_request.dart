// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_profiles_get_request;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'user_profiles_get_request.g.dart';

abstract class UserProfilesGetRequest
    with _i1.AWSEquatable<UserProfilesGetRequest>
    implements Built<UserProfilesGetRequest, UserProfilesGetRequestBuilder> {
  factory UserProfilesGetRequest({_i2.BuiltList<String>? userIds}) {
    return _$UserProfilesGetRequest._(userIds: userIds);
  }

  factory UserProfilesGetRequest.build(
          [void Function(UserProfilesGetRequestBuilder) updates]) =
      _$UserProfilesGetRequest;

  const UserProfilesGetRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    _UserProfilesGetRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserProfilesGetRequestBuilder b) {}
  _i2.BuiltList<String>? get userIds;
  @override
  List<Object?> get props => [userIds];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserProfilesGetRequest');
    helper.add('userIds', userIds);
    return helper.toString();
  }
}

class _UserProfilesGetRequestRestJson1Serializer
    extends _i3.StructuredSmithySerializer<UserProfilesGetRequest> {
  const _UserProfilesGetRequestRestJson1Serializer()
      : super('UserProfilesGetRequest');

  @override
  Iterable<Type> get types =>
      const [UserProfilesGetRequest, _$UserProfilesGetRequest];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserProfilesGetRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserProfilesGetRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'UserIds':
          if (value != null) {
            result.userIds.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i2.BuiltList, [FullType(String)]))
                as _i2.BuiltList<String>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserProfilesGetRequest);
    final result = <Object?>[];
    if (payload.userIds != null) {
      result
        ..add('UserIds')
        ..add(serializers.serialize(payload.userIds!,
            specifiedType: const FullType(_i2.BuiltList, [FullType(String)])));
    }
    return result;
  }
}
