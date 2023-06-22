// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.contributor_insights_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/contributor_insights_status.dart'
    as _i2;

part 'contributor_insights_summary.g.dart';

/// Represents a Contributor Insights summary entry.
abstract class ContributorInsightsSummary
    with _i1.AWSEquatable<ContributorInsightsSummary>
    implements
        Built<ContributorInsightsSummary, ContributorInsightsSummaryBuilder> {
  /// Represents a Contributor Insights summary entry.
  factory ContributorInsightsSummary({
    String? tableName,
    String? indexName,
    _i2.ContributorInsightsStatus? contributorInsightsStatus,
  }) {
    return _$ContributorInsightsSummary._(
      tableName: tableName,
      indexName: indexName,
      contributorInsightsStatus: contributorInsightsStatus,
    );
  }

  /// Represents a Contributor Insights summary entry.
  factory ContributorInsightsSummary.build(
          [void Function(ContributorInsightsSummaryBuilder) updates]) =
      _$ContributorInsightsSummary;

  const ContributorInsightsSummary._();

  static const List<_i3.SmithySerializer<ContributorInsightsSummary>>
      serializers = [ContributorInsightsSummaryAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ContributorInsightsSummaryBuilder b) {}

  /// Name of the table associated with the summary.
  String? get tableName;

  /// Name of the index associated with the summary, if any.
  String? get indexName;

  /// Describes the current status for contributor insights for the given table and index, if applicable.
  _i2.ContributorInsightsStatus? get contributorInsightsStatus;
  @override
  List<Object?> get props => [
        tableName,
        indexName,
        contributorInsightsStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ContributorInsightsSummary')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'indexName',
        indexName,
      )
      ..add(
        'contributorInsightsStatus',
        contributorInsightsStatus,
      );
    return helper.toString();
  }
}

class ContributorInsightsSummaryAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ContributorInsightsSummary> {
  const ContributorInsightsSummaryAwsJson10Serializer()
      : super('ContributorInsightsSummary');

  @override
  Iterable<Type> get types => const [
        ContributorInsightsSummary,
        _$ContributorInsightsSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ContributorInsightsSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContributorInsightsSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ContributorInsightsStatus':
          result.contributorInsightsStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ContributorInsightsStatus),
          ) as _i2.ContributorInsightsStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ContributorInsightsSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ContributorInsightsSummary(
      :tableName,
      :indexName,
      :contributorInsightsStatus
    ) = object;
    if (tableName != null) {
      result$
        ..add('TableName')
        ..add(serializers.serialize(
          tableName,
          specifiedType: const FullType(String),
        ));
    }
    if (indexName != null) {
      result$
        ..add('IndexName')
        ..add(serializers.serialize(
          indexName,
          specifiedType: const FullType(String),
        ));
    }
    if (contributorInsightsStatus != null) {
      result$
        ..add('ContributorInsightsStatus')
        ..add(serializers.serialize(
          contributorInsightsStatus,
          specifiedType: const FullType(_i2.ContributorInsightsStatus),
        ));
    }
    return result$;
  }
}
