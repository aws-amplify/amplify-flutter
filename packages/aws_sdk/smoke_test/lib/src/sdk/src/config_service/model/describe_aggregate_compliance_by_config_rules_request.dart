// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_aggregate_compliance_by_config_rules_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_compliance_filters.dart'
    as _i3;

part 'describe_aggregate_compliance_by_config_rules_request.g.dart';

abstract class DescribeAggregateComplianceByConfigRulesRequest
    with
        _i1.HttpInput<DescribeAggregateComplianceByConfigRulesRequest>,
        _i2.AWSEquatable<DescribeAggregateComplianceByConfigRulesRequest>
    implements
        Built<DescribeAggregateComplianceByConfigRulesRequest,
            DescribeAggregateComplianceByConfigRulesRequestBuilder> {
  factory DescribeAggregateComplianceByConfigRulesRequest({
    required String configurationAggregatorName,
    _i3.ConfigRuleComplianceFilters? filters,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$DescribeAggregateComplianceByConfigRulesRequest._(
      configurationAggregatorName: configurationAggregatorName,
      filters: filters,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory DescribeAggregateComplianceByConfigRulesRequest.build(
      [void Function(DescribeAggregateComplianceByConfigRulesRequestBuilder)
          updates]) = _$DescribeAggregateComplianceByConfigRulesRequest;

  const DescribeAggregateComplianceByConfigRulesRequest._();

  factory DescribeAggregateComplianceByConfigRulesRequest.fromRequest(
    DescribeAggregateComplianceByConfigRulesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeAggregateComplianceByConfigRulesRequest>>
      serializers = [
    DescribeAggregateComplianceByConfigRulesRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAggregateComplianceByConfigRulesRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// Filters the results by ConfigRuleComplianceFilters object.
  _i3.ConfigRuleComplianceFilters? get filters;

  /// The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeAggregateComplianceByConfigRulesRequest getPayload() => this;
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
        'DescribeAggregateComplianceByConfigRulesRequest')
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

class DescribeAggregateComplianceByConfigRulesRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<
        DescribeAggregateComplianceByConfigRulesRequest> {
  const DescribeAggregateComplianceByConfigRulesRequestAwsJson11Serializer()
      : super('DescribeAggregateComplianceByConfigRulesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAggregateComplianceByConfigRulesRequest,
        _$DescribeAggregateComplianceByConfigRulesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeAggregateComplianceByConfigRulesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAggregateComplianceByConfigRulesRequestBuilder();
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
            specifiedType: const FullType(_i3.ConfigRuleComplianceFilters),
          ) as _i3.ConfigRuleComplianceFilters));
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
    DescribeAggregateComplianceByConfigRulesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeAggregateComplianceByConfigRulesRequest(
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
          specifiedType: const FullType(_i3.ConfigRuleComplianceFilters),
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
