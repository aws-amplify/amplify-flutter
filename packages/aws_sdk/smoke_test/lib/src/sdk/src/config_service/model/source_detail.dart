// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.source_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/event_source.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/maximum_execution_frequency.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/message_type.dart'
    as _i3;

part 'source_detail.g.dart';

/// Provides the source and the message types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for `SourceDetail` only for custom rules.
abstract class SourceDetail
    with _i1.AWSEquatable<SourceDetail>
    implements Built<SourceDetail, SourceDetailBuilder> {
  /// Provides the source and the message types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for `SourceDetail` only for custom rules.
  factory SourceDetail({
    _i2.EventSource? eventSource,
    _i3.MessageType? messageType,
    _i4.MaximumExecutionFrequency? maximumExecutionFrequency,
  }) {
    return _$SourceDetail._(
      eventSource: eventSource,
      messageType: messageType,
      maximumExecutionFrequency: maximumExecutionFrequency,
    );
  }

  /// Provides the source and the message types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for `SourceDetail` only for custom rules.
  factory SourceDetail.build([void Function(SourceDetailBuilder) updates]) =
      _$SourceDetail;

  const SourceDetail._();

  static const List<_i5.SmithySerializer<SourceDetail>> serializers = [
    SourceDetailAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SourceDetailBuilder b) {}

  /// The source of the event, such as an Amazon Web Services service, that triggers Config to evaluate your Amazon Web Services resources.
  _i2.EventSource? get eventSource;

  /// The type of notification that triggers Config to run an evaluation for a rule. You can specify the following notification types:
  ///
  /// *   `ConfigurationItemChangeNotification` \- Triggers an evaluation when Config delivers a configuration item as a result of a resource change.
  ///
  /// *   `OversizedConfigurationItemChangeNotification` \- Triggers an evaluation when Config delivers an oversized configuration item. Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.
  ///
  /// *   `ScheduledNotification` \- Triggers a periodic evaluation at the frequency specified for `MaximumExecutionFrequency`.
  ///
  /// *   `ConfigurationSnapshotDeliveryCompleted` \- Triggers a periodic evaluation when Config delivers a configuration snapshot.
  ///
  ///
  /// If you want your custom rule to be triggered by configuration changes, specify two SourceDetail objects, one for `ConfigurationItemChangeNotification` and one for `OversizedConfigurationItemChangeNotification`.
  _i3.MessageType? get messageType;

  /// The frequency at which you want Config to run evaluations for a custom rule with a periodic trigger. If you specify a value for `MaximumExecutionFrequency`, then `MessageType` must use the `ScheduledNotification` value.
  ///
  /// By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the `MaximumExecutionFrequency` parameter.
  ///
  /// Based on the valid value you choose, Config runs evaluations once for each valid value. For example, if you choose `Three_Hours`, Config runs evaluations once every three hours. In this case, `Three_Hours` is the frequency of this rule.
  _i4.MaximumExecutionFrequency? get maximumExecutionFrequency;
  @override
  List<Object?> get props => [
        eventSource,
        messageType,
        maximumExecutionFrequency,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SourceDetail')
      ..add(
        'eventSource',
        eventSource,
      )
      ..add(
        'messageType',
        messageType,
      )
      ..add(
        'maximumExecutionFrequency',
        maximumExecutionFrequency,
      );
    return helper.toString();
  }
}

class SourceDetailAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<SourceDetail> {
  const SourceDetailAwsJson11Serializer() : super('SourceDetail');

  @override
  Iterable<Type> get types => const [
        SourceDetail,
        _$SourceDetail,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  SourceDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EventSource':
          result.eventSource = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EventSource),
          ) as _i2.EventSource);
        case 'MessageType':
          result.messageType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.MessageType),
          ) as _i3.MessageType);
        case 'MaximumExecutionFrequency':
          result.maximumExecutionFrequency = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.MaximumExecutionFrequency),
          ) as _i4.MaximumExecutionFrequency);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SourceDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SourceDetail(:eventSource, :messageType, :maximumExecutionFrequency) =
        object;
    if (eventSource != null) {
      result$
        ..add('EventSource')
        ..add(serializers.serialize(
          eventSource,
          specifiedType: const FullType(_i2.EventSource),
        ));
    }
    if (messageType != null) {
      result$
        ..add('MessageType')
        ..add(serializers.serialize(
          messageType,
          specifiedType: const FullType(_i3.MessageType),
        ));
    }
    if (maximumExecutionFrequency != null) {
      result$
        ..add('MaximumExecutionFrequency')
        ..add(serializers.serialize(
          maximumExecutionFrequency,
          specifiedType: const FullType(_i4.MaximumExecutionFrequency),
        ));
    }
    return result$;
  }
}
