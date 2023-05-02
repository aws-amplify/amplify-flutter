// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.list_types_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_summary.dart'
    as _i2;

part 'list_types_output.g.dart';

abstract class ListTypesOutput
    with _i1.AWSEquatable<ListTypesOutput>
    implements Built<ListTypesOutput, ListTypesOutputBuilder> {
  factory ListTypesOutput({
    List<_i2.TypeSummary>? typeSummaries,
    String? nextToken,
  }) {
    return _$ListTypesOutput._(
      typeSummaries:
          typeSummaries == null ? null : _i3.BuiltList(typeSummaries),
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

  static const List<_i4.SmithySerializer> serializers = [
    ListTypesOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTypesOutputBuilder b) {}

  /// A list of `TypeSummary` structures that contain information about the specified extensions.
  _i3.BuiltList<_i2.TypeSummary>? get typeSummaries;

  /// If the request doesn't return all the remaining results, `NextToken` is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's `NextToken` parameter. If the request returns all results, `NextToken` is set to `null`.
  String? get nextToken;
  @override
  List<Object?> get props => [
        typeSummaries,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTypesOutput');
    helper.add(
      'typeSummaries',
      typeSummaries,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class ListTypesOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListTypesOutput> {
  const ListTypesOutputAwsQuerySerializer() : super('ListTypesOutput');

  @override
  Iterable<Type> get types => const [
        ListTypesOutput,
        _$ListTypesOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TypeSummaries':
          if (value != null) {
            result.typeSummaries.replace((const _i4.XmlBuiltListSerializer(
                    indexer: _i4.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TypeSummary)],
              ),
            ) as _i3.BuiltList<_i2.TypeSummary>));
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
    final payload = (object as ListTypesOutput);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ListTypesOutputResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.typeSummaries != null) {
      result
        ..add(const _i4.XmlElementName('TypeSummaries'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.typeSummaries!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TypeSummary)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
