// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v2.query_protocol.model.nested_struct_with_list; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'nested_struct_with_list.g.dart';

abstract class NestedStructWithList
    with _i1.AWSEquatable<NestedStructWithList>
    implements Built<NestedStructWithList, NestedStructWithListBuilder> {
  factory NestedStructWithList({List<String>? listArg}) {
    return _$NestedStructWithList._(
        listArg: listArg == null ? null : _i2.BuiltList(listArg));
  }

  factory NestedStructWithList.build(
          [void Function(NestedStructWithListBuilder) updates]) =
      _$NestedStructWithList;

  const NestedStructWithList._();

  static const List<_i3.SmithySerializer<NestedStructWithList>> serializers = [
    NestedStructWithListAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NestedStructWithListBuilder b) {}
  _i2.BuiltList<String>? get listArg;
  @override
  List<Object?> get props => [listArg];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NestedStructWithList')
      ..add(
        'listArg',
        listArg,
      );
    return helper.toString();
  }
}

class NestedStructWithListAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<NestedStructWithList> {
  const NestedStructWithListAwsQuerySerializer()
      : super('NestedStructWithList');

  @override
  Iterable<Type> get types => const [
        NestedStructWithList,
        _$NestedStructWithList,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  NestedStructWithList deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedStructWithListBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ListArg':
          result.listArg.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NestedStructWithList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'NestedStructWithListResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    final NestedStructWithList(:listArg) = object;
    if (listArg != null) {
      result$
        ..add(const _i3.XmlElementName('ListArg'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          listArg,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
