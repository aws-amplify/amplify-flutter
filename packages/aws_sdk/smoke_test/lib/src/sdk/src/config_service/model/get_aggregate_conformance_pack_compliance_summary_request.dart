// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_aggregate_conformance_pack_compliance_summary_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_summary_filters.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_summary_group_key.dart'
    as _i4;

part 'get_aggregate_conformance_pack_compliance_summary_request.g.dart';

abstract class GetAggregateConformancePackComplianceSummaryRequest
    with
        _i1.HttpInput<GetAggregateConformancePackComplianceSummaryRequest>,
        _i2.AWSEquatable<GetAggregateConformancePackComplianceSummaryRequest>
    implements
        Built<GetAggregateConformancePackComplianceSummaryRequest,
            GetAggregateConformancePackComplianceSummaryRequestBuilder> {
  factory GetAggregateConformancePackComplianceSummaryRequest({
    required String configurationAggregatorName,
    _i3.AggregateConformancePackComplianceSummaryFilters? filters,
    _i4.AggregateConformancePackComplianceSummaryGroupKey? groupByKey,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$GetAggregateConformancePackComplianceSummaryRequest._(
      configurationAggregatorName: configurationAggregatorName,
      filters: filters,
      groupByKey: groupByKey,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory GetAggregateConformancePackComplianceSummaryRequest.build(
      [void Function(GetAggregateConformancePackComplianceSummaryRequestBuilder)
          updates]) = _$GetAggregateConformancePackComplianceSummaryRequest;

  const GetAggregateConformancePackComplianceSummaryRequest._();

  factory GetAggregateConformancePackComplianceSummaryRequest.fromRequest(
    GetAggregateConformancePackComplianceSummaryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          GetAggregateConformancePackComplianceSummaryRequest>> serializers = [
    GetAggregateConformancePackComplianceSummaryRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetAggregateConformancePackComplianceSummaryRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// Filters the results based on the `AggregateConformancePackComplianceSummaryFilters` object.
  _i3.AggregateConformancePackComplianceSummaryFilters? get filters;

  /// Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.
  _i4.AggregateConformancePackComplianceSummaryGroupKey? get groupByKey;

  /// The maximum number of results returned on each page. The default is maximum. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetAggregateConformancePackComplianceSummaryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        filters,
        groupByKey,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetAggregateConformancePackComplianceSummaryRequest')
      ..add(
        'configurationAggregatorName',
        configurationAggregatorName,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'groupByKey',
        groupByKey,
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

class GetAggregateConformancePackComplianceSummaryRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<
        GetAggregateConformancePackComplianceSummaryRequest> {
  const GetAggregateConformancePackComplianceSummaryRequestAwsJson11Serializer()
      : super('GetAggregateConformancePackComplianceSummaryRequest');

  @override
  Iterable<Type> get types => const [
        GetAggregateConformancePackComplianceSummaryRequest,
        _$GetAggregateConformancePackComplianceSummaryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetAggregateConformancePackComplianceSummaryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAggregateConformancePackComplianceSummaryRequestBuilder();
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
            specifiedType: const FullType(
                _i3.AggregateConformancePackComplianceSummaryFilters),
          ) as _i3.AggregateConformancePackComplianceSummaryFilters));
        case 'GroupByKey':
          result.groupByKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(
                _i4.AggregateConformancePackComplianceSummaryGroupKey),
          ) as _i4.AggregateConformancePackComplianceSummaryGroupKey);
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
    GetAggregateConformancePackComplianceSummaryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetAggregateConformancePackComplianceSummaryRequest(
      :configurationAggregatorName,
      :filters,
      :groupByKey,
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
          specifiedType: const FullType(
              _i3.AggregateConformancePackComplianceSummaryFilters),
        ));
    }
    if (groupByKey != null) {
      result$
        ..add('GroupByKey')
        ..add(serializers.serialize(
          groupByKey,
          specifiedType: const FullType(
              _i4.AggregateConformancePackComplianceSummaryGroupKey),
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
