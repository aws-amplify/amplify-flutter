// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library ec2_query_v2.ec2_protocol.test.ignores_wrapping_xml_name_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/ignores_wrapping_xml_name_output.dart';
import 'package:ec2_query_v2/src/ec2_protocol/operation/ignores_wrapping_xml_name_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'Ec2IgnoresWrappingXmlName (response)',
    () async {
      await _i2.httpResponseTest(
        operation: IgnoresWrappingXmlNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'Ec2IgnoresWrappingXmlName',
          documentation:
              'The xmlName trait on the output structure is ignored in the ec2 protocol',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              '<IgnoresWrappingXmlNameResponse xmlns="https://example.com/">\n    <foo>bar</foo>\n    <RequestId>requestid</RequestId>\n</IgnoresWrappingXmlNameResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'foo': 'bar'},
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
          IgnoresWrappingXmlNameOutputEc2QuerySerializer()
        ],
      );
    },
  );
}

class IgnoresWrappingXmlNameOutputEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<IgnoresWrappingXmlNameOutput> {
  const IgnoresWrappingXmlNameOutputEc2QuerySerializer()
      : super('IgnoresWrappingXmlNameOutput');

  @override
  Iterable<Type> get types => const [IgnoresWrappingXmlNameOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];

  @override
  IgnoresWrappingXmlNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IgnoresWrappingXmlNameOutputBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IgnoresWrappingXmlNameOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
