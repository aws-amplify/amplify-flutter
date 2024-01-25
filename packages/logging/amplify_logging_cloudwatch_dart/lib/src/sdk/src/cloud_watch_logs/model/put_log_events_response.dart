// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_logging_cloudwatch_dart.cloud_watch_logs.model.put_log_events_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:amplify_logging_cloudwatch_dart/src/sdk/src/cloud_watch_logs/model/rejected_log_events_info.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_log_events_response.g.dart';

abstract class PutLogEventsResponse
    with _i1.AWSEquatable<PutLogEventsResponse>
    implements Built<PutLogEventsResponse, PutLogEventsResponseBuilder> {
  factory PutLogEventsResponse({
    String? nextSequenceToken,
    RejectedLogEventsInfo? rejectedLogEventsInfo,
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

  static const List<_i2.SmithySerializer<PutLogEventsResponse>> serializers = [
    PutLogEventsResponseAwsJson11Serializer()
  ];

  /// The next sequence token.
  ///
  /// This field has been deprecated.
  ///
  /// The sequence token is now ignored in `PutLogEvents` actions. `PutLogEvents` actions are always accepted even if the sequence token is not valid. You can use parallel `PutLogEvents` actions on the same log stream and you do not need to wait for the response of a previous `PutLogEvents` action to obtain the `nextSequenceToken` value.
  String? get nextSequenceToken;

  /// The rejected events.
  RejectedLogEventsInfo? get rejectedLogEventsInfo;
  @override
  List<Object?> get props => [
        nextSequenceToken,
        rejectedLogEventsInfo,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutLogEventsResponse')
      ..add(
        'nextSequenceToken',
        nextSequenceToken,
      )
      ..add(
        'rejectedLogEventsInfo',
        rejectedLogEventsInfo,
      );
    return helper.toString();
  }
}

class PutLogEventsResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PutLogEventsResponse> {
  const PutLogEventsResponseAwsJson11Serializer()
      : super('PutLogEventsResponse');

  @override
  Iterable<Type> get types => const [
        PutLogEventsResponse,
        _$PutLogEventsResponse,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextSequenceToken':
          result.nextSequenceToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'rejectedLogEventsInfo':
          result.rejectedLogEventsInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RejectedLogEventsInfo),
          ) as RejectedLogEventsInfo));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutLogEventsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutLogEventsResponse(:nextSequenceToken, :rejectedLogEventsInfo) =
        object;
    if (nextSequenceToken != null) {
      result$
        ..add('nextSequenceToken')
        ..add(serializers.serialize(
          nextSequenceToken,
          specifiedType: const FullType(String),
        ));
    }
    if (rejectedLogEventsInfo != null) {
      result$
        ..add('rejectedLogEventsInfo')
        ..add(serializers.serialize(
          rejectedLogEventsInfo,
          specifiedType: const FullType(RejectedLogEventsInfo),
        ));
    }
    return result$;
  }
}
