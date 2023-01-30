// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_configuration_aggregator_sources_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status.dart'
    as _i2;

part 'describe_configuration_aggregator_sources_status_response.g.dart';

abstract class DescribeConfigurationAggregatorSourcesStatusResponse
    with
        _i1.AWSEquatable<DescribeConfigurationAggregatorSourcesStatusResponse>
    implements
        Built<DescribeConfigurationAggregatorSourcesStatusResponse,
            DescribeConfigurationAggregatorSourcesStatusResponseBuilder> {
  factory DescribeConfigurationAggregatorSourcesStatusResponse({
    List<_i2.AggregatedSourceStatus>? aggregatedSourceStatusList,
    String? nextToken,
  }) {
    return _$DescribeConfigurationAggregatorSourcesStatusResponse._(
      aggregatedSourceStatusList: aggregatedSourceStatusList == null
          ? null
          : _i3.BuiltList(aggregatedSourceStatusList),
      nextToken: nextToken,
    );
  }

  factory DescribeConfigurationAggregatorSourcesStatusResponse.build(
      [void Function(
              DescribeConfigurationAggregatorSourcesStatusResponseBuilder)
          updates]) = _$DescribeConfigurationAggregatorSourcesStatusResponse;

  const DescribeConfigurationAggregatorSourcesStatusResponse._();

  /// Constructs a [DescribeConfigurationAggregatorSourcesStatusResponse] from a [payload] and [response].
  factory DescribeConfigurationAggregatorSourcesStatusResponse.fromResponse(
    DescribeConfigurationAggregatorSourcesStatusResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeConfigurationAggregatorSourcesStatusResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeConfigurationAggregatorSourcesStatusResponseBuilder b) {}

  /// Returns an AggregatedSourceStatus object.
  _i3.BuiltList<_i2.AggregatedSourceStatus>? get aggregatedSourceStatusList;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        aggregatedSourceStatusList,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeConfigurationAggregatorSourcesStatusResponse');
    helper.add(
      'aggregatedSourceStatusList',
      aggregatedSourceStatusList,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeConfigurationAggregatorSourcesStatusResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        DescribeConfigurationAggregatorSourcesStatusResponse> {
  const DescribeConfigurationAggregatorSourcesStatusResponseAwsJson11Serializer()
      : super('DescribeConfigurationAggregatorSourcesStatusResponse');

  @override
  Iterable<Type> get types => const [
        DescribeConfigurationAggregatorSourcesStatusResponse,
        _$DescribeConfigurationAggregatorSourcesStatusResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigurationAggregatorSourcesStatusResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DescribeConfigurationAggregatorSourcesStatusResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AggregatedSourceStatusList':
          if (value != null) {
            result.aggregatedSourceStatusList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AggregatedSourceStatus)],
              ),
            ) as _i3.BuiltList<_i2.AggregatedSourceStatus>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload =
        (object as DescribeConfigurationAggregatorSourcesStatusResponse);
    final result = <Object?>[];
    if (payload.aggregatedSourceStatusList != null) {
      result
        ..add('AggregatedSourceStatusList')
        ..add(serializers.serialize(
          payload.aggregatedSourceStatusList!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.AggregatedSourceStatus)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
