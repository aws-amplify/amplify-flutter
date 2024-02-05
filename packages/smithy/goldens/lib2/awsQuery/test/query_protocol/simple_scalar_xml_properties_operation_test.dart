// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.simple_scalar_xml_properties_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/simple_scalar_xml_properties_output.dart';
import 'package:aws_query_v2/src/query_protocol/operation/simple_scalar_xml_properties_operation.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QuerySimpleScalarProperties (response)',
    () async {
      await _i2.httpResponseTest(
        operation: SimpleScalarXmlPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QuerySimpleScalarProperties',
          documentation: 'Serializes simple scalar properties',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<SimpleScalarXmlPropertiesResponse xmlns="https://example.com/">\n    <SimpleScalarXmlPropertiesResult>\n        <stringValue>string</stringValue>\n        <emptyStringValue/>\n        <trueBooleanValue>true</trueBooleanValue>\n        <falseBooleanValue>false</falseBooleanValue>\n        <byteValue>1</byteValue>\n        <shortValue>2</shortValue>\n        <integerValue>3</integerValue>\n        <longValue>4</longValue>\n        <floatValue>5.5</floatValue>\n        <DoubleDribble>6.5</DoubleDribble>\n    </SimpleScalarXmlPropertiesResult>\n</SimpleScalarXmlPropertiesResponse>\n',
          bodyMediaType: 'application/xml',
          params: {
            'stringValue': 'string',
            'emptyStringValue': '',
            'trueBooleanValue': true,
            'falseBooleanValue': false,
            'byteValue': 1,
            'shortValue': 2,
            'integerValue': 3,
            'longValue': 4,
            'floatValue': 5.5,
            'doubleValue': 6.5,
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
          SimpleScalarXmlPropertiesOutputAwsQuerySerializer()
        ],
      );
    },
  );
  _i1.test(
    'AwsQuerySupportsNaNFloatOutputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: SimpleScalarXmlPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsQuerySupportsNaNFloatOutputs',
          documentation: 'Supports handling NaN float values.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<SimpleScalarXmlPropertiesResponse xmlns="https://example.com/">\n    <SimpleScalarXmlPropertiesResult>\n        <floatValue>NaN</floatValue>\n        <DoubleDribble>NaN</DoubleDribble>\n    </SimpleScalarXmlPropertiesResult>\n</SimpleScalarXmlPropertiesResponse>\n',
          bodyMediaType: 'application/xml',
          params: {
            'floatValue': 'NaN',
            'doubleValue': 'NaN',
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
          SimpleScalarXmlPropertiesOutputAwsQuerySerializer()
        ],
      );
    },
  );
  _i1.test(
    'AwsQuerySupportsInfinityFloatOutputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: SimpleScalarXmlPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsQuerySupportsInfinityFloatOutputs',
          documentation: 'Supports handling Infinity float values.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<SimpleScalarXmlPropertiesResponse xmlns="https://example.com/">\n    <SimpleScalarXmlPropertiesResult>\n        <floatValue>Infinity</floatValue>\n        <DoubleDribble>Infinity</DoubleDribble>\n    </SimpleScalarXmlPropertiesResult>\n</SimpleScalarXmlPropertiesResponse>\n',
          bodyMediaType: 'application/xml',
          params: {
            'floatValue': 'Infinity',
            'doubleValue': 'Infinity',
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
          SimpleScalarXmlPropertiesOutputAwsQuerySerializer()
        ],
      );
    },
  );
  _i1.test(
    'AwsQuerySupportsNegativeInfinityFloatOutputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: SimpleScalarXmlPropertiesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsQuerySupportsNegativeInfinityFloatOutputs',
          documentation: 'Supports handling -Infinity float values.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<SimpleScalarXmlPropertiesResponse xmlns="https://example.com/">\n    <SimpleScalarXmlPropertiesResult>\n        <floatValue>-Infinity</floatValue>\n        <DoubleDribble>-Infinity</DoubleDribble>\n    </SimpleScalarXmlPropertiesResult>\n</SimpleScalarXmlPropertiesResponse>\n',
          bodyMediaType: 'application/xml',
          params: {
            'floatValue': '-Infinity',
            'doubleValue': '-Infinity',
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
          SimpleScalarXmlPropertiesOutputAwsQuerySerializer()
        ],
      );
    },
  );
}

class SimpleScalarXmlPropertiesOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<SimpleScalarXmlPropertiesOutput> {
  const SimpleScalarXmlPropertiesOutputAwsQuerySerializer()
      : super('SimpleScalarXmlPropertiesOutput');

  @override
  Iterable<Type> get types => const [SimpleScalarXmlPropertiesOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  SimpleScalarXmlPropertiesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleScalarXmlPropertiesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'stringValue':
          result.stringValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'emptyStringValue':
          result.emptyStringValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'trueBooleanValue':
          result.trueBooleanValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'falseBooleanValue':
          result.falseBooleanValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'byteValue':
          result.byteValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'shortValue':
          result.shortValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'integerValue':
          result.integerValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'longValue':
          result.longValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
        case 'floatValue':
          result.floatValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'doubleValue':
          result.doubleValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SimpleScalarXmlPropertiesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
