// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.xml_namespaces_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_namespace_nested.dart'
    as _i6;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_namespaces_input_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_namespaces_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlNamespaces (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.XmlNamespacesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlNamespaces',
          documentation: 'Serializes XML namespaces',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlNamespacesInputOutput xmlns="http://foo.com">\n    <nested>\n        <foo xmlns:baz="http://baz.com">Foo</foo>\n        <values xmlns="http://qux.com">\n            <member xmlns="http://bux.com">Bar</member>\n            <member xmlns="http://bux.com">Baz</member>\n        </values>\n    </nested>\n</XmlNamespacesInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'nested': {
              'foo': 'Foo',
              'values': [
                'Bar',
                'Baz',
              ],
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
          uri: '/XmlNamespaces',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          XmlNamespacesInputOutputRestXmlSerializer(),
          XmlNamespaceNestedRestXmlSerializer(),
        ],
      );
    },
  );
  _i1.test(
    'XmlNamespaces (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlNamespacesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlNamespaces',
          documentation: 'Serializes XML namespaces',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlNamespacesInputOutput xmlns="http://foo.com">\n    <nested>\n        <foo xmlns:baz="http://baz.com">Foo</foo>\n        <values xmlns="http://qux.com">\n            <member xmlns="http://bux.com">Bar</member>\n            <member xmlns="http://bux.com">Baz</member>\n        </values>\n    </nested>\n</XmlNamespacesInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'nested': {
              'foo': 'Foo',
              'values': [
                'Bar',
                'Baz',
              ],
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
          XmlNamespacesInputOutputRestXmlSerializer(),
          XmlNamespaceNestedRestXmlSerializer(),
        ],
      );
    },
  );
}

class XmlNamespacesInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlNamespacesInputOutput> {
  const XmlNamespacesInputOutputRestXmlSerializer()
      : super('XmlNamespacesInputOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlNamespacesInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.XmlNamespacesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlNamespacesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.XmlNamespaceNested),
            ) as _i6.XmlNamespaceNested));
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

class XmlNamespaceNestedRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i6.XmlNamespaceNested> {
  const XmlNamespaceNestedRestXmlSerializer() : super('XmlNamespaceNested');

  @override
  Iterable<Type> get types => const [_i6.XmlNamespaceNested];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i6.XmlNamespaceNested deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.XmlNamespaceNestedBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'values':
          if (value != null) {
            result.values.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(String)],
              ),
            ) as _i7.BuiltList<String>));
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
