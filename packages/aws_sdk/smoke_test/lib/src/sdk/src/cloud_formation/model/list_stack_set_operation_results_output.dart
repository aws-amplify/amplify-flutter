// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.list_stack_set_operation_results_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_result_summary.dart'
    as _i2;

part 'list_stack_set_operation_results_output.g.dart';

abstract class ListStackSetOperationResultsOutput
    with
        _i1.AWSEquatable<ListStackSetOperationResultsOutput>
    implements
        Built<ListStackSetOperationResultsOutput,
            ListStackSetOperationResultsOutputBuilder> {
  factory ListStackSetOperationResultsOutput({
    List<_i2.StackSetOperationResultSummary>? summaries,
    String? nextToken,
  }) {
    return _$ListStackSetOperationResultsOutput._(
      summaries: summaries == null ? null : _i3.BuiltList(summaries),
      nextToken: nextToken,
    );
  }

  factory ListStackSetOperationResultsOutput.build(
          [void Function(ListStackSetOperationResultsOutputBuilder) updates]) =
      _$ListStackSetOperationResultsOutput;

  const ListStackSetOperationResultsOutput._();

  /// Constructs a [ListStackSetOperationResultsOutput] from a [payload] and [response].
  factory ListStackSetOperationResultsOutput.fromResponse(
    ListStackSetOperationResultsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListStackSetOperationResultsOutput>>
      serializers = [ListStackSetOperationResultsOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStackSetOperationResultsOutputBuilder b) {}

  /// A list of `StackSetOperationResultSummary` structures that contain information about the specified operation results, for accounts and Amazon Web Services Regions that are included in the operation.
  _i3.BuiltList<_i2.StackSetOperationResultSummary>? get summaries;

  /// If the request doesn't return all results, `NextToken` is set to a token. To retrieve the next set of results, call `ListOperationResults` again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, `NextToken` is set to `null`.
  String? get nextToken;
  @override
  List<Object?> get props => [
        summaries,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListStackSetOperationResultsOutput')
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

class ListStackSetOperationResultsOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListStackSetOperationResultsOutput> {
  const ListStackSetOperationResultsOutputAwsQuerySerializer()
      : super('ListStackSetOperationResultsOutput');

  @override
  Iterable<Type> get types => const [
        ListStackSetOperationResultsOutput,
        _$ListStackSetOperationResultsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStackSetOperationResultsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStackSetOperationResultsOutputBuilder();
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
          result.summaries.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.StackSetOperationResultSummary)],
            ),
          ) as _i3.BuiltList<_i2.StackSetOperationResultSummary>));
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
    ListStackSetOperationResultsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListStackSetOperationResultsOutputResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListStackSetOperationResultsOutput(:summaries, :nextToken) = object;
    if (summaries != null) {
      result$
        ..add(const _i4.XmlElementName('Summaries'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          summaries,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.StackSetOperationResultSummary)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
