// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.events_batch; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/public_endpoint.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'events_batch.g.dart';

/// Specifies a batch of endpoints and events to process.
abstract class EventsBatch
    with _i1.AWSEquatable<EventsBatch>
    implements Built<EventsBatch, EventsBatchBuilder> {
  /// Specifies a batch of endpoints and events to process.
  factory EventsBatch({
    required _i2.PublicEndpoint endpoint,
    required Map<String, _i3.Event> events,
  }) {
    return _$EventsBatch._(
      endpoint: endpoint,
      events: _i4.BuiltMap(events),
    );
  }

  /// Specifies a batch of endpoints and events to process.
  factory EventsBatch.build([void Function(EventsBatchBuilder) updates]) =
      _$EventsBatch;

  const EventsBatch._();

  static const List<_i5.SmithySerializer> serializers = [
    EventsBatchRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EventsBatchBuilder b) {}

  /// A set of properties and attributes that are associated with the endpoint.
  _i2.PublicEndpoint get endpoint;

  /// A set of properties that are associated with the event.
  _i4.BuiltMap<String, _i3.Event> get events;
  @override
  List<Object?> get props => [
        endpoint,
        events,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventsBatch');
    helper.add(
      'endpoint',
      endpoint,
    );
    helper.add(
      'events',
      events,
    );
    return helper.toString();
  }
}

class EventsBatchRestJson1Serializer
    extends _i5.StructuredSmithySerializer<EventsBatch> {
  const EventsBatchRestJson1Serializer() : super('EventsBatch');

  @override
  Iterable<Type> get types => const [
        EventsBatch,
        _$EventsBatch,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
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
      switch (key) {
        case 'Endpoint':
          result.endpoint.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PublicEndpoint),
          ) as _i2.PublicEndpoint));
          break;
        case 'Events':
          result.events.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i3.Event),
              ],
            ),
          ) as _i4.BuiltMap<String, _i3.Event>));
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
    final payload = (object as EventsBatch);
    final result = <Object?>[
      'Endpoint',
      serializers.serialize(
        payload.endpoint,
        specifiedType: const FullType(_i2.PublicEndpoint),
      ),
      'Events',
      serializers.serialize(
        payload.events,
        specifiedType: const FullType(
          _i4.BuiltMap,
          [
            FullType(String),
            FullType(_i3.Event),
          ],
        ),
      ),
    ];
    return result;
  }
}
