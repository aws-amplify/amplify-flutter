// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_query_v2.query_protocol.model.xml_lists_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v2/src/query_protocol/model/foo_enum.dart' as _i2;
import 'package:aws_query_v2/src/query_protocol/model/integer_enum.dart' as _i3;
import 'package:aws_query_v2/src/query_protocol/model/structure_list_member.dart'
    as _i4;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;

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
    List<_i3.IntegerEnum>? intEnumList,
    List<List<String>>? nestedStringList,
    List<String>? renamedListMembers,
    List<String>? flattenedList,
    List<String>? flattenedList2,
    List<String>? flattenedListWithMemberNamespace,
    List<String>? flattenedListWithNamespace,
    List<_i4.StructureListMember>? structureList,
  }) {
    return _$XmlListsOutput._(
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

  static const List<_i6.SmithySerializer> serializers = [
    XmlListsOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlListsOutputBuilder b) {}
  _i5.BuiltList<String>? get stringList;
  _i5.BuiltSet<String>? get stringSet;
  _i5.BuiltList<int>? get integerList;
  _i5.BuiltList<bool>? get booleanList;
  _i5.BuiltList<DateTime>? get timestampList;
  _i5.BuiltList<_i2.FooEnum>? get enumList;
  _i5.BuiltList<_i3.IntegerEnum>? get intEnumList;

  /// A list of lists of strings.
  _i5.BuiltList<_i5.BuiltList<String>>? get nestedStringList;
  _i5.BuiltList<String>? get renamedListMembers;
  _i5.BuiltList<String>? get flattenedList;
  _i5.BuiltList<String>? get flattenedList2;
  _i5.BuiltList<String>? get flattenedListWithMemberNamespace;
  _i5.BuiltList<String>? get flattenedListWithNamespace;
  _i5.BuiltList<_i4.StructureListMember>? get structureList;
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
    final helper = newBuiltValueToStringHelper('XmlListsOutput');
    helper.add(
      'stringList',
      stringList,
    );
    helper.add(
      'stringSet',
      stringSet,
    );
    helper.add(
      'integerList',
      integerList,
    );
    helper.add(
      'booleanList',
      booleanList,
    );
    helper.add(
      'timestampList',
      timestampList,
    );
    helper.add(
      'enumList',
      enumList,
    );
    helper.add(
      'intEnumList',
      intEnumList,
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
      'structureList',
      structureList,
    );
    return helper.toString();
  }
}

class XmlListsOutputAwsQuerySerializer
    extends _i6.StructuredSmithySerializer<XmlListsOutput> {
  const XmlListsOutputAwsQuerySerializer() : super('XmlListsOutput');

  @override
  Iterable<Type> get types => const [
        XmlListsOutput,
        _$XmlListsOutput,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'stringList':
          if (value != null) {
            result.stringList.replace((const _i6.XmlBuiltListSerializer(
                    indexer: _i6.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'stringSet':
          if (value != null) {
            result.stringSet.replace((const _i6.XmlBuiltSetSerializer(
                    indexer: _i6.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltSet,
                [FullType(String)],
              ),
            ) as _i5.BuiltSet<String>));
          }
          break;
        case 'integerList':
          if (value != null) {
            result.integerList.replace((const _i6.XmlBuiltListSerializer(
                    indexer: _i6.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(int)],
              ),
            ) as _i5.BuiltList<int>));
          }
          break;
        case 'booleanList':
          if (value != null) {
            result.booleanList.replace((const _i6.XmlBuiltListSerializer(
                    indexer: _i6.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(bool)],
              ),
            ) as _i5.BuiltList<bool>));
          }
          break;
        case 'timestampList':
          if (value != null) {
            result.timestampList.replace((const _i6.XmlBuiltListSerializer(
                    indexer: _i6.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(DateTime)],
              ),
            ) as _i5.BuiltList<DateTime>));
          }
          break;
        case 'enumList':
          if (value != null) {
            result.enumList.replace((const _i6.XmlBuiltListSerializer(
                    indexer: _i6.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i2.FooEnum)],
              ),
            ) as _i5.BuiltList<_i2.FooEnum>));
          }
          break;
        case 'intEnumList':
          if (value != null) {
            result.intEnumList.replace((const _i6.XmlBuiltListSerializer(
                    indexer: _i6.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.IntegerEnum)],
              ),
            ) as _i5.BuiltList<_i3.IntegerEnum>));
          }
          break;
        case 'nestedStringList':
          if (value != null) {
            result.nestedStringList.replace((const _i6.XmlBuiltListSerializer(
                    indexer: _i6.XmlIndexer.awsQueryList)
                .deserialize(
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
          }
          break;
        case 'renamed':
          if (value != null) {
            result.renamedListMembers.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.awsQueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
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
        case 'myStructureList':
          if (value != null) {
            result.structureList.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.awsQueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.StructureListMember)],
              ),
            ) as _i5.BuiltList<_i4.StructureListMember>));
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
    final payload = (object as XmlListsOutput);
    final result = <Object?>[
      const _i6.XmlElementName(
        'XmlListsOutputResponse',
        _i6.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.stringList != null) {
      result
        ..add(const _i6.XmlElementName('stringList'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
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
        ..add(const _i6.XmlElementName('stringSet'))
        ..add(const _i6.XmlBuiltSetSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.stringSet!,
          specifiedType: const FullType.nullable(
            _i5.BuiltSet,
            [FullType(String)],
          ),
        ));
    }
    if (payload.integerList != null) {
      result
        ..add(const _i6.XmlElementName('integerList'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.integerList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (payload.booleanList != null) {
      result
        ..add(const _i6.XmlElementName('booleanList'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.booleanList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(bool)],
          ),
        ));
    }
    if (payload.timestampList != null) {
      result
        ..add(const _i6.XmlElementName('timestampList'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.timestampList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(DateTime)],
          ),
        ));
    }
    if (payload.enumList != null) {
      result
        ..add(const _i6.XmlElementName('enumList'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.enumList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.FooEnum)],
          ),
        ));
    }
    if (payload.intEnumList != null) {
      result
        ..add(const _i6.XmlElementName('intEnumList'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.intEnumList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.IntegerEnum)],
          ),
        ));
    }
    if (payload.nestedStringList != null) {
      result
        ..add(const _i6.XmlElementName('nestedStringList'))
        ..add(const _i6.XmlBuiltListSerializer(
                indexer: _i6.XmlIndexer.awsQueryList)
            .serialize(
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
        ..add(const _i6.XmlElementName('renamed'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.awsQueryList,
        ).serialize(
          serializers,
          payload.renamedListMembers!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.flattenedList != null) {
      result.addAll(const _i6.XmlBuiltListSerializer(
        memberName: 'flattenedList',
        indexer: _i6.XmlIndexer.awsQueryList,
      ).serialize(
        serializers,
        payload.flattenedList!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (payload.flattenedList2 != null) {
      result.addAll(const _i6.XmlBuiltListSerializer(
        memberName: 'customName',
        indexer: _i6.XmlIndexer.awsQueryList,
      ).serialize(
        serializers,
        payload.flattenedList2!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (payload.flattenedListWithMemberNamespace != null) {
      result.addAll(const _i6.XmlBuiltListSerializer(
        memberName: 'flattenedListWithMemberNamespace',
        memberNamespace: _i6.XmlNamespace('https://xml-member.example.com'),
        indexer: _i6.XmlIndexer.awsQueryList,
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
      result.addAll(const _i6.XmlBuiltListSerializer(
        memberName: 'flattenedListWithNamespace',
        indexer: _i6.XmlIndexer.awsQueryList,
      ).serialize(
        serializers,
        payload.flattenedListWithNamespace!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    }
    if (payload.structureList != null) {
      result
        ..add(const _i6.XmlElementName('myStructureList'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.awsQueryList,
        ).serialize(
          serializers,
          payload.structureList!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.StructureListMember)],
          ),
        ));
    }
    return result;
  }
}
