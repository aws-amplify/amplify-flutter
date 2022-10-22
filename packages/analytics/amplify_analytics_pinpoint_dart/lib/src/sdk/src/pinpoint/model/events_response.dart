// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.events_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/item_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'events_response.g.dart';

/// Provides information about endpoints and the events that they're associated with.
abstract class EventsResponse
    with _i1.AWSEquatable<EventsResponse>
    implements Built<EventsResponse, EventsResponseBuilder> {
  /// Provides information about endpoints and the events that they're associated with.
  factory EventsResponse({_i2.BuiltMap<String, _i3.ItemResponse>? results}) {
    return _$EventsResponse._(results: results);
  }

  /// Provides information about endpoints and the events that they're associated with.
  factory EventsResponse.build([void Function(EventsResponseBuilder) updates]) =
      _$EventsResponse;

  const EventsResponse._();

  static const List<_i4.SmithySerializer> serializers = [
    _EventsResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EventsResponseBuilder b) {}

  /// A map that contains a multipart response for each endpoint. For each item in this object, the endpoint ID is the key and the item response is the value. If no item response exists, the value can also be one of the following: 202, the request was processed successfully; or 400, the payload wasn't valid or required fields were missing.
  _i2.BuiltMap<String, _i3.ItemResponse>? get results;
  @override
  List<Object?> get props => [results];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventsResponse');
    helper.add('results', results);
    return helper.toString();
  }
}

class _EventsResponseRestJson1Serializer
    extends _i4.StructuredSmithySerializer<EventsResponse> {
  const _EventsResponseRestJson1Serializer() : super('EventsResponse');

  @override
  Iterable<Type> get types => const [EventsResponse, _$EventsResponse];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  EventsResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = EventsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Results':
          if (value != null) {
            result.results.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i2.BuiltMap, [
                  FullType(String),
                  FullType(_i3.ItemResponse)
                ])) as _i2.BuiltMap<String, _i3.ItemResponse>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as EventsResponse);
    final result = <Object?>[];
    if (payload.results != null) {
      result
        ..add('Results')
        ..add(serializers.serialize(payload.results!,
            specifiedType: const FullType(
                _i2.BuiltMap, [FullType(String), FullType(_i3.ItemResponse)])));
    }
    return result;
  }
}
