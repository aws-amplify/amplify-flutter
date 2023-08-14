// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.put_events_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_request.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'put_events_request.g.dart';

abstract class PutEventsRequest
    with _i1.HttpInput<EventsRequest>, _i2.AWSEquatable<PutEventsRequest>
    implements
        Built<PutEventsRequest, PutEventsRequestBuilder>,
        _i1.HasPayload<EventsRequest> {
  factory PutEventsRequest({
    required String applicationId,
    required EventsRequest eventsRequest,
  }) {
    return _$PutEventsRequest._(
      applicationId: applicationId,
      eventsRequest: eventsRequest,
    );
  }

  factory PutEventsRequest.build(
      [void Function(PutEventsRequestBuilder) updates]) = _$PutEventsRequest;

  const PutEventsRequest._();

  factory PutEventsRequest.fromRequest(
    EventsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutEventsRequest.build((b) {
        b.eventsRequest.replace(payload);
        if (labels['applicationId'] != null) {
          b.applicationId = labels['applicationId']!;
        }
      });

  static const List<_i1.SmithySerializer<EventsRequest>> serializers = [
    PutEventsRequestRestJson1Serializer()
  ];

  /// The unique identifier for the application. This identifier is displayed as the **Project ID** on the Amazon Pinpoint console.
  String get applicationId;

  /// Specifies a batch of events to process.
  EventsRequest get eventsRequest;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'ApplicationId':
        return applicationId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  EventsRequest getPayload() => eventsRequest;
  @override
  List<Object?> get props => [
        applicationId,
        eventsRequest,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutEventsRequest')
      ..add(
        'applicationId',
        applicationId,
      )
      ..add(
        'eventsRequest',
        eventsRequest,
      );
    return helper.toString();
  }
}

class PutEventsRequestRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<EventsRequest> {
  const PutEventsRequestRestJson1Serializer() : super('PutEventsRequest');

  @override
  Iterable<Type> get types => const [
        PutEventsRequest,
        _$PutEventsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  EventsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(EventsRequest),
    ) as EventsRequest);
  }

  @override
  Object serialize(
    Serializers serializers,
    EventsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(EventsRequest),
    )!;
  }
}
