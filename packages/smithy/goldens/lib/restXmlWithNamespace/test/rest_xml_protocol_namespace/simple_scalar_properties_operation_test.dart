// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_with_namespace_v1.rest_xml_protocol_namespace.test.simple_scalar_properties_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/nested_with_namespace.dart';
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/model/simple_scalar_properties_input_output.dart';
import 'package:rest_xml_with_namespace_v1/src/rest_xml_protocol_namespace/operation/simple_scalar_properties_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('XmlNamespaceSimpleScalarProperties (request)', () async {
    await _i2.httpRequestTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'XmlNamespaceSimpleScalarProperties',
        documentation: 'Serializes simple scalar properties',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput xmlns="https://example.com">\n    <stringValue>string</stringValue>\n    <trueBooleanValue>true</trueBooleanValue>\n    <falseBooleanValue>false</falseBooleanValue>\n    <byteValue>1</byteValue>\n    <shortValue>2</shortValue>\n    <integerValue>3</integerValue>\n    <longValue>4</longValue>\n    <floatValue>5.5</floatValue>\n    <DoubleDribble>6.5</DoubleDribble>\n    <Nested xmlns:xsi="https://example.com" xsi:someName="nestedAttrValue"></Nested>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {
          'foo': 'Foo',
          'stringValue': 'string',
          'trueBooleanValue': true,
          'falseBooleanValue': false,
          'byteValue': 1,
          'shortValue': 2,
          'integerValue': 3,
          'longValue': 4,
          'floatValue': 5.5,
          'doubleValue': 6.5,
          'Nested': {'attrField': 'nestedAttrValue'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/SimpleScalarProperties',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
        NestedWithNamespaceRestXmlSerializer(),
      ],
    );
  });
  _i1.test('XmlNamespaceSimpleScalarProperties (response)', () async {
    await _i2.httpResponseTest(
      operation: SimpleScalarPropertiesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'XmlNamespaceSimpleScalarProperties',
        documentation: 'Serializes simple scalar properties',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<SimpleScalarPropertiesInputOutput xmlns="https://example.com">\n    <stringValue>string</stringValue>\n    <trueBooleanValue>true</trueBooleanValue>\n    <falseBooleanValue>false</falseBooleanValue>\n    <byteValue>1</byteValue>\n    <shortValue>2</shortValue>\n    <integerValue>3</integerValue>\n    <longValue>4</longValue>\n    <floatValue>5.5</floatValue>\n    <DoubleDribble>6.5</DoubleDribble>\n    <Nested xmlns:xsi="https://example.com" xsi:someName="nestedAttrValue"></Nested>\n</SimpleScalarPropertiesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {
          'foo': 'Foo',
          'stringValue': 'string',
          'trueBooleanValue': true,
          'falseBooleanValue': false,
          'byteValue': 1,
          'shortValue': 2,
          'integerValue': 3,
          'longValue': 4,
          'floatValue': 5.5,
          'doubleValue': 6.5,
          'Nested': {'attrField': 'nestedAttrValue'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml', 'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        SimpleScalarPropertiesInputOutputRestXmlSerializer(),
        NestedWithNamespaceRestXmlSerializer(),
      ],
    );
  });
}

class SimpleScalarPropertiesInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<SimpleScalarPropertiesInputOutput> {
  const SimpleScalarPropertiesInputOutputRestXmlSerializer()
    : super('SimpleScalarPropertiesInputOutput');

  @override
  Iterable<Type> get types => const [SimpleScalarPropertiesInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  SimpleScalarPropertiesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleScalarPropertiesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'stringValue':
          result.stringValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'trueBooleanValue':
          result.trueBooleanValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool);
        case 'falseBooleanValue':
          result.falseBooleanValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool);
        case 'byteValue':
          result.byteValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'shortValue':
          result.shortValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'integerValue':
          result.integerValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'longValue':
          result.longValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(_i4.Int64),
                  )
                  as _i4.Int64);
        case 'floatValue':
          result.floatValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(double),
                  )
                  as double);
        case 'Nested':
          result.nested.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(NestedWithNamespace),
                )
                as NestedWithNamespace),
          );
        case 'doubleValue':
          result.doubleValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(double),
                  )
                  as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SimpleScalarPropertiesInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class NestedWithNamespaceRestXmlSerializer
    extends _i3.StructuredSmithySerializer<NestedWithNamespace> {
  const NestedWithNamespaceRestXmlSerializer() : super('NestedWithNamespace');

  @override
  Iterable<Type> get types => const [NestedWithNamespace];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  NestedWithNamespace deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedWithNamespaceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attrField':
          result.attrField =
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
    NestedWithNamespace object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
