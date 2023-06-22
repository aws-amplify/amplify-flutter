// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.notification_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/event_bridge_configuration.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/lambda_function_configuration.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/queue_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/topic_configuration.dart'
    as _i2;

part 'notification_configuration.g.dart';

/// A container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off for the bucket.
abstract class NotificationConfiguration
    with _i1.AWSEquatable<NotificationConfiguration>
    implements
        Built<NotificationConfiguration, NotificationConfigurationBuilder> {
  /// A container for specifying the notification configuration of the bucket. If this element is empty, notifications are turned off for the bucket.
  factory NotificationConfiguration({
    List<_i2.TopicConfiguration>? topicConfigurations,
    List<_i3.QueueConfiguration>? queueConfigurations,
    List<_i4.LambdaFunctionConfiguration>? lambdaFunctionConfigurations,
    _i5.EventBridgeConfiguration? eventBridgeConfiguration,
  }) {
    return _$NotificationConfiguration._(
      topicConfigurations: topicConfigurations == null
          ? null
          : _i6.BuiltList(topicConfigurations),
      queueConfigurations: queueConfigurations == null
          ? null
          : _i6.BuiltList(queueConfigurations),
      lambdaFunctionConfigurations: lambdaFunctionConfigurations == null
          ? null
          : _i6.BuiltList(lambdaFunctionConfigurations),
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

  static const List<_i7.SmithySerializer<NotificationConfiguration>>
      serializers = [NotificationConfigurationRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NotificationConfigurationBuilder b) {}

  /// The topic to which notifications are sent and the events for which notifications are generated.
  _i6.BuiltList<_i2.TopicConfiguration>? get topicConfigurations;

  /// The Amazon Simple Queue Service queues to publish messages to and the events for which to publish messages.
  _i6.BuiltList<_i3.QueueConfiguration>? get queueConfigurations;

  /// Describes the Lambda functions to invoke and the events for which to invoke them.
  _i6.BuiltList<_i4.LambdaFunctionConfiguration>?
      get lambdaFunctionConfigurations;

  /// Enables delivery of events to Amazon EventBridge.
  _i5.EventBridgeConfiguration? get eventBridgeConfiguration;
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
            specifiedType: const FullType(_i5.EventBridgeConfiguration),
          ) as _i5.EventBridgeConfiguration));
        case 'CloudFunctionConfiguration':
          result.lambdaFunctionConfigurations.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.LambdaFunctionConfiguration),
          ) as _i4.LambdaFunctionConfiguration));
        case 'QueueConfiguration':
          result.queueConfigurations.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.QueueConfiguration),
          ) as _i3.QueueConfiguration));
        case 'TopicConfiguration':
          result.topicConfigurations.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.TopicConfiguration),
          ) as _i2.TopicConfiguration));
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
      const _i7.XmlElementName(
        'NotificationConfiguration',
        _i7.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
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
        ..add(const _i7.XmlElementName('EventBridgeConfiguration'))
        ..add(serializers.serialize(
          eventBridgeConfiguration,
          specifiedType: const FullType(_i5.EventBridgeConfiguration),
        ));
    }
    if (lambdaFunctionConfigurations != null) {
      result$.addAll(const _i7.XmlBuiltListSerializer(
              memberName: 'CloudFunctionConfiguration')
          .serialize(
        serializers,
        lambdaFunctionConfigurations,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i4.LambdaFunctionConfiguration)],
        ),
      ));
    }
    if (queueConfigurations != null) {
      result$.addAll(
          const _i7.XmlBuiltListSerializer(memberName: 'QueueConfiguration')
              .serialize(
        serializers,
        queueConfigurations,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i3.QueueConfiguration)],
        ),
      ));
    }
    if (topicConfigurations != null) {
      result$.addAll(
          const _i7.XmlBuiltListSerializer(memberName: 'TopicConfiguration')
              .serialize(
        serializers,
        topicConfigurations,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i2.TopicConfiguration)],
        ),
      ));
    }
    return result$;
  }
}
