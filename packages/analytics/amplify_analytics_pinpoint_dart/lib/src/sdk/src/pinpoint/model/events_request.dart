// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.events_request;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_batch.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'events_request.g.dart';

/// Specifies a batch of events to process.
abstract class EventsRequest
    with _i1.AWSEquatable<EventsRequest>
    implements Built<EventsRequest, EventsRequestBuilder> {
  /// Specifies a batch of events to process.
  factory EventsRequest(
      {required _i2.BuiltMap<String, _i3.EventsBatch> batchItem}) {
    return _$EventsRequest._(batchItem: batchItem);
  }

  /// Specifies a batch of events to process.
  factory EventsRequest.build([void Function(EventsRequestBuilder) updates]) =
      _$EventsRequest;

  const EventsRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    _EventsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EventsRequestBuilder b) {}

  /// The batch of events to process. For each item in a batch, the endpoint ID acts as a key that has an EventsBatch object as its value.
  _i2.BuiltMap<String, _i3.EventsBatch> get batchItem;
  @override
  List<Object?> get props => [batchItem];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventsRequest');
    helper.add('batchItem', batchItem);
    return helper.toString();
  }
}

class _EventsRequestRestJson1Serializer
    extends _i4.StructuredSmithySerializer<EventsRequest> {
  const _EventsRequestRestJson1Serializer() : super('EventsRequest');

  @override
  Iterable<Type> get types => const [EventsRequest, _$EventsRequest];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  EventsRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = EventsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'BatchItem':
          result.batchItem.replace((serializers.deserialize(value,
              specifiedType: const FullType(_i2.BuiltMap, [
                FullType(String),
                FullType(_i3.EventsBatch)
              ])) as _i2.BuiltMap<String, _i3.EventsBatch>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as EventsRequest);
    final result = <Object?>[
      'BatchItem',
      serializers.serialize(payload.batchItem,
          specifiedType: const FullType(
              _i2.BuiltMap, [FullType(String), FullType(_i3.EventsBatch)]))
    ];
    return result;
  }
}
