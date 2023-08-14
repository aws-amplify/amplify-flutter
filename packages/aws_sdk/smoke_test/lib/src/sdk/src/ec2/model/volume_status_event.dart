// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_status_event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'volume_status_event.g.dart';

/// Describes a volume status event.
abstract class VolumeStatusEvent
    with _i1.AWSEquatable<VolumeStatusEvent>
    implements Built<VolumeStatusEvent, VolumeStatusEventBuilder> {
  /// Describes a volume status event.
  factory VolumeStatusEvent({
    String? description,
    String? eventId,
    String? eventType,
    DateTime? notAfter,
    DateTime? notBefore,
    String? instanceId,
  }) {
    return _$VolumeStatusEvent._(
      description: description,
      eventId: eventId,
      eventType: eventType,
      notAfter: notAfter,
      notBefore: notBefore,
      instanceId: instanceId,
    );
  }

  /// Describes a volume status event.
  factory VolumeStatusEvent.build(
      [void Function(VolumeStatusEventBuilder) updates]) = _$VolumeStatusEvent;

  const VolumeStatusEvent._();

  static const List<_i2.SmithySerializer<VolumeStatusEvent>> serializers = [
    VolumeStatusEventEc2QuerySerializer()
  ];

  /// A description of the event.
  String? get description;

  /// The ID of this event.
  String? get eventId;

  /// The type of this event.
  String? get eventType;

  /// The latest end time of the event.
  DateTime? get notAfter;

  /// The earliest start time of the event.
  DateTime? get notBefore;

  /// The ID of the instance associated with the event.
  String? get instanceId;
  @override
  List<Object?> get props => [
        description,
        eventId,
        eventType,
        notAfter,
        notBefore,
        instanceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeStatusEvent')
      ..add(
        'description',
        description,
      )
      ..add(
        'eventId',
        eventId,
      )
      ..add(
        'eventType',
        eventType,
      )
      ..add(
        'notAfter',
        notAfter,
      )
      ..add(
        'notBefore',
        notBefore,
      )
      ..add(
        'instanceId',
        instanceId,
      );
    return helper.toString();
  }
}

class VolumeStatusEventEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VolumeStatusEvent> {
  const VolumeStatusEventEc2QuerySerializer() : super('VolumeStatusEvent');

  @override
  Iterable<Type> get types => const [
        VolumeStatusEvent,
        _$VolumeStatusEvent,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeStatusEvent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeStatusEventBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'eventId':
          result.eventId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'eventType':
          result.eventType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'notAfter':
          result.notAfter = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'notBefore':
          result.notBefore = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
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
    VolumeStatusEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VolumeStatusEventResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VolumeStatusEvent(
      :description,
      :eventId,
      :eventType,
      :notAfter,
      :notBefore,
      :instanceId
    ) = object;
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (eventId != null) {
      result$
        ..add(const _i2.XmlElementName('EventId'))
        ..add(serializers.serialize(
          eventId,
          specifiedType: const FullType(String),
        ));
    }
    if (eventType != null) {
      result$
        ..add(const _i2.XmlElementName('EventType'))
        ..add(serializers.serialize(
          eventType,
          specifiedType: const FullType(String),
        ));
    }
    if (notAfter != null) {
      result$
        ..add(const _i2.XmlElementName('NotAfter'))
        ..add(serializers.serialize(
          notAfter,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (notBefore != null) {
      result$
        ..add(const _i2.XmlElementName('NotBefore'))
        ..add(serializers.serialize(
          notBefore,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
