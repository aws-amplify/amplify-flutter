// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.stats_event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/stats.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'stats_event.g.dart';

/// Container for the Stats Event.
abstract class StatsEvent
    with _i1.AWSEquatable<StatsEvent>
    implements Built<StatsEvent, StatsEventBuilder> {
  /// Container for the Stats Event.
  factory StatsEvent({Stats? details}) {
    return _$StatsEvent._(details: details);
  }

  /// Container for the Stats Event.
  factory StatsEvent.build([void Function(StatsEventBuilder) updates]) =
      _$StatsEvent;

  const StatsEvent._();

  static const List<_i2.SmithySerializer<StatsEvent>> serializers = [
    StatsEventRestXmlSerializer(),
  ];

  /// The Stats event details.
  Stats? get details;
  @override
  List<Object?> get props => [details];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StatsEvent')
      ..add('details', details);
    return helper.toString();
  }
}

class StatsEventRestXmlSerializer
    extends _i2.StructuredSmithySerializer<StatsEvent> {
  const StatsEventRestXmlSerializer() : super('StatsEvent');

  @override
  Iterable<Type> get types => const [StatsEvent, _$StatsEvent];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Details':
          result.details.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(Stats),
                )
                as Stats),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StatsEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StatsEvent',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      ),
    ];
    final StatsEvent(:details) = object;
    if (details != null) {
      result$
        ..add(const _i2.XmlElementName('Details'))
        ..add(
          serializers.serialize(details, specifiedType: const FullType(Stats)),
        );
    }
    return result$;
  }
}
