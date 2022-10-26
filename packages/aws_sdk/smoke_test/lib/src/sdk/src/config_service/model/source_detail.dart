// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.source_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/event_source.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/maximum_execution_frequency.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/message_type.dart'
    as _i4;

part 'source_detail.g.dart';

/// Provides the source and the message types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for `SourceDetail` only for custom rules.
abstract class SourceDetail
    with _i1.AWSEquatable<SourceDetail>
    implements Built<SourceDetail, SourceDetailBuilder> {
  /// Provides the source and the message types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for `SourceDetail` only for custom rules.
  factory SourceDetail({
    _i2.EventSource? eventSource,
    _i3.MaximumExecutionFrequency? maximumExecutionFrequency,
    _i4.MessageType? messageType,
  }) {
    return _$SourceDetail._(
      eventSource: eventSource,
      maximumExecutionFrequency: maximumExecutionFrequency,
      messageType: messageType,
    );
  }

  /// Provides the source and the message types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for `SourceDetail` only for custom rules.
  factory SourceDetail.build([void Function(SourceDetailBuilder) updates]) =
      _$SourceDetail;

  const SourceDetail._();

  static const List<_i5.SmithySerializer> serializers = [
    SourceDetailAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SourceDetailBuilder b) {}

  /// The source of the event, such as an Amazon Web Services service, that triggers Config to evaluate your Amazon Web Services resources.
  _i2.EventSource? get eventSource;

  /// The frequency at which you want Config to run evaluations for a custom rule with a periodic trigger. If you specify a value for `MaximumExecutionFrequency`, then `MessageType` must use the `ScheduledNotification` value.
  ///
  /// By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the `MaximumExecutionFrequency` parameter.
  ///
  /// Based on the valid value you choose, Config runs evaluations once for each valid value. For example, if you choose `Three_Hours`, Config runs evaluations once every three hours. In this case, `Three_Hours` is the frequency of this rule.
  _i3.MaximumExecutionFrequency? get maximumExecutionFrequency;

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
  _i4.MessageType? get messageType;
  @override
  List<Object?> get props => [
        eventSource,
        maximumExecutionFrequency,
        messageType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SourceDetail');
    helper.add(
      'eventSource',
      eventSource,
    );
    helper.add(
      'maximumExecutionFrequency',
      maximumExecutionFrequency,
    );
    helper.add(
      'messageType',
      messageType,
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
      switch (key) {
        case 'EventSource':
          if (value != null) {
            result.eventSource = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.EventSource),
            ) as _i2.EventSource);
          }
          break;
        case 'MaximumExecutionFrequency':
          if (value != null) {
            result.maximumExecutionFrequency = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.MaximumExecutionFrequency),
            ) as _i3.MaximumExecutionFrequency);
          }
          break;
        case 'MessageType':
          if (value != null) {
            result.messageType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.MessageType),
            ) as _i4.MessageType);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as SourceDetail);
    final result = <Object?>[];
    if (payload.eventSource != null) {
      result
        ..add('EventSource')
        ..add(serializers.serialize(
          payload.eventSource!,
          specifiedType: const FullType(_i2.EventSource),
        ));
    }
    if (payload.maximumExecutionFrequency != null) {
      result
        ..add('MaximumExecutionFrequency')
        ..add(serializers.serialize(
          payload.maximumExecutionFrequency!,
          specifiedType: const FullType(_i3.MaximumExecutionFrequency),
        ));
    }
    if (payload.messageType != null) {
      result
        ..add('MessageType')
        ..add(serializers.serialize(
          payload.messageType!,
          specifiedType: const FullType(_i4.MessageType),
        ));
    }
    return result;
  }
}
