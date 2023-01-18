// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.stats_event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/stats.dart' as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'stats_event.g.dart';

/// Container for the Stats Event.
abstract class StatsEvent
    with _i1.AWSEquatable<StatsEvent>
    implements Built<StatsEvent, StatsEventBuilder> {
  /// Container for the Stats Event.
  factory StatsEvent({_i2.Stats? details}) {
    return _$StatsEvent._(details: details);
  }

  /// Container for the Stats Event.
  factory StatsEvent.build([void Function(StatsEventBuilder) updates]) =
      _$StatsEvent;

  const StatsEvent._();

  static const List<_i3.SmithySerializer> serializers = [
    StatsEventRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StatsEventBuilder b) {}

  /// The Stats event details.
  _i2.Stats? get details;
  @override
  List<Object?> get props => [details];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StatsEvent');
    helper.add(
      'details',
      details,
    );
    return helper.toString();
  }
}

class StatsEventRestXmlSerializer
    extends _i3.StructuredSmithySerializer<StatsEvent> {
  const StatsEventRestXmlSerializer() : super('StatsEvent');

  @override
  Iterable<Type> get types => const [
        StatsEvent,
        _$StatsEvent,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  StatsEvent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsEventBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Details':
          if (value != null) {
            result.details.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Stats),
            ) as _i2.Stats));
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
    final payload = (object as StatsEvent);
    final result = <Object?>[
      const _i3.XmlElementName(
        'StatsEvent',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.details != null) {
      result
        ..add(const _i3.XmlElementName('Details'))
        ..add(serializers.serialize(
          payload.details!,
          specifiedType: const FullType(_i2.Stats),
        ));
    }
    return result;
  }
}
