// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_contributor_insights_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_contributor_insights_input.g.dart';

abstract class DescribeContributorInsightsInput
    with
        _i1.HttpInput<DescribeContributorInsightsInput>,
        _i2.AWSEquatable<DescribeContributorInsightsInput>
    implements
        Built<DescribeContributorInsightsInput,
            DescribeContributorInsightsInputBuilder> {
  factory DescribeContributorInsightsInput({
    String? indexName,
    required String tableName,
  }) {
    return _$DescribeContributorInsightsInput._(
      indexName: indexName,
      tableName: tableName,
    );
  }

  factory DescribeContributorInsightsInput.build(
          [void Function(DescribeContributorInsightsInputBuilder) updates]) =
      _$DescribeContributorInsightsInput;

  const DescribeContributorInsightsInput._();

  factory DescribeContributorInsightsInput.fromRequest(
    DescribeContributorInsightsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeContributorInsightsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeContributorInsightsInputBuilder b) {}

  /// The name of the global secondary index to describe, if applicable.
  String? get indexName;

  /// The name of the table to describe.
  String get tableName;
  @override
  DescribeContributorInsightsInput getPayload() => this;
  @override
  List<Object?> get props => [
        indexName,
        tableName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeContributorInsightsInput');
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

class DescribeContributorInsightsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeContributorInsightsInput> {
  const DescribeContributorInsightsInputAwsJson10Serializer()
      : super('DescribeContributorInsightsInput');

  @override
  Iterable<Type> get types => const [
        DescribeContributorInsightsInput,
        _$DescribeContributorInsightsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeContributorInsightsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeContributorInsightsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'IndexName':
          if (value != null) {
            result.indexName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DescribeContributorInsightsInput);
    final result = <Object?>[
      'TableName',
      serializers.serialize(
        payload.tableName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.indexName != null) {
      result
        ..add('IndexName')
        ..add(serializers.serialize(
          payload.indexName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
