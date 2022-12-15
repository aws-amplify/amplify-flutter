// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    List<bool>? booleanList,
    List<_i3.FooEnum>? enumList,
    List<String>? flattenedList,
    List<String>? flattenedList2,
    List<String>? flattenedListWithMemberNamespace,
    List<String>? flattenedListWithNamespace,
    List<_i4.StructureListMember>? flattenedStructureList,
    List<int>? integerList,
    List<List<String>>? nestedStringList,
    List<String>? renamedListMembers,
    List<String>? stringList,
    Set<String>? stringSet,
    List<_i4.StructureListMember>? structureList,
    List<DateTime>? timestampList,
  }) {
    return _$XmlListsInputOutput._(
      booleanList: booleanList == null ? null : _i5.BuiltList(booleanList),
      enumList: enumList == null ? null : _i5.BuiltList(enumList),
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
      flattenedStructureList: flattenedStructureList == null
          ? null
          : _i5.BuiltList(flattenedStructureList),
      integerList: integerList == null ? null : _i5.BuiltList(integerList),
      nestedStringList: nestedStringList == null
          ? null
          : _i5.BuiltList(nestedStringList.map((el) => _i5.BuiltList(el))),
      renamedListMembers:
          renamedListMembers == null ? null : _i5.BuiltList(renamedListMembers),
      stringList: stringList == null ? null : _i5.BuiltList(stringList),
      stringSet: stringSet == null ? null : _i5.BuiltSet(stringSet),
      structureList:
          structureList == null ? null : _i5.BuiltList(structureList),
      timestampList:
          timestampList == null ? null : _i5.BuiltList(timestampList),
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

  static const List<_i1.SmithySerializer> serializers = [
    XmlListsInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlListsInputOutputBuilder b) {}
  _i5.BuiltList<bool>? get booleanList;
  _i5.BuiltList<_i3.FooEnum>? get enumList;
  _i5.BuiltList<String>? get flattenedList;
  _i5.BuiltList<String>? get flattenedList2;
  _i5.BuiltList<String>? get flattenedListWithMemberNamespace;
  _i5.BuiltList<String>? get flattenedListWithNamespace;
  _i5.BuiltList<_i4.StructureListMember>? get flattenedStructureList;
  _i5.BuiltList<int>? get integerList;

  /// A list of lists of strings.
  _i5.BuiltList<_i5.BuiltList<String>>? get nestedStringList;
  _i5.BuiltList<String>? get renamedListMembers;
  _i5.BuiltList<String>? get stringList;
  _i5.BuiltSet<String>? get stringSet;
  _i5.BuiltList<_i4.StructureListMember>? get structureList;
  _i5.BuiltList<DateTime>? get timestampList;
  @override
  XmlListsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        booleanList,
        enumList,
        flattenedList,
        flattenedList2,
        flattenedListWithMemberNamespace,
        flattenedListWithNamespace,
        flattenedStructureList,
        integerList,
        nestedStringList,
        renamedListMembers,
        stringList,
        stringSet,
        structureList,
        timestampList,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlListsInputOutput');
    helper.add(
      'booleanList',
      booleanList,
    );
    helper.add(
      'enumList',
      enumList,
    );
    helper.add(
      'flattenedList',
      flattenedList,
    );
    helper.add(
      'flattenedList2',
      flattenedList2,
    );
    helper.add(
      'flattenedListWithMemberNamespace',
      flattenedListWithMemberNamespace,
    );
    helper.add(
      'flattenedListWithNamespace',
      flattenedListWithNamespace,
    );
    helper.add(
      'flattenedStructureList',
      flattenedStructureList,
    );
    helper.add(
      'integerList',
      integerList,
    );
    helper.add(
      'nestedStringList',
      nestedStringList,
    );
    helper.add(
      'renamedListMembers',
      renamedListMembers,
    );
    helper.add(
      'stringList',
      stringList,
    );
    helper.add(
      'stringSet',
      stringSet,
    );
    helper.add(
      'structureList',
      structureList,
    );
    helper.add(
      'timestampList',
      timestampList,
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'booleanList':
          if (value != null) {
            result.booleanList
                .replace((const _i1.XmlBuiltListSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(bool)],
              ),
            ) as _i5.BuiltList<bool>));
          }
          break;
        case 'enumList':
          if (value != null) {
            result.enumList
                .replace((const _i1.XmlBuiltListSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.FooEnum)],
              ),
            ) as _i5.BuiltList<_i3.FooEnum>));
          }
          break;
        case 'flattenedList':
          if (value != null) {
            result.flattenedList.add((serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String));
          }
          break;
        case 'customName':
          if (value != null) {
            result.flattenedList2.add((serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String));
          }
          break;
        case 'flattenedListWithMemberNamespace':
          if (value != null) {
            result.flattenedListWithMemberNamespace
                .add((serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String));
          }
          break;
        case 'flattenedListWithNamespace':
          if (value != null) {
            result.flattenedListWithNamespace.add((serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String));
          }
          break;
        case 'flattenedStructureList':
          if (value != null) {
            result.flattenedStructureList.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.StructureListMember),
            ) as _i4.StructureListMember));
          }
          break;
        case 'integerList':
          if (value != null) {
            result.integerList
                .replace((const _i1.XmlBuiltListSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(int)],
              ),
            ) as _i5.BuiltList<int>));
          }
          break;
        case 'nestedStringList':
          if (value != null) {
            result.nestedStringList
                .replace((const _i1.XmlBuiltListSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
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
          }
          break;
        case 'renamed':
          if (value != null) {
            result.renamedListMembers.replace(
                (const _i1.XmlBuiltListSerializer(memberName: 'item')
                    .deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'stringList':
          if (value != null) {
            result.stringList
                .replace((const _i1.XmlBuiltListSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'stringSet':
          if (value != null) {
            result.stringSet
                .replace((const _i1.XmlBuiltSetSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltSet,
                [FullType(String)],
              ),
            ) as _i5.BuiltSet<String>));
          }
          break;
        case 'myStructureList':
          if (value != null) {
            result.structureList.replace(
                (const _i1.XmlBuiltListSerializer(memberName: 'item')
                    .deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.StructureListMember)],
              ),
            ) as _i5.BuiltList<_i4.StructureListMember>));
          }
          break;
        case 'timestampList':
          if (value != null) {
            result.timestampList
                .replace((const _i1.XmlBuiltListSerializer().deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(DateTime)],
              ),
            ) as _i5.BuiltList<DateTime>));
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
    final payload = (object as XmlListsInputOutput);
    final result = <Object?>[const _i1.XmlElementName('XmlListsInputOutput')];
    if (payload.booleanList != null) {
      result
        ..add(const _i1.XmlElementName('booleanList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          payload.booleanList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(bool)],
          ),
        ));
    }
    if (payload.enumList != null) {
      result
        ..add(const _i1.XmlElementName('enumList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          payload.enumList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.FooEnum)],
          ),
        ));
    }
    if (payload.flattenedList != null) {
      result.addAll(
          const _i1.XmlBuiltListSerializer(memberName: 'flattenedList')
              .serialize(
        serializers,
        payload.flattenedList!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (payload.flattenedList2 != null) {
      result.addAll(
          const _i1.XmlBuiltListSerializer(memberName: 'customName').serialize(
        serializers,
        payload.flattenedList2!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (payload.flattenedListWithMemberNamespace != null) {
      result.addAll(const _i1.XmlBuiltListSerializer(
        memberName: 'flattenedListWithMemberNamespace',
        memberNamespace: _i1.XmlNamespace('https://xml-member.example.com'),
      ).serialize(
        serializers,
        payload.flattenedListWithMemberNamespace!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (payload.flattenedListWithNamespace != null) {
      result.addAll(const _i1.XmlBuiltListSerializer(
              memberName: 'flattenedListWithNamespace')
          .serialize(
        serializers,
        payload.flattenedListWithNamespace!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (payload.flattenedStructureList != null) {
      result.addAll(
          const _i1.XmlBuiltListSerializer(memberName: 'flattenedStructureList')
              .serialize(
        serializers,
        payload.flattenedStructureList!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i4.StructureListMember)],
        ),
      ));
    }
    if (payload.integerList != null) {
      result
        ..add(const _i1.XmlElementName('integerList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          payload.integerList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (payload.nestedStringList != null) {
      result
        ..add(const _i1.XmlElementName('nestedStringList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          payload.nestedStringList!,
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
    if (payload.renamedListMembers != null) {
      result
        ..add(const _i1.XmlElementName('renamed'))
        ..add(const _i1.XmlBuiltListSerializer(memberName: 'item').serialize(
          serializers,
          payload.renamedListMembers!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.stringList != null) {
      result
        ..add(const _i1.XmlElementName('stringList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          payload.stringList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.stringSet != null) {
      result
        ..add(const _i1.XmlElementName('stringSet'))
        ..add(const _i1.XmlBuiltSetSerializer().serialize(
          serializers,
          payload.stringSet!,
          specifiedType: const FullType.nullable(
            _i5.BuiltSet,
            [FullType(String)],
          ),
        ));
    }
    if (payload.structureList != null) {
      result
        ..add(const _i1.XmlElementName('myStructureList'))
        ..add(const _i1.XmlBuiltListSerializer(memberName: 'item').serialize(
          serializers,
          payload.structureList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.StructureListMember)],
          ),
        ));
    }
    if (payload.timestampList != null) {
      result
        ..add(const _i1.XmlElementName('timestampList'))
        ..add(const _i1.XmlBuiltListSerializer().serialize(
          serializers,
          payload.timestampList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(DateTime)],
          ),
        ));
    }
    return result;
  }
}
