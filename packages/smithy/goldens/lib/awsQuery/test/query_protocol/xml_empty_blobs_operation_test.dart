// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.xml_empty_blobs_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i6;

import 'package:aws_query_v1/src/query_protocol/model/xml_blobs_output.dart'
    as _i5;
import 'package:aws_query_v1/src/query_protocol/operation/xml_empty_blobs_operation.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryXmlEmptyBlobs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlEmptyBlobsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlEmptyBlobs',
          documentation: 'Empty blobs are deserialized as empty string',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlEmptyBlobsResponse xmlns="https://example.com/">\n    <XmlEmptyBlobsResult>\n        <data></data>\n    </XmlEmptyBlobsResult>\n</XmlEmptyBlobsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'data': ''},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [XmlBlobsOutputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryXmlEmptySelfClosedBlobs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlEmptyBlobsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlEmptySelfClosedBlobs',
          documentation:
              'Empty self closed blobs are deserialized as empty string',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlEmptyBlobsResponse xmlns="https://example.com/">\n    <XmlEmptyBlobsResult>\n        <data/>\n    </XmlEmptyBlobsResult>\n</XmlEmptyBlobsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'data': ''},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [XmlBlobsOutputAwsQuerySerializer()],
      );
    },
  );
}

class XmlBlobsOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlBlobsOutput> {
  const XmlBlobsOutputAwsQuerySerializer() : super('XmlBlobsOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlBlobsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.XmlBlobsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlBlobsOutputBuilder();
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
          result.data = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Uint8List),
          ) as _i6.Uint8List);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.XmlBlobsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
