// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.ignores_wrapping_xml_name_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/ignores_wrapping_xml_name_output.dart'
    as _i5;
import 'package:aws_query_v2/src/query_protocol/operation/ignores_wrapping_xml_name_operation.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryIgnoresWrappingXmlName (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.IgnoresWrappingXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryIgnoresWrappingXmlName',
          documentation:
              'The xmlName trait on the output structure is ignored in AWS Query',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<IgnoresWrappingXmlNameResponse xmlns="https://example.com/">\n    <IgnoresWrappingXmlNameResult>\n        <foo>bar</foo>\n    </IgnoresWrappingXmlNameResult>\n</IgnoresWrappingXmlNameResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'foo': 'bar'},
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
          IgnoresWrappingXmlNameOutputAwsQuerySerializer()
        ],
      );
    },
  );
}

class IgnoresWrappingXmlNameOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.IgnoresWrappingXmlNameOutput> {
  const IgnoresWrappingXmlNameOutputAwsQuerySerializer()
      : super('IgnoresWrappingXmlNameOutput');

  @override
  Iterable<Type> get types => const [_i5.IgnoresWrappingXmlNameOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.IgnoresWrappingXmlNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.IgnoresWrappingXmlNameOutputBuilder();
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
