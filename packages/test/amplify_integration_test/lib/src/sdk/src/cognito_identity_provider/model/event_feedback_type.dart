// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.model.event_feedback_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/feedback_value_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'event_feedback_type.g.dart';

/// Specifies the event feedback type.
abstract class EventFeedbackType
    with _i1.AWSEquatable<EventFeedbackType>
    implements Built<EventFeedbackType, EventFeedbackTypeBuilder> {
  /// Specifies the event feedback type.
  factory EventFeedbackType({
    required _i2.FeedbackValueType feedbackValue,
    required String provider,
    DateTime? feedbackDate,
  }) {
    return _$EventFeedbackType._(
      feedbackValue: feedbackValue,
      provider: provider,
      feedbackDate: feedbackDate,
    );
  }

  /// Specifies the event feedback type.
  factory EventFeedbackType.build(
      [void Function(EventFeedbackTypeBuilder) updates]) = _$EventFeedbackType;

  const EventFeedbackType._();

  static const List<_i3.SmithySerializer<EventFeedbackType>> serializers = [
    EventFeedbackTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EventFeedbackTypeBuilder b) {}

  /// The authentication event feedback value. When you provide a `FeedbackValue` value of `valid`, you tell Amazon Cognito that you trust a user session where Amazon Cognito has evaluated some level of risk. When you provide a `FeedbackValue` value of `invalid`, you tell Amazon Cognito that you don't trust a user session, or you don't believe that Amazon Cognito evaluated a high-enough risk level.
  _i2.FeedbackValueType get feedbackValue;

  /// The provider.
  String get provider;

  /// The event feedback date.
  DateTime? get feedbackDate;
  @override
  List<Object?> get props => [
        feedbackValue,
        provider,
        feedbackDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventFeedbackType')
      ..add(
        'feedbackValue',
        feedbackValue,
      )
      ..add(
        'provider',
        provider,
      )
      ..add(
        'feedbackDate',
        feedbackDate,
      );
    return helper.toString();
  }
}

class EventFeedbackTypeAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<EventFeedbackType> {
  const EventFeedbackTypeAwsJson11Serializer() : super('EventFeedbackType');

  @override
  Iterable<Type> get types => const [
        EventFeedbackType,
        _$EventFeedbackType,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  EventFeedbackType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventFeedbackTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'FeedbackValue':
          result.feedbackValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.FeedbackValueType),
          ) as _i2.FeedbackValueType);
        case 'Provider':
          result.provider = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FeedbackDate':
          result.feedbackDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EventFeedbackType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EventFeedbackType(:feedbackValue, :provider, :feedbackDate) = object;
    result$.addAll([
      'FeedbackValue',
      serializers.serialize(
        feedbackValue,
        specifiedType: const FullType(_i2.FeedbackValueType),
      ),
      'Provider',
      serializers.serialize(
        provider,
        specifiedType: const FullType(String),
      ),
    ]);
    if (feedbackDate != null) {
      result$
        ..add('FeedbackDate')
        ..add(serializers.serialize(
          feedbackDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
