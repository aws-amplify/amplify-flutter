// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_profile_update_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/public_endpoint.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'user_profile_update_response.g.dart';

abstract class UserProfileUpdateResponse
    with _i1.AWSEquatable<UserProfileUpdateResponse>
    implements
        Built<UserProfileUpdateResponse, UserProfileUpdateResponseBuilder> {
  factory UserProfileUpdateResponse(
      {_i2.BuiltList<_i3.PublicEndpoint>? endpoints, _i4.User? user}) {
    return _$UserProfileUpdateResponse._(endpoints: endpoints, user: user);
  }

  factory UserProfileUpdateResponse.build(
          [void Function(UserProfileUpdateResponseBuilder) updates]) =
      _$UserProfileUpdateResponse;

  const UserProfileUpdateResponse._();

  static const List<_i5.SmithySerializer> serializers = [
    _UserProfileUpdateResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserProfileUpdateResponseBuilder b) {}
  _i2.BuiltList<_i3.PublicEndpoint>? get endpoints;
  _i4.User? get user;
  @override
  List<Object?> get props => [endpoints, user];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserProfileUpdateResponse');
    helper.add('endpoints', endpoints);
    helper.add('user', user);
    return helper.toString();
  }
}

class _UserProfileUpdateResponseRestJson1Serializer
    extends _i5.StructuredSmithySerializer<UserProfileUpdateResponse> {
  const _UserProfileUpdateResponseRestJson1Serializer()
      : super('UserProfileUpdateResponse');

  @override
  Iterable<Type> get types =>
      const [UserProfileUpdateResponse, _$UserProfileUpdateResponse];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserProfileUpdateResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserProfileUpdateResponseBuilder();
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
    final payload = (object as UserProfileUpdateResponse);
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
