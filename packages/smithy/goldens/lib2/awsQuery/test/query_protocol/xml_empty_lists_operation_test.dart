// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'stringList':
          result.stringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'stringSet':
          result.stringSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltSet,
              [FullType(String)],
            ),
          ) as _i6.BuiltSet<String>));
        case 'integerList':
          result.integerList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(int)],
            ),
          ) as _i6.BuiltList<int>));
        case 'booleanList':
          result.booleanList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(bool)],
            ),
          ) as _i6.BuiltList<bool>));
        case 'timestampList':
          result.timestampList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(DateTime)],
            ),
          ) as _i6.BuiltList<DateTime>));
        case 'enumList':
          result.enumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i7.FooEnum)],
            ),
          ) as _i6.BuiltList<_i7.FooEnum>));
        case 'intEnumList':
          result.intEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i8.IntegerEnum)],
            ),
          ) as _i6.BuiltList<_i8.IntegerEnum>));
        case 'nestedStringList':
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
        case 'renamedListMembers':
          result.renamedListMembers.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'flattenedList':
          result.flattenedList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'flattenedList2':
          result.flattenedList2.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'flattenedListWithMemberNamespace':
          result.flattenedListWithMemberNamespace
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'flattenedListWithNamespace':
          result.flattenedListWithNamespace.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'structureList':
          result.structureList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i9.StructureListMember)],
            ),
          ) as _i6.BuiltList<_i9.StructureListMember>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.XmlListsOutput object, {
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'a':
          result.a = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'b':
          result.b = (serializers.deserialize(
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
    _i9.StructureListMember object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
