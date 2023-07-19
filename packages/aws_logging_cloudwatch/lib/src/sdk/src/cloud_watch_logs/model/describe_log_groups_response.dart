// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.describe_log_groups_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/log_group.dart'
    as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'describe_log_groups_response.g.dart';

abstract class DescribeLogGroupsResponse
    with _i1.AWSEquatable<DescribeLogGroupsResponse>
    implements
        Built<DescribeLogGroupsResponse, DescribeLogGroupsResponseBuilder> {
  factory DescribeLogGroupsResponse({
    List<_i2.LogGroup>? logGroups,
    String? nextToken,
  }) {
    return _$DescribeLogGroupsResponse._(
      logGroups: logGroups == null ? null : _i3.BuiltList(logGroups),
      nextToken: nextToken,
    );
  }

  factory DescribeLogGroupsResponse.build(
          [void Function(DescribeLogGroupsResponseBuilder) updates]) =
      _$DescribeLogGroupsResponse;

  const DescribeLogGroupsResponse._();

  /// Constructs a [DescribeLogGroupsResponse] from a [payload] and [response].
  factory DescribeLogGroupsResponse.fromResponse(
    DescribeLogGroupsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<DescribeLogGroupsResponse>>
      serializers = [DescribeLogGroupsResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLogGroupsResponseBuilder b) {}

  /// The log groups.
  ///
  /// If the `retentionInDays` value is not included for a log group, then that log group's events do not expire.
  _i3.BuiltList<_i2.LogGroup>? get logGroups;

  /// The token for the next set of items to return. The token expires after 24 hours.
  String? get nextToken;
  @override
  List<Object?> get props => [
        logGroups,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeLogGroupsResponse')
      ..add(
        'logGroups',
        logGroups,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeLogGroupsResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<DescribeLogGroupsResponse> {
  const DescribeLogGroupsResponseAwsJson11Serializer()
      : super('DescribeLogGroupsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeLogGroupsResponse,
        _$DescribeLogGroupsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeLogGroupsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLogGroupsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'logGroups':
          result.logGroups.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.LogGroup)],
            ),
          ) as _i3.BuiltList<_i2.LogGroup>));
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
    DescribeLogGroupsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeLogGroupsResponse(:logGroups, :nextToken) = object;
    if (logGroups != null) {
      result$
        ..add('logGroups')
        ..add(serializers.serialize(
          logGroups,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.LogGroup)],
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
