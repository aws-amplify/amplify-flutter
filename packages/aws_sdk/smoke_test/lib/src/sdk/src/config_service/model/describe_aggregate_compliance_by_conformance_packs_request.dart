// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_aggregate_compliance_by_conformance_packs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_filters.dart'
    as _i3;

part 'describe_aggregate_compliance_by_conformance_packs_request.g.dart';

abstract class DescribeAggregateComplianceByConformancePacksRequest
    with
        _i1.HttpInput<DescribeAggregateComplianceByConformancePacksRequest>,
        _i2.AWSEquatable<DescribeAggregateComplianceByConformancePacksRequest>
    implements
        Built<DescribeAggregateComplianceByConformancePacksRequest,
            DescribeAggregateComplianceByConformancePacksRequestBuilder> {
  factory DescribeAggregateComplianceByConformancePacksRequest({
    required String configurationAggregatorName,
    _i3.AggregateConformancePackComplianceFilters? filters,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$DescribeAggregateComplianceByConformancePacksRequest._(
      configurationAggregatorName: configurationAggregatorName,
      filters: filters,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory DescribeAggregateComplianceByConformancePacksRequest.build(
      [void Function(
              DescribeAggregateComplianceByConformancePacksRequestBuilder)
          updates]) = _$DescribeAggregateComplianceByConformancePacksRequest;

  const DescribeAggregateComplianceByConformancePacksRequest._();

  factory DescribeAggregateComplianceByConformancePacksRequest.fromRequest(
    DescribeAggregateComplianceByConformancePacksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          DescribeAggregateComplianceByConformancePacksRequest>> serializers = [
    DescribeAggregateComplianceByConformancePacksRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeAggregateComplianceByConformancePacksRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// Filters the result by `AggregateConformancePackComplianceFilters` object.
  _i3.AggregateConformancePackComplianceFilters? get filters;

  /// The maximum number of conformance packs compliance details returned on each page. The default is maximum. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeAggregateComplianceByConformancePacksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        filters,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeAggregateComplianceByConformancePacksRequest')
      ..add(
        'configurationAggregatorName',
        configurationAggregatorName,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeAggregateComplianceByConformancePacksRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<
        DescribeAggregateComplianceByConformancePacksRequest> {
  const DescribeAggregateComplianceByConformancePacksRequestAwsJson11Serializer()
      : super('DescribeAggregateComplianceByConformancePacksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAggregateComplianceByConformancePacksRequest,
        _$DescribeAggregateComplianceByConformancePacksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeAggregateComplianceByConformancePacksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DescribeAggregateComplianceByConformancePacksRequestBuilder();
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
        case 'Filters':
          result.filters.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.AggregateConformancePackComplianceFilters),
          ) as _i3.AggregateConformancePackComplianceFilters));
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    DescribeAggregateComplianceByConformancePacksRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeAggregateComplianceByConformancePacksRequest(
      :configurationAggregatorName,
      :filters,
      :limit,
      :nextToken
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
    if (filters != null) {
      result$
        ..add('Filters')
        ..add(serializers.serialize(
          filters,
          specifiedType:
              const FullType(_i3.AggregateConformancePackComplianceFilters),
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
