// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.session;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'session.g.dart';

/// Provides information about a session.
abstract class Session
    with _i1.AWSEquatable<Session>
    implements Built<Session, SessionBuilder> {
  /// Provides information about a session.
  factory Session(
      {int? duration,
      required String id,
      required String startTimestamp,
      String? stopTimestamp}) {
    return _$Session._(
        duration: duration,
        id: id,
        startTimestamp: startTimestamp,
        stopTimestamp: stopTimestamp);
  }

  /// Provides information about a session.
  factory Session.build([void Function(SessionBuilder) updates]) = _$Session;

  const Session._();

  static const List<_i2.SmithySerializer> serializers = [
    _SessionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SessionBuilder b) {}

  /// The duration of the session, in milliseconds.
  int? get duration;

  /// The unique identifier for the session.
  String get id;

  /// The date and time when the session began.
  String get startTimestamp;

  /// The date and time when the session ended.
  String? get stopTimestamp;
  @override
  List<Object?> get props => [duration, id, startTimestamp, stopTimestamp];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Session');
    helper.add('duration', duration);
    helper.add('id', id);
    helper.add('startTimestamp', startTimestamp);
    helper.add('stopTimestamp', stopTimestamp);
    return helper.toString();
  }
}

class _SessionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<Session> {
  const _SessionRestJson1Serializer() : super('Session');

  @override
  Iterable<Type> get types => const [Session, _$Session];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  Session deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = SessionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Duration':
          if (value != null) {
            result.duration = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'Id':
          result.id = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'StartTimestamp':
          result.startTimestamp = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'StopTimestamp':
          if (value != null) {
            result.stopTimestamp = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as Session);
    final result = <Object?>[
      'Id',
      serializers.serialize(payload.id, specifiedType: const FullType(String)),
      'StartTimestamp',
      serializers.serialize(payload.startTimestamp,
          specifiedType: const FullType(String))
    ];
    if (payload.duration != null) {
      result
        ..add('Duration')
        ..add(serializers.serialize(payload.duration!,
            specifiedType: const FullType(int)));
    }
    if (payload.stopTimestamp != null) {
      result
        ..add('StopTimestamp')
        ..add(serializers.serialize(payload.stopTimestamp!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
