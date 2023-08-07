// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.describe_configuration_aggregator_sources_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status.dart';

part 'describe_configuration_aggregator_sources_status_response.g.dart';

abstract class DescribeConfigurationAggregatorSourcesStatusResponse
    with
        _i1.AWSEquatable<DescribeConfigurationAggregatorSourcesStatusResponse>
    implements
        Built<DescribeConfigurationAggregatorSourcesStatusResponse,
            DescribeConfigurationAggregatorSourcesStatusResponseBuilder> {
  factory DescribeConfigurationAggregatorSourcesStatusResponse({
    List<AggregatedSourceStatus>? aggregatedSourceStatusList,
    String? nextToken,
  }) {
    return _$DescribeConfigurationAggregatorSourcesStatusResponse._(
      aggregatedSourceStatusList: aggregatedSourceStatusList == null
          ? null
          : _i2.BuiltList(aggregatedSourceStatusList),
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

  static const List<
      _i3.SmithySerializer<
          DescribeConfigurationAggregatorSourcesStatusResponse>> serializers = [
    DescribeConfigurationAggregatorSourcesStatusResponseAwsJson11Serializer()
  ];

  /// Returns an AggregatedSourceStatus object.
  _i2.BuiltList<AggregatedSourceStatus>? get aggregatedSourceStatusList;

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
        'DescribeConfigurationAggregatorSourcesStatusResponse')
      ..add(
        'aggregatedSourceStatusList',
        aggregatedSourceStatusList,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeConfigurationAggregatorSourcesStatusResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<
        DescribeConfigurationAggregatorSourcesStatusResponse> {
  const DescribeConfigurationAggregatorSourcesStatusResponseAwsJson11Serializer()
      : super('DescribeConfigurationAggregatorSourcesStatusResponse');

  @override
  Iterable<Type> get types => const [
        DescribeConfigurationAggregatorSourcesStatusResponse,
        _$DescribeConfigurationAggregatorSourcesStatusResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AggregatedSourceStatusList':
          result.aggregatedSourceStatusList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AggregatedSourceStatus)],
            ),
          ) as _i2.BuiltList<AggregatedSourceStatus>));
        case 'NextToken':
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
    DescribeConfigurationAggregatorSourcesStatusResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConfigurationAggregatorSourcesStatusResponse(
      :aggregatedSourceStatusList,
      :nextToken
    ) = object;
    if (aggregatedSourceStatusList != null) {
      result$
        ..add('AggregatedSourceStatusList')
        ..add(serializers.serialize(
          aggregatedSourceStatusList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AggregatedSourceStatus)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
