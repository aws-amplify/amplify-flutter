// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.xml_maps_xml_name_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/greeting_struct.dart'
    as _i7;
import 'package:aws_query_v2/src/query_protocol/model/xml_maps_xml_name_output.dart'
    as _i5;
import 'package:aws_query_v2/src/query_protocol/operation/xml_maps_xml_name_operation.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryQueryXmlMapsXmlName (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlMapsXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryQueryXmlMapsXmlName',
          documentation: 'Serializes XML lists',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlMapsXmlNameResponse xmlns="https://example.com/">\n    <XmlMapsXmlNameResult>\n        <myMap>\n            <entry>\n                <Attribute>foo</Attribute>\n                <Setting>\n                    <hi>there</hi>\n                </Setting>\n            </entry>\n            <entry>\n                <Attribute>baz</Attribute>\n                <Setting>\n                    <hi>bye</hi>\n                </Setting>\n            </entry>\n        </myMap>\n    </XmlMapsXmlNameResult>\n</XmlMapsXmlNameResponse>\n',
          bodyMediaType: 'application/xml',
          params: {
            'myMap': {
              'foo': {'hi': 'there'},
              'baz': {'hi': 'bye'},
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
          XmlMapsXmlNameOutputAwsQuerySerializer(),
          GreetingStructAwsQuerySerializer(),
        ],
      );
    },
  );
}

class XmlMapsXmlNameOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlMapsXmlNameOutput> {
  const XmlMapsXmlNameOutputAwsQuerySerializer()
      : super('XmlMapsXmlNameOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlMapsXmlNameOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.XmlMapsXmlNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlMapsXmlNameOutputBuilder();
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
                FullType(_i7.GreetingStruct),
              ],
            ),
          ) as _i6.BuiltMap<String, _i7.GreetingStruct>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.XmlMapsXmlNameOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class GreetingStructAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i7.GreetingStruct> {
  const GreetingStructAwsQuerySerializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [_i7.GreetingStruct];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i7.GreetingStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.GreetingStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hi':
          result.hi = (serializers.deserialize(
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
    _i7.GreetingStruct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
