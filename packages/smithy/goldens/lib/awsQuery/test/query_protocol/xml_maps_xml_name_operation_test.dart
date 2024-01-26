// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.xml_maps_xml_name_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/greeting_struct.dart';
import 'package:aws_query_v1/src/query_protocol/model/xml_maps_xml_name_output.dart';
import 'package:aws_query_v1/src/query_protocol/operation/xml_maps_xml_name_operation.dart';
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryQueryXmlMapsXmlName (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlMapsXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryQueryXmlMapsXmlName',
          documentation: 'Serializes XML lists',
          protocol: _i3.ShapeId(
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
    extends _i3.StructuredSmithySerializer<XmlMapsXmlNameOutput> {
  const XmlMapsXmlNameOutputAwsQuerySerializer()
      : super('XmlMapsXmlNameOutput');

  @override
  Iterable<Type> get types => const [XmlMapsXmlNameOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  XmlMapsXmlNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlMapsXmlNameOutputBuilder();
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
                FullType(GreetingStruct),
              ],
            ),
          ) as _i4.BuiltMap<String, GreetingStruct>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlMapsXmlNameOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class GreetingStructAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GreetingStruct> {
  const GreetingStructAwsQuerySerializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [GreetingStruct];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  GreetingStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingStructBuilder();
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
    GreetingStruct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
