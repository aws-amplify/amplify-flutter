// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_profile_update_request;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/public_endpoint.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'user_profile_update_request.g.dart';

abstract class UserProfileUpdateRequest
    with _i1.AWSEquatable<UserProfileUpdateRequest>
    implements
        Built<UserProfileUpdateRequest, UserProfileUpdateRequestBuilder> {
  factory UserProfileUpdateRequest(
      {_i2.BuiltList<_i3.PublicEndpoint>? endpoints, _i4.User? user}) {
    return _$UserProfileUpdateRequest._(endpoints: endpoints, user: user);
  }

  factory UserProfileUpdateRequest.build(
          [void Function(UserProfileUpdateRequestBuilder) updates]) =
      _$UserProfileUpdateRequest;

  const UserProfileUpdateRequest._();

  static const List<_i5.SmithySerializer> serializers = [
    _UserProfileUpdateRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserProfileUpdateRequestBuilder b) {}
  _i2.BuiltList<_i3.PublicEndpoint>? get endpoints;
  _i4.User? get user;
  @override
  List<Object?> get props => [endpoints, user];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserProfileUpdateRequest');
    helper.add('endpoints', endpoints);
    helper.add('user', user);
    return helper.toString();
  }
}

class _UserProfileUpdateRequestRestJson1Serializer
    extends _i5.StructuredSmithySerializer<UserProfileUpdateRequest> {
  const _UserProfileUpdateRequestRestJson1Serializer()
      : super('UserProfileUpdateRequest');

  @override
  Iterable<Type> get types =>
      const [UserProfileUpdateRequest, _$UserProfileUpdateRequest];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserProfileUpdateRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserProfileUpdateRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserProfileUpdateRequest);
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
    return result;
  }
}
