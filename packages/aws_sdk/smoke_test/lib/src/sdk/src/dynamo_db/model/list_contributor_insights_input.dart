// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.list_contributor_insights_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_contributor_insights_input.g.dart';

abstract class ListContributorInsightsInput
    with
        _i1.HttpInput<ListContributorInsightsInput>,
        _i2.AWSEquatable<ListContributorInsightsInput>
    implements
        Built<ListContributorInsightsInput,
            ListContributorInsightsInputBuilder> {
  factory ListContributorInsightsInput({
    String? tableName,
    String? nextToken,
    int? maxResults,
  }) {
    maxResults ??= 0;
    return _$ListContributorInsightsInput._(
      tableName: tableName,
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory ListContributorInsightsInput.build(
          [void Function(ListContributorInsightsInputBuilder) updates]) =
      _$ListContributorInsightsInput;

  const ListContributorInsightsInput._();

  factory ListContributorInsightsInput.fromRequest(
    ListContributorInsightsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListContributorInsightsInput>>
      serializers = [ListContributorInsightsInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListContributorInsightsInputBuilder b) {
    b.maxResults = 0;
  }

  /// The name of the table.
  String? get tableName;

  /// A token to for the desired page, if there is one.
  String? get nextToken;

  /// Maximum number of results to return per page.
  int get maxResults;
  @override
  ListContributorInsightsInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListContributorInsightsInput')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'maxResults',
        maxResults,
      );
    return helper.toString();
  }
}

class ListContributorInsightsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ListContributorInsightsInput> {
  const ListContributorInsightsInputAwsJson10Serializer()
      : super('ListContributorInsightsInput');

  @override
  Iterable<Type> get types => const [
        ListContributorInsightsInput,
        _$ListContributorInsightsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListContributorInsightsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListContributorInsightsInputBuilder();
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
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListContributorInsightsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListContributorInsightsInput(:tableName, :nextToken, :maxResults) =
        object;
    result$.addAll([
      'MaxResults',
      serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ),
    ]);
    if (tableName != null) {
      result$
        ..add('TableName')
        ..add(serializers.serialize(
          tableName,
          specifiedType: const FullType(String),
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
