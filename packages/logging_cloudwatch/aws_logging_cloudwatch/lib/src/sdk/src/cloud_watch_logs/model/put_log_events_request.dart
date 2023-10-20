// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.put_log_events_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/input_log_event.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'put_log_events_request.g.dart';

abstract class PutLogEventsRequest
    with
        _i1.HttpInput<PutLogEventsRequest>,
        _i2.AWSEquatable<PutLogEventsRequest>
    implements Built<PutLogEventsRequest, PutLogEventsRequestBuilder> {
  factory PutLogEventsRequest({
    required String logGroupName,
    required String logStreamName,
    required List<_i3.InputLogEvent> logEvents,
    String? sequenceToken,
  }) {
    return _$PutLogEventsRequest._(
      logGroupName: logGroupName,
      logStreamName: logStreamName,
      logEvents: _i4.BuiltList(logEvents),
      sequenceToken: sequenceToken,
    );
  }

  factory PutLogEventsRequest.build(
          [void Function(PutLogEventsRequestBuilder) updates]) =
      _$PutLogEventsRequest;

  const PutLogEventsRequest._();

  factory PutLogEventsRequest.fromRequest(
    PutLogEventsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutLogEventsRequest>> serializers = [
    PutLogEventsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutLogEventsRequestBuilder b) {}

  /// The name of the log group.
  String get logGroupName;

  /// The name of the log stream.
  String get logStreamName;

  /// The log events.
  _i4.BuiltList<_i3.InputLogEvent> get logEvents;

  /// The sequence token obtained from the response of the previous `PutLogEvents` call.
  ///
  /// The `sequenceToken` parameter is now ignored in `PutLogEvents` actions. `PutLogEvents` actions are now accepted and never return `InvalidSequenceTokenException` or `DataAlreadyAcceptedException` even if the sequence token is not valid.
  String? get sequenceToken;
  @override
  PutLogEventsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        logGroupName,
        logStreamName,
        logEvents,
        sequenceToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutLogEventsRequest')
      ..add(
        'logGroupName',
        logGroupName,
      )
      ..add(
        'logStreamName',
        logStreamName,
      )
      ..add(
        'logEvents',
        logEvents,
      )
      ..add(
        'sequenceToken',
        sequenceToken,
      );
    return helper.toString();
  }
}

class PutLogEventsRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutLogEventsRequest> {
  const PutLogEventsRequestAwsJson11Serializer() : super('PutLogEventsRequest');

  @override
  Iterable<Type> get types => const [
        PutLogEventsRequest,
        _$PutLogEventsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutLogEventsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutLogEventsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'logGroupName':
          result.logGroupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'logStreamName':
          result.logStreamName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'logEvents':
          result.logEvents.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.InputLogEvent)],
            ),
          ) as _i4.BuiltList<_i3.InputLogEvent>));
        case 'sequenceToken':
          result.sequenceToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutLogEventsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutLogEventsRequest(
      :logGroupName,
      :logStreamName,
      :logEvents,
      :sequenceToken
    ) = object;
    result$.addAll([
      'logGroupName',
      serializers.serialize(
        logGroupName,
        specifiedType: const FullType(String),
      ),
      'logStreamName',
      serializers.serialize(
        logStreamName,
        specifiedType: const FullType(String),
      ),
      'logEvents',
      serializers.serialize(
        logEvents,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.InputLogEvent)],
        ),
      ),
    ]);
    if (sequenceToken != null) {
      result$
        ..add('sequenceToken')
        ..add(serializers.serialize(
          sequenceToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
