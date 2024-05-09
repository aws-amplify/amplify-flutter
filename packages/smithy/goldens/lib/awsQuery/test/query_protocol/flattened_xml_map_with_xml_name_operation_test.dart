// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.flattened_xml_map_with_xml_name_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/flattened_xml_map_with_xml_name_output.dart';
import 'package:aws_query_v1/src/query_protocol/operation/flattened_xml_map_with_xml_name_operation.dart';
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryQueryFlattenedXmlMapWithXmlName (response)',
    () async {
      await _i2.httpResponseTest(
        operation: FlattenedXmlMapWithXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryQueryFlattenedXmlMapWithXmlName',
          documentation:
              'Serializes flattened XML maps in responses that have xmlName on members',
          protocol: _i3.ShapeId(
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

class FlattenedXmlMapWithXmlNameOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<FlattenedXmlMapWithXmlNameOutput> {
  const FlattenedXmlMapWithXmlNameOutputAwsQuerySerializer()
      : super('FlattenedXmlMapWithXmlNameOutput');

  @override
  Iterable<Type> get types => const [FlattenedXmlMapWithXmlNameOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  FlattenedXmlMapWithXmlNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlattenedXmlMapWithXmlNameOutputBuilder();
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
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FlattenedXmlMapWithXmlNameOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
