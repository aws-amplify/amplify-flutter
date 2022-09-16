// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_events_item_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event_item_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'user_events_item_response.g.dart';

abstract class UserEventsItemResponse
    with _i1.AWSEquatable<UserEventsItemResponse>
    implements Built<UserEventsItemResponse, UserEventsItemResponseBuilder> {
  factory UserEventsItemResponse(
      {_i2.BuiltMap<String, _i3.EventItemResponse>? userEventsItemResponse}) {
    return _$UserEventsItemResponse._(
        userEventsItemResponse: userEventsItemResponse);
  }

  factory UserEventsItemResponse.build(
          [void Function(UserEventsItemResponseBuilder) updates]) =
      _$UserEventsItemResponse;

  const UserEventsItemResponse._();

  static const List<_i4.SmithySerializer> serializers = [
    _UserEventsItemResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserEventsItemResponseBuilder b) {}
  _i2.BuiltMap<String, _i3.EventItemResponse>? get userEventsItemResponse;
  @override
  List<Object?> get props => [userEventsItemResponse];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserEventsItemResponse');
    helper.add('userEventsItemResponse', userEventsItemResponse);
    return helper.toString();
  }
}

class _UserEventsItemResponseRestJson1Serializer
    extends _i4.StructuredSmithySerializer<UserEventsItemResponse> {
  const _UserEventsItemResponseRestJson1Serializer()
      : super('UserEventsItemResponse');

  @override
  Iterable<Type> get types =>
      const [UserEventsItemResponse, _$UserEventsItemResponse];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserEventsItemResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserEventsItemResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'UserEventsItemResponse':
          if (value != null) {
            result.userEventsItemResponse.replace((serializers.deserialize(
                value,
                specifiedType: const FullType(_i2.BuiltMap, [
                  FullType(String),
                  FullType(_i3.EventItemResponse)
                ])) as _i2.BuiltMap<String, _i3.EventItemResponse>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserEventsItemResponse);
    final result = <Object?>[];
    if (payload.userEventsItemResponse != null) {
      result
        ..add('UserEventsItemResponse')
        ..add(serializers.serialize(payload.userEventsItemResponse!,
            specifiedType: const FullType(_i2.BuiltMap,
                [FullType(String), FullType(_i3.EventItemResponse)])));
    }
    return result;
  }
}
