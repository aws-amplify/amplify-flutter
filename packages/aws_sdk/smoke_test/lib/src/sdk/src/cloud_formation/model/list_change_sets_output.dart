// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.list_change_sets_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_summary.dart';

part 'list_change_sets_output.g.dart';

/// The output for the ListChangeSets action.
abstract class ListChangeSetsOutput
    with _i1.AWSEquatable<ListChangeSetsOutput>
    implements Built<ListChangeSetsOutput, ListChangeSetsOutputBuilder> {
  /// The output for the ListChangeSets action.
  factory ListChangeSetsOutput({
    List<ChangeSetSummary>? summaries,
    String? nextToken,
  }) {
    return _$ListChangeSetsOutput._(
      summaries: summaries == null ? null : _i2.BuiltList(summaries),
      nextToken: nextToken,
    );
  }

  /// The output for the ListChangeSets action.
  factory ListChangeSetsOutput.build(
          [void Function(ListChangeSetsOutputBuilder) updates]) =
      _$ListChangeSetsOutput;

  const ListChangeSetsOutput._();

  /// Constructs a [ListChangeSetsOutput] from a [payload] and [response].
  factory ListChangeSetsOutput.fromResponse(
    ListChangeSetsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListChangeSetsOutput>> serializers = [
    ListChangeSetsOutputAwsQuerySerializer()
  ];

  /// A list of `ChangeSetSummary` structures that provides the ID and status of each change set for the specified stack.
  _i2.BuiltList<ChangeSetSummary>? get summaries;

  /// If the output exceeds 1 MB, a string that identifies the next page of change sets. If there is no additional page, this value is `null`.
  String? get nextToken;
  @override
  List<Object?> get props => [
        summaries,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListChangeSetsOutput')
      ..add(
        'summaries',
        summaries,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class ListChangeSetsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListChangeSetsOutput> {
  const ListChangeSetsOutputAwsQuerySerializer()
      : super('ListChangeSetsOutput');

  @override
  Iterable<Type> get types => const [
        ListChangeSetsOutput,
        _$ListChangeSetsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListChangeSetsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListChangeSetsOutputBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Summaries':
          result.summaries.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ChangeSetSummary)],
            ),
          ) as _i2.BuiltList<ChangeSetSummary>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListChangeSetsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListChangeSetsOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListChangeSetsOutput(:summaries, :nextToken) = object;
    if (summaries != null) {
      result$
        ..add(const _i3.XmlElementName('Summaries'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          summaries,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ChangeSetSummary)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
