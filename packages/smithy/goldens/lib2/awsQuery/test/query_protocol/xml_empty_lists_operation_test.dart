// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.xml_empty_lists_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/foo_enum.dart' as _i7;
import 'package:aws_query_v2/src/query_protocol/model/integer_enum.dart' as _i8;
import 'package:aws_query_v2/src/query_protocol/model/structure_list_member.dart'
    as _i9;
import 'package:aws_query_v2/src/query_protocol/model/xml_lists_output.dart'
    as _i5;
import 'package:aws_query_v2/src/query_protocol/operation/xml_empty_lists_operation.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryXmlEmptyLists (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlEmptyListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlEmptyLists',
          documentation: 'Deserializes empty XML lists',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlEmptyListsResponse xmlns="https://example.com/">\n    <XmlEmptyListsResult>\n        <stringList/>\n        <stringSet></stringSet>\n    </XmlEmptyListsResult>\n</XmlEmptyListsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {
            'stringList': [],
            'stringSet': [],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [
          XmlListsOutputAwsQuerySerializer(),
          StructureListMemberAwsQuerySerializer(),
        ],
      );
    },
  );
}

class XmlListsOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlListsOutput> {
  const XmlListsOutputAwsQuerySerializer() : super('XmlListsOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlListsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.XmlListsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlListsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'stringList':
          if (value != null) {
            result.stringList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'stringSet':
          if (value != null) {
            result.stringSet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltSet,
                [FullType(String)],
              ),
            ) as _i6.BuiltSet<String>));
          }
          break;
        case 'integerList':
          if (value != null) {
            result.integerList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(int)],
              ),
            ) as _i6.BuiltList<int>));
          }
          break;
        case 'booleanList':
          if (value != null) {
            result.booleanList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(bool)],
              ),
            ) as _i6.BuiltList<bool>));
          }
          break;
        case 'timestampList':
          if (value != null) {
            result.timestampList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(DateTime)],
              ),
            ) as _i6.BuiltList<DateTime>));
          }
          break;
        case 'enumList':
          if (value != null) {
            result.enumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i7.FooEnum)],
              ),
            ) as _i6.BuiltList<_i7.FooEnum>));
          }
          break;
        case 'intEnumList':
          if (value != null) {
            result.intEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i8.IntegerEnum)],
              ),
            ) as _i6.BuiltList<_i8.IntegerEnum>));
          }
          break;
        case 'nestedStringList':
          if (value != null) {
            result.nestedStringList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [
                  FullType(
                    _i6.BuiltList,
                    [FullType(String)],
                  )
                ],
              ),
            ) as _i6.BuiltList<_i6.BuiltList<String>>));
          }
          break;
        case 'renamedListMembers':
          if (value != null) {
            result.renamedListMembers.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'flattenedList':
          if (value != null) {
            result.flattenedList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'flattenedList2':
          if (value != null) {
            result.flattenedList2.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'flattenedListWithMemberNamespace':
          if (value != null) {
            result.flattenedListWithMemberNamespace
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'flattenedListWithNamespace':
          if (value != null) {
            result.flattenedListWithNamespace.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'structureList':
          if (value != null) {
            result.structureList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i9.StructureListMember)],
              ),
            ) as _i6.BuiltList<_i9.StructureListMember>));
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
    throw StateError('Not supported for tests');
  }
}

class StructureListMemberAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i9.StructureListMember> {
  const StructureListMemberAwsQuerySerializer() : super('StructureListMember');

  @override
  Iterable<Type> get types => const [_i9.StructureListMember];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i9.StructureListMember deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i9.StructureListMemberBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'a':
          if (value != null) {
            result.a = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'b':
          if (value != null) {
            result.b = (serializers.deserialize(
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
    throw StateError('Not supported for tests');
  }
}
