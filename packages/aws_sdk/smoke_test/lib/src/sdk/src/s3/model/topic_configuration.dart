// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.topic_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/event.dart';
import 'package:smoke_test/src/sdk/src/s3/model/notification_configuration_filter.dart';

part 'topic_configuration.g.dart';

/// A container for specifying the configuration for publication of messages to an Amazon Simple Notification Service (Amazon SNS) topic when Amazon S3 detects specified events.
abstract class TopicConfiguration
    with _i1.AWSEquatable<TopicConfiguration>
    implements Built<TopicConfiguration, TopicConfigurationBuilder> {
  /// A container for specifying the configuration for publication of messages to an Amazon Simple Notification Service (Amazon SNS) topic when Amazon S3 detects specified events.
  factory TopicConfiguration({
    String? id,
    required String topicArn,
    required List<Event> events,
    NotificationConfigurationFilter? filter,
  }) {
    return _$TopicConfiguration._(
      id: id,
      topicArn: topicArn,
      events: _i2.BuiltList(events),
      filter: filter,
    );
  }

  /// A container for specifying the configuration for publication of messages to an Amazon Simple Notification Service (Amazon SNS) topic when Amazon S3 detects specified events.
  factory TopicConfiguration.build(
          [void Function(TopicConfigurationBuilder) updates]) =
      _$TopicConfiguration;

  const TopicConfiguration._();

  static const List<_i3.SmithySerializer<TopicConfiguration>> serializers = [
    TopicConfigurationRestXmlSerializer()
  ];

  /// An optional unique identifier for configurations in a notification configuration. If you don't provide one, Amazon S3 will assign an ID.
  String? get id;

  /// The Amazon Resource Name (ARN) of the Amazon SNS topic to which Amazon S3 publishes a message when it detects events of the specified type.
  String get topicArn;

  /// The Amazon S3 bucket event about which to send notifications. For more information, see [Supported Event Types](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the _Amazon S3 User Guide_.
  _i2.BuiltList<Event> get events;

  /// Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the _Amazon S3 User Guide_.
  NotificationConfigurationFilter? get filter;
  @override
  List<Object?> get props => [
        id,
        topicArn,
        events,
        filter,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TopicConfiguration')
      ..add(
        'id',
        id,
      )
      ..add(
        'topicArn',
        topicArn,
      )
      ..add(
        'events',
        events,
      )
      ..add(
        'filter',
        filter,
      );
    return helper.toString();
  }
}

class TopicConfigurationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<TopicConfiguration> {
  const TopicConfigurationRestXmlSerializer() : super('TopicConfiguration');

  @override
  Iterable<Type> get types => const [
        TopicConfiguration,
        _$TopicConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  TopicConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TopicConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Event':
          result.events.add((serializers.deserialize(
            value,
            specifiedType: const FullType(Event),
          ) as Event));
        case 'Filter':
          result.filter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationConfigurationFilter),
          ) as NotificationConfigurationFilter));
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Topic':
          result.topicArn = (serializers.deserialize(
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
    TopicConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TopicConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final TopicConfiguration(:events, :filter, :id, :topicArn) = object;
    result$
        .addAll(const _i3.XmlBuiltListSerializer(memberName: 'Event').serialize(
      serializers,
      events,
      specifiedType: const FullType.nullable(
        _i2.BuiltList,
        [FullType(Event)],
      ),
    ));
    if (filter != null) {
      result$
        ..add(const _i3.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(NotificationConfigurationFilter),
        ));
    }
    if (id != null) {
      result$
        ..add(const _i3.XmlElementName('Id'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Topic'))
      ..add(serializers.serialize(
        topicArn,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
