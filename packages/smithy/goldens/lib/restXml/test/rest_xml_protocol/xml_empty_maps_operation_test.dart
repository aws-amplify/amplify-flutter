// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.xml_empty_maps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/greeting_struct.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_maps_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/xml_empty_maps_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('XmlEmptyMaps (request)', () async {
    await _i2.httpRequestTest(
      operation: XmlEmptyMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'XmlEmptyMaps',
        documentation: 'Serializes Empty XML maps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<XmlMapsInputOutput>\n    <myMap></myMap>\n</XmlMapsInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'myMap': {}},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        method: 'POST',
        uri: '/XmlEmptyMaps',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        XmlMapsInputOutputRestXmlSerializer(),
        GreetingStructRestXmlSerializer(),
      ],
    );
  });
  _i1.test('XmlEmptyMaps (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlEmptyMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'XmlEmptyMaps',
        documentation: 'Deserializes Empty XML maps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<XmlMapsInputOutput>\n    <myMap></myMap>\n</XmlMapsInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'myMap': {}},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 200,
      ),
      outputSerializers: const [
        XmlMapsInputOutputRestXmlSerializer(),
        GreetingStructRestXmlSerializer(),
      ],
    );
  });
  _i1.test('XmlEmptySelfClosedMaps (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlEmptyMapsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'XmlEmptySelfClosedMaps',
        documentation: 'Deserializes Empty Self-closed XML maps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '<XmlMapsInputOutput>\n    <myMap/>\n</XmlMapsInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'myMap': {}},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 200,
      ),
      outputSerializers: const [
        XmlMapsInputOutputRestXmlSerializer(),
        GreetingStructRestXmlSerializer(),
      ],
    );
  });
}

class XmlMapsInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<XmlMapsInputOutput> {
  const XmlMapsInputOutputRestXmlSerializer() : super('XmlMapsInputOutput');

  @override
  Iterable<Type> get types => const [XmlMapsInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  XmlMapsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlMapsInputOutputBuilder();
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
          result.myMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(GreetingStruct),
                  ]),
                )
                as _i4.BuiltMap<String, GreetingStruct>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlMapsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class GreetingStructRestXmlSerializer
    extends _i3.StructuredSmithySerializer<GreetingStruct> {
  const GreetingStructRestXmlSerializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [GreetingStruct];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
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
          result.hi =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
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
