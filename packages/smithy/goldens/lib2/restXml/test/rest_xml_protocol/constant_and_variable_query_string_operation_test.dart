// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.constant_and_variable_query_string_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/constant_and_variable_query_string_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/constant_and_variable_query_string_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'ConstantAndVariableQueryStringMissingOneValue (request)',
    () async {
      await _i2.httpRequestTest(
        operation: ConstantAndVariableQueryStringOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'ConstantAndVariableQueryStringMissingOneValue',
          documentation: 'Mixes constant and variable query string parameters',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'baz': 'bam'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/ConstantAndVariableQueryString',
          host: null,
          resolvedHost: null,
          queryParams: [
            'foo=bar',
            'baz=bam',
          ],
          forbidQueryParams: ['maybeSet'],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          ConstantAndVariableQueryStringInputRestXmlSerializer()
        ],
      );
    },
  );
  _i1.test(
    'ConstantAndVariableQueryStringAllValues (request)',
    () async {
      await _i2.httpRequestTest(
        operation: ConstantAndVariableQueryStringOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'ConstantAndVariableQueryStringAllValues',
          documentation: 'Mixes constant and variable query string parameters',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'baz': 'bam',
            'maybeSet': 'yes',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/ConstantAndVariableQueryString',
          host: null,
          resolvedHost: null,
          queryParams: [
            'foo=bar',
            'baz=bam',
            'maybeSet=yes',
          ],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          ConstantAndVariableQueryStringInputRestXmlSerializer()
        ],
      );
    },
  );
}

class ConstantAndVariableQueryStringInputRestXmlSerializer extends _i3
    .StructuredSmithySerializer<ConstantAndVariableQueryStringInput> {
  const ConstantAndVariableQueryStringInputRestXmlSerializer()
      : super('ConstantAndVariableQueryStringInput');

  @override
  Iterable<Type> get types => const [ConstantAndVariableQueryStringInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  ConstantAndVariableQueryStringInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConstantAndVariableQueryStringInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'baz':
          result.baz = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'maybeSet':
          result.maybeSet = (serializers.deserialize(
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
    ConstantAndVariableQueryStringInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
