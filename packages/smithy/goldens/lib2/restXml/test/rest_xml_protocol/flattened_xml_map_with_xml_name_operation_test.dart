// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.flattened_xml_map_with_xml_name_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/flattened_xml_map_with_xml_name_input_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/flattened_xml_map_with_xml_name_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'FlattenedXmlMapWithXmlName (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.FlattenedXmlMapWithXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'FlattenedXmlMapWithXmlName',
          documentation:
              'Serializes flattened XML maps in requests that have xmlName on members',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<FlattenedXmlMapWithXmlNameInputOutput>\n    <KVP>\n        <K>a</K>\n        <V>A</V>\n    </KVP>\n    <KVP>\n        <K>b</K>\n        <V>B</V>\n    </KVP>\n</FlattenedXmlMapWithXmlNameInputOutput>',
          bodyMediaType: 'application/xml',
          params: {
            'myMap': {
              'a': 'A',
              'b': 'B',
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/FlattenedXmlMapWithXmlName',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          FlattenedXmlMapWithXmlNameInputOutputRestXmlSerializer()
        ],
      );
    },
  );
  _i1.test(
    'FlattenedXmlMapWithXmlName (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.FlattenedXmlMapWithXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'FlattenedXmlMapWithXmlName',
          documentation:
              'Serializes flattened XML maps in responses that have xmlName on members',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<FlattenedXmlMapWithXmlNameInputOutput>\n    <KVP>\n        <K>a</K>\n        <V>A</V>\n    </KVP>\n    <KVP>\n        <K>b</K>\n        <V>B</V>\n    </KVP>\n</FlattenedXmlMapWithXmlNameInputOutput>',
          bodyMediaType: 'application/xml',
          params: {
            'myMap': {
              'a': 'A',
              'b': 'B',
            }
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
        outputSerializers: const [
          FlattenedXmlMapWithXmlNameInputOutputRestXmlSerializer()
        ],
      );
    },
  );
}

class FlattenedXmlMapWithXmlNameInputOutputRestXmlSerializer extends _i4
    .StructuredSmithySerializer<_i5.FlattenedXmlMapWithXmlNameInputOutput> {
  const FlattenedXmlMapWithXmlNameInputOutputRestXmlSerializer()
      : super('FlattenedXmlMapWithXmlNameInputOutput');

  @override
  Iterable<Type> get types => const [_i5.FlattenedXmlMapWithXmlNameInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.FlattenedXmlMapWithXmlNameInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.FlattenedXmlMapWithXmlNameInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'myMap':
          if (value != null) {
            result.myMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i6.BuiltMap<String, String>));
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
