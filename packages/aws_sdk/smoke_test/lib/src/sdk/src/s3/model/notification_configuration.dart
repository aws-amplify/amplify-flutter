// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.notification_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/event_bridge_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/lambda_function_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/queue_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/topic_configuration.dart';

part 'notification_configuration.g.dart';

/// A container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off for the bucket.
abstract class NotificationConfiguration
    with _i1.AWSEquatable<NotificationConfiguration>
    implements
        Built<NotificationConfiguration, NotificationConfigurationBuilder> {
  /// A container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off for the bucket.
  factory NotificationConfiguration({
    List<TopicConfiguration>? topicConfigurations,
    List<QueueConfiguration>? queueConfigurations,
    List<LambdaFunctionConfiguration>? lambdaFunctionConfigurations,
    EventBridgeConfiguration? eventBridgeConfiguration,
  }) {
    return _$NotificationConfiguration._(
      topicConfigurations: topicConfigurations == null
          ? null
          : _i2.BuiltList(topicConfigurations),
      queueConfigurations: queueConfigurations == null
          ? null
          : _i2.BuiltList(queueConfigurations),
      lambdaFunctionConfigurations: lambdaFunctionConfigurations == null
          ? null
          : _i2.BuiltList(lambdaFunctionConfigurations),
      eventBridgeConfiguration: eventBridgeConfiguration,
    );
  }

  /// A container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off for the bucket.
  factory NotificationConfiguration.build(
          [void Function(NotificationConfigurationBuilder) updates]) =
      _$NotificationConfiguration;

  const NotificationConfiguration._();

  /// Constructs a [NotificationConfiguration] from a [payload] and [response].
  factory NotificationConfiguration.fromResponse(
    NotificationConfiguration payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<NotificationConfiguration>>
      serializers = [NotificationConfigurationRestXmlSerializer()];

  /// The topic to which notifications are sent and the events for which notifications are generated.
  _i2.BuiltList<TopicConfiguration>? get topicConfigurations;

  /// The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
  _i2.BuiltList<QueueConfiguration>? get queueConfigurations;

  /// Describes the Lambda functions to invoke and the events for which to invoke them.
  _i2.BuiltList<LambdaFunctionConfiguration>? get lambdaFunctionConfigurations;

  /// Enables delivery of events to Amazon EventBridge.
  EventBridgeConfiguration? get eventBridgeConfiguration;
  @override
  List<Object?> get props => [
        topicConfigurations,
        queueConfigurations,
        lambdaFunctionConfigurations,
        eventBridgeConfiguration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NotificationConfiguration')
      ..add(
        'topicConfigurations',
        topicConfigurations,
      )
      ..add(
        'queueConfigurations',
        queueConfigurations,
      )
      ..add(
        'lambdaFunctionConfigurations',
        lambdaFunctionConfigurations,
      )
      ..add(
        'eventBridgeConfiguration',
        eventBridgeConfiguration,
      );
    return helper.toString();
  }
}

class NotificationConfigurationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<NotificationConfiguration> {
  const NotificationConfigurationRestXmlSerializer()
      : super('NotificationConfiguration');

  @override
  Iterable<Type> get types => const [
        NotificationConfiguration,
        _$NotificationConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  NotificationConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EventBridgeConfiguration':
          result.eventBridgeConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EventBridgeConfiguration),
          ) as EventBridgeConfiguration));
        case 'CloudFunctionConfiguration':
          result.lambdaFunctionConfigurations.add((serializers.deserialize(
            value,
            specifiedType: const FullType(LambdaFunctionConfiguration),
          ) as LambdaFunctionConfiguration));
        case 'QueueConfiguration':
          result.queueConfigurations.add((serializers.deserialize(
            value,
            specifiedType: const FullType(QueueConfiguration),
          ) as QueueConfiguration));
        case 'TopicConfiguration':
          result.topicConfigurations.add((serializers.deserialize(
            value,
            specifiedType: const FullType(TopicConfiguration),
          ) as TopicConfiguration));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NotificationConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'NotificationConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final NotificationConfiguration(
      :eventBridgeConfiguration,
      :lambdaFunctionConfigurations,
      :queueConfigurations,
      :topicConfigurations
    ) = object;
    if (eventBridgeConfiguration != null) {
      result$
        ..add(const _i3.XmlElementName('EventBridgeConfiguration'))
        ..add(serializers.serialize(
          eventBridgeConfiguration,
          specifiedType: const FullType(EventBridgeConfiguration),
        ));
    }
    if (lambdaFunctionConfigurations != null) {
      result$.addAll(const _i3.XmlBuiltListSerializer(
              memberName: 'CloudFunctionConfiguration')
          .serialize(
        serializers,
        lambdaFunctionConfigurations,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(LambdaFunctionConfiguration)],
        ),
      ));
    }
    if (queueConfigurations != null) {
      result$.addAll(
          const _i3.XmlBuiltListSerializer(memberName: 'QueueConfiguration')
              .serialize(
        serializers,
        queueConfigurations,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(QueueConfiguration)],
        ),
      ));
    }
    if (topicConfigurations != null) {
      result$.addAll(
          const _i3.XmlBuiltListSerializer(memberName: 'TopicConfiguration')
              .serialize(
        serializers,
        topicConfigurations,
        specifiedType: const FullType.nullable(
          _i2.BuiltList,
          [FullType(TopicConfiguration)],
        ),
      ));
    }
    return result$;
  }
}
