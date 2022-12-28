// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestEvent _$TestEventFromJson(Map<String, dynamic> json) => TestEvent(
      eventType: json['event_type'] as String,
      eventTimestamp:
          const _DateTimeSerializer().fromJson(json['event_timestamp'] as int),
      arrivalTimestamp: const _DateTimeSerializer()
          .fromJson(json['arrival_timestamp'] as int),
      eventVersion: json['event_version'] as String,
      attributes: (json['attributes'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      metrics: (json['metrics'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toDouble()),
          ) ??
          const {},
      session: TestSession.fromJson(json['session'] as Map<String, dynamic>),
      endpoint: const _EndpointSerializer()
          .fromJson(json['endpoint'] as Map<String, Object?>),
    );

TestSession _$TestSessionFromJson(Map<String, dynamic> json) => TestSession(
      sessionId: json['session_id'] as String,
      startTimestamp:
          const _DateTimeSerializer().fromJson(json['start_timestamp'] as int),
      stopTimestamp: _$JsonConverterFromJson<int, DateTime>(
          json['stop_timestamp'], const _DateTimeSerializer().fromJson),
    );

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
