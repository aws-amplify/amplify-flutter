// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.describe_log_streams_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/log_stream.dart'
    as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'describe_log_streams_response.g.dart';

abstract class DescribeLogStreamsResponse
    with _i1.AWSEquatable<DescribeLogStreamsResponse>
    implements
        Built<DescribeLogStreamsResponse, DescribeLogStreamsResponseBuilder> {
  factory DescribeLogStreamsResponse({
    List<_i2.LogStream>? logStreams,
    String? nextToken,
  }) {
    return _$DescribeLogStreamsResponse._(
      logStreams: logStreams == null ? null : _i3.BuiltList(logStreams),
      nextToken: nextToken,
    );
  }

  factory DescribeLogStreamsResponse.build(
          [void Function(DescribeLogStreamsResponseBuilder) updates]) =
      _$DescribeLogStreamsResponse;

  const DescribeLogStreamsResponse._();

  /// Constructs a [DescribeLogStreamsResponse] from a [payload] and [response].
  factory DescribeLogStreamsResponse.fromResponse(
    DescribeLogStreamsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<DescribeLogStreamsResponse>>
      serializers = [DescribeLogStreamsResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLogStreamsResponseBuilder b) {}

  /// The log streams.
  _i3.BuiltList<_i2.LogStream>? get logStreams;

  /// The token for the next set of items to return. The token expires after 24 hours.
  String? get nextToken;
  @override
  List<Object?> get props => [
        logStreams,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeLogStreamsResponse')
      ..add(
        'logStreams',
        logStreams,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeLogStreamsResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<DescribeLogStreamsResponse> {
  const DescribeLogStreamsResponseAwsJson11Serializer()
      : super('DescribeLogStreamsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeLogStreamsResponse,
        _$DescribeLogStreamsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeLogStreamsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLogStreamsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'logStreams':
          result.logStreams.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.LogStream)],
            ),
          ) as _i3.BuiltList<_i2.LogStream>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeLogStreamsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeLogStreamsResponse(:logStreams, :nextToken) = object;
    if (logStreams != null) {
      result$
        ..add('logStreams')
        ..add(serializers.serialize(
          logStreams,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.LogStream)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('nextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
