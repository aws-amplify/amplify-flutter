// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.events_batch; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/public_endpoint.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'events_batch.g.dart';

/// Specifies a batch of endpoints and events to process.
abstract class EventsBatch
    with _i1.AWSEquatable<EventsBatch>
    implements Built<EventsBatch, EventsBatchBuilder> {
  /// Specifies a batch of endpoints and events to process.
  factory EventsBatch({
    required PublicEndpoint endpoint,
    required Map<String, Event> events,
  }) {
    return _$EventsBatch._(endpoint: endpoint, events: _i2.BuiltMap(events));
  }

  /// Specifies a batch of endpoints and events to process.
  factory EventsBatch.build([void Function(EventsBatchBuilder) updates]) =
      _$EventsBatch;

  const EventsBatch._();

  static const List<_i3.SmithySerializer<EventsBatch>> serializers = [
    EventsBatchRestJson1Serializer(),
  ];

  /// A set of properties and attributes that are associated with the endpoint.
  PublicEndpoint get endpoint;

  /// A set of properties that are associated with the event.
  _i2.BuiltMap<String, Event> get events;
  @override
  List<Object?> get props => [endpoint, events];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventsBatch')
      ..add('endpoint', endpoint)
      ..add('events', events);
    return helper.toString();
  }
}

class EventsBatchRestJson1Serializer
    extends _i3.StructuredSmithySerializer<EventsBatch> {
  const EventsBatchRestJson1Serializer() : super('EventsBatch');

  @override
  Iterable<Type> get types => const [EventsBatch, _$EventsBatch];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];
  @override
  EventsBatch deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventsBatchBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Endpoint':
          result.endpoint.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(PublicEndpoint),
                )
                as PublicEndpoint),
          );
        case 'Events':
          result.events.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.BuiltMap, [
                    FullType(String),
                    FullType(Event),
                  ]),
                )
                as _i2.BuiltMap<String, Event>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EventsBatch object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EventsBatch(:endpoint, :events) = object;
    result$.addAll([
      'Endpoint',
      serializers.serialize(
        endpoint,
        specifiedType: const FullType(PublicEndpoint),
      ),
      'Events',
      serializers.serialize(
        events,
        specifiedType: const FullType(_i2.BuiltMap, [
          FullType(String),
          FullType(Event),
        ]),
      ),
    ]);
    return result$;
  }
}
