// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.get_aggregate_config_rule_compliance_summary_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_count.dart'
    as _i2;

part 'get_aggregate_config_rule_compliance_summary_response.g.dart';

abstract class GetAggregateConfigRuleComplianceSummaryResponse
    with
        _i1.AWSEquatable<GetAggregateConfigRuleComplianceSummaryResponse>
    implements
        Built<GetAggregateConfigRuleComplianceSummaryResponse,
            GetAggregateConfigRuleComplianceSummaryResponseBuilder> {
  factory GetAggregateConfigRuleComplianceSummaryResponse({
    List<_i2.AggregateComplianceCount>? aggregateComplianceCounts,
    String? groupByKey,
    String? nextToken,
  }) {
    return _$GetAggregateConfigRuleComplianceSummaryResponse._(
      aggregateComplianceCounts: aggregateComplianceCounts == null
          ? null
          : _i3.BuiltList(aggregateComplianceCounts),
      groupByKey: groupByKey,
      nextToken: nextToken,
    );
  }

  factory GetAggregateConfigRuleComplianceSummaryResponse.build(
      [void Function(GetAggregateConfigRuleComplianceSummaryResponseBuilder)
          updates]) = _$GetAggregateConfigRuleComplianceSummaryResponse;

  const GetAggregateConfigRuleComplianceSummaryResponse._();

  /// Constructs a [GetAggregateConfigRuleComplianceSummaryResponse] from a [payload] and [response].
  factory GetAggregateConfigRuleComplianceSummaryResponse.fromResponse(
    GetAggregateConfigRuleComplianceSummaryResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetAggregateConfigRuleComplianceSummaryResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAggregateConfigRuleComplianceSummaryResponseBuilder b) {}

  /// Returns a list of AggregateComplianceCounts object.
  _i3.BuiltList<_i2.AggregateComplianceCount>? get aggregateComplianceCounts;

  /// Groups the result based on ACCOUNT\_ID or AWS\_REGION.
  String? get groupByKey;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        aggregateComplianceCounts,
        groupByKey,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetAggregateConfigRuleComplianceSummaryResponse');
    helper.add(
      'aggregateComplianceCounts',
      aggregateComplianceCounts,
    );
    helper.add(
      'groupByKey',
      groupByKey,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetAggregateConfigRuleComplianceSummaryResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        GetAggregateConfigRuleComplianceSummaryResponse> {
  const GetAggregateConfigRuleComplianceSummaryResponseAwsJson11Serializer()
      : super('GetAggregateConfigRuleComplianceSummaryResponse');

  @override
  Iterable<Type> get types => const [
        GetAggregateConfigRuleComplianceSummaryResponse,
        _$GetAggregateConfigRuleComplianceSummaryResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetAggregateConfigRuleComplianceSummaryResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAggregateConfigRuleComplianceSummaryResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AggregateComplianceCounts':
          if (value != null) {
            result.aggregateComplianceCounts.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AggregateComplianceCount)],
              ),
            ) as _i3.BuiltList<_i2.AggregateComplianceCount>));
          }
          break;
        case 'GroupByKey':
          if (value != null) {
            result.groupByKey = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as GetAggregateConfigRuleComplianceSummaryResponse);
    final result = <Object?>[];
    if (payload.aggregateComplianceCounts != null) {
      result
        ..add('AggregateComplianceCounts')
        ..add(serializers.serialize(
          payload.aggregateComplianceCounts!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.AggregateComplianceCount)],
          ),
        ));
    }
    if (payload.groupByKey != null) {
      result
        ..add('GroupByKey')
        ..add(serializers.serialize(
          payload.groupByKey!,
          specifiedType: const FullType(String),
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
