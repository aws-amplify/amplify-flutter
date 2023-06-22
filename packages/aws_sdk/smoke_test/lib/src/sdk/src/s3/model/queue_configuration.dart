// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? id,
    required String queueArn,
    required List<_i2.Event> events,
    _i3.NotificationConfigurationFilter? filter,
  }) {
    return _$QueueConfiguration._(
      id: id,
      queueArn: queueArn,
      events: _i4.BuiltList(events),
      filter: filter,
    );
  }

  /// Specifies the configuration for publishing messages to an Amazon Simple Queue Service (Amazon SQS) queue when Amazon S3 detects specified events.
  factory QueueConfiguration.build(
          [void Function(QueueConfigurationBuilder) updates]) =
      _$QueueConfiguration;

  const QueueConfiguration._();

  static const List<_i5.SmithySerializer<QueueConfiguration>> serializers = [
    QueueConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueueConfigurationBuilder b) {}

  /// An optional unique identifier for configurations in a notification configuration. If you don't provide one, Amazon S3 will assign an ID.
  String? get id;

  /// The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message when it detects events of the specified type.
  String get queueArn;

  /// A collection of bucket events for which to send notifications
  _i4.BuiltList<_i2.Event> get events;

  /// Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the _Amazon S3 User Guide_.
  _i3.NotificationConfigurationFilter? get filter;
  @override
  List<Object?> get props => [
        id,
        queueArn,
        events,
        filter,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueueConfiguration')
      ..add(
        'id',
        id,
      )
      ..add(
        'queueArn',
        queueArn,
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
            specifiedType: const FullType(_i2.Event),
          ) as _i2.Event));
        case 'Filter':
          result.filter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.NotificationConfigurationFilter),
          ) as _i3.NotificationConfigurationFilter));
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Queue':
          result.queueArn = (serializers.deserialize(
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
    QueueConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'QueueConfiguration',
        _i5.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final QueueConfiguration(:events, :filter, :id, :queueArn) = object;
    result$
        .addAll(const _i5.XmlBuiltListSerializer(memberName: 'Event').serialize(
      serializers,
      events,
      specifiedType: const FullType.nullable(
        _i4.BuiltList,
        [FullType(_i2.Event)],
      ),
    ));
    if (filter != null) {
      result$
        ..add(const _i5.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(_i3.NotificationConfigurationFilter),
        ));
    }
    if (id != null) {
      result$
        ..add(const _i5.XmlElementName('Id'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i5.XmlElementName('Queue'))
      ..add(serializers.serialize(
        queueArn,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
