// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v1.rest_xml_protocol.model.xml_lists_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/foo_enum.dart' as _i3;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/structure_list_member.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'xml_lists_input_output.g.dart';

abstract class XmlListsInputOutput
    with
        _i1.HttpInput<XmlListsInputOutput>,
        _i2.AWSEquatable<XmlListsInputOutput>
    implements Built<XmlListsInputOutput, XmlListsInputOutputBuilder> {
  factory XmlListsInputOutput({
    List<String>? stringList,
    Set<String>? stringSet,
    List<int>? integerList,
    List<bool>? booleanList,
    List<DateTime>? timestampList,
    List<_i3.FooEnum>? enumList,
    List<int>? intEnumList,
    List<List<String>>? nestedStringList,
    List<String>? renamedListMembers,
    List<String>? flattenedList,
    List<String>? flattenedList2,
    List<String>? flattenedListWithMemberNamespace,
    List<String>? flattenedListWithNamespace,
    List<_i4.StructureListMember>? structureList,
    List<_i4.StructureListMember>? flattenedStructureList,
  }) {
    return _$XmlListsInputOutput._(
      stringList: stringList == null ? null : _i5.BuiltList(stringList),
      stringSet: stringSet == null ? null : _i5.BuiltSet(stringSet),
      integerList: integerList == null ? null : _i5.BuiltList(integerList),
      booleanList: booleanList == null ? null : _i5.BuiltList(booleanList),
      timestampList:
          timestampList == null ? null : _i5.BuiltList(timestampList),
      enumList: enumList == null ? null : _i5.BuiltList(enumList),
      intEnumList: intEnumList == null ? null : _i5.BuiltList(intEnumList),
      nestedStringList: nestedStringList == null
          ? null
          : _i5.BuiltList(nestedStringList.map((el) => _i5.BuiltList(el))),
      renamedListMembers:
          renamedListMembers == null ? null : _i5.BuiltList(renamedListMembers),
      flattenedList:
          flattenedList == null ? null : _i5.BuiltList(flattenedList),
      flattenedList2:
          flattenedList2 == null ? null : _i5.BuiltList(flattenedList2),
      flattenedListWithMemberNamespace: flattenedListWithMemberNamespace == null
          ? null
          : _i5.BuiltList(flattenedListWithMemberNamespace),
      flattenedListWithNamespace: flattenedListWithNamespace == null
          ? null
          : _i5.BuiltList(flattenedListWithNamespace),
      structureList:
          structureList == null ? null : _i5.BuiltList(structureList),
      flattenedStructureList: flattenedStructureList == null
          ? null
          : _i5.BuiltList(flattenedStructureList),
    );
  }

  factory XmlListsInputOutput.build(
          [void Function(XmlListsInputOutputBuilder) updates]) =
      _$XmlListsInputOutput;

  const XmlListsInputOutput._();

  factory XmlListsInputOutput.fromRequest(
    XmlListsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [XmlListsInputOutput] from a [payload] and [response].
  factory XmlListsInputOutput.fromResponse(
    XmlListsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<XmlListsInputOutput>> serializers = [
    XmlListsInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlListsInputOutputBuilder b) {}
  _i5.BuiltList<String>? get stringList;
  _i5.BuiltSet<String>? get stringSet;
  _i5.BuiltList<int>? get integerList;
  _i5.BuiltList<bool>? get booleanList;
  _i5.BuiltList<DateTime>? get timestampList;
  _i5.BuiltList<_i3.FooEnum>? get enumList;
  _i5.BuiltList<int>? get intEnumList;

  /// A list of lists of strings.
  _i5.BuiltList<_i5.BuiltList<String>>? get nestedStringList;
  _i5.BuiltList<String>? get renamedListMembers;
  _i5.BuiltList<String>? get flattenedList;
  _i5.BuiltList<String>? get flattenedList2;
  _i5.BuiltList<String>? get flattenedListWithMemberNamespace;
  _i5.BuiltList<String>? get flattenedListWithNamespace;
  _i5.BuiltList<_i4.StructureListMember>? get structureList;
  _i5.BuiltList<_i4.StructureListMember>? get flattenedStructureList;
  @override
  XmlListsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        stringList,
        stringSet,
        integerList,
        booleanList,
        timestampList,
        enumList,
        intEnumList,
        nestedStringList,
        renamedListMembers,
        flattenedList,
        flattenedList2,
        flattenedListWithMemberNamespace,
        flattenedListWithNamespace,
        structureList,
        flattenedStructureList,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlListsInputOutput')
      ..add(
        'stringList',
        stringList,
      )
      ..add(
        'stringSet',
        stringSet,
      )
      ..add(
        'integerList',
        integerList,
      )
      ..add(
        'booleanList',
        booleanList,
      )
      ..add(
        'timestampList',
        timestampList,
      )
      ..add(
        'enumList',
        enumList,
      )
      ..add(
        'intEnumList',
        intEnumList,
      )
      ..add(
        'nestedStringList',
        nestedStringList,
      )
      ..add(
        'renamedListMembers',
        renamedListMembers,
      )
      ..add(
        'flattenedList',
        flattenedList,
      )
      ..add(
        'flattenedList2',
        flattenedList2,
      )
      ..add(
        'flattenedListWithMemberNamespace',
        flattenedListWithMemberNamespace,
      )
      ..add(
        'flattenedListWithNamespace',
        flattenedListWithNamespace,
      )
      ..add(
        'structureList',
        structureList,
      )
      ..add(
        'flattenedStructureList',
        flattenedStructureList,
      );
    return helper.toString();
  }
}

class XmlListsInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlListsInputOutput> {
  const XmlListsInputOutputRestXmlSerializer() : super('XmlListsInputOutput');

  @override
  Iterable<Type> get types => const [
        XmlListsInputOutput,
        _$XmlListsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlListsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlListsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'booleanList':
          result.booleanList
              .replace((const _i1.XmlBuiltListSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(bool)],
            ),
          ) as _i5.BuiltList<bool>));
        case 'enumList':
          result.enumList
              .replace((const _i1.XmlBuiltListSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.FooEnum)],
            ),
          ) as _i5.BuiltList<_i3.FooEnum>));
        case 'flattenedList':
          result.flattenedList.add((serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String));
        case 'customName':
          result.flattenedList2.add((serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String));
        case 'flattenedListWithMemberNamespace':
          result.flattenedListWithMemberNamespace.add((serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String));
        case 'flattenedListWithNamespace':
          result.flattenedListWithNamespace.add((serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String));
        case 'flattenedStructureList':
          result.flattenedStructureList.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.StructureListMember),
          ) as _i4.StructureListMember));
        case 'intEnumList':
          result.intEnumList
              .replace((const _i1.XmlBuiltListSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(int)],
            ),
          ) as _i5.BuiltList<int>));
        case 'integerList':
          result.integerList
              .replace((const _i1.XmlBuiltListSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(int)],
            ),
          ) as _i5.BuiltList<int>));
        case 'nestedStringList':
          result.nestedStringList
              .replace((const _i1.XmlBuiltListSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [
                FullType(
                  _i5.BuiltList,
                  [FullType(String)],
                )
              ],
            ),
          ) as _i5.BuiltList<_i5.BuiltList<String>>));
        case 'renamed':
          result.renamedListMembers.replace(
              (const _i1.XmlBuiltListSerializer(memberName: 'item').deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'stringList':
          result.stringList
              .replace((const _i1.XmlBuiltListSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'stringSet':
          result.stringSet
              .replace((const _i1.XmlBuiltSetSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltSet,
              [FullType(String)],
            ),
          ) as _i5.BuiltSet<String>));
        case 'myStructureList':
          result.structureList.replace(
              (const _i1.XmlBuiltListSerializer(memberName: 'item').deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.StructureListMember)],
            ),
          ) as _i5.BuiltList<_i4.StructureListMember>));
        case 'timestampList':
          result.timestampList
              .replace((const _i1.XmlBuiltListSerializer().deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(DateTime)],
            ),
          ) as _i5.BuiltList<DateTime>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlListsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[const _i1.XmlElementName('XmlListsInputOutput')];
    final XmlListsInputOutput(
      :booleanList,
      :enumList,
      :flattenedList,
      :flattenedList2,
      :flattenedListWithMemberNamespace,
      :flattenedListWithNamespace,
      :flattenedStructureList,
      :intEnumList,
      :integerList,
      :nestedStringList,
      :renamedListMembers,
      :stringList,
      :stringSet,
      :structureList,
      :timestampList
    ) = object;
    if (booleanList != null) {
      result$
        ..add(const _i1.XmlElementName('booleanList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          booleanList,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(bool)],
          ),
        ));
    }
    if (enumList != null) {
      result$
        ..add(const _i1.XmlElementName('enumList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          enumList,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.FooEnum)],
          ),
        ));
    }
    if (flattenedList != null) {
      result$.addAll(
          const _i1.XmlBuiltListSerializer(memberName: 'flattenedList')
              .serialize(
        serializers,
        flattenedList,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (flattenedList2 != null) {
      result$.addAll(
          const _i1.XmlBuiltListSerializer(memberName: 'customName').serialize(
        serializers,
        flattenedList2,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (flattenedListWithMemberNamespace != null) {
      result$.addAll(const _i1.XmlBuiltListSerializer(
        memberName: 'flattenedListWithMemberNamespace',
        memberNamespace: _i1.XmlNamespace('https://xml-member.example.com'),
      ).serialize(
        serializers,
        flattenedListWithMemberNamespace,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (flattenedListWithNamespace != null) {
      result$.addAll(const _i1.XmlBuiltListSerializer(
              memberName: 'flattenedListWithNamespace')
          .serialize(
        serializers,
        flattenedListWithNamespace,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (flattenedStructureList != null) {
      result$.addAll(
          const _i1.XmlBuiltListSerializer(memberName: 'flattenedStructureList')
              .serialize(
        serializers,
        flattenedStructureList,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i4.StructureListMember)],
        ),
      ));
    }
    if (intEnumList != null) {
      result$
        ..add(const _i1.XmlElementName('intEnumList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          intEnumList,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (integerList != null) {
      result$
        ..add(const _i1.XmlElementName('integerList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          integerList,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (nestedStringList != null) {
      result$
        ..add(const _i1.XmlElementName('nestedStringList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          nestedStringList,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [
              FullType(
                _i5.BuiltList,
                [FullType(String)],
              )
            ],
          ),
        ));
    }
    if (renamedListMembers != null) {
      result$
        ..add(const _i1.XmlElementName('renamed'))
        ..add(const _i1.XmlBuiltListSerializer(memberName: 'item').serialize(
          serializers,
          renamedListMembers,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (stringList != null) {
      result$
        ..add(const _i1.XmlElementName('stringList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          stringList,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (stringSet != null) {
      result$
        ..add(const _i1.XmlElementName('stringSet'))
        ..add(const _i1.XmlBuiltSetSerializer().serialize(
          serializers,
          stringSet,
          specifiedType: const FullType.nullable(
            _i5.BuiltSet,
            [FullType(String)],
          ),
        ));
    }
    if (structureList != null) {
      result$
        ..add(const _i1.XmlElementName('myStructureList'))
        ..add(const _i1.XmlBuiltListSerializer(memberName: 'item').serialize(
          serializers,
          structureList,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.StructureListMember)],
          ),
        ));
    }
    if (timestampList != null) {
      result$
        ..add(const _i1.XmlElementName('timestampList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          timestampList,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(DateTime)],
          ),
        ));
    }
    return result$;
  }
}
