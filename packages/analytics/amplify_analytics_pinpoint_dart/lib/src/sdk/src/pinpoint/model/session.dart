// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.session; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
  factory Session({
    int? duration,
    required String id,
    required String startTimestamp,
    String? stopTimestamp,
  }) {
    return _$Session._(
      duration: duration,
      id: id,
      startTimestamp: startTimestamp,
      stopTimestamp: stopTimestamp,
    );
  }

  /// Provides information about a session.
  factory Session.build([void Function(SessionBuilder) updates]) = _$Session;

  const Session._();

  static const List<_i2.SmithySerializer<Session>> serializers = [
    SessionRestJson1Serializer()
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
  List<Object?> get props => [
        duration,
        id,
        startTimestamp,
        stopTimestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Session')
      ..add(
        'duration',
        duration,
      )
      ..add(
        'id',
        id,
      )
      ..add(
        'startTimestamp',
        startTimestamp,
      )
      ..add(
        'stopTimestamp',
        stopTimestamp,
      );
    return helper.toString();
  }
}

class SessionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<Session> {
  const SessionRestJson1Serializer() : super('Session');

  @override
  Iterable<Type> get types => const [
        Session,
        _$Session,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Session deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Duration':
          result.duration = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StartTimestamp':
          result.startTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StopTimestamp':
          result.stopTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Session object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Session(:duration, :id, :startTimestamp, :stopTimestamp) = object;
    result$.addAll([
      'Id',
      serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ),
      'StartTimestamp',
      serializers.serialize(
        startTimestamp,
        specifiedType: const FullType(String),
      ),
    ]);
    if (duration != null) {
      result$
        ..add('Duration')
        ..add(serializers.serialize(
          duration,
          specifiedType: const FullType(int),
        ));
    }
    if (stopTimestamp != null) {
      result$
        ..add('StopTimestamp')
        ..add(serializers.serialize(
          stopTimestamp,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
