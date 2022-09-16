// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.get_user_profile_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_user_profile_request.g.dart';

abstract class GetUserProfileRequest
    with
        _i1.HttpInput<GetUserProfileRequestPayload>,
        _i2.AWSEquatable<GetUserProfileRequest>
    implements
        Built<GetUserProfileRequest, GetUserProfileRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetUserProfileRequestPayload> {
  factory GetUserProfileRequest(
      {required String applicationId, required String userId}) {
    return _$GetUserProfileRequest._(
        applicationId: applicationId, userId: userId);
  }

  factory GetUserProfileRequest.build(
          [void Function(GetUserProfileRequestBuilder) updates]) =
      _$GetUserProfileRequest;

  const GetUserProfileRequest._();

  factory GetUserProfileRequest.fromRequest(
          GetUserProfileRequestPayload payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      GetUserProfileRequest.build((b) {
        if (labels['applicationId'] != null) {
          b.applicationId = labels['applicationId']!;
        }
        if (labels['userId'] != null) {
          b.userId = labels['userId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    _GetUserProfileRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserProfileRequestBuilder b) {}
  String get applicationId;
  String get userId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'ApplicationId':
        return applicationId;
      case 'UserId':
        return userId;
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  GetUserProfileRequestPayload getPayload() => GetUserProfileRequestPayload();
  @override
  List<Object?> get props => [applicationId, userId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserProfileRequest');
    helper.add('applicationId', applicationId);
    helper.add('userId', userId);
    return helper.toString();
  }
}

@_i3.internal
abstract class GetUserProfileRequestPayload
    with
        _i2.AWSEquatable<GetUserProfileRequestPayload>
    implements
        Built<GetUserProfileRequestPayload,
            GetUserProfileRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetUserProfileRequestPayload(
          [void Function(GetUserProfileRequestPayloadBuilder) updates]) =
      _$GetUserProfileRequestPayload;

  const GetUserProfileRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserProfileRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserProfileRequestPayload');
    return helper.toString();
  }
}

class _GetUserProfileRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetUserProfileRequestPayload> {
  const _GetUserProfileRequestRestJson1Serializer()
      : super('GetUserProfileRequest');

  @override
  Iterable<Type> get types => const [
        GetUserProfileRequest,
        _$GetUserProfileRequest,
        GetUserProfileRequestPayload,
        _$GetUserProfileRequestPayload
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  GetUserProfileRequestPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GetUserProfileRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
