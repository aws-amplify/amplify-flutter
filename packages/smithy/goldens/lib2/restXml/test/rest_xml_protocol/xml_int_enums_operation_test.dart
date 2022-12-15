// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.xml_int_enums_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/integer_enum.dart'
    as _i6;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_int_enums_input_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_int_enums_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlIntEnums (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.XmlIntEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlIntEnums',
          documentation: 'Serializes simple scalar properties',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlIntEnumsInputOutput>\n    <intEnum1>1</intEnum1>\n    <intEnum2>2</intEnum2>\n    <intEnum3>3</intEnum3>\n    <intEnumList>\n        <member>1</member>\n        <member>2</member>\n    </intEnumList>\n    <intEnumSet>\n        <member>1</member>\n        <member>2</member>\n    </intEnumSet>\n    <intEnumMap>\n        <entry>\n            <key>a</key>\n            <value>1</value>\n        </entry>\n        <entry>\n            <key>b</key>\n            <value>2</value>\n        </entry>\n    </intEnumMap>\n</XmlIntEnumsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'intEnum1': 1,
            'intEnum2': 2,
            'intEnum3': 3,
            'intEnumList': [
              1,
              2,
            ],
            'intEnumSet': [
              1,
              2,
            ],
            'intEnumMap': {
              'a': 1,
              'b': 2,
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/XmlIntEnums',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [XmlIntEnumsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlIntEnums (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlIntEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlIntEnums',
          documentation: 'Serializes simple scalar properties',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlIntEnumsInputOutput>\n    <intEnum1>1</intEnum1>\n    <intEnum2>2</intEnum2>\n    <intEnum3>3</intEnum3>\n    <intEnumList>\n        <member>1</member>\n        <member>2</member>\n    </intEnumList>\n    <intEnumSet>\n        <member>1</member>\n        <member>2</member>\n    </intEnumSet>\n    <intEnumMap>\n        <entry>\n            <key>a</key>\n            <value>1</value>\n        </entry>\n        <entry>\n            <key>b</key>\n            <value>2</value>\n        </entry>\n    </intEnumMap>\n</XmlIntEnumsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'intEnum1': 1,
            'intEnum2': 2,
            'intEnum3': 3,
            'intEnumList': [
              1,
              2,
            ],
            'intEnumSet': [
              1,
              2,
            ],
            'intEnumMap': {
              'a': 1,
              'b': 2,
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlIntEnumsInputOutputRestXmlSerializer()],
      );
    },
  );
}

class XmlIntEnumsInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlIntEnumsInputOutput> {
  const XmlIntEnumsInputOutputRestXmlSerializer()
      : super('XmlIntEnumsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlIntEnumsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.XmlIntEnumsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlIntEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'intEnum1':
          if (value != null) {
            result.intEnum1 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.IntegerEnum),
            ) as _i6.IntegerEnum);
          }
          break;
        case 'intEnum2':
          if (value != null) {
            result.intEnum2 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.IntegerEnum),
            ) as _i6.IntegerEnum);
          }
          break;
        case 'intEnum3':
          if (value != null) {
            result.intEnum3 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.IntegerEnum),
            ) as _i6.IntegerEnum);
          }
          break;
        case 'intEnumList':
          if (value != null) {
            result.intEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i6.IntegerEnum)],
              ),
            ) as _i7.BuiltList<_i6.IntegerEnum>));
          }
          break;
        case 'intEnumMap':
          if (value != null) {
            result.intEnumMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltMap,
                [
                  FullType(String),
                  FullType(_i6.IntegerEnum),
                ],
              ),
            ) as _i7.BuiltMap<String, _i6.IntegerEnum>));
          }
          break;
        case 'intEnumSet':
          if (value != null) {
            result.intEnumSet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltSet,
                [FullType(_i6.IntegerEnum)],
              ),
            ) as _i7.BuiltSet<_i6.IntegerEnum>));
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
