// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? tableName,
    String? indexName,
    _i2.ContributorInsightsStatus? contributorInsightsStatus,
  }) {
    return _$UpdateContributorInsightsOutput._(
      tableName: tableName,
      indexName: indexName,
      contributorInsightsStatus: contributorInsightsStatus,
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

  static const List<_i3.SmithySerializer<UpdateContributorInsightsOutput>>
      serializers = [UpdateContributorInsightsOutputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateContributorInsightsOutputBuilder b) {}

  /// The name of the table.
  String? get tableName;

  /// The name of the global secondary index, if applicable.
  String? get indexName;

  /// The status of contributor insights
  _i2.ContributorInsightsStatus? get contributorInsightsStatus;
  @override
  List<Object?> get props => [
        tableName,
        indexName,
        contributorInsightsStatus,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateContributorInsightsOutput')
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
    UpdateContributorInsightsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateContributorInsightsOutput(
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
