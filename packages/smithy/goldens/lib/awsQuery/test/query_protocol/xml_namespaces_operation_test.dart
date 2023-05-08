// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.xml_namespaces_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/xml_namespace_nested.dart'
    as _i6;
import 'package:aws_query_v1/src/query_protocol/model/xml_namespaces_output.dart'
    as _i5;
import 'package:aws_query_v1/src/query_protocol/operation/xml_namespaces_operation.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryXmlNamespaces (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlNamespacesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlNamespaces',
          documentation: 'Serializes XML namespaces',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlNamespacesResponse xmlns="https://example.com/">\n    <XmlNamespacesResult>\n        <nested>\n            <foo xmlns:baz="http://baz.com">Foo</foo>\n            <values xmlns="http://qux.com">\n                <member xmlns="http://bux.com">Bar</member>\n                <member xmlns="http://bux.com">Baz</member>\n            </values>\n        </nested>\n    </XmlNamespacesResult>\n</XmlNamespacesResponse>\n',
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
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          XmlNamespacesOutputAwsQuerySerializer(),
          XmlNamespaceNestedAwsQuerySerializer(),
        ],
      );
    },
  );
}

class XmlNamespacesOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlNamespacesOutput> {
  const XmlNamespacesOutputAwsQuerySerializer() : super('XmlNamespacesOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlNamespacesOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.XmlNamespacesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlNamespacesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.XmlNamespaceNested),
          ) as _i6.XmlNamespaceNested));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.XmlNamespacesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class XmlNamespaceNestedAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i6.XmlNamespaceNested> {
  const XmlNamespaceNestedAwsQuerySerializer() : super('XmlNamespaceNested');

  @override
  Iterable<Type> get types => const [_i6.XmlNamespaceNested];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'values':
          result.values.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(String)],
            ),
          ) as _i7.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i6.XmlNamespaceNested object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
