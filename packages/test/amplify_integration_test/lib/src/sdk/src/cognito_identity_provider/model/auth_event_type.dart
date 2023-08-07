// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_integration_test.cognito_identity_provider.model.auth_event_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/challenge_response_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_context_data_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_feedback_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_response_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_risk_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/event_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'auth_event_type.g.dart';

/// The authentication event type.
abstract class AuthEventType
    with _i1.AWSEquatable<AuthEventType>
    implements Built<AuthEventType, AuthEventTypeBuilder> {
  /// The authentication event type.
  factory AuthEventType({
    String? eventId,
    EventType? eventType,
    DateTime? creationDate,
    EventResponseType? eventResponse,
    EventRiskType? eventRisk,
    List<ChallengeResponseType>? challengeResponses,
    EventContextDataType? eventContextData,
    EventFeedbackType? eventFeedback,
  }) {
    return _$AuthEventType._(
      eventId: eventId,
      eventType: eventType,
      creationDate: creationDate,
      eventResponse: eventResponse,
      eventRisk: eventRisk,
      challengeResponses:
          challengeResponses == null ? null : _i2.BuiltList(challengeResponses),
      eventContextData: eventContextData,
      eventFeedback: eventFeedback,
    );
  }

  /// The authentication event type.
  factory AuthEventType.build([void Function(AuthEventTypeBuilder) updates]) =
      _$AuthEventType;

  const AuthEventType._();

  static const List<_i3.SmithySerializer<AuthEventType>> serializers = [
    AuthEventTypeAwsJson11Serializer()
  ];

  /// The event ID.
  String? get eventId;

  /// The event type.
  EventType? get eventType;

  /// The date and time, in [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format, when the item was created.
  DateTime? get creationDate;

  /// The event response.
  EventResponseType? get eventResponse;

  /// The event risk.
  EventRiskType? get eventRisk;

  /// The challenge responses.
  _i2.BuiltList<ChallengeResponseType>? get challengeResponses;

  /// The user context data captured at the time of an event request. This value provides additional information about the client from which event the request is received.
  EventContextDataType? get eventContextData;

  /// A flag specifying the user feedback captured at the time of an event request is good or bad.
  EventFeedbackType? get eventFeedback;
  @override
  List<Object?> get props => [
        eventId,
        eventType,
        creationDate,
        eventResponse,
        eventRisk,
        challengeResponses,
        eventContextData,
        eventFeedback,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AuthEventType')
      ..add(
        'eventId',
        eventId,
      )
      ..add(
        'eventType',
        eventType,
      )
      ..add(
        'creationDate',
        creationDate,
      )
      ..add(
        'eventResponse',
        eventResponse,
      )
      ..add(
        'eventRisk',
        eventRisk,
      )
      ..add(
        'challengeResponses',
        challengeResponses,
      )
      ..add(
        'eventContextData',
        eventContextData,
      )
      ..add(
        'eventFeedback',
        eventFeedback,
      );
    return helper.toString();
  }
}

class AuthEventTypeAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<AuthEventType> {
  const AuthEventTypeAwsJson11Serializer() : super('AuthEventType');

  @override
  Iterable<Type> get types => const [
        AuthEventType,
        _$AuthEventType,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AuthEventType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthEventTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EventId':
          result.eventId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EventType':
          result.eventType = (serializers.deserialize(
            value,
            specifiedType: const FullType(EventType),
          ) as EventType);
        case 'CreationDate':
          result.creationDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'EventResponse':
          result.eventResponse = (serializers.deserialize(
            value,
            specifiedType: const FullType(EventResponseType),
          ) as EventResponseType);
        case 'EventRisk':
          result.eventRisk.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EventRiskType),
          ) as EventRiskType));
        case 'ChallengeResponses':
          result.challengeResponses.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ChallengeResponseType)],
            ),
          ) as _i2.BuiltList<ChallengeResponseType>));
        case 'EventContextData':
          result.eventContextData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EventContextDataType),
          ) as EventContextDataType));
        case 'EventFeedback':
          result.eventFeedback.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EventFeedbackType),
          ) as EventFeedbackType));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AuthEventType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AuthEventType(
      :eventId,
      :eventType,
      :creationDate,
      :eventResponse,
      :eventRisk,
      :challengeResponses,
      :eventContextData,
      :eventFeedback
    ) = object;
    if (eventId != null) {
      result$
        ..add('EventId')
        ..add(serializers.serialize(
          eventId,
          specifiedType: const FullType(String),
        ));
    }
    if (eventType != null) {
      result$
        ..add('EventType')
        ..add(serializers.serialize(
          eventType,
          specifiedType: const FullType(EventType),
        ));
    }
    if (creationDate != null) {
      result$
        ..add('CreationDate')
        ..add(serializers.serialize(
          creationDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (eventResponse != null) {
      result$
        ..add('EventResponse')
        ..add(serializers.serialize(
          eventResponse,
          specifiedType: const FullType(EventResponseType),
        ));
    }
    if (eventRisk != null) {
      result$
        ..add('EventRisk')
        ..add(serializers.serialize(
          eventRisk,
          specifiedType: const FullType(EventRiskType),
        ));
    }
    if (challengeResponses != null) {
      result$
        ..add('ChallengeResponses')
        ..add(serializers.serialize(
          challengeResponses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ChallengeResponseType)],
          ),
        ));
    }
    if (eventContextData != null) {
      result$
        ..add('EventContextData')
        ..add(serializers.serialize(
          eventContextData,
          specifiedType: const FullType(EventContextDataType),
        ));
    }
    if (eventFeedback != null) {
      result$
        ..add('EventFeedback')
        ..add(serializers.serialize(
          eventFeedback,
          specifiedType: const FullType(EventFeedbackType),
        ));
    }
    return result$;
  }
}
