// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.list_exports_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/export.dart';

part 'list_exports_output.g.dart';

abstract class ListExportsOutput
    with _i1.AWSEquatable<ListExportsOutput>
    implements Built<ListExportsOutput, ListExportsOutputBuilder> {
  factory ListExportsOutput({
    List<Export>? exports,
    String? nextToken,
  }) {
    return _$ListExportsOutput._(
      exports: exports == null ? null : _i2.BuiltList(exports),
      nextToken: nextToken,
    );
  }

  factory ListExportsOutput.build(
      [void Function(ListExportsOutputBuilder) updates]) = _$ListExportsOutput;

  const ListExportsOutput._();

  /// Constructs a [ListExportsOutput] from a [payload] and [response].
  factory ListExportsOutput.fromResponse(
    ListExportsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListExportsOutput>> serializers = [
    ListExportsOutputAwsQuerySerializer()
  ];

  /// The output for the ListExports action.
  _i2.BuiltList<Export>? get exports;

  /// If the output exceeds 100 exported output values, a string that identifies the next page of exports. If there is no additional page, this value is null.
  String? get nextToken;
  @override
  List<Object?> get props => [
        exports,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListExportsOutput')
      ..add(
        'exports',
        exports,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class ListExportsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListExportsOutput> {
  const ListExportsOutputAwsQuerySerializer() : super('ListExportsOutput');

  @override
  Iterable<Type> get types => const [
        ListExportsOutput,
        _$ListExportsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListExportsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListExportsOutputBuilder();
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
        case 'Exports':
          result.exports.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Export)],
            ),
          ) as _i2.BuiltList<Export>));
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
    ListExportsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListExportsOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListExportsOutput(:exports, :nextToken) = object;
    if (exports != null) {
      result$
        ..add(const _i3.XmlElementName('Exports'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          exports,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Export)],
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
