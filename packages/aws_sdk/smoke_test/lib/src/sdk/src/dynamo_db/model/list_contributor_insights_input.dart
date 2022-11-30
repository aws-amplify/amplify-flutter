// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    int? maxResults,
    String? nextToken,
    String? tableName,
  }) {
    return _$ListContributorInsightsInput._(
      maxResults: maxResults,
      nextToken: nextToken,
      tableName: tableName,
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

  static const List<_i1.SmithySerializer> serializers = [
    ListContributorInsightsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListContributorInsightsInputBuilder b) {}

  /// Maximum number of results to return per page.
  int? get maxResults;

  /// A token to for the desired page, if there is one.
  String? get nextToken;

  /// The name of the table.
  String? get tableName;
  @override
  ListContributorInsightsInput getPayload() => this;
  @override
  List<Object?> get props => [
        maxResults,
        nextToken,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListContributorInsightsInput');
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'tableName',
      tableName,
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
      switch (key) {
        case 'MaxResults':
          if (value != null) {
            result.maxResults = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as ListContributorInsightsInput);
    final result = <Object?>[];
    if (payload.maxResults != null) {
      result
        ..add('MaxResults')
        ..add(serializers.serialize(
          payload.maxResults!,
          specifiedType: const FullType(int),
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
