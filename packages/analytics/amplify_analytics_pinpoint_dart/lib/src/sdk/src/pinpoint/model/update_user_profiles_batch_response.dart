// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.update_user_profiles_batch_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profiles_update_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'update_user_profiles_batch_response.g.dart';

abstract class UpdateUserProfilesBatchResponse
    with
        _i1.AWSEquatable<UpdateUserProfilesBatchResponse>
    implements
        Built<UpdateUserProfilesBatchResponse,
            UpdateUserProfilesBatchResponseBuilder>,
        _i2.HasPayload<_i3.UserProfilesUpdateResponse> {
  factory UpdateUserProfilesBatchResponse(
      {required _i3.UserProfilesUpdateResponse userProfilesUpdateResponse}) {
    return _$UpdateUserProfilesBatchResponse._(
        userProfilesUpdateResponse: userProfilesUpdateResponse);
  }

  factory UpdateUserProfilesBatchResponse.build(
          [void Function(UpdateUserProfilesBatchResponseBuilder) updates]) =
      _$UpdateUserProfilesBatchResponse;

  const UpdateUserProfilesBatchResponse._();

  /// Constructs a [UpdateUserProfilesBatchResponse] from a [payload] and [response].
  factory UpdateUserProfilesBatchResponse.fromResponse(
          _i3.UserProfilesUpdateResponse payload,
          _i1.AWSBaseHttpResponse response) =>
      UpdateUserProfilesBatchResponse.build((b) {
        b.userProfilesUpdateResponse.replace(payload);
      });

  static const List<_i2.SmithySerializer> serializers = [
    _UpdateUserProfilesBatchResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateUserProfilesBatchResponseBuilder b) {}
  _i3.UserProfilesUpdateResponse get userProfilesUpdateResponse;
  @override
  _i3.UserProfilesUpdateResponse getPayload() => userProfilesUpdateResponse;
  @override
  List<Object?> get props => [userProfilesUpdateResponse];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateUserProfilesBatchResponse');
    helper.add('userProfilesUpdateResponse', userProfilesUpdateResponse);
    return helper.toString();
  }
}

class _UpdateUserProfilesBatchResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<Object> {
  const _UpdateUserProfilesBatchResponseRestJson1Serializer()
      : super('UpdateUserProfilesBatchResponse');

  @override
  Iterable<Type> get types => const [
        UpdateUserProfilesBatchResponse,
        _$UpdateUserProfilesBatchResponse
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i3.UserProfilesUpdateResponse deserialize(
      Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
            specifiedType: const FullType(_i3.UserProfilesUpdateResponse))
        as _i3.UserProfilesUpdateResponse);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is UpdateUserProfilesBatchResponse
        ? object.getPayload()
        : (object as _i3.UserProfilesUpdateResponse);
    return (serializers.serialize(payload,
            specifiedType: const FullType(_i3.UserProfilesUpdateResponse))
        as Object);
  }
}
