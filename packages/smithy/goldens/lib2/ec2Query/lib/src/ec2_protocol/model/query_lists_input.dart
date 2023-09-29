// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v2.ec2_protocol.model.query_lists_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/greeting_struct.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/nested_struct_with_list.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'query_lists_input.g.dart';

abstract class QueryListsInput
    with _i1.HttpInput<QueryListsInput>, _i2.AWSEquatable<QueryListsInput>
    implements Built<QueryListsInput, QueryListsInputBuilder> {
  factory QueryListsInput({
    List<String>? listArg,
    List<GreetingStruct>? complexListArg,
    List<String>? listArgWithXmlNameMember,
    List<String>? listArgWithXmlName,
    NestedStructWithList? nestedWithList,
  }) {
    return _$QueryListsInput._(
      listArg: listArg == null ? null : _i3.BuiltList(listArg),
      complexListArg:
          complexListArg == null ? null : _i3.BuiltList(complexListArg),
      listArgWithXmlNameMember: listArgWithXmlNameMember == null
          ? null
          : _i3.BuiltList(listArgWithXmlNameMember),
      listArgWithXmlName:
          listArgWithXmlName == null ? null : _i3.BuiltList(listArgWithXmlName),
      nestedWithList: nestedWithList,
    );
  }

  factory QueryListsInput.build(
      [void Function(QueryListsInputBuilder) updates]) = _$QueryListsInput;

  const QueryListsInput._();

  factory QueryListsInput.fromRequest(
    QueryListsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<QueryListsInput>> serializers = [
    QueryListsInputEc2QuerySerializer()
  ];

  _i3.BuiltList<String>? get listArg;
  _i3.BuiltList<GreetingStruct>? get complexListArg;
  _i3.BuiltList<String>? get listArgWithXmlNameMember;
  _i3.BuiltList<String>? get listArgWithXmlName;
  NestedStructWithList? get nestedWithList;
  @override
  QueryListsInput getPayload() => this;

  @override
  List<Object?> get props => [
        listArg,
        complexListArg,
        listArgWithXmlNameMember,
        listArgWithXmlName,
        nestedWithList,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryListsInput')
      ..add(
        'listArg',
        listArg,
      )
      ..add(
        'complexListArg',
        complexListArg,
      )
      ..add(
        'listArgWithXmlNameMember',
        listArgWithXmlNameMember,
      )
      ..add(
        'listArgWithXmlName',
        listArgWithXmlName,
      )
      ..add(
        'nestedWithList',
        nestedWithList,
      );
    return helper.toString();
  }
}

class QueryListsInputEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<QueryListsInput> {
  const QueryListsInputEc2QuerySerializer() : super('QueryListsInput');

  @override
  Iterable<Type> get types => const [
        QueryListsInput,
        _$QueryListsInput,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];

  @override
  QueryListsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryListsInputBuilder();
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
          result.listArg.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'ComplexListArg':
          result.complexListArg.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(GreetingStruct)],
            ),
          ) as _i3.BuiltList<GreetingStruct>));
        case 'ListArgWithXmlNameMember':
          result.listArgWithXmlNameMember
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Hi':
          result.listArgWithXmlName.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'NestedWithList':
          result.nestedWithList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NestedStructWithList),
          ) as NestedStructWithList));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QueryListsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'QueryListsInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    final QueryListsInput(
      :listArg,
      :complexListArg,
      :listArgWithXmlNameMember,
      :listArgWithXmlName,
      :nestedWithList
    ) = object;
    if (listArg != null) {
      result$
        ..add(const _i1.XmlElementName('ListArg'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          listArg,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (complexListArg != null) {
      result$
        ..add(const _i1.XmlElementName('ComplexListArg'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          complexListArg,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(GreetingStruct)],
          ),
        ));
    }
    if (listArgWithXmlNameMember != null) {
      result$
        ..add(const _i1.XmlElementName('ListArgWithXmlNameMember'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          listArgWithXmlNameMember,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (listArgWithXmlName != null) {
      result$
        ..add(const _i1.XmlElementName('Hi'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          listArgWithXmlName,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (nestedWithList != null) {
      result$
        ..add(const _i1.XmlElementName('NestedWithList'))
        ..add(serializers.serialize(
          nestedWithList,
          specifiedType: const FullType(NestedStructWithList),
        ));
    }
    return result$;
  }
}
