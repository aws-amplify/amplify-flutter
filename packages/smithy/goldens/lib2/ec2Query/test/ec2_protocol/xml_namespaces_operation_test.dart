// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library ec2_query_v2.ec2_protocol.test.xml_namespaces_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_namespace_nested.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/xml_namespaces_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/operation/xml_namespaces_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'Ec2XmlNamespaces (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlNamespacesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'Ec2XmlNamespaces',
          documentation: 'Serializes XML namespaces',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              '<XmlNamespacesResponse xmlns="https://example.com/">\n    <nested>\n        <foo xmlns:baz="http://baz.com">Foo</foo>\n        <values xmlns="http://qux.com">\n            <member xmlns="http://bux.com">Bar</member>\n            <member xmlns="http://bux.com">Baz</member>\n        </values>\n    </nested>\n    <RequestId>requestid</RequestId>\n</XmlNamespacesResponse>\n',
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
          headers: {'Content-Type': 'text/xml;charset=UTF-8'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          XmlNamespacesOutputEc2QuerySerializer(),
          XmlNamespaceNestedEc2QuerySerializer(),
        ],
      );
    },
  );
}

class XmlNamespacesOutputEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<XmlNamespacesOutput> {
  const XmlNamespacesOutputEc2QuerySerializer() : super('XmlNamespacesOutput');

  @override
  Iterable<Type> get types => const [XmlNamespacesOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];

  @override
  XmlNamespacesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlNamespacesOutputBuilder();
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
            specifiedType: const FullType(XmlNamespaceNested),
          ) as XmlNamespaceNested));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlNamespacesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class XmlNamespaceNestedEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<XmlNamespaceNested> {
  const XmlNamespaceNestedEc2QuerySerializer() : super('XmlNamespaceNested');

  @override
  Iterable<Type> get types => const [XmlNamespaceNested];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];

  @override
  XmlNamespaceNested deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlNamespaceNestedBuilder();
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
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlNamespaceNested object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
