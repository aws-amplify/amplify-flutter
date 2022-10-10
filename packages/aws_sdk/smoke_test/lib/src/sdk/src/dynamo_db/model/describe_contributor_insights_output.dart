// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    List<String>? contributorInsightsRuleList,
    _i2.ContributorInsightsStatus? contributorInsightsStatus,
    _i3.FailureException? failureException,
    String? indexName,
    DateTime? lastUpdateDateTime,
    String? tableName,
  }) {
    return _$DescribeContributorInsightsOutput._(
      contributorInsightsRuleList: contributorInsightsRuleList == null
          ? null
          : _i4.BuiltList(contributorInsightsRuleList),
      contributorInsightsStatus: contributorInsightsStatus,
      failureException: failureException,
      indexName: indexName,
      lastUpdateDateTime: lastUpdateDateTime,
      tableName: tableName,
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

  static const List<_i5.SmithySerializer> serializers = [
    DescribeContributorInsightsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeContributorInsightsOutputBuilder b) {}

  /// List of names of the associated contributor insights rules.
  _i4.BuiltList<String>? get contributorInsightsRuleList;

  /// Current status of contributor insights.
  _i2.ContributorInsightsStatus? get contributorInsightsStatus;

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

  /// The name of the global secondary index being described.
  String? get indexName;

  /// Timestamp of the last time the status was changed.
  DateTime? get lastUpdateDateTime;

  /// The name of the table being described.
  String? get tableName;
  @override
  List<Object?> get props => [
        contributorInsightsRuleList,
        contributorInsightsStatus,
        failureException,
        indexName,
        lastUpdateDateTime,
        tableName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeContributorInsightsOutput');
    helper.add(
      'contributorInsightsRuleList',
      contributorInsightsRuleList,
    );
    helper.add(
      'contributorInsightsStatus',
      contributorInsightsStatus,
    );
    helper.add(
      'failureException',
      failureException,
    );
    helper.add(
      'indexName',
      indexName,
    );
    helper.add(
      'lastUpdateDateTime',
      lastUpdateDateTime,
    );
    helper.add(
      'tableName',
      tableName,
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
      switch (key) {
        case 'ContributorInsightsRuleList':
          if (value != null) {
            result.contributorInsightsRuleList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'ContributorInsightsStatus':
          if (value != null) {
            result.contributorInsightsStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ContributorInsightsStatus),
            ) as _i2.ContributorInsightsStatus);
          }
          break;
        case 'FailureException':
          if (value != null) {
            result.failureException.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.FailureException),
            ) as _i3.FailureException));
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
        case 'LastUpdateDateTime':
          if (value != null) {
            result.lastUpdateDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as DescribeContributorInsightsOutput);
    final result = <Object?>[];
    if (payload.contributorInsightsRuleList != null) {
      result
        ..add('ContributorInsightsRuleList')
        ..add(serializers.serialize(
          payload.contributorInsightsRuleList!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.contributorInsightsStatus != null) {
      result
        ..add('ContributorInsightsStatus')
        ..add(serializers.serialize(
          payload.contributorInsightsStatus!,
          specifiedType: const FullType(_i2.ContributorInsightsStatus),
        ));
    }
    if (payload.failureException != null) {
      result
        ..add('FailureException')
        ..add(serializers.serialize(
          payload.failureException!,
          specifiedType: const FullType(_i3.FailureException),
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
    if (payload.lastUpdateDateTime != null) {
      result
        ..add('LastUpdateDateTime')
        ..add(serializers.serialize(
          payload.lastUpdateDateTime!,
          specifiedType: const FullType(DateTime),
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
