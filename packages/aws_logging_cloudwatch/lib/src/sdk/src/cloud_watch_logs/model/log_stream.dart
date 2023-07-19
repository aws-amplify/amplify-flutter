// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.log_stream; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'log_stream.g.dart';

/// Represents a log stream, which is a sequence of log events from a single emitter of logs.
abstract class LogStream
    with _i1.AWSEquatable<LogStream>
    implements Built<LogStream, LogStreamBuilder> {
  /// Represents a log stream, which is a sequence of log events from a single emitter of logs.
  factory LogStream({
    String? logStreamName,
    _i2.Int64? creationTime,
    _i2.Int64? firstEventTimestamp,
    _i2.Int64? lastEventTimestamp,
    _i2.Int64? lastIngestionTime,
    String? uploadSequenceToken,
    String? arn,
    @Deprecated(
        'Starting on June 17, 2019, this parameter will be deprecated for log streams, and will be reported as zero. This change applies only to log streams. The storedBytes parameter for log groups is not affected.')
    _i2.Int64? storedBytes,
  }) {
    return _$LogStream._(
      logStreamName: logStreamName,
      creationTime: creationTime,
      firstEventTimestamp: firstEventTimestamp,
      lastEventTimestamp: lastEventTimestamp,
      lastIngestionTime: lastIngestionTime,
      uploadSequenceToken: uploadSequenceToken,
      arn: arn,
      storedBytes: storedBytes,
    );
  }

  /// Represents a log stream, which is a sequence of log events from a single emitter of logs.
  factory LogStream.build([void Function(LogStreamBuilder) updates]) =
      _$LogStream;

  const LogStream._();

  static const List<_i3.SmithySerializer<LogStream>> serializers = [
    LogStreamAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LogStreamBuilder b) {}

  /// The name of the log stream.
  String? get logStreamName;

  /// The creation time of the stream, expressed as the number of milliseconds after `Jan 1, 1970 00:00:00 UTC`.
  _i2.Int64? get creationTime;

  /// The time of the first event, expressed as the number of milliseconds after `Jan 1, 1970 00:00:00 UTC`.
  _i2.Int64? get firstEventTimestamp;

  /// The time of the most recent log event in the log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after `Jan 1, 1970 00:00:00 UTC`. The `lastEventTime` value updates on an eventual consistency basis. It typically updates in less than an hour from ingestion, but in rare situations might take longer.
  _i2.Int64? get lastEventTimestamp;

  /// The ingestion time, expressed as the number of milliseconds after `Jan 1, 1970 00:00:00 UTC` The `lastIngestionTime` value updates on an eventual consistency basis. It typically updates in less than an hour after ingestion, but in rare situations might take longer.
  _i2.Int64? get lastIngestionTime;

  /// The sequence token.
  ///
  /// The sequence token is now ignored in `PutLogEvents` actions. `PutLogEvents` actions are always accepted regardless of receiving an invalid sequence token. You don't need to obtain `uploadSequenceToken` to use a `PutLogEvents` action.
  String? get uploadSequenceToken;

  /// The Amazon Resource Name (ARN) of the log stream.
  String? get arn;

  /// The number of bytes stored.
  ///
  /// **Important:** As of June 17, 2019, this parameter is no longer supported for log streams, and is always reported as zero. This change applies only to log streams. The `storedBytes` parameter for log groups is not affected.
  @Deprecated(
      'Starting on June 17, 2019, this parameter will be deprecated for log streams, and will be reported as zero. This change applies only to log streams. The storedBytes parameter for log groups is not affected.')
  _i2.Int64? get storedBytes;
  @override
  List<Object?> get props => [
        logStreamName,
        creationTime,
        firstEventTimestamp,
        lastEventTimestamp,
        lastIngestionTime,
        uploadSequenceToken,
        arn,
        storedBytes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LogStream')
      ..add(
        'logStreamName',
        logStreamName,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'firstEventTimestamp',
        firstEventTimestamp,
      )
      ..add(
        'lastEventTimestamp',
        lastEventTimestamp,
      )
      ..add(
        'lastIngestionTime',
        lastIngestionTime,
      )
      ..add(
        'uploadSequenceToken',
        uploadSequenceToken,
      )
      ..add(
        'arn',
        arn,
      )
      ..add(
        'storedBytes',
        storedBytes,
      );
    return helper.toString();
  }
}

class LogStreamAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<LogStream> {
  const LogStreamAwsJson11Serializer() : super('LogStream');

  @override
  Iterable<Type> get types => const [
        LogStream,
        _$LogStream,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  LogStream deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogStreamBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'logStreamName':
          result.logStreamName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'firstEventTimestamp':
          result.firstEventTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'lastEventTimestamp':
          result.lastEventTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'lastIngestionTime':
          result.lastIngestionTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'uploadSequenceToken':
          result.uploadSequenceToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'storedBytes':
          result.storedBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LogStream object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final LogStream(
      :logStreamName,
      :creationTime,
      :firstEventTimestamp,
      :lastEventTimestamp,
      :lastIngestionTime,
      :uploadSequenceToken,
      :arn,
      :storedBytes
    ) = object;
    if (logStreamName != null) {
      result$
        ..add('logStreamName')
        ..add(serializers.serialize(
          logStreamName,
          specifiedType: const FullType(String),
        ));
    }
    if (creationTime != null) {
      result$
        ..add('creationTime')
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (firstEventTimestamp != null) {
      result$
        ..add('firstEventTimestamp')
        ..add(serializers.serialize(
          firstEventTimestamp,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (lastEventTimestamp != null) {
      result$
        ..add('lastEventTimestamp')
        ..add(serializers.serialize(
          lastEventTimestamp,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (lastIngestionTime != null) {
      result$
        ..add('lastIngestionTime')
        ..add(serializers.serialize(
          lastIngestionTime,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (uploadSequenceToken != null) {
      result$
        ..add('uploadSequenceToken')
        ..add(serializers.serialize(
          uploadSequenceToken,
          specifiedType: const FullType(String),
        ));
    }
    if (arn != null) {
      result$
        ..add('arn')
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (storedBytes != null) {
      result$
        ..add('storedBytes')
        ..add(serializers.serialize(
          storedBytes,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    return result$;
  }
}
