// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.recursive_shapes_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/recursive_shapes_input_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/recursive_shapes_input_output_nested1.dart'
    as _i6;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/recursive_shapes_input_output_nested2.dart'
    as _i7;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/recursive_shapes_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RecursiveShapes (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.RecursiveShapesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RecursiveShapes',
          documentation: 'Serializes recursive structures',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<RecursiveShapesInputOutput>\n    <nested>\n        <foo>Foo1</foo>\n        <nested>\n            <bar>Bar1</bar>\n            <recursiveMember>\n                <foo>Foo2</foo>\n                <nested>\n                    <bar>Bar2</bar>\n                </nested>\n            </recursiveMember>\n        </nested>\n    </nested>\n</RecursiveShapesInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'nested': {
              'foo': 'Foo1',
              'nested': {
                'bar': 'Bar1',
                'recursiveMember': {
                  'foo': 'Foo2',
                  'nested': {'bar': 'Bar2'},
                },
              },
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/RecursiveShapes',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          RecursiveShapesInputOutputRestXmlSerializer(),
          RecursiveShapesInputOutputNested1RestXmlSerializer(),
          RecursiveShapesInputOutputNested2RestXmlSerializer(),
        ],
      );
    },
  );
  _i1.test(
    'RecursiveShapes (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.RecursiveShapesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RecursiveShapes',
          documentation: 'Serializes recursive structures',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<RecursiveShapesInputOutput>\n    <nested>\n        <foo>Foo1</foo>\n        <nested>\n            <bar>Bar1</bar>\n            <recursiveMember>\n                <foo>Foo2</foo>\n                <nested>\n                    <bar>Bar2</bar>\n                </nested>\n            </recursiveMember>\n        </nested>\n    </nested>\n</RecursiveShapesInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'nested': {
              'foo': 'Foo1',
              'nested': {
                'bar': 'Bar1',
                'recursiveMember': {
                  'foo': 'Foo2',
                  'nested': {'bar': 'Bar2'},
                },
              },
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
          RecursiveShapesInputOutputRestXmlSerializer(),
          RecursiveShapesInputOutputNested1RestXmlSerializer(),
          RecursiveShapesInputOutputNested2RestXmlSerializer(),
        ],
      );
    },
  );
}

class RecursiveShapesInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.RecursiveShapesInputOutput> {
  const RecursiveShapesInputOutputRestXmlSerializer()
      : super('RecursiveShapesInputOutput');

  @override
  Iterable<Type> get types => const [_i5.RecursiveShapesInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.RecursiveShapesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.RecursiveShapesInputOutputBuilder();
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
              specifiedType:
                  const FullType(_i6.RecursiveShapesInputOutputNested1),
            ) as _i6.RecursiveShapesInputOutputNested1));
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

class RecursiveShapesInputOutputNested1RestXmlSerializer extends _i4
    .StructuredSmithySerializer<_i6.RecursiveShapesInputOutputNested1> {
  const RecursiveShapesInputOutputNested1RestXmlSerializer()
      : super('RecursiveShapesInputOutputNested1');

  @override
  Iterable<Type> get types => const [_i6.RecursiveShapesInputOutputNested1];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i6.RecursiveShapesInputOutputNested1 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.RecursiveShapesInputOutputNested1Builder();
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
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i7.RecursiveShapesInputOutputNested2),
            ) as _i7.RecursiveShapesInputOutputNested2));
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

class RecursiveShapesInputOutputNested2RestXmlSerializer extends _i4
    .StructuredSmithySerializer<_i7.RecursiveShapesInputOutputNested2> {
  const RecursiveShapesInputOutputNested2RestXmlSerializer()
      : super('RecursiveShapesInputOutputNested2');

  @override
  Iterable<Type> get types => const [_i7.RecursiveShapesInputOutputNested2];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i7.RecursiveShapesInputOutputNested2 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.RecursiveShapesInputOutputNested2Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'bar':
          if (value != null) {
            result.bar = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'recursiveMember':
          if (value != null) {
            result.recursiveMember.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i6.RecursiveShapesInputOutputNested1),
            ) as _i6.RecursiveShapesInputOutputNested1));
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
