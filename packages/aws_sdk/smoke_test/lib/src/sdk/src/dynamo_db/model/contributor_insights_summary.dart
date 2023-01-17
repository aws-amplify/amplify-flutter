// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    _i2.ContributorInsightsStatus? contributorInsightsStatus,
    String? indexName,
    String? tableName,
  }) {
    return _$ContributorInsightsSummary._(
      contributorInsightsStatus: contributorInsightsStatus,
      indexName: indexName,
      tableName: tableName,
    );
  }

  /// Represents a Contributor Insights summary entry.
  factory ContributorInsightsSummary.build(
          [void Function(ContributorInsightsSummaryBuilder) updates]) =
      _$ContributorInsightsSummary;

  const ContributorInsightsSummary._();

  static const List<_i3.SmithySerializer> serializers = [
    ContributorInsightsSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ContributorInsightsSummaryBuilder b) {}

  /// Describes the current status for contributor insights for the given table and index, if applicable.
  _i2.ContributorInsightsStatus? get contributorInsightsStatus;

  /// Name of the index associated with the summary, if any.
  String? get indexName;

  /// Name of the table associated with the summary.
  String? get tableName;
  @override
  List<Object?> get props => [
        contributorInsightsStatus,
        indexName,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ContributorInsightsSummary');
    helper.add(
      'contributorInsightsStatus',
      contributorInsightsStatus,
    );
    helper.add(
      'indexName',
      indexName,
    );
    helper.add(
      'tableName',
      tableName,
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
      switch (key) {
        case 'ContributorInsightsStatus':
          if (value != null) {
            result.contributorInsightsStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ContributorInsightsStatus),
            ) as _i2.ContributorInsightsStatus);
          }
          break;
        case 'IndexName':
          if (value != null) {
            result.indexName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TableName':
          if (value != null) {
            result.tableName = (serializers.deserialize(
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
    final payload = (object as ContributorInsightsSummary);
    final result = <Object?>[];
    if (payload.contributorInsightsStatus != null) {
      result
        ..add('ContributorInsightsStatus')
        ..add(serializers.serialize(
          payload.contributorInsightsStatus!,
          specifiedType: const FullType(_i2.ContributorInsightsStatus),
        ));
    }
    if (payload.indexName != null) {
      result
        ..add('IndexName')
        ..add(serializers.serialize(
          payload.indexName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tableName != null) {
      result
        ..add('TableName')
        ..add(serializers.serialize(
          payload.tableName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
