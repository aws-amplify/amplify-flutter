// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.put_events_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_response.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_events_response.g.dart';

abstract class PutEventsResponse
    with _i1.AWSEquatable<PutEventsResponse>
    implements
        Built<PutEventsResponse, PutEventsResponseBuilder>,
        _i2.HasPayload<EventsResponse> {
  factory PutEventsResponse({required EventsResponse eventsResponse}) {
    return _$PutEventsResponse._(eventsResponse: eventsResponse);
  }

  factory PutEventsResponse.build(
      [void Function(PutEventsResponseBuilder) updates]) = _$PutEventsResponse;

  const PutEventsResponse._();

  /// Constructs a [PutEventsResponse] from a [payload] and [response].
  factory PutEventsResponse.fromResponse(
    EventsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      PutEventsResponse.build((b) {
        b.eventsResponse.replace(payload);
      });

  static const List<_i2.SmithySerializer<EventsResponse>> serializers = [
    PutEventsResponseRestJson1Serializer()
  ];

  /// Provides information about endpoints and the events that they're associated with.
  EventsResponse get eventsResponse;
  @override
  EventsResponse getPayload() => eventsResponse;
  @override
  List<Object?> get props => [eventsResponse];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutEventsResponse')
      ..add(
        'eventsResponse',
        eventsResponse,
      );
    return helper.toString();
  }
}

class PutEventsResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<EventsResponse> {
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
  EventsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(EventsResponse),
    ) as EventsResponse);
  }

  @override
  Object serialize(
    Serializers serializers,
    EventsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(EventsResponse),
    )!;
  }
}
