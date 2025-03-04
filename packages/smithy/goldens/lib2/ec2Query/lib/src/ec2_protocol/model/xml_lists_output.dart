// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v2.ec2_protocol.model.xml_lists_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/foo_enum.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/integer_enum.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/structure_list_member.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'xml_lists_output.g.dart';

abstract class XmlListsOutput
    with _i1.AWSEquatable<XmlListsOutput>
    implements Built<XmlListsOutput, XmlListsOutputBuilder> {
  factory XmlListsOutput({
    List<String>? stringList,
    Set<String>? stringSet,
    List<int>? integerList,
    List<bool>? booleanList,
    List<DateTime>? timestampList,
    List<FooEnum>? enumList,
    List<IntegerEnum>? intEnumList,
    List<List<String>>? nestedStringList,
    List<String>? renamedListMembers,
    List<String>? flattenedList,
    List<String>? flattenedList2,
    List<String>? flattenedListWithMemberNamespace,
    List<String>? flattenedListWithNamespace,
    List<StructureListMember>? structureList,
  }) {
    return _$XmlListsOutput._(
      stringList: stringList == null ? null : _i2.BuiltList(stringList),
      stringSet: stringSet == null ? null : _i2.BuiltSet(stringSet),
      integerList: integerList == null ? null : _i2.BuiltList(integerList),
      booleanList: booleanList == null ? null : _i2.BuiltList(booleanList),
      timestampList:
          timestampList == null ? null : _i2.BuiltList(timestampList),
      enumList: enumList == null ? null : _i2.BuiltList(enumList),
      intEnumList: intEnumList == null ? null : _i2.BuiltList(intEnumList),
      nestedStringList: nestedStringList == null
          ? null
          : _i2.BuiltList(nestedStringList.map((el) => _i2.BuiltList(el))),
      renamedListMembers:
          renamedListMembers == null ? null : _i2.BuiltList(renamedListMembers),
      flattenedList:
          flattenedList == null ? null : _i2.BuiltList(flattenedList),
      flattenedList2:
          flattenedList2 == null ? null : _i2.BuiltList(flattenedList2),
      flattenedListWithMemberNamespace: flattenedListWithMemberNamespace == null
          ? null
          : _i2.BuiltList(flattenedListWithMemberNamespace),
      flattenedListWithNamespace: flattenedListWithNamespace == null
          ? null
          : _i2.BuiltList(flattenedListWithNamespace),
      structureList:
          structureList == null ? null : _i2.BuiltList(structureList),
    );
  }

  factory XmlListsOutput.build([void Function(XmlListsOutputBuilder) updates]) =
      _$XmlListsOutput;

  const XmlListsOutput._();

  /// Constructs a [XmlListsOutput] from a [payload] and [response].
  factory XmlListsOutput.fromResponse(
    XmlListsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<XmlListsOutput>> serializers = [
    XmlListsOutputEc2QuerySerializer()
  ];

  _i2.BuiltList<String>? get stringList;
  _i2.BuiltSet<String>? get stringSet;
  _i2.BuiltList<int>? get integerList;
  _i2.BuiltList<bool>? get booleanList;
  _i2.BuiltList<DateTime>? get timestampList;
  _i2.BuiltList<FooEnum>? get enumList;
  _i2.BuiltList<IntegerEnum>? get intEnumList;

  /// A list of lists of strings.
  _i2.BuiltList<_i2.BuiltList<String>>? get nestedStringList;
  _i2.BuiltList<String>? get renamedListMembers;
  _i2.BuiltList<String>? get flattenedList;
  _i2.BuiltList<String>? get flattenedList2;
  _i2.BuiltList<String>? get flattenedListWithMemberNamespace;
  _i2.BuiltList<String>? get flattenedListWithNamespace;
  _i2.BuiltList<StructureListMember>? get structureList;
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
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlListsOutput')
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
      );
    return helper.toString();
  }
}

class XmlListsOutputEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<XmlListsOutput> {
  const XmlListsOutputEc2QuerySerializer() : super('XmlListsOutput');

  @override
  Iterable<Type> get types => const [
        XmlListsOutput,
        _$XmlListsOutput,
      ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];

  @override
  XmlListsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlListsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'stringList':
          result.stringList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'stringSet':
          result.stringSet.replace((const _i3.XmlBuiltSetSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltSet,
              [FullType(String)],
            ),
          ) as _i2.BuiltSet<String>));
        case 'integerList':
          result.integerList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(int)],
            ),
          ) as _i2.BuiltList<int>));
        case 'booleanList':
          result.booleanList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(bool)],
            ),
          ) as _i2.BuiltList<bool>));
        case 'timestampList':
          result.timestampList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DateTime)],
            ),
          ) as _i2.BuiltList<DateTime>));
        case 'enumList':
          result.enumList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(FooEnum)],
            ),
          ) as _i2.BuiltList<FooEnum>));
        case 'intEnumList':
          result.intEnumList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IntegerEnum)],
            ),
          ) as _i2.BuiltList<IntegerEnum>));
        case 'nestedStringList':
          result.nestedStringList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [
                FullType(
                  _i2.BuiltList,
                  [FullType(String)],
                )
              ],
            ),
          ) as _i2.BuiltList<_i2.BuiltList<String>>));
        case 'renamed':
          result.renamedListMembers.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
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
        case 'myStructureList':
          result.structureList.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(StructureListMember)],
            ),
          ) as _i2.BuiltList<StructureListMember>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlListsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'XmlListsOutputResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    final XmlListsOutput(
      :stringList,
      :stringSet,
      :integerList,
      :booleanList,
      :timestampList,
      :enumList,
      :intEnumList,
      :nestedStringList,
      :renamedListMembers,
      :flattenedList,
      :flattenedList2,
      :flattenedListWithMemberNamespace,
      :flattenedListWithNamespace,
      :structureList
    ) = object;
    if (stringList != null) {
      result$
        ..add(const _i3.XmlElementName('StringList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          stringList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (stringSet != null) {
      result$
        ..add(const _i3.XmlElementName('StringSet'))
        ..add(const _i3.XmlBuiltSetSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          stringSet,
          specifiedType: const FullType(
            _i2.BuiltSet,
            [FullType(String)],
          ),
        ));
    }
    if (integerList != null) {
      result$
        ..add(const _i3.XmlElementName('IntegerList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          integerList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (booleanList != null) {
      result$
        ..add(const _i3.XmlElementName('BooleanList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          booleanList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(bool)],
          ),
        ));
    }
    if (timestampList != null) {
      result$
        ..add(const _i3.XmlElementName('TimestampList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          timestampList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(DateTime)],
          ),
        ));
    }
    if (enumList != null) {
      result$
        ..add(const _i3.XmlElementName('EnumList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          enumList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(FooEnum)],
          ),
        ));
    }
    if (intEnumList != null) {
      result$
        ..add(const _i3.XmlElementName('IntEnumList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          intEnumList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IntegerEnum)],
          ),
        ));
    }
    if (nestedStringList != null) {
      result$
        ..add(const _i3.XmlElementName('NestedStringList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          nestedStringList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [
              FullType(
                _i2.BuiltList,
                [FullType(String)],
              )
            ],
          ),
        ));
    }
    if (renamedListMembers != null) {
      result$
        ..add(const _i3.XmlElementName('Renamed'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          renamedListMembers,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (flattenedList != null) {
      result$.addAll(const _i3.XmlBuiltListSerializer(
        memberName: 'FlattenedList',
        indexer: _i3.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        flattenedList,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (flattenedList2 != null) {
      result$.addAll(const _i3.XmlBuiltListSerializer(
        memberName: 'CustomName',
        indexer: _i3.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        flattenedList2,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (flattenedListWithMemberNamespace != null) {
      result$.addAll(const _i3.XmlBuiltListSerializer(
        memberName: 'FlattenedListWithMemberNamespace',
        memberNamespace: _i3.XmlNamespace('https://xml-member.example.com'),
        indexer: _i3.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        flattenedListWithMemberNamespace,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (flattenedListWithNamespace != null) {
      result$.addAll(const _i3.XmlBuiltListSerializer(
        memberName: 'FlattenedListWithNamespace',
        indexer: _i3.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        flattenedListWithNamespace,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (structureList != null) {
      result$
        ..add(const _i3.XmlElementName('MyStructureList'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          structureList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(StructureListMember)],
          ),
        ));
    }
    return result$;
  }
}
