// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.xml_blobs_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i4;

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_blobs_input_output.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_blobs_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('XmlBlobs (request)', () async {
    await _i2.httpRequestTest(
      operation: XmlBlobsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'XmlBlobs',
        documentation: 'Blobs are base64 encoded',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<XmlBlobsInputOutput>\n    <data>dmFsdWU=</data>\n</XmlBlobsInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'data': 'value'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/XmlBlobs',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [XmlBlobsInputOutputRestXmlSerializer()],
    );
  });
  _i1.test('XmlBlobs (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlBlobsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'XmlBlobs',
        documentation: 'Blobs are base64 encoded',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<XmlBlobsInputOutput>\n    <data>dmFsdWU=</data>\n</XmlBlobsInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'data': 'value'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [XmlBlobsInputOutputRestXmlSerializer()],
    );
  });
}

class XmlBlobsInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<XmlBlobsInputOutput> {
  const XmlBlobsInputOutputRestXmlSerializer() : super('XmlBlobsInputOutput');

  @override
  Iterable<Type> get types => const [XmlBlobsInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  XmlBlobsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlBlobsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'data':
          result.data =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(_i4.Uint8List),
                  )
                  as _i4.Uint8List);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlBlobsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
