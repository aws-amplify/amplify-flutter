// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.describe_contributor_insights_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/contributor_insights_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/failure_exception.dart'
    as _i3;

part 'describe_contributor_insights_output.g.dart';

abstract class DescribeContributorInsightsOutput
    with
        _i1.AWSEquatable<DescribeContributorInsightsOutput>
    implements
        Built<DescribeContributorInsightsOutput,
            DescribeContributorInsightsOutputBuilder> {
  factory DescribeContributorInsightsOutput({
    String? tableName,
    String? indexName,
    List<String>? contributorInsightsRuleList,
    _i2.ContributorInsightsStatus? contributorInsightsStatus,
    DateTime? lastUpdateDateTime,
    _i3.FailureException? failureException,
  }) {
    return _$DescribeContributorInsightsOutput._(
      tableName: tableName,
      indexName: indexName,
      contributorInsightsRuleList: contributorInsightsRuleList == null
          ? null
          : _i4.BuiltList(contributorInsightsRuleList),
      contributorInsightsStatus: contributorInsightsStatus,
      lastUpdateDateTime: lastUpdateDateTime,
      failureException: failureException,
    );
  }

  factory DescribeContributorInsightsOutput.build(
          [void Function(DescribeContributorInsightsOutputBuilder) updates]) =
      _$DescribeContributorInsightsOutput;

  const DescribeContributorInsightsOutput._();

  /// Constructs a [DescribeContributorInsightsOutput] from a [payload] and [response].
  factory DescribeContributorInsightsOutput.fromResponse(
    DescribeContributorInsightsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer<DescribeContributorInsightsOutput>>
      serializers = [DescribeContributorInsightsOutputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeContributorInsightsOutputBuilder b) {}

  /// The name of the table being described.
  String? get tableName;

  /// The name of the global secondary index being described.
  String? get indexName;

  /// List of names of the associated contributor insights rules.
  _i4.BuiltList<String>? get contributorInsightsRuleList;

  /// Current status of contributor insights.
  _i2.ContributorInsightsStatus? get contributorInsightsStatus;

  /// Timestamp of the last time the status was changed.
  DateTime? get lastUpdateDateTime;

  /// Returns information about the last failure that was encountered.
  ///
  /// The most common exceptions for a FAILED status are:
  ///
  /// *   LimitExceededException - Per-account Amazon CloudWatch Contributor Insights rule limit reached. Please disable Contributor Insights for other tables/indexes OR disable Contributor Insights rules before retrying.
  ///
  /// *   AccessDeniedException - Amazon CloudWatch Contributor Insights rules cannot be modified due to insufficient permissions.
  ///
  /// *   AccessDeniedException - Failed to create service-linked role for Contributor Insights due to insufficient permissions.
  ///
  /// *   InternalServerError - Failed to create Amazon CloudWatch Contributor Insights rules. Please retry request.
  _i3.FailureException? get failureException;
  @override
  List<Object?> get props => [
        tableName,
        indexName,
        contributorInsightsRuleList,
        contributorInsightsStatus,
        lastUpdateDateTime,
        failureException,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeContributorInsightsOutput')
          ..add(
            'tableName',
            tableName,
          )
          ..add(
            'indexName',
            indexName,
          )
          ..add(
            'contributorInsightsRuleList',
            contributorInsightsRuleList,
          )
          ..add(
            'contributorInsightsStatus',
            contributorInsightsStatus,
          )
          ..add(
            'lastUpdateDateTime',
            lastUpdateDateTime,
          )
          ..add(
            'failureException',
            failureException,
          );
    return helper.toString();
  }
}

class DescribeContributorInsightsOutputAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<DescribeContributorInsightsOutput> {
  const DescribeContributorInsightsOutputAwsJson10Serializer()
      : super('DescribeContributorInsightsOutput');

  @override
  Iterable<Type> get types => const [
        DescribeContributorInsightsOutput,
        _$DescribeContributorInsightsOutput,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeContributorInsightsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeContributorInsightsOutputBuilder();
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
        case 'ContributorInsightsRuleList':
          result.contributorInsightsRuleList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'ContributorInsightsStatus':
          result.contributorInsightsStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ContributorInsightsStatus),
          ) as _i2.ContributorInsightsStatus);
        case 'LastUpdateDateTime':
          result.lastUpdateDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'FailureException':
          result.failureException.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.FailureException),
          ) as _i3.FailureException));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeContributorInsightsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeContributorInsightsOutput(
      :tableName,
      :indexName,
      :contributorInsightsRuleList,
      :contributorInsightsStatus,
      :lastUpdateDateTime,
      :failureException
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
    if (contributorInsightsRuleList != null) {
      result$
        ..add('ContributorInsightsRuleList')
        ..add(serializers.serialize(
          contributorInsightsRuleList,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
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
    if (lastUpdateDateTime != null) {
      result$
        ..add('LastUpdateDateTime')
        ..add(serializers.serialize(
          lastUpdateDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (failureException != null) {
      result$
        ..add('FailureException')
        ..add(serializers.serialize(
          failureException,
          specifiedType: const FullType(_i3.FailureException),
        ));
    }
    return result$;
  }
}
