// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_profiles_update_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_batch_failure.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'user_profiles_update_response.g.dart';

abstract class UserProfilesUpdateResponse
    with _i1.AWSEquatable<UserProfilesUpdateResponse>
    implements
        Built<UserProfilesUpdateResponse, UserProfilesUpdateResponseBuilder> {
  factory UserProfilesUpdateResponse(
      {_i2.BuiltList<_i3.UserBatchFailure>? failures,
      _i2.BuiltList<String>? userIds}) {
    return _$UserProfilesUpdateResponse._(failures: failures, userIds: userIds);
  }

  factory UserProfilesUpdateResponse.build(
          [void Function(UserProfilesUpdateResponseBuilder) updates]) =
      _$UserProfilesUpdateResponse;

  const UserProfilesUpdateResponse._();

  static const List<_i4.SmithySerializer> serializers = [
    _UserProfilesUpdateResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserProfilesUpdateResponseBuilder b) {}
  _i2.BuiltList<_i3.UserBatchFailure>? get failures;
  _i2.BuiltList<String>? get userIds;
  @override
  List<Object?> get props => [failures, userIds];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserProfilesUpdateResponse');
    helper.add('failures', failures);
    helper.add('userIds', userIds);
    return helper.toString();
  }
}

class _UserProfilesUpdateResponseRestJson1Serializer
    extends _i4.StructuredSmithySerializer<UserProfilesUpdateResponse> {
  const _UserProfilesUpdateResponseRestJson1Serializer()
      : super('UserProfilesUpdateResponse');

  @override
  Iterable<Type> get types =>
      const [UserProfilesUpdateResponse, _$UserProfilesUpdateResponse];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserProfilesUpdateResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserProfilesUpdateResponseBuilder();
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
    final payload = (object as UserProfilesUpdateResponse);
    final result = <Object?>[];
    if (payload.failures != null) {
      result
        ..add('Failures')
        ..add(serializers.serialize(payload.failures!,
            specifiedType: const FullType(
                _i2.BuiltList, [FullType(_i3.UserBatchFailure)])));
    }
    if (payload.userIds != null) {
      result
        ..add('UserIds')
        ..add(serializers.serialize(payload.userIds!,
            specifiedType: const FullType(_i2.BuiltList, [FullType(String)])));
    }
    return result;
  }
}
