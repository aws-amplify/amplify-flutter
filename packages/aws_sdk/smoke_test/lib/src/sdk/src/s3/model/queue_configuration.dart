// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.queue_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/event.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/notification_configuration_filter.dart'
    as _i3;

part 'queue_configuration.g.dart';

/// Specifies the configuration for publishing messages to an Amazon Simple Queue Service (Amazon SQS) queue when Amazon S3 detects specified events.
abstract class QueueConfiguration
    with _i1.AWSEquatable<QueueConfiguration>
    implements Built<QueueConfiguration, QueueConfigurationBuilder> {
  /// Specifies the configuration for publishing messages to an Amazon Simple Queue Service (Amazon SQS) queue when Amazon S3 detects specified events.
  factory QueueConfiguration({
    required List<_i2.Event> events,
    _i3.NotificationConfigurationFilter? filter,
    String? id,
    required String queueArn,
  }) {
    return _$QueueConfiguration._(
      events: _i4.BuiltList(events),
      filter: filter,
      id: id,
      queueArn: queueArn,
    );
  }

  /// Specifies the configuration for publishing messages to an Amazon Simple Queue Service (Amazon SQS) queue when Amazon S3 detects specified events.
  factory QueueConfiguration.build(
          [void Function(QueueConfigurationBuilder) updates]) =
      _$QueueConfiguration;

  const QueueConfiguration._();

  static const List<_i5.SmithySerializer> serializers = [
    QueueConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueueConfigurationBuilder b) {}

  /// A collection of bucket events for which to send notifications
  _i4.BuiltList<_i2.Event> get events;

  /// Specifies object key name filtering rules. For information about key name filtering, see [Configuring Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the _Amazon S3 User Guide_.
  _i3.NotificationConfigurationFilter? get filter;

  /// An optional unique identifier for configurations in a notification configuration. If you don't provide one, Amazon S3 will assign an ID.
  String? get id;

  /// The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message when it detects events of the specified type.
  String get queueArn;
  @override
  List<Object?> get props => [
        events,
        filter,
        id,
        queueArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueueConfiguration');
    helper.add(
      'events',
      events,
    );
    helper.add(
      'filter',
      filter,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'queueArn',
      queueArn,
    );
    return helper.toString();
  }
}

class QueueConfigurationRestXmlSerializer
    extends _i5.StructuredSmithySerializer<QueueConfiguration> {
  const QueueConfigurationRestXmlSerializer() : super('QueueConfiguration');

  @override
  Iterable<Type> get types => const [
        QueueConfiguration,
        _$QueueConfiguration,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  QueueConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Event':
          result.events.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Event),
          ) as _i2.Event));
          break;
        case 'Filter':
          if (value != null) {
            result.filter.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.NotificationConfigurationFilter),
            ) as _i3.NotificationConfigurationFilter));
          }
          break;
        case 'Id':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Queue':
          result.queueArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as QueueConfiguration);
    final result = <Object?>[
      const _i5.XmlElementName(
        'QueueConfiguration',
        _i5.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
        .addAll(const _i5.XmlBuiltListSerializer(memberName: 'Event').serialize(
      serializers,
      payload.events,
      specifiedType: const FullType.nullable(
        _i4.BuiltList,
        [FullType(_i2.Event)],
      ),
    ));
    if (payload.filter != null) {
      result
        ..add(const _i5.XmlElementName('Filter'))
        ..add(serializers.serialize(
          payload.filter!,
          specifiedType: const FullType(_i3.NotificationConfigurationFilter),
        ));
    }
    if (payload.id != null) {
      result
        ..add(const _i5.XmlElementName('Id'))
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('Queue'))
      ..add(serializers.serialize(
        payload.queueArn,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
