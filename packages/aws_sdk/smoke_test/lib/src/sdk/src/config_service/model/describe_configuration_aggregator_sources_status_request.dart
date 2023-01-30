// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    int? limit,
    String? nextToken,
    List<_i3.AggregatedSourceStatusType>? updateStatus,
  }) {
    return _$DescribeConfigurationAggregatorSourcesStatusRequest._(
      configurationAggregatorName: configurationAggregatorName,
      limit: limit,
      nextToken: nextToken,
      updateStatus: updateStatus == null ? null : _i4.BuiltList(updateStatus),
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

  static const List<_i1.SmithySerializer> serializers = [
    DescribeConfigurationAggregatorSourcesStatusRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeConfigurationAggregatorSourcesStatusRequestBuilder b) {}

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// The maximum number of AggregatorSourceStatus returned on each page. The default is maximum. If you specify 0, Config uses the default.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// Filters the status type.
  ///
  /// *   Valid value FAILED indicates errors while moving data.
  ///
  /// *   Valid value SUCCEEDED indicates the data was successfully moved.
  ///
  /// *   Valid value OUTDATED indicates the data is not the most recent.
  _i4.BuiltList<_i3.AggregatedSourceStatusType>? get updateStatus;
  @override
  DescribeConfigurationAggregatorSourcesStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        limit,
        nextToken,
        updateStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeConfigurationAggregatorSourcesStatusRequest');
    helper.add(
      'configurationAggregatorName',
      configurationAggregatorName,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'updateStatus',
      updateStatus,
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
      switch (key) {
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
        case 'UpdateStatus':
          if (value != null) {
            result.updateStatus.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.AggregatedSourceStatusType)],
              ),
            ) as _i4.BuiltList<_i3.AggregatedSourceStatusType>));
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
        (object as DescribeConfigurationAggregatorSourcesStatusRequest);
    final result = <Object?>[
      'ConfigurationAggregatorName',
      serializers.serialize(
        payload.configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
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
    if (payload.updateStatus != null) {
      result
        ..add('UpdateStatus')
        ..add(serializers.serialize(
          payload.updateStatus!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.AggregatedSourceStatusType)],
          ),
        ));
    }
    return result;
  }
}
