// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.greeting_with_errors_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/complex_error.dart'
    as _i6;
import 'package:aws_query_v2/src/query_protocol/model/complex_nested_error_data.dart'
    as _i9;
import 'package:aws_query_v2/src/query_protocol/model/custom_code_error.dart'
    as _i7;
import 'package:aws_query_v2/src/query_protocol/model/greeting_with_errors_output.dart'
    as _i5;
import 'package:aws_query_v2/src/query_protocol/model/invalid_greeting.dart'
    as _i8;
import 'package:aws_query_v2/src/query_protocol/operation/greeting_with_errors_operation.dart'
    as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryGreetingWithErrors (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryGreetingWithErrors',
          documentation:
              'Ensures that operations with errors successfully know how to deserialize the successful response',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<GreetingWithErrorsResponse xmlns="https://example.com/">\n    <GreetingWithErrorsResult>\n        <greeting>Hello</greeting>\n    </GreetingWithErrorsResult>\n</GreetingWithErrorsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'greeting': 'Hello'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [GreetingWithErrorsOutputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryComplexError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i4.Unit,
          _i4.Unit,
          _i5.GreetingWithErrorsOutput,
          _i5.GreetingWithErrorsOutput,
          _i6.ComplexError>(
        operation: _i3.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryComplexError',
          documentation: null,
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<ErrorResponse>\n   <Error>\n      <Type>Sender</Type>\n      <Code>ComplexError</Code>\n      <TopLevel>Top level</TopLevel>\n      <Nested>\n          <Foo>bar</Foo>\n      </Nested>\n   </Error>\n   <RequestId>foo-id</RequestId>\n</ErrorResponse>\n',
          bodyMediaType: 'application/xml',
          params: {
            'TopLevel': 'Top level',
            'Nested': {'Foo': 'bar'},
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [
          ComplexErrorAwsQuerySerializer(),
          ComplexNestedErrorDataAwsQuerySerializer(),
        ],
      );
    },
  );
  _i1.test(
    'QueryCustomizedError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i4.Unit,
          _i4.Unit,
          _i5.GreetingWithErrorsOutput,
          _i5.GreetingWithErrorsOutput,
          _i7.CustomCodeError>(
        operation: _i3.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryCustomizedError',
          documentation: 'Parses customized XML errors',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<ErrorResponse>\n   <Error>\n      <Type>Sender</Type>\n      <Code>Customized</Code>\n      <Message>Hi</Message>\n   </Error>\n   <RequestId>foo-id</RequestId>\n</ErrorResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'Message': 'Hi'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 402,
        ),
        errorSerializers: const [CustomCodeErrorAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryInvalidGreetingError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i4.Unit,
          _i4.Unit,
          _i5.GreetingWithErrorsOutput,
          _i5.GreetingWithErrorsOutput,
          _i8.InvalidGreeting>(
        operation: _i3.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryInvalidGreetingError',
          documentation: 'Parses simple XML errors',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<ErrorResponse>\n   <Error>\n      <Type>Sender</Type>\n      <Code>InvalidGreeting</Code>\n      <Message>Hi</Message>\n   </Error>\n   <RequestId>foo-id</RequestId>\n</ErrorResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'Message': 'Hi'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [InvalidGreetingAwsQuerySerializer()],
      );
    },
  );
}

class GreetingWithErrorsOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.GreetingWithErrorsOutput> {
  const GreetingWithErrorsOutputAwsQuerySerializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [_i5.GreetingWithErrorsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.GreetingWithErrorsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.GreetingWithErrorsOutputBuilder();
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ComplexErrorAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i6.ComplexError> {
  const ComplexErrorAwsQuerySerializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [_i6.ComplexError];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i6.ComplexError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.ComplexErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TopLevel':
          result.topLevel = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.ComplexNestedErrorData),
          ) as _i9.ComplexNestedErrorData));
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

class ComplexNestedErrorDataAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i9.ComplexNestedErrorData> {
  const ComplexNestedErrorDataAwsQuerySerializer()
      : super('ComplexNestedErrorData');

  @override
  Iterable<Type> get types => const [_i9.ComplexNestedErrorData];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i9.ComplexNestedErrorData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i9.ComplexNestedErrorDataBuilder();
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class CustomCodeErrorAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i7.CustomCodeError> {
  const CustomCodeErrorAwsQuerySerializer() : super('CustomCodeError');

  @override
  Iterable<Type> get types => const [_i7.CustomCodeError];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i7.CustomCodeError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.CustomCodeErrorBuilder();
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class InvalidGreetingAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i8.InvalidGreeting> {
  const InvalidGreetingAwsQuerySerializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types => const [_i8.InvalidGreeting];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i8.InvalidGreeting deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i8.InvalidGreetingBuilder();
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
