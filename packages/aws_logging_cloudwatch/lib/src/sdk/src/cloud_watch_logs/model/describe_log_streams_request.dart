// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.describe_log_streams_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/order_by.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_log_streams_request.g.dart';

abstract class DescribeLogStreamsRequest
    with
        _i1.HttpInput<DescribeLogStreamsRequest>,
        _i2.AWSEquatable<DescribeLogStreamsRequest>
    implements
        Built<DescribeLogStreamsRequest, DescribeLogStreamsRequestBuilder> {
  factory DescribeLogStreamsRequest({
    String? logGroupName,
    String? logGroupIdentifier,
    String? logStreamNamePrefix,
    _i3.OrderBy? orderBy,
    bool? descending,
    String? nextToken,
    int? limit,
  }) {
    return _$DescribeLogStreamsRequest._(
      logGroupName: logGroupName,
      logGroupIdentifier: logGroupIdentifier,
      logStreamNamePrefix: logStreamNamePrefix,
      orderBy: orderBy,
      descending: descending,
      nextToken: nextToken,
      limit: limit,
    );
  }

  factory DescribeLogStreamsRequest.build(
          [void Function(DescribeLogStreamsRequestBuilder) updates]) =
      _$DescribeLogStreamsRequest;

  const DescribeLogStreamsRequest._();

  factory DescribeLogStreamsRequest.fromRequest(
    DescribeLogStreamsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeLogStreamsRequest>>
      serializers = [DescribeLogStreamsRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLogStreamsRequestBuilder b) {}

  /// The name of the log group.
  ///
  /// You must include either `logGroupIdentifier` or `logGroupName`, but not both.
  String? get logGroupName;

  /// Specify either the name or ARN of the log group to view. If the log group is in a source account and you are using a monitoring account, you must use the log group ARN.
  ///
  /// You must include either `logGroupIdentifier` or `logGroupName`, but not both.
  String? get logGroupIdentifier;

  /// The prefix to match.
  ///
  /// If `orderBy` is `LastEventTime`, you cannot specify this parameter.
  String? get logStreamNamePrefix;

  /// If the value is `LogStreamName`, the results are ordered by log stream name. If the value is `LastEventTime`, the results are ordered by the event time. The default value is `LogStreamName`.
  ///
  /// If you order the results by event time, you cannot specify the `logStreamNamePrefix` parameter.
  ///
  /// `lastEventTimestamp` represents the time of the most recent log event in the log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after `Jan 1, 1970 00:00:00 UTC`. `lastEventTimestamp` updates on an eventual consistency basis. It typically updates in less than an hour from ingestion, but in rare situations might take longer.
  _i3.OrderBy? get orderBy;

  /// If the value is true, results are returned in descending order. If the value is to false, results are returned in ascending order. The default value is false.
  bool? get descending;

  /// The token for the next set of items to return. (You received this token from a previous call.)
  String? get nextToken;

  /// The maximum number of items returned. If you don't specify a value, the default is up to 50 items.
  int? get limit;
  @override
  DescribeLogStreamsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        logGroupName,
        logGroupIdentifier,
        logStreamNamePrefix,
        orderBy,
        descending,
        nextToken,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeLogStreamsRequest')
      ..add(
        'logGroupName',
        logGroupName,
      )
      ..add(
        'logGroupIdentifier',
        logGroupIdentifier,
      )
      ..add(
        'logStreamNamePrefix',
        logStreamNamePrefix,
      )
      ..add(
        'orderBy',
        orderBy,
      )
      ..add(
        'descending',
        descending,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'limit',
        limit,
      );
    return helper.toString();
  }
}

class DescribeLogStreamsRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DescribeLogStreamsRequest> {
  const DescribeLogStreamsRequestAwsJson11Serializer()
      : super('DescribeLogStreamsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeLogStreamsRequest,
        _$DescribeLogStreamsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeLogStreamsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLogStreamsRequestBuilder();
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
        case 'logGroupIdentifier':
          result.logGroupIdentifier = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'logStreamNamePrefix':
          result.logStreamNamePrefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'orderBy':
          result.orderBy = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.OrderBy),
          ) as _i3.OrderBy);
        case 'descending':
          result.descending = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeLogStreamsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeLogStreamsRequest(
      :logGroupName,
      :logGroupIdentifier,
      :logStreamNamePrefix,
      :orderBy,
      :descending,
      :nextToken,
      :limit
    ) = object;
    if (logGroupName != null) {
      result$
        ..add('logGroupName')
        ..add(serializers.serialize(
          logGroupName,
          specifiedType: const FullType(String),
        ));
    }
    if (logGroupIdentifier != null) {
      result$
        ..add('logGroupIdentifier')
        ..add(serializers.serialize(
          logGroupIdentifier,
          specifiedType: const FullType(String),
        ));
    }
    if (logStreamNamePrefix != null) {
      result$
        ..add('logStreamNamePrefix')
        ..add(serializers.serialize(
          logStreamNamePrefix,
          specifiedType: const FullType(String),
        ));
    }
    if (orderBy != null) {
      result$
        ..add('orderBy')
        ..add(serializers.serialize(
          orderBy,
          specifiedType: const FullType(_i3.OrderBy),
        ));
    }
    if (descending != null) {
      result$
        ..add('descending')
        ..add(serializers.serialize(
          descending,
          specifiedType: const FullType(bool),
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
    if (limit != null) {
      result$
        ..add('limit')
        ..add(serializers.serialize(
          limit,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
