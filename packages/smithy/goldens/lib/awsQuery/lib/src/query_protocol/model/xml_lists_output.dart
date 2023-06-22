// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v1.query_protocol.model.xml_lists_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v1/src/query_protocol/model/foo_enum.dart' as _i2;
import 'package:aws_query_v1/src/query_protocol/model/structure_list_member.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

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
    List<_i2.FooEnum>? enumList,
    List<int>? intEnumList,
    List<List<String>>? nestedStringList,
    List<String>? renamedListMembers,
    List<String>? flattenedList,
    List<String>? flattenedList2,
    List<String>? flattenedListWithMemberNamespace,
    List<String>? flattenedListWithNamespace,
    List<_i3.StructureListMember>? structureList,
  }) {
    return _$XmlListsOutput._(
      stringList: stringList == null ? null : _i4.BuiltList(stringList),
      stringSet: stringSet == null ? null : _i4.BuiltSet(stringSet),
      integerList: integerList == null ? null : _i4.BuiltList(integerList),
      booleanList: booleanList == null ? null : _i4.BuiltList(booleanList),
      timestampList:
          timestampList == null ? null : _i4.BuiltList(timestampList),
      enumList: enumList == null ? null : _i4.BuiltList(enumList),
      intEnumList: intEnumList == null ? null : _i4.BuiltList(intEnumList),
      nestedStringList: nestedStringList == null
          ? null
          : _i4.BuiltList(nestedStringList.map((el) => _i4.BuiltList(el))),
      renamedListMembers:
          renamedListMembers == null ? null : _i4.BuiltList(renamedListMembers),
      flattenedList:
          flattenedList == null ? null : _i4.BuiltList(flattenedList),
      flattenedList2:
          flattenedList2 == null ? null : _i4.BuiltList(flattenedList2),
      flattenedListWithMemberNamespace: flattenedListWithMemberNamespace == null
          ? null
          : _i4.BuiltList(flattenedListWithMemberNamespace),
      flattenedListWithNamespace: flattenedListWithNamespace == null
          ? null
          : _i4.BuiltList(flattenedListWithNamespace),
      structureList:
          structureList == null ? null : _i4.BuiltList(structureList),
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

  static const List<_i5.SmithySerializer<XmlListsOutput>> serializers = [
    XmlListsOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlListsOutputBuilder b) {}
  _i4.BuiltList<String>? get stringList;
  _i4.BuiltSet<String>? get stringSet;
  _i4.BuiltList<int>? get integerList;
  _i4.BuiltList<bool>? get booleanList;
  _i4.BuiltList<DateTime>? get timestampList;
  _i4.BuiltList<_i2.FooEnum>? get enumList;
  _i4.BuiltList<int>? get intEnumList;

  /// A list of lists of strings.
  _i4.BuiltList<_i4.BuiltList<String>>? get nestedStringList;
  _i4.BuiltList<String>? get renamedListMembers;
  _i4.BuiltList<String>? get flattenedList;
  _i4.BuiltList<String>? get flattenedList2;
  _i4.BuiltList<String>? get flattenedListWithMemberNamespace;
  _i4.BuiltList<String>? get flattenedListWithNamespace;
  _i4.BuiltList<_i3.StructureListMember>? get structureList;
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

class XmlListsOutputAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<XmlListsOutput> {
  const XmlListsOutputAwsQuerySerializer() : super('XmlListsOutput');

  @override
  Iterable<Type> get types => const [
        XmlListsOutput,
        _$XmlListsOutput,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
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
          result.stringList.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'stringSet':
          result.stringSet.replace((const _i5.XmlBuiltSetSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltSet,
              [FullType(String)],
            ),
          ) as _i4.BuiltSet<String>));
        case 'integerList':
          result.integerList.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(int)],
            ),
          ) as _i4.BuiltList<int>));
        case 'booleanList':
          result.booleanList.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(bool)],
            ),
          ) as _i4.BuiltList<bool>));
        case 'timestampList':
          result.timestampList.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(DateTime)],
            ),
          ) as _i4.BuiltList<DateTime>));
        case 'enumList':
          result.enumList.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.FooEnum)],
            ),
          ) as _i4.BuiltList<_i2.FooEnum>));
        case 'intEnumList':
          result.intEnumList.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(int)],
            ),
          ) as _i4.BuiltList<int>));
        case 'nestedStringList':
          result.nestedStringList.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [
                FullType(
                  _i4.BuiltList,
                  [FullType(String)],
                )
              ],
            ),
          ) as _i4.BuiltList<_i4.BuiltList<String>>));
        case 'renamed':
          result.renamedListMembers.replace((const _i5.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i5.XmlIndexer.awsQueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
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
          result.structureList.replace((const _i5.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i5.XmlIndexer.awsQueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.StructureListMember)],
            ),
          ) as _i4.BuiltList<_i3.StructureListMember>));
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
      const _i5.XmlElementName(
        'XmlListsOutputResponse',
        _i5.XmlNamespace('https://example.com/'),
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
        ..add(const _i5.XmlElementName('stringList'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stringList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (stringSet != null) {
      result$
        ..add(const _i5.XmlElementName('stringSet'))
        ..add(const _i5.XmlBuiltSetSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stringSet,
          specifiedType: const FullType.nullable(
            _i4.BuiltSet,
            [FullType(String)],
          ),
        ));
    }
    if (integerList != null) {
      result$
        ..add(const _i5.XmlElementName('integerList'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          integerList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (booleanList != null) {
      result$
        ..add(const _i5.XmlElementName('booleanList'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          booleanList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(bool)],
          ),
        ));
    }
    if (timestampList != null) {
      result$
        ..add(const _i5.XmlElementName('timestampList'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          timestampList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(DateTime)],
          ),
        ));
    }
    if (enumList != null) {
      result$
        ..add(const _i5.XmlElementName('enumList'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          enumList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.FooEnum)],
          ),
        ));
    }
    if (intEnumList != null) {
      result$
        ..add(const _i5.XmlElementName('intEnumList'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          intEnumList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (nestedStringList != null) {
      result$
        ..add(const _i5.XmlElementName('nestedStringList'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          nestedStringList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [
              FullType(
                _i4.BuiltList,
                [FullType(String)],
              )
            ],
          ),
        ));
    }
    if (renamedListMembers != null) {
      result$
        ..add(const _i5.XmlElementName('renamed'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.awsQueryList,
        ).serialize(
          serializers,
          renamedListMembers,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (flattenedList != null) {
      result$.addAll(const _i5.XmlBuiltListSerializer(
        memberName: 'flattenedList',
        indexer: _i5.XmlIndexer.awsQueryList,
      ).serialize(
        serializers,
        flattenedList,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (flattenedList2 != null) {
      result$.addAll(const _i5.XmlBuiltListSerializer(
        memberName: 'customName',
        indexer: _i5.XmlIndexer.awsQueryList,
      ).serialize(
        serializers,
        flattenedList2,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (flattenedListWithMemberNamespace != null) {
      result$.addAll(const _i5.XmlBuiltListSerializer(
        memberName: 'flattenedListWithMemberNamespace',
        memberNamespace: _i5.XmlNamespace('https://xml-member.example.com'),
        indexer: _i5.XmlIndexer.awsQueryList,
      ).serialize(
        serializers,
        flattenedListWithMemberNamespace,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (flattenedListWithNamespace != null) {
      result$.addAll(const _i5.XmlBuiltListSerializer(
        memberName: 'flattenedListWithNamespace',
        indexer: _i5.XmlIndexer.awsQueryList,
      ).serialize(
        serializers,
        flattenedListWithNamespace,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (structureList != null) {
      result$
        ..add(const _i5.XmlElementName('myStructureList'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.awsQueryList,
        ).serialize(
          serializers,
          structureList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.StructureListMember)],
          ),
        ));
    }
    return result$;
  }
}
