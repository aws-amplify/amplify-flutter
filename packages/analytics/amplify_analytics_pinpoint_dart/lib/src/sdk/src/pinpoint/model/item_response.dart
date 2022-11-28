// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.item_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_item_response.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event_item_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'item_response.g.dart';

/// Provides information about the results of a request to create or update an endpoint that's associated with an event.
abstract class ItemResponse
    with _i1.AWSEquatable<ItemResponse>
    implements Built<ItemResponse, ItemResponseBuilder> {
  /// Provides information about the results of a request to create or update an endpoint that's associated with an event.
  factory ItemResponse({
    _i2.EndpointItemResponse? endpointItemResponse,
    Map<String, _i3.EventItemResponse>? eventsItemResponse,
  }) {
    return _$ItemResponse._(
      endpointItemResponse: endpointItemResponse,
      eventsItemResponse:
          eventsItemResponse == null ? null : _i4.BuiltMap(eventsItemResponse),
    );
  }

  /// Provides information about the results of a request to create or update an endpoint that's associated with an event.
  factory ItemResponse.build([void Function(ItemResponseBuilder) updates]) =
      _$ItemResponse;

  const ItemResponse._();

  static const List<_i5.SmithySerializer> serializers = [
    ItemResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ItemResponseBuilder b) {}

  /// The response that was received after the endpoint data was accepted.
  _i2.EndpointItemResponse? get endpointItemResponse;

  /// A multipart response object that contains a key and a value for each event in the request. In each object, the event ID is the key and an EventItemResponse object is the value.
  _i4.BuiltMap<String, _i3.EventItemResponse>? get eventsItemResponse;
  @override
  List<Object?> get props => [
        endpointItemResponse,
        eventsItemResponse,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ItemResponse');
    helper.add(
      'endpointItemResponse',
      endpointItemResponse,
    );
    helper.add(
      'eventsItemResponse',
      eventsItemResponse,
    );
    return helper.toString();
  }
}

class ItemResponseRestJson1Serializer
    extends _i5.StructuredSmithySerializer<ItemResponse> {
  const ItemResponseRestJson1Serializer() : super('ItemResponse');

  @override
  Iterable<Type> get types => const [
        ItemResponse,
        _$ItemResponse,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ItemResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'EndpointItemResponse':
          if (value != null) {
            result.endpointItemResponse.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.EndpointItemResponse),
            ) as _i2.EndpointItemResponse));
          }
          break;
        case 'EventsItemResponse':
          if (value != null) {
            result.eventsItemResponse.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.EventItemResponse),
                ],
              ),
            ) as _i4.BuiltMap<String, _i3.EventItemResponse>));
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
    final payload = (object as ItemResponse);
    final result = <Object?>[];
    if (payload.endpointItemResponse != null) {
      result
        ..add('EndpointItemResponse')
        ..add(serializers.serialize(
          payload.endpointItemResponse!,
          specifiedType: const FullType(_i2.EndpointItemResponse),
        ));
    }
    if (payload.eventsItemResponse != null) {
      result
        ..add('EventsItemResponse')
        ..add(serializers.serialize(
          payload.eventsItemResponse!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.EventItemResponse),
            ],
          ),
        ));
    }
    return result;
  }
}
