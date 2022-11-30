// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.put_events_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_events_response.g.dart';

abstract class PutEventsResponse
    with _i1.AWSEquatable<PutEventsResponse>
    implements
        Built<PutEventsResponse, PutEventsResponseBuilder>,
        _i2.HasPayload<_i3.EventsResponse> {
  factory PutEventsResponse({required _i3.EventsResponse eventsResponse}) {
    return _$PutEventsResponse._(eventsResponse: eventsResponse);
  }

  factory PutEventsResponse.build(
      [void Function(PutEventsResponseBuilder) updates]) = _$PutEventsResponse;

  const PutEventsResponse._();

  /// Constructs a [PutEventsResponse] from a [payload] and [response].
  factory PutEventsResponse.fromResponse(
    _i3.EventsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      PutEventsResponse.build((b) {
        b.eventsResponse.replace(payload);
      });

  static const List<_i2.SmithySerializer> serializers = [
    PutEventsResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutEventsResponseBuilder b) {}

  /// Provides information about endpoints and the events that they're associated with.
  _i3.EventsResponse get eventsResponse;
  @override
  _i3.EventsResponse getPayload() => eventsResponse;
  @override
  List<Object?> get props => [eventsResponse];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutEventsResponse');
    helper.add(
      'eventsResponse',
      eventsResponse,
    );
    return helper.toString();
  }
}

class PutEventsResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<_i3.EventsResponse> {
  const PutEventsResponseRestJson1Serializer() : super('PutEventsResponse');

  @override
  Iterable<Type> get types => const [
        PutEventsResponse,
        _$PutEventsResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i3.EventsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i3.EventsResponse),
    ) as _i3.EventsResponse);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is PutEventsResponse
        ? object.getPayload()
        : (object as _i3.EventsResponse);
    return (serializers.serialize(
      payload,
      specifiedType: const FullType(_i3.EventsResponse),
    ) as Object);
  }
}
