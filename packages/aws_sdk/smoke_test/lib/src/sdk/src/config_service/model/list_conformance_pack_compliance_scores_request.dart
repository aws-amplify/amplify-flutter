// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.list_conformance_pack_compliance_scores_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_scores_filters.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/sort_by.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/sort_order.dart'
    as _i5;

part 'list_conformance_pack_compliance_scores_request.g.dart';

abstract class ListConformancePackComplianceScoresRequest
    with
        _i1.HttpInput<ListConformancePackComplianceScoresRequest>,
        _i2.AWSEquatable<ListConformancePackComplianceScoresRequest>
    implements
        Built<ListConformancePackComplianceScoresRequest,
            ListConformancePackComplianceScoresRequestBuilder> {
  factory ListConformancePackComplianceScoresRequest({
    _i3.ConformancePackComplianceScoresFilters? filters,
    int? limit,
    String? nextToken,
    _i4.SortBy? sortBy,
    _i5.SortOrder? sortOrder,
  }) {
    return _$ListConformancePackComplianceScoresRequest._(
      filters: filters,
      limit: limit,
      nextToken: nextToken,
      sortBy: sortBy,
      sortOrder: sortOrder,
    );
  }

  factory ListConformancePackComplianceScoresRequest.build(
      [void Function(ListConformancePackComplianceScoresRequestBuilder)
          updates]) = _$ListConformancePackComplianceScoresRequest;

  const ListConformancePackComplianceScoresRequest._();

  factory ListConformancePackComplianceScoresRequest.fromRequest(
    ListConformancePackComplianceScoresRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListConformancePackComplianceScoresRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListConformancePackComplianceScoresRequestBuilder b) {}

  /// Filters the results based on the `ConformancePackComplianceScoresFilters`.
  _i3.ConformancePackComplianceScoresFilters? get filters;

  /// The maximum number of conformance pack compliance scores returned on each page.
  int? get limit;

  /// The `nextToken` string in a prior request that you can use to get the paginated response for next set of conformance pack compliance scores.
  String? get nextToken;

  /// Sorts your conformance pack compliance scores in either ascending or descending order, depending on `SortOrder`.
  ///
  /// By default, conformance pack compliance scores are sorted in ascending order by compliance score and alphabetically by name of the conformance pack if there is more than one conformance pack with the same compliance score.
  _i4.SortBy? get sortBy;

  /// Determines the order in which conformance pack compliance scores are sorted. Either in ascending or descending order.
  ///
  /// Conformance packs with a compliance score of `INSUFFICIENT_DATA` will be first when sorting by ascending order and last when sorting by descending order.
  _i5.SortOrder? get sortOrder;
  @override
  ListConformancePackComplianceScoresRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        limit,
        nextToken,
        sortBy,
        sortOrder,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ListConformancePackComplianceScoresRequest');
    helper.add(
      'filters',
      filters,
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
      'sortBy',
      sortBy,
    );
    helper.add(
      'sortOrder',
      sortOrder,
    );
    return helper.toString();
  }
}

class ListConformancePackComplianceScoresRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<ListConformancePackComplianceScoresRequest> {
  const ListConformancePackComplianceScoresRequestAwsJson11Serializer()
      : super('ListConformancePackComplianceScoresRequest');

  @override
  Iterable<Type> get types => const [
        ListConformancePackComplianceScoresRequest,
        _$ListConformancePackComplianceScoresRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListConformancePackComplianceScoresRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListConformancePackComplianceScoresRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Filters':
          if (value != null) {
            result.filters.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.ConformancePackComplianceScoresFilters),
            ) as _i3.ConformancePackComplianceScoresFilters));
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
        case 'SortBy':
          if (value != null) {
            result.sortBy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.SortBy),
            ) as _i4.SortBy);
          }
          break;
        case 'SortOrder':
          if (value != null) {
            result.sortOrder = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.SortOrder),
            ) as _i5.SortOrder);
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
    final payload = (object as ListConformancePackComplianceScoresRequest);
    final result = <Object?>[];
    if (payload.filters != null) {
      result
        ..add('Filters')
        ..add(serializers.serialize(
          payload.filters!,
          specifiedType:
              const FullType(_i3.ConformancePackComplianceScoresFilters),
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
    if (payload.sortBy != null) {
      result
        ..add('SortBy')
        ..add(serializers.serialize(
          payload.sortBy!,
          specifiedType: const FullType(_i4.SortBy),
        ));
    }
    if (payload.sortOrder != null) {
      result
        ..add('SortOrder')
        ..add(serializers.serialize(
          payload.sortOrder!,
          specifiedType: const FullType(_i5.SortOrder),
        ));
    }
    return result;
  }
}
