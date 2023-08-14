// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.list_types_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_summary.dart';

part 'list_types_output.g.dart';

abstract class ListTypesOutput
    with _i1.AWSEquatable<ListTypesOutput>
    implements Built<ListTypesOutput, ListTypesOutputBuilder> {
  factory ListTypesOutput({
    List<TypeSummary>? typeSummaries,
    String? nextToken,
  }) {
    return _$ListTypesOutput._(
      typeSummaries:
          typeSummaries == null ? null : _i2.BuiltList(typeSummaries),
      nextToken: nextToken,
    );
  }

  factory ListTypesOutput.build(
      [void Function(ListTypesOutputBuilder) updates]) = _$ListTypesOutput;

  const ListTypesOutput._();

  /// Constructs a [ListTypesOutput] from a [payload] and [response].
  factory ListTypesOutput.fromResponse(
    ListTypesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListTypesOutput>> serializers = [
    ListTypesOutputAwsQuerySerializer()
  ];

  /// A list of `TypeSummary` structures that contain information about the specified extensions.
  _i2.BuiltList<TypeSummary>? get typeSummaries;

  /// If the request doesn't return all the remaining results, `NextToken` is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's `NextToken` parameter. If the request returns all results, `NextToken` is set to `null`.
  String? get nextToken;
  @override
  List<Object?> get props => [
        typeSummaries,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTypesOutput')
      ..add(
        'typeSummaries',
        typeSummaries,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class ListTypesOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListTypesOutput> {
  const ListTypesOutputAwsQuerySerializer() : super('ListTypesOutput');

  @override
  Iterable<Type> get types => const [
        ListTypesOutput,
        _$ListTypesOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListTypesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTypesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TypeSummaries':
          result.typeSummaries.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TypeSummary)],
            ),
          ) as _i2.BuiltList<TypeSummary>));
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
    ListTypesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListTypesOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListTypesOutput(:typeSummaries, :nextToken) = object;
    if (typeSummaries != null) {
      result$
        ..add(const _i3.XmlElementName('TypeSummaries'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          typeSummaries,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TypeSummary)],
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
