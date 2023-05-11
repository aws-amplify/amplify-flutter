// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.xml_enums_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/foo_enum.dart' as _i6;
import 'package:aws_query_v1/src/query_protocol/model/xml_enums_output.dart'
    as _i5;
import 'package:aws_query_v1/src/query_protocol/operation/xml_enums_operation.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryXmlEnums (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlEnums',
          documentation: 'Serializes simple scalar properties',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlEnumsResponse xmlns="https://example.com/">\n    <XmlEnumsResult>\n        <fooEnum1>Foo</fooEnum1>\n        <fooEnum2>0</fooEnum2>\n        <fooEnum3>1</fooEnum3>\n        <fooEnumList>\n            <member>Foo</member>\n            <member>0</member>\n        </fooEnumList>\n        <fooEnumSet>\n            <member>Foo</member>\n            <member>0</member>\n        </fooEnumSet>\n        <fooEnumMap>\n            <entry>\n                <key>hi</key>\n                <value>Foo</value>\n            </entry>\n            <entry>\n                <key>zero</key>\n                <value>0</value>\n            </entry>\n        </fooEnumMap>\n    </XmlEnumsResult>\n</XmlEnumsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {
            'fooEnum1': 'Foo',
            'fooEnum2': '0',
            'fooEnum3': '1',
            'fooEnumList': [
              'Foo',
              '0',
            ],
            'fooEnumSet': [
              'Foo',
              '0',
            ],
            'fooEnumMap': {
              'hi': 'Foo',
              'zero': '0',
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlEnumsOutputAwsQuerySerializer()],
      );
    },
  );
}

class XmlEnumsOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlEnumsOutput> {
  const XmlEnumsOutputAwsQuerySerializer() : super('XmlEnumsOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlEnumsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.XmlEnumsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlEnumsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fooEnum1':
          result.fooEnum1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.FooEnum),
          ) as _i6.FooEnum);
        case 'fooEnum2':
          result.fooEnum2 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.FooEnum),
          ) as _i6.FooEnum);
        case 'fooEnum3':
          result.fooEnum3 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.FooEnum),
          ) as _i6.FooEnum);
        case 'fooEnumList':
          result.fooEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i6.FooEnum)],
            ),
          ) as _i7.BuiltList<_i6.FooEnum>));
        case 'fooEnumSet':
          result.fooEnumSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltSet,
              [FullType(_i6.FooEnum)],
            ),
          ) as _i7.BuiltSet<_i6.FooEnum>));
        case 'fooEnumMap':
          result.fooEnumMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltMap,
              [
                FullType(String),
                FullType(_i6.FooEnum),
              ],
            ),
          ) as _i7.BuiltMap<String, _i6.FooEnum>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.XmlEnumsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
