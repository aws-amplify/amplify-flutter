// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_events_request;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_events_batch.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'user_events_request.g.dart';

abstract class UserEventsRequest
    with _i1.AWSEquatable<UserEventsRequest>
    implements Built<UserEventsRequest, UserEventsRequestBuilder> {
  factory UserEventsRequest(
      {required _i2.BuiltMap<String, _i3.UserEventsBatch>
          userEventsBatchItem}) {
    return _$UserEventsRequest._(userEventsBatchItem: userEventsBatchItem);
  }

  factory UserEventsRequest.build(
      [void Function(UserEventsRequestBuilder) updates]) = _$UserEventsRequest;

  const UserEventsRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    _UserEventsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserEventsRequestBuilder b) {}
  _i2.BuiltMap<String, _i3.UserEventsBatch> get userEventsBatchItem;
  @override
  List<Object?> get props => [userEventsBatchItem];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserEventsRequest');
    helper.add('userEventsBatchItem', userEventsBatchItem);
    return helper.toString();
  }
}

class _UserEventsRequestRestJson1Serializer
    extends _i4.StructuredSmithySerializer<UserEventsRequest> {
  const _UserEventsRequestRestJson1Serializer() : super('UserEventsRequest');

  @override
  Iterable<Type> get types => const [UserEventsRequest, _$UserEventsRequest];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserEventsRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserEventsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'UserEventsBatchItem':
          result.userEventsBatchItem.replace((serializers.deserialize(value,
              specifiedType: const FullType(_i2.BuiltMap, [
                FullType(String),
                FullType(_i3.UserEventsBatch)
              ])) as _i2.BuiltMap<String, _i3.UserEventsBatch>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserEventsRequest);
    final result = <Object?>[
      'UserEventsBatchItem',
      serializers.serialize(payload.userEventsBatchItem,
          specifiedType: const FullType(
              _i2.BuiltMap, [FullType(String), FullType(_i3.UserEventsBatch)]))
    ];
    return result;
  }
}
