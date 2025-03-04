// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.xml_int_enums_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/xml_int_enums_output.dart';
import 'package:aws_query_v1/src/query_protocol/operation/xml_int_enums_operation.dart';
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryXmlIntEnums (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlIntEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlIntEnums',
          documentation: 'Serializes simple scalar properties',
          protocol: _i3.ShapeId(
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
    extends _i3.StructuredSmithySerializer<XmlIntEnumsOutput> {
  const XmlIntEnumsOutputAwsQuerySerializer() : super('XmlIntEnumsOutput');

  @override
  Iterable<Type> get types => const [XmlIntEnumsOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  XmlIntEnumsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlIntEnumsOutputBuilder();
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
            specifiedType: const FullType(int),
          ) as int);
        case 'intEnum2':
          result.intEnum2 = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'intEnum3':
          result.intEnum3 = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'intEnumList':
          result.intEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(int)],
            ),
          ) as _i4.BuiltList<int>));
        case 'intEnumSet':
          result.intEnumSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltSet,
              [FullType(int)],
            ),
          ) as _i4.BuiltSet<int>));
        case 'intEnumMap':
          result.intEnumMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(int),
              ],
            ),
          ) as _i4.BuiltMap<String, int>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlIntEnumsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
