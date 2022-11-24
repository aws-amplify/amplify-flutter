// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.update_contributor_insights_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/contributor_insights_status.dart'
    as _i2;

part 'update_contributor_insights_output.g.dart';

abstract class UpdateContributorInsightsOutput
    with
        _i1.AWSEquatable<UpdateContributorInsightsOutput>
    implements
        Built<UpdateContributorInsightsOutput,
            UpdateContributorInsightsOutputBuilder> {
  factory UpdateContributorInsightsOutput({
    _i2.ContributorInsightsStatus? contributorInsightsStatus,
    String? indexName,
    String? tableName,
  }) {
    return _$UpdateContributorInsightsOutput._(
      contributorInsightsStatus: contributorInsightsStatus,
      indexName: indexName,
      tableName: tableName,
    );
  }

  factory UpdateContributorInsightsOutput.build(
          [void Function(UpdateContributorInsightsOutputBuilder) updates]) =
      _$UpdateContributorInsightsOutput;

  const UpdateContributorInsightsOutput._();

  /// Constructs a [UpdateContributorInsightsOutput] from a [payload] and [response].
  factory UpdateContributorInsightsOutput.fromResponse(
    UpdateContributorInsightsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    UpdateContributorInsightsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateContributorInsightsOutputBuilder b) {}

  /// The status of contributor insights
  _i2.ContributorInsightsStatus? get contributorInsightsStatus;

  /// The name of the global secondary index, if applicable.
  String? get indexName;

  /// The name of the table.
  String? get tableName;
  @override
  List<Object?> get props => [
        contributorInsightsStatus,
        indexName,
        tableName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateContributorInsightsOutput');
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

class UpdateContributorInsightsOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<UpdateContributorInsightsOutput> {
  const UpdateContributorInsightsOutputAwsJson10Serializer()
      : super('UpdateContributorInsightsOutput');

  @override
  Iterable<Type> get types => const [
        UpdateContributorInsightsOutput,
        _$UpdateContributorInsightsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateContributorInsightsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateContributorInsightsOutputBuilder();
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
    final payload = (object as UpdateContributorInsightsOutput);
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
