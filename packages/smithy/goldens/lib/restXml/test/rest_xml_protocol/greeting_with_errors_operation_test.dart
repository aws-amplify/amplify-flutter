// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.greeting_with_errors_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/complex_error.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/complex_nested_error_data.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/greeting_with_errors_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/invalid_greeting.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/greeting_with_errors_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'GreetingWithErrors (response)',
    () async {
      await _i2.httpResponseTest(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'GreetingWithErrors',
          documentation:
              'Ensures that operations with errors successfully know how to deserialize the successful response',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'greeting': 'Hello'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'X-Greeting': 'Hello'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [GreetingWithErrorsOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'ComplexError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.Unit,
          _i3.Unit,
          GreetingWithErrorsOutputPayload,
          GreetingWithErrorsOutput,
          ComplexError>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'ComplexError',
          documentation: null,
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<ErrorResponse>\n   <Error>\n      <Type>Sender</Type>\n      <Code>ComplexError</Code>\n      <Message>Hi</Message>\n      <TopLevel>Top level</TopLevel>\n      <Nested>\n          <Foo>bar</Foo>\n      </Nested>\n   </Error>\n   <RequestId>foo-id</RequestId>\n</ErrorResponse>\n',
          bodyMediaType: 'application/xml',
          params: {
            'Header': 'Header',
            'TopLevel': 'Top level',
            'Nested': {'Foo': 'bar'},
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/xml',
            'X-Header': 'Header',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [
          ComplexErrorRestXmlSerializer(),
          ComplexNestedErrorDataRestXmlSerializer(),
        ],
      );
    },
  );
  _i1.test(
    'InvalidGreetingError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.Unit,
          _i3.Unit,
          GreetingWithErrorsOutputPayload,
          GreetingWithErrorsOutput,
          InvalidGreeting>(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'InvalidGreetingError',
          documentation: 'Parses simple XML errors',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<ErrorResponse>\n   <Error>\n      <Type>Sender</Type>\n      <Code>InvalidGreeting</Code>\n      <Message>Hi</Message>\n      <AnotherSetting>setting</AnotherSetting>\n   </Error>\n   <RequestId>foo-id</RequestId>\n</ErrorResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'Message': 'Hi'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [InvalidGreetingRestXmlSerializer()],
      );
    },
  );
}

class GreetingWithErrorsOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<GreetingWithErrorsOutput> {
  const GreetingWithErrorsOutputRestXmlSerializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [GreetingWithErrorsOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  GreetingWithErrorsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingWithErrorsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'greeting':
          result.greeting = (serializers.deserialize(
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
    GreetingWithErrorsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ComplexErrorRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ComplexError> {
  const ComplexErrorRestXmlSerializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [ComplexError];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  ComplexError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplexErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Header':
          result.header = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TopLevel':
          result.topLevel = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ComplexNestedErrorData),
          ) as ComplexNestedErrorData));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ComplexError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ComplexNestedErrorDataRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ComplexNestedErrorData> {
  const ComplexNestedErrorDataRestXmlSerializer()
      : super('ComplexNestedErrorData');

  @override
  Iterable<Type> get types => const [ComplexNestedErrorData];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  ComplexNestedErrorData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplexNestedErrorDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Foo':
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
    ComplexNestedErrorData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class InvalidGreetingRestXmlSerializer
    extends _i3.StructuredSmithySerializer<InvalidGreeting> {
  const InvalidGreetingRestXmlSerializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types => const [InvalidGreeting];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  InvalidGreeting deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
          result.message = (serializers.deserialize(
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
    InvalidGreeting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
