// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.user_events_batch;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'user_events_batch.g.dart';

abstract class UserEventsBatch
    with _i1.AWSEquatable<UserEventsBatch>
    implements Built<UserEventsBatch, UserEventsBatchBuilder> {
  factory UserEventsBatch(
      {required _i2.BuiltMap<String, _i3.Event> userEvents}) {
    return _$UserEventsBatch._(userEvents: userEvents);
  }

  factory UserEventsBatch.build(
      [void Function(UserEventsBatchBuilder) updates]) = _$UserEventsBatch;

  const UserEventsBatch._();

  static const List<_i4.SmithySerializer> serializers = [
    _UserEventsBatchRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserEventsBatchBuilder b) {}
  _i2.BuiltMap<String, _i3.Event> get userEvents;
  @override
  List<Object?> get props => [userEvents];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserEventsBatch');
    helper.add('userEvents', userEvents);
    return helper.toString();
  }
}

class _UserEventsBatchRestJson1Serializer
    extends _i4.StructuredSmithySerializer<UserEventsBatch> {
  const _UserEventsBatchRestJson1Serializer() : super('UserEventsBatch');

  @override
  Iterable<Type> get types => const [UserEventsBatch, _$UserEventsBatch];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  UserEventsBatch deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserEventsBatchBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'UserEvents':
          result.userEvents.replace((serializers.deserialize(value,
                  specifiedType: const FullType(
                      _i2.BuiltMap, [FullType(String), FullType(_i3.Event)]))
              as _i2.BuiltMap<String, _i3.Event>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserEventsBatch);
    final result = <Object?>[
      'UserEvents',
      serializers.serialize(payload.userEvents,
          specifiedType: const FullType(
              _i2.BuiltMap, [FullType(String), FullType(_i3.Event)]))
    ];
    return result;
  }
}
