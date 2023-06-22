// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_configuration_aggregator_sources_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status_type.dart'
    as _i3;

part 'describe_configuration_aggregator_sources_status_request.g.dart';

abstract class DescribeConfigurationAggregatorSourcesStatusRequest
    with
        _i1.HttpInput<DescribeConfigurationAggregatorSourcesStatusRequest>,
        _i2.AWSEquatable<DescribeConfigurationAggregatorSourcesStatusRequest>
    implements
        Built<DescribeConfigurationAggregatorSourcesStatusRequest,
            DescribeConfigurationAggregatorSourcesStatusRequestBuilder> {
  factory DescribeConfigurationAggregatorSourcesStatusRequest({
    required String configurationAggregatorName,
    List<_i3.AggregatedSourceStatusType>? updateStatus,
    String? nextToken,
    int? limit,
  }) {
    limit ??= 0;
    return _$DescribeConfigurationAggregatorSourcesStatusRequest._(
      configurationAggregatorName: configurationAggregatorName,
      updateStatus: updateStatus == null ? null : _i4.BuiltList(updateStatus),
      nextToken: nextToken,
      limit: limit,
    );
  }

  factory DescribeConfigurationAggregatorSourcesStatusRequest.build(
      [void Function(DescribeConfigurationAggregatorSourcesStatusRequestBuilder)
          updates]) = _$DescribeConfigurationAggregatorSourcesStatusRequest;

  const DescribeConfigurationAggregatorSourcesStatusRequest._();

  factory DescribeConfigurationAggregatorSourcesStatusRequest.fromRequest(
    DescribeConfigurationAggregatorSourcesStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          DescribeConfigurationAggregatorSourcesStatusRequest>> serializers = [
    DescribeConfigurationAggregatorSourcesStatusRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeConfigurationAggregatorSourcesStatusRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// Filters the status type.
  ///
  /// *   Valid value FAILED indicates errors while moving data.
  ///
  /// *   Valid value SUCCEEDED indicates the data was successfully moved.
  ///
  /// *   Valid value OUTDATED indicates the data is not the most recent.
  _i4.BuiltList<_i3.AggregatedSourceStatusType>? get updateStatus;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The maximum number of AggregatorSourceStatus returned on each page. The default is maximum. If you specify 0, Config uses the default.
  int get limit;
  @override
  DescribeConfigurationAggregatorSourcesStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        updateStatus,
        nextToken,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeConfigurationAggregatorSourcesStatusRequest')
      ..add(
        'configurationAggregatorName',
        configurationAggregatorName,
      )
      ..add(
        'updateStatus',
        updateStatus,
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

class DescribeConfigurationAggregatorSourcesStatusRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<
        DescribeConfigurationAggregatorSourcesStatusRequest> {
  const DescribeConfigurationAggregatorSourcesStatusRequestAwsJson11Serializer()
      : super('DescribeConfigurationAggregatorSourcesStatusRequest');

  @override
  Iterable<Type> get types => const [
        DescribeConfigurationAggregatorSourcesStatusRequest,
        _$DescribeConfigurationAggregatorSourcesStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigurationAggregatorSourcesStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigurationAggregatorSourcesStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UpdateStatus':
          result.updateStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.AggregatedSourceStatusType)],
            ),
          ) as _i4.BuiltList<_i3.AggregatedSourceStatusType>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Limit':
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
    DescribeConfigurationAggregatorSourcesStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConfigurationAggregatorSourcesStatusRequest(
      :configurationAggregatorName,
      :updateStatus,
      :nextToken,
      :limit
    ) = object;
    result$.addAll([
      'ConfigurationAggregatorName',
      serializers.serialize(
        configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
    if (updateStatus != null) {
      result$
        ..add('UpdateStatus')
        ..add(serializers.serialize(
          updateStatus,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.AggregatedSourceStatusType)],
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
