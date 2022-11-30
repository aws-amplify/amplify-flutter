// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.model.put_log_events_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/input_log_event.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i2;
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
    required List<_i3.InputLogEvent> logEvents,
    required String logGroupName,
    required String logStreamName,
    String? sequenceToken,
  }) {
    return _$PutLogEventsRequest._(
      logEvents: _i4.BuiltList(logEvents),
      logGroupName: logGroupName,
      logStreamName: logStreamName,
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

  static const List<_i1.SmithySerializer> serializers = [
    PutLogEventsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutLogEventsRequestBuilder b) {}

  /// The log events.
  _i4.BuiltList<_i3.InputLogEvent> get logEvents;

  /// The name of the log group.
  String get logGroupName;

  /// The name of the log stream.
  String get logStreamName;

  /// The sequence token obtained from the response of the previous `PutLogEvents` call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using [DescribeLogStreams](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeLogStreams.html). If you call `PutLogEvents` twice within a narrow time period using the same value for `sequenceToken`, both calls might be successful or one might be rejected.
  String? get sequenceToken;
  @override
  PutLogEventsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        logEvents,
        logGroupName,
        logStreamName,
        sequenceToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutLogEventsRequest');
    helper.add(
      'logEvents',
      logEvents,
    );
    helper.add(
      'logGroupName',
      logGroupName,
    );
    helper.add(
      'logStreamName',
      logStreamName,
    );
    helper.add(
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
      switch (key) {
        case 'logEvents':
          result.logEvents.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.InputLogEvent)],
            ),
          ) as _i4.BuiltList<_i3.InputLogEvent>));
          break;
        case 'logGroupName':
          result.logGroupName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'logStreamName':
          result.logStreamName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'sequenceToken':
          if (value != null) {
            result.sequenceToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as PutLogEventsRequest);
    final result = <Object?>[
      'logEvents',
      serializers.serialize(
        payload.logEvents,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.InputLogEvent)],
        ),
      ),
      'logGroupName',
      serializers.serialize(
        payload.logGroupName,
        specifiedType: const FullType(String),
      ),
      'logStreamName',
      serializers.serialize(
        payload.logStreamName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.sequenceToken != null) {
      result
        ..add('sequenceToken')
        ..add(serializers.serialize(
          payload.sequenceToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
