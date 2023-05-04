// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.flattened_xml_map_with_xml_name_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/flattened_xml_map_with_xml_name_output.dart'
    as _i5;
import 'package:aws_query_v1/src/query_protocol/operation/flattened_xml_map_with_xml_name_operation.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryQueryFlattenedXmlMapWithXmlName (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.FlattenedXmlMapWithXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryQueryFlattenedXmlMapWithXmlName',
          documentation:
              'Serializes flattened XML maps in responses that have xmlName on members',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<FlattenedXmlMapWithXmlNameResponse xmlns="https://example.com/">\n    <FlattenedXmlMapWithXmlNameResult>\n        <KVP>\n            <K>a</K>\n            <V>A</V>\n        </KVP>\n        <KVP>\n            <K>b</K>\n            <V>B</V>\n        </KVP>\n    </FlattenedXmlMapWithXmlNameResult>\n</FlattenedXmlMapWithXmlNameResponse>',
          bodyMediaType: 'application/xml',
          params: {
            'myMap': {
              'a': 'A',
              'b': 'B',
            }
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
        outputSerializers: const [
          FlattenedXmlMapWithXmlNameOutputAwsQuerySerializer()
        ],
      );
    },
  );
}

class FlattenedXmlMapWithXmlNameOutputAwsQuerySerializer extends _i4
    .StructuredSmithySerializer<_i5.FlattenedXmlMapWithXmlNameOutput> {
  const FlattenedXmlMapWithXmlNameOutputAwsQuerySerializer()
      : super('FlattenedXmlMapWithXmlNameOutput');

  @override
  Iterable<Type> get types => const [_i5.FlattenedXmlMapWithXmlNameOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.FlattenedXmlMapWithXmlNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.FlattenedXmlMapWithXmlNameOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'myMap':
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
