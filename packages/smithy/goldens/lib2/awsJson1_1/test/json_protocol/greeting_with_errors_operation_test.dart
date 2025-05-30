// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library aws_json1_1_v2.json_protocol.test.greeting_with_errors_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v2/src/json_protocol/model/complex_error.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/complex_nested_error_data.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/foo_error.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/greeting_with_errors_output.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/invalid_greeting.dart';
import 'package:aws_json1_1_v2/src/json_protocol/operation/greeting_with_errors_operation.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('AwsJson11ComplexError (error)', () async {
    await _i2.httpErrorResponseTest<
      _i3.Unit,
      _i3.Unit,
      GreetingWithErrorsOutput,
      GreetingWithErrorsOutput,
      ComplexError
    >(
      operation: GreetingWithErrorsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i4.AWSCredentialsProvider(
          _i4.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11ComplexError',
        documentation: 'Parses a complex error with no message member',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{\n    "__type": "ComplexError",\n    "TopLevel": "Top level",\n    "Nested": {\n        "Foo": "bar"\n    }\n}',
        bodyMediaType: 'application/json',
        params: {
          'TopLevel': 'Top level',
          'Nested': {'Foo': 'bar'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 400,
      ),
      errorSerializers: const [
        ComplexErrorAwsJson11Serializer(),
        ComplexNestedErrorDataAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('AwsJson11EmptyComplexError (error)', () async {
    await _i2.httpErrorResponseTest<
      _i3.Unit,
      _i3.Unit,
      GreetingWithErrorsOutput,
      GreetingWithErrorsOutput,
      ComplexError
    >(
      operation: GreetingWithErrorsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i4.AWSCredentialsProvider(
          _i4.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11EmptyComplexError',
        documentation: null,
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{\n    "__type": "ComplexError"\n}',
        bodyMediaType: 'application/json',
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 400,
      ),
      errorSerializers: const [
        ComplexErrorAwsJson11Serializer(),
        ComplexNestedErrorDataAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('AwsJson11FooErrorUsingXAmznErrorType (error)', () async {
    await _i2.httpErrorResponseTest<
      _i3.Unit,
      _i3.Unit,
      GreetingWithErrorsOutput,
      GreetingWithErrorsOutput,
      FooError
    >(
      operation: GreetingWithErrorsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i4.AWSCredentialsProvider(
          _i4.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11FooErrorUsingXAmznErrorType',
        documentation:
            'Serializes the X-Amzn-ErrorType header. For an example service, see Amazon EKS.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: null,
        bodyMediaType: null,
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'X-Amzn-Errortype': 'FooError'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 500,
      ),
      errorSerializers: const [FooErrorAwsJson11Serializer()],
    );
  });
  _i1.test('AwsJson11FooErrorUsingXAmznErrorTypeWithUri (error)', () async {
    await _i2.httpErrorResponseTest<
      _i3.Unit,
      _i3.Unit,
      GreetingWithErrorsOutput,
      GreetingWithErrorsOutput,
      FooError
    >(
      operation: GreetingWithErrorsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i4.AWSCredentialsProvider(
          _i4.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11FooErrorUsingXAmznErrorTypeWithUri',
        documentation:
            'Some X-Amzn-Errortype headers contain URLs. Clients need to split the URL on \':\' and take only the first half of the string. For example, \'ValidationException:http://internal.amazon.com/example/com.amazon.example.validate/\'\nis to be interpreted as \'ValidationException\'.\n\nFor an example service see Amazon Polly.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: null,
        bodyMediaType: null,
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'X-Amzn-Errortype':
              'FooError:http://internal.amazon.com/example/com.amazon.example.validate/',
        },
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 500,
      ),
      errorSerializers: const [FooErrorAwsJson11Serializer()],
    );
  });
  _i1.test(
    'AwsJson11FooErrorUsingXAmznErrorTypeWithUriAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
        _i3.Unit,
        _i3.Unit,
        GreetingWithErrorsOutput,
        GreetingWithErrorsOutput,
        FooError
      >(
        operation: GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider: const _i4.AWSCredentialsProvider(
            _i4.AWSCredentials(
              'DUMMY-ACCESS-KEY-ID',
              'DUMMY-SECRET-ACCESS-KEY',
            ),
          ),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson11FooErrorUsingXAmznErrorTypeWithUriAndNamespace',
          documentation:
              'X-Amzn-Errortype might contain a URL and a namespace. Client should extract only the shape name. This is a pathalogical case that might not actually happen in any deployed AWS service.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Amzn-Errortype':
                'aws.protocoltests.restjson#FooError:http://internal.amazon.com/example/com.amazon.example.validate/',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson11Serializer()],
      );
    },
  );
  _i1.test('AwsJson11FooErrorUsingCode (error)', () async {
    await _i2.httpErrorResponseTest<
      _i3.Unit,
      _i3.Unit,
      GreetingWithErrorsOutput,
      GreetingWithErrorsOutput,
      FooError
    >(
      operation: GreetingWithErrorsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i4.AWSCredentialsProvider(
          _i4.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11FooErrorUsingCode',
        documentation:
            'This example uses the \'code\' property in the output rather than X-Amzn-Errortype. Some services do this though it\'s preferable to send the X-Amzn-Errortype. Client implementations must first check for the X-Amzn-Errortype and then check for a top-level \'code\' property.\n\nFor example service see Amazon S3 Glacier.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{\n    "code": "FooError"\n}',
        bodyMediaType: 'application/json',
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 500,
      ),
      errorSerializers: const [FooErrorAwsJson11Serializer()],
    );
  });
  _i1.test('AwsJson11FooErrorUsingCodeAndNamespace (error)', () async {
    await _i2.httpErrorResponseTest<
      _i3.Unit,
      _i3.Unit,
      GreetingWithErrorsOutput,
      GreetingWithErrorsOutput,
      FooError
    >(
      operation: GreetingWithErrorsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i4.AWSCredentialsProvider(
          _i4.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11FooErrorUsingCodeAndNamespace',
        documentation:
            'Some services serialize errors using code, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{\n    "code": "aws.protocoltests.restjson#FooError"\n}',
        bodyMediaType: 'application/json',
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 500,
      ),
      errorSerializers: const [FooErrorAwsJson11Serializer()],
    );
  });
  _i1.test('AwsJson11FooErrorUsingCodeUriAndNamespace (error)', () async {
    await _i2.httpErrorResponseTest<
      _i3.Unit,
      _i3.Unit,
      GreetingWithErrorsOutput,
      GreetingWithErrorsOutput,
      FooError
    >(
      operation: GreetingWithErrorsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i4.AWSCredentialsProvider(
          _i4.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11FooErrorUsingCodeUriAndNamespace',
        documentation:
            'Some services serialize errors using code, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{\n    "code": "aws.protocoltests.restjson#FooError:http://internal.amazon.com/example/com.amazon.example.validate/"\n}',
        bodyMediaType: 'application/json',
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 500,
      ),
      errorSerializers: const [FooErrorAwsJson11Serializer()],
    );
  });
  _i1.test('AwsJson11FooErrorWithDunderType (error)', () async {
    await _i2.httpErrorResponseTest<
      _i3.Unit,
      _i3.Unit,
      GreetingWithErrorsOutput,
      GreetingWithErrorsOutput,
      FooError
    >(
      operation: GreetingWithErrorsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i4.AWSCredentialsProvider(
          _i4.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11FooErrorWithDunderType',
        documentation: 'Some services serialize errors using __type.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{\n    "__type": "FooError"\n}',
        bodyMediaType: 'application/json',
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 500,
      ),
      errorSerializers: const [FooErrorAwsJson11Serializer()],
    );
  });
  _i1.test('AwsJson11FooErrorWithDunderTypeAndNamespace (error)', () async {
    await _i2.httpErrorResponseTest<
      _i3.Unit,
      _i3.Unit,
      GreetingWithErrorsOutput,
      GreetingWithErrorsOutput,
      FooError
    >(
      operation: GreetingWithErrorsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i4.AWSCredentialsProvider(
          _i4.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11FooErrorWithDunderTypeAndNamespace',
        documentation:
            'Some services serialize errors using __type, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{\n    "__type": "aws.protocoltests.restjson#FooError"\n}',
        bodyMediaType: 'application/json',
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 500,
      ),
      errorSerializers: const [FooErrorAwsJson11Serializer()],
    );
  });
  _i1.test('AwsJson11FooErrorWithDunderTypeUriAndNamespace (error)', () async {
    await _i2.httpErrorResponseTest<
      _i3.Unit,
      _i3.Unit,
      GreetingWithErrorsOutput,
      GreetingWithErrorsOutput,
      FooError
    >(
      operation: GreetingWithErrorsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i4.AWSCredentialsProvider(
          _i4.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11FooErrorWithDunderTypeUriAndNamespace',
        documentation:
            'Some services serialize errors using __type, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{\n    "__type": "aws.protocoltests.restjson#FooError:http://internal.amazon.com/example/com.amazon.example.validate/"\n}',
        bodyMediaType: 'application/json',
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        code: 500,
      ),
      errorSerializers: const [FooErrorAwsJson11Serializer()],
    );
  });
  _i1.test('AwsJson11InvalidGreetingError (error)', () async {
    await _i2.httpErrorResponseTest<
      _i3.Unit,
      _i3.Unit,
      GreetingWithErrorsOutput,
      GreetingWithErrorsOutput,
      InvalidGreeting
    >(
      operation: GreetingWithErrorsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i4.AWSCredentialsProvider(
          _i4.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'AwsJson11InvalidGreetingError',
        documentation: 'Parses simple JSON errors',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{\n    "__type": "InvalidGreeting",\n    "Message": "Hi"\n}',
        bodyMediaType: 'application/json',
        params: {'Message': 'Hi'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 400,
      ),
      errorSerializers: const [InvalidGreetingAwsJson11Serializer()],
    );
  });
}

class GreetingWithErrorsOutputAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<GreetingWithErrorsOutput> {
  const GreetingWithErrorsOutputAwsJson11Serializer()
    : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [GreetingWithErrorsOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
          result.greeting =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
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

class ComplexErrorAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ComplexError> {
  const ComplexErrorAwsJson11Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [ComplexError];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
        case 'TopLevel':
          result.topLevel =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'Nested':
          result.nested.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(ComplexNestedErrorData),
                )
                as ComplexNestedErrorData),
          );
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

class ComplexNestedErrorDataAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ComplexNestedErrorData> {
  const ComplexNestedErrorDataAwsJson11Serializer()
    : super('ComplexNestedErrorData');

  @override
  Iterable<Type> get types => const [ComplexNestedErrorData];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
          result.foo =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
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

class FooErrorAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<FooError> {
  const FooErrorAwsJson11Serializer() : super('FooError');

  @override
  Iterable<Type> get types => const [FooError];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  FooError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return FooErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FooError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class InvalidGreetingAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<InvalidGreeting> {
  const InvalidGreetingAwsJson11Serializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types => const [InvalidGreeting];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
          result.message =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
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
