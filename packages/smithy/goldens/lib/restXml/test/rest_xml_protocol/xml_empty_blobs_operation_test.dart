// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.xml_empty_blobs_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i6;

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_blobs_input_output.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/xml_empty_blobs_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlEmptyBlobs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlEmptyBlobsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlEmptyBlobs',
          documentation: 'Empty blobs are deserialized as empty string',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlBlobsInputOutput>\n    <data></data>\n</XmlBlobsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'data': ''},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [XmlBlobsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlEmptySelfClosedBlobs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlEmptyBlobsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlEmptySelfClosedBlobs',
          documentation:
              'Empty self closed blobs are deserialized as empty string',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '<XmlBlobsInputOutput>\n    <data/>\n</XmlBlobsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'data': ''},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [XmlBlobsInputOutputRestXmlSerializer()],
      );
    },
  );
}

class XmlBlobsInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlBlobsInputOutput> {
  const XmlBlobsInputOutputRestXmlSerializer() : super('XmlBlobsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlBlobsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.XmlBlobsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlBlobsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'data':
          if (value != null) {
            result.data = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.Uint8List),
            ) as _i6.Uint8List);
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
