// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.get_aggregate_conformance_pack_compliance_summary_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_conformance_pack_compliance_summary.dart'
    as _i2;

part 'get_aggregate_conformance_pack_compliance_summary_response.g.dart';

abstract class GetAggregateConformancePackComplianceSummaryResponse
    with
        _i1.AWSEquatable<GetAggregateConformancePackComplianceSummaryResponse>
    implements
        Built<GetAggregateConformancePackComplianceSummaryResponse,
            GetAggregateConformancePackComplianceSummaryResponseBuilder> {
  factory GetAggregateConformancePackComplianceSummaryResponse({
    List<_i2.AggregateConformancePackComplianceSummary>?
        aggregateConformancePackComplianceSummaries,
    String? groupByKey,
    String? nextToken,
  }) {
    return _$GetAggregateConformancePackComplianceSummaryResponse._(
      aggregateConformancePackComplianceSummaries:
          aggregateConformancePackComplianceSummaries == null
              ? null
              : _i3.BuiltList(aggregateConformancePackComplianceSummaries),
      groupByKey: groupByKey,
      nextToken: nextToken,
    );
  }

  factory GetAggregateConformancePackComplianceSummaryResponse.build(
      [void Function(
              GetAggregateConformancePackComplianceSummaryResponseBuilder)
          updates]) = _$GetAggregateConformancePackComplianceSummaryResponse;

  const GetAggregateConformancePackComplianceSummaryResponse._();

  /// Constructs a [GetAggregateConformancePackComplianceSummaryResponse] from a [payload] and [response].
  factory GetAggregateConformancePackComplianceSummaryResponse.fromResponse(
    GetAggregateConformancePackComplianceSummaryResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetAggregateConformancePackComplianceSummaryResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetAggregateConformancePackComplianceSummaryResponseBuilder b) {}

  /// Returns a list of `AggregateConformancePackComplianceSummary` object.
  _i3.BuiltList<_i2.AggregateConformancePackComplianceSummary>?
      get aggregateConformancePackComplianceSummaries;

  /// Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.
  String? get groupByKey;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        aggregateConformancePackComplianceSummaries,
        groupByKey,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetAggregateConformancePackComplianceSummaryResponse');
    helper.add(
      'aggregateConformancePackComplianceSummaries',
      aggregateConformancePackComplianceSummaries,
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

class GetAggregateConformancePackComplianceSummaryResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        GetAggregateConformancePackComplianceSummaryResponse> {
  const GetAggregateConformancePackComplianceSummaryResponseAwsJson11Serializer()
      : super('GetAggregateConformancePackComplianceSummaryResponse');

  @override
  Iterable<Type> get types => const [
        GetAggregateConformancePackComplianceSummaryResponse,
        _$GetAggregateConformancePackComplianceSummaryResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetAggregateConformancePackComplianceSummaryResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        GetAggregateConformancePackComplianceSummaryResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AggregateConformancePackComplianceSummaries':
          if (value != null) {
            result.aggregateConformancePackComplianceSummaries
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AggregateConformancePackComplianceSummary)],
              ),
            ) as _i3.BuiltList<_i2.AggregateConformancePackComplianceSummary>));
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
    final payload =
        (object as GetAggregateConformancePackComplianceSummaryResponse);
    final result = <Object?>[];
    if (payload.aggregateConformancePackComplianceSummaries != null) {
      result
        ..add('AggregateConformancePackComplianceSummaries')
        ..add(serializers.serialize(
          payload.aggregateConformancePackComplianceSummaries!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.AggregateConformancePackComplianceSummary)],
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
