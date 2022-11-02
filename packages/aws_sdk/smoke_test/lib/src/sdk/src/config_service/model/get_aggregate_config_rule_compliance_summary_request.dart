// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.get_aggregate_config_rule_compliance_summary_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_compliance_summary_filters.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_compliance_summary_group_key.dart'
    as _i4;

part 'get_aggregate_config_rule_compliance_summary_request.g.dart';

abstract class GetAggregateConfigRuleComplianceSummaryRequest
    with
        _i1.HttpInput<GetAggregateConfigRuleComplianceSummaryRequest>,
        _i2.AWSEquatable<GetAggregateConfigRuleComplianceSummaryRequest>
    implements
        Built<GetAggregateConfigRuleComplianceSummaryRequest,
            GetAggregateConfigRuleComplianceSummaryRequestBuilder> {
  factory GetAggregateConfigRuleComplianceSummaryRequest({
    required String configurationAggregatorName,
    _i3.ConfigRuleComplianceSummaryFilters? filters,
    _i4.ConfigRuleComplianceSummaryGroupKey? groupByKey,
    int? limit,
    String? nextToken,
  }) {
    return _$GetAggregateConfigRuleComplianceSummaryRequest._(
      configurationAggregatorName: configurationAggregatorName,
      filters: filters,
      groupByKey: groupByKey,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory GetAggregateConfigRuleComplianceSummaryRequest.build(
      [void Function(GetAggregateConfigRuleComplianceSummaryRequestBuilder)
          updates]) = _$GetAggregateConfigRuleComplianceSummaryRequest;

  const GetAggregateConfigRuleComplianceSummaryRequest._();

  factory GetAggregateConfigRuleComplianceSummaryRequest.fromRequest(
    GetAggregateConfigRuleComplianceSummaryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetAggregateConfigRuleComplianceSummaryRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAggregateConfigRuleComplianceSummaryRequestBuilder b) {}

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// Filters the results based on the ConfigRuleComplianceSummaryFilters object.
  _i3.ConfigRuleComplianceSummaryFilters? get filters;

  /// Groups the result based on ACCOUNT\_ID or AWS\_REGION.
  _i4.ConfigRuleComplianceSummaryGroupKey? get groupByKey;

  /// The maximum number of evaluation results returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, Config uses the default.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetAggregateConfigRuleComplianceSummaryRequest getPayload() => this;
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
        'GetAggregateConfigRuleComplianceSummaryRequest');
    helper.add(
      'configurationAggregatorName',
      configurationAggregatorName,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'groupByKey',
      groupByKey,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetAggregateConfigRuleComplianceSummaryRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<
        GetAggregateConfigRuleComplianceSummaryRequest> {
  const GetAggregateConfigRuleComplianceSummaryRequestAwsJson11Serializer()
      : super('GetAggregateConfigRuleComplianceSummaryRequest');

  @override
  Iterable<Type> get types => const [
        GetAggregateConfigRuleComplianceSummaryRequest,
        _$GetAggregateConfigRuleComplianceSummaryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetAggregateConfigRuleComplianceSummaryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAggregateConfigRuleComplianceSummaryRequestBuilder();
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
        case 'Filters':
          if (value != null) {
            result.filters.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.ConfigRuleComplianceSummaryFilters),
            ) as _i3.ConfigRuleComplianceSummaryFilters));
          }
          break;
        case 'GroupByKey':
          if (value != null) {
            result.groupByKey = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.ConfigRuleComplianceSummaryGroupKey),
            ) as _i4.ConfigRuleComplianceSummaryGroupKey);
          }
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
    final payload = (object as GetAggregateConfigRuleComplianceSummaryRequest);
    final result = <Object?>[
      'ConfigurationAggregatorName',
      serializers.serialize(
        payload.configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.filters != null) {
      result
        ..add('Filters')
        ..add(serializers.serialize(
          payload.filters!,
          specifiedType: const FullType(_i3.ConfigRuleComplianceSummaryFilters),
        ));
    }
    if (payload.groupByKey != null) {
      result
        ..add('GroupByKey')
        ..add(serializers.serialize(
          payload.groupByKey!,
          specifiedType:
              const FullType(_i4.ConfigRuleComplianceSummaryGroupKey),
        ));
    }
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
    return result;
  }
}
