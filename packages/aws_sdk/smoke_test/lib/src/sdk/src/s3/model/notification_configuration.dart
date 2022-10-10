// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.notification_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/event_bridge_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/lambda_function_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/queue_configuration.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/topic_configuration.dart'
    as _i5;

part 'notification_configuration.g.dart';

/// A container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off for the bucket.
abstract class NotificationConfiguration
    with _i1.AWSEquatable<NotificationConfiguration>
    implements
        Built<NotificationConfiguration, NotificationConfigurationBuilder> {
  /// A container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off for the bucket.
  factory NotificationConfiguration({
    _i2.EventBridgeConfiguration? eventBridgeConfiguration,
    List<_i3.LambdaFunctionConfiguration>? lambdaFunctionConfigurations,
    List<_i4.QueueConfiguration>? queueConfigurations,
    List<_i5.TopicConfiguration>? topicConfigurations,
  }) {
    return _$NotificationConfiguration._(
      eventBridgeConfiguration: eventBridgeConfiguration,
      lambdaFunctionConfigurations: lambdaFunctionConfigurations == null
          ? null
          : _i6.BuiltList(lambdaFunctionConfigurations),
      queueConfigurations: queueConfigurations == null
          ? null
          : _i6.BuiltList(queueConfigurations),
      topicConfigurations: topicConfigurations == null
          ? null
          : _i6.BuiltList(topicConfigurations),
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

  static const List<_i7.SmithySerializer> serializers = [
    NotificationConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NotificationConfigurationBuilder b) {}

  /// Enables delivery of events to Amazon EventBridge.
  _i2.EventBridgeConfiguration? get eventBridgeConfiguration;

  /// Describes the Lambda functions to invoke and the events for which to invoke them.
  _i6.BuiltList<_i3.LambdaFunctionConfiguration>?
      get lambdaFunctionConfigurations;

  /// The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
  _i6.BuiltList<_i4.QueueConfiguration>? get queueConfigurations;

  /// The topic to which notifications are sent and the events for which notifications are generated.
  _i6.BuiltList<_i5.TopicConfiguration>? get topicConfigurations;
  @override
  List<Object?> get props => [
        eventBridgeConfiguration,
        lambdaFunctionConfigurations,
        queueConfigurations,
        topicConfigurations,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NotificationConfiguration');
    helper.add(
      'eventBridgeConfiguration',
      eventBridgeConfiguration,
    );
    helper.add(
      'lambdaFunctionConfigurations',
      lambdaFunctionConfigurations,
    );
    helper.add(
      'queueConfigurations',
      queueConfigurations,
    );
    helper.add(
      'topicConfigurations',
      topicConfigurations,
    );
    return helper.toString();
  }
}

class NotificationConfigurationRestXmlSerializer
    extends _i7.StructuredSmithySerializer<NotificationConfiguration> {
  const NotificationConfigurationRestXmlSerializer()
      : super('NotificationConfiguration');

  @override
  Iterable<Type> get types => const [
        NotificationConfiguration,
        _$NotificationConfiguration,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'EventBridgeConfiguration':
          if (value != null) {
            result.eventBridgeConfiguration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.EventBridgeConfiguration),
            ) as _i2.EventBridgeConfiguration));
          }
          break;
        case 'CloudFunctionConfiguration':
          if (value != null) {
            result.lambdaFunctionConfigurations.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.LambdaFunctionConfiguration),
            ) as _i3.LambdaFunctionConfiguration));
          }
          break;
        case 'QueueConfiguration':
          if (value != null) {
            result.queueConfigurations.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.QueueConfiguration),
            ) as _i4.QueueConfiguration));
          }
          break;
        case 'TopicConfiguration':
          if (value != null) {
            result.topicConfigurations.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.TopicConfiguration),
            ) as _i5.TopicConfiguration));
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
    final payload = (object as NotificationConfiguration);
    final result = <Object?>[
      const _i7.XmlElementName(
        'NotificationConfiguration',
        _i7.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.eventBridgeConfiguration != null) {
      result
        ..add(const _i7.XmlElementName('EventBridgeConfiguration'))
        ..add(serializers.serialize(
          payload.eventBridgeConfiguration!,
          specifiedType: const FullType(_i2.EventBridgeConfiguration),
        ));
    }
    if (payload.lambdaFunctionConfigurations != null) {
      result.addAll(const _i7.XmlBuiltListSerializer(
              memberName: 'CloudFunctionConfiguration')
          .serialize(
        serializers,
        payload.lambdaFunctionConfigurations!,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i3.LambdaFunctionConfiguration)],
        ),
      ));
    }
    if (payload.queueConfigurations != null) {
      result.addAll(
          const _i7.XmlBuiltListSerializer(memberName: 'QueueConfiguration')
              .serialize(
        serializers,
        payload.queueConfigurations!,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i4.QueueConfiguration)],
        ),
      ));
    }
    if (payload.topicConfigurations != null) {
      result.addAll(
          const _i7.XmlBuiltListSerializer(memberName: 'TopicConfiguration')
              .serialize(
        serializers,
        payload.topicConfigurations!,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i5.TopicConfiguration)],
        ),
      ));
    }
    return result;
  }
}
