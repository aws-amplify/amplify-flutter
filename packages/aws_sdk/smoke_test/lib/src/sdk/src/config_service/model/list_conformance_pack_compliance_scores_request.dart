// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.list_conformance_pack_compliance_scores_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_scores_filters.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/sort_by.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/sort_order.dart'
    as _i4;

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
    _i4.SortOrder? sortOrder,
    _i5.SortBy? sortBy,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$ListConformancePackComplianceScoresRequest._(
      filters: filters,
      sortOrder: sortOrder,
      sortBy: sortBy,
      limit: limit,
      nextToken: nextToken,
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

  static const List<
          _i1.SmithySerializer<ListConformancePackComplianceScoresRequest>>
      serializers = [
    ListConformancePackComplianceScoresRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListConformancePackComplianceScoresRequestBuilder b) {
    b.limit = 0;
  }

  /// Filters the results based on the `ConformancePackComplianceScoresFilters`.
  _i3.ConformancePackComplianceScoresFilters? get filters;

  /// Determines the order in which conformance pack compliance scores are sorted. Either in ascending or descending order.
  ///
  /// By default, conformance pack compliance scores are sorted in alphabetical order by name of the conformance pack. Conformance pack compliance scores are sorted in reverse alphabetical order if you enter `DESCENDING`.
  ///
  /// You can sort conformance pack compliance scores by the numerical value of the compliance score by entering `SCORE` in the `SortBy` action. When compliance scores are sorted by `SCORE`, conformance packs with a compliance score of `INSUFFICIENT_DATA` will be last when sorting by ascending order and first when sorting by descending order.
  _i4.SortOrder? get sortOrder;

  /// Sorts your conformance pack compliance scores in either ascending or descending order, depending on `SortOrder`.
  ///
  /// By default, conformance pack compliance scores are sorted in alphabetical order by name of the conformance pack. Enter `SCORE`, to sort conformance pack compliance scores by the numerical value of the compliance score.
  _i5.SortBy? get sortBy;

  /// The maximum number of conformance pack compliance scores returned on each page.
  int get limit;

  /// The `nextToken` string in a prior request that you can use to get the paginated response for the next set of conformance pack compliance scores.
  String? get nextToken;
  @override
  ListConformancePackComplianceScoresRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        sortOrder,
        sortBy,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ListConformancePackComplianceScoresRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'sortOrder',
        sortOrder,
      )
      ..add(
        'sortBy',
        sortBy,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filters':
          result.filters.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.ConformancePackComplianceScoresFilters),
          ) as _i3.ConformancePackComplianceScoresFilters));
        case 'SortOrder':
          result.sortOrder = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.SortOrder),
          ) as _i4.SortOrder);
        case 'SortBy':
          result.sortBy = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.SortBy),
          ) as _i5.SortBy);
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
    ListConformancePackComplianceScoresRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListConformancePackComplianceScoresRequest(
      :filters,
      :sortOrder,
      :sortBy,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
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
              const FullType(_i3.ConformancePackComplianceScoresFilters),
        ));
    }
    if (sortOrder != null) {
      result$
        ..add('SortOrder')
        ..add(serializers.serialize(
          sortOrder,
          specifiedType: const FullType(_i4.SortOrder),
        ));
    }
    if (sortBy != null) {
      result$
        ..add('SortBy')
        ..add(serializers.serialize(
          sortBy,
          specifiedType: const FullType(_i5.SortBy),
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
