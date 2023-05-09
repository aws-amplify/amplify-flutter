// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.list_stack_resources_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_summary.dart'
    as _i2;

part 'list_stack_resources_output.g.dart';

/// The output for a ListStackResources action.
abstract class ListStackResourcesOutput
    with _i1.AWSEquatable<ListStackResourcesOutput>
    implements
        Built<ListStackResourcesOutput, ListStackResourcesOutputBuilder> {
  /// The output for a ListStackResources action.
  factory ListStackResourcesOutput({
    List<_i2.StackResourceSummary>? stackResourceSummaries,
    String? nextToken,
  }) {
    return _$ListStackResourcesOutput._(
      stackResourceSummaries: stackResourceSummaries == null
          ? null
          : _i3.BuiltList(stackResourceSummaries),
      nextToken: nextToken,
    );
  }

  /// The output for a ListStackResources action.
  factory ListStackResourcesOutput.build(
          [void Function(ListStackResourcesOutputBuilder) updates]) =
      _$ListStackResourcesOutput;

  const ListStackResourcesOutput._();

  /// Constructs a [ListStackResourcesOutput] from a [payload] and [response].
  factory ListStackResourcesOutput.fromResponse(
    ListStackResourcesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListStackResourcesOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStackResourcesOutputBuilder b) {}

  /// A list of `StackResourceSummary` structures.
  _i3.BuiltList<_i2.StackResourceSummary>? get stackResourceSummaries;

  /// If the output exceeds 1 MB, a string that identifies the next page of stack resources. If no additional page exists, this value is null.
  String? get nextToken;
  @override
  List<Object?> get props => [
        stackResourceSummaries,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStackResourcesOutput');
    helper.add(
      'stackResourceSummaries',
      stackResourceSummaries,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class ListStackResourcesOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListStackResourcesOutput> {
  const ListStackResourcesOutputAwsQuerySerializer()
      : super('ListStackResourcesOutput');

  @override
  Iterable<Type> get types => const [
        ListStackResourcesOutput,
        _$ListStackResourcesOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStackResourcesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStackResourcesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackResourceSummaries':
          result.stackResourceSummaries.replace(
              (const _i4.XmlBuiltListSerializer(
                      indexer: _i4.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.StackResourceSummary)],
            ),
          ) as _i3.BuiltList<_i2.StackResourceSummary>));
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
    ListStackResourcesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListStackResourcesOutputResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListStackResourcesOutput(:stackResourceSummaries, :nextToken) =
        object;
    if (stackResourceSummaries != null) {
      result$
        ..add(const _i4.XmlElementName('StackResourceSummaries'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stackResourceSummaries,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.StackResourceSummary)],
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
