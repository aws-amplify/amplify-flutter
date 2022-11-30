// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.model.put_log_events_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/rejected_log_events_info.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'put_log_events_response.g.dart';

abstract class PutLogEventsResponse
    with _i1.AWSEquatable<PutLogEventsResponse>
    implements Built<PutLogEventsResponse, PutLogEventsResponseBuilder> {
  factory PutLogEventsResponse({
    String? nextSequenceToken,
    _i2.RejectedLogEventsInfo? rejectedLogEventsInfo,
  }) {
    return _$PutLogEventsResponse._(
      nextSequenceToken: nextSequenceToken,
      rejectedLogEventsInfo: rejectedLogEventsInfo,
    );
  }

  factory PutLogEventsResponse.build(
          [void Function(PutLogEventsResponseBuilder) updates]) =
      _$PutLogEventsResponse;

  const PutLogEventsResponse._();

  /// Constructs a [PutLogEventsResponse] from a [payload] and [response].
  factory PutLogEventsResponse.fromResponse(
    PutLogEventsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    PutLogEventsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutLogEventsResponseBuilder b) {}

  /// The next sequence token.
  String? get nextSequenceToken;

  /// The rejected events.
  _i2.RejectedLogEventsInfo? get rejectedLogEventsInfo;
  @override
  List<Object?> get props => [
        nextSequenceToken,
        rejectedLogEventsInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutLogEventsResponse');
    helper.add(
      'nextSequenceToken',
      nextSequenceToken,
    );
    helper.add(
      'rejectedLogEventsInfo',
      rejectedLogEventsInfo,
    );
    return helper.toString();
  }
}

class PutLogEventsResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<PutLogEventsResponse> {
  const PutLogEventsResponseAwsJson11Serializer()
      : super('PutLogEventsResponse');

  @override
  Iterable<Type> get types => const [
        PutLogEventsResponse,
        _$PutLogEventsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutLogEventsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutLogEventsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'nextSequenceToken':
          if (value != null) {
            result.nextSequenceToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'rejectedLogEventsInfo':
          if (value != null) {
            result.rejectedLogEventsInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RejectedLogEventsInfo),
            ) as _i2.RejectedLogEventsInfo));
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
    final payload = (object as PutLogEventsResponse);
    final result = <Object?>[];
    if (payload.nextSequenceToken != null) {
      result
        ..add('nextSequenceToken')
        ..add(serializers.serialize(
          payload.nextSequenceToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.rejectedLogEventsInfo != null) {
      result
        ..add('rejectedLogEventsInfo')
        ..add(serializers.serialize(
          payload.rejectedLogEventsInfo!,
          specifiedType: const FullType(_i2.RejectedLogEventsInfo),
        ));
    }
    return result;
  }
}
