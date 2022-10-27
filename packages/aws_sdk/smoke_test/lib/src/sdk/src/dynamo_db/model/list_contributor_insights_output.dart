// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.list_contributor_insights_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/contributor_insights_summary.dart'
    as _i2;

part 'list_contributor_insights_output.g.dart';

abstract class ListContributorInsightsOutput
    with
        _i1.AWSEquatable<ListContributorInsightsOutput>
    implements
        Built<ListContributorInsightsOutput,
            ListContributorInsightsOutputBuilder> {
  factory ListContributorInsightsOutput({
    List<_i2.ContributorInsightsSummary>? contributorInsightsSummaries,
    String? nextToken,
  }) {
    return _$ListContributorInsightsOutput._(
      contributorInsightsSummaries: contributorInsightsSummaries == null
          ? null
          : _i3.BuiltList(contributorInsightsSummaries),
      nextToken: nextToken,
    );
  }

  factory ListContributorInsightsOutput.build(
          [void Function(ListContributorInsightsOutputBuilder) updates]) =
      _$ListContributorInsightsOutput;

  const ListContributorInsightsOutput._();

  /// Constructs a [ListContributorInsightsOutput] from a [payload] and [response].
  factory ListContributorInsightsOutput.fromResponse(
    ListContributorInsightsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListContributorInsightsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListContributorInsightsOutputBuilder b) {}

  /// A list of ContributorInsightsSummary.
  _i3.BuiltList<_i2.ContributorInsightsSummary>?
      get contributorInsightsSummaries;

  /// A token to go to the next page if there is one.
  String? get nextToken;
  @override
  List<Object?> get props => [
        contributorInsightsSummaries,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListContributorInsightsOutput');
    helper.add(
      'contributorInsightsSummaries',
      contributorInsightsSummaries,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class ListContributorInsightsOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ListContributorInsightsOutput> {
  const ListContributorInsightsOutputAwsJson10Serializer()
      : super('ListContributorInsightsOutput');

  @override
  Iterable<Type> get types => const [
        ListContributorInsightsOutput,
        _$ListContributorInsightsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListContributorInsightsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListContributorInsightsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ContributorInsightsSummaries':
          if (value != null) {
            result.contributorInsightsSummaries
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ContributorInsightsSummary)],
              ),
            ) as _i3.BuiltList<_i2.ContributorInsightsSummary>));
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
    final payload = (object as ListContributorInsightsOutput);
    final result = <Object?>[];
    if (payload.contributorInsightsSummaries != null) {
      result
        ..add('ContributorInsightsSummaries')
        ..add(serializers.serialize(
          payload.contributorInsightsSummaries!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ContributorInsightsSummary)],
          ),
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
