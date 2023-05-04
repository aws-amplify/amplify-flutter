// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.xml_int_enums_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/integer_enum.dart' as _i6;
import 'package:aws_query_v2/src/query_protocol/model/xml_int_enums_output.dart'
    as _i5;
import 'package:aws_query_v2/src/query_protocol/operation/xml_int_enums_operation.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryXmlIntEnums (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlIntEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlIntEnums',
          documentation: 'Serializes simple scalar properties',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlIntEnumsResponse xmlns="https://example.com/">\n    <XmlIntEnumsResult>\n        <intEnum1>1</intEnum1>\n        <intEnum2>2</intEnum2>\n        <intEnum3>3</intEnum3>\n        <intEnumList>\n            <member>1</member>\n            <member>2</member>\n        </intEnumList>\n        <intEnumSet>\n            <member>1</member>\n            <member>2</member>\n        </intEnumSet>\n        <intEnumMap>\n            <entry>\n                <key>a</key>\n                <value>1</value>\n            </entry>\n            <entry>\n                <key>b</key>\n                <value>2</value>\n            </entry>\n        </intEnumMap>\n    </XmlIntEnumsResult>\n</XmlIntEnumsResponse>\n',
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
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlIntEnumsOutputAwsQuerySerializer()],
      );
    },
  );
}

class XmlIntEnumsOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlIntEnumsOutput> {
  const XmlIntEnumsOutputAwsQuerySerializer() : super('XmlIntEnumsOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlIntEnumsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.XmlIntEnumsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlIntEnumsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'intEnum1':
          result.intEnum1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.IntegerEnum),
          ) as _i6.IntegerEnum);
        case 'intEnum2':
          result.intEnum2 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.IntegerEnum),
          ) as _i6.IntegerEnum);
        case 'intEnum3':
          result.intEnum3 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.IntegerEnum),
          ) as _i6.IntegerEnum);
        case 'intEnumList':
          result.intEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i6.IntegerEnum)],
            ),
          ) as _i7.BuiltList<_i6.IntegerEnum>));
        case 'intEnumSet':
          result.intEnumSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltSet,
              [FullType(_i6.IntegerEnum)],
            ),
          ) as _i7.BuiltSet<_i6.IntegerEnum>));
        case 'intEnumMap':
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
