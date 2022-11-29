// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.update_contributor_insights_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/contributor_insights_action.dart'
    as _i3;

part 'update_contributor_insights_input.g.dart';

abstract class UpdateContributorInsightsInput
    with
        _i1.HttpInput<UpdateContributorInsightsInput>,
        _i2.AWSEquatable<UpdateContributorInsightsInput>
    implements
        Built<UpdateContributorInsightsInput,
            UpdateContributorInsightsInputBuilder> {
  factory UpdateContributorInsightsInput({
    required _i3.ContributorInsightsAction contributorInsightsAction,
    String? indexName,
    required String tableName,
  }) {
    return _$UpdateContributorInsightsInput._(
      contributorInsightsAction: contributorInsightsAction,
      indexName: indexName,
      tableName: tableName,
    );
  }

  factory UpdateContributorInsightsInput.build(
          [void Function(UpdateContributorInsightsInputBuilder) updates]) =
      _$UpdateContributorInsightsInput;

  const UpdateContributorInsightsInput._();

  factory UpdateContributorInsightsInput.fromRequest(
    UpdateContributorInsightsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    UpdateContributorInsightsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateContributorInsightsInputBuilder b) {}

  /// Represents the contributor insights action.
  _i3.ContributorInsightsAction get contributorInsightsAction;

  /// The global secondary index name, if applicable.
  String? get indexName;

  /// The name of the table.
  String get tableName;
  @override
  UpdateContributorInsightsInput getPayload() => this;
  @override
  List<Object?> get props => [
        contributorInsightsAction,
        indexName,
        tableName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateContributorInsightsInput');
    helper.add(
      'contributorInsightsAction',
      contributorInsightsAction,
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

class UpdateContributorInsightsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<UpdateContributorInsightsInput> {
  const UpdateContributorInsightsInputAwsJson10Serializer()
      : super('UpdateContributorInsightsInput');

  @override
  Iterable<Type> get types => const [
        UpdateContributorInsightsInput,
        _$UpdateContributorInsightsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateContributorInsightsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateContributorInsightsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ContributorInsightsAction':
          result.contributorInsightsAction = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.ContributorInsightsAction),
          ) as _i3.ContributorInsightsAction);
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
    final payload = (object as UpdateContributorInsightsInput);
    final result = <Object?>[
      'ContributorInsightsAction',
      serializers.serialize(
        payload.contributorInsightsAction,
        specifiedType: const FullType(_i3.ContributorInsightsAction),
      ),
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
