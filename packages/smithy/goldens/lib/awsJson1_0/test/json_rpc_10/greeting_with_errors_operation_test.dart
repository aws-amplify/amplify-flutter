// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_json1_0_v1.json_rpc_10.test.greeting_with_errors_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_0_v1/src/json_rpc_10/model/complex_error.dart' as _i5;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/complex_nested_error_data.dart'
    as _i10;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/foo_error.dart' as _i8;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_input.dart'
    as _i3;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/greeting_with_errors_output.dart'
    as _i4;
import 'package:aws_json1_0_v1/src/json_rpc_10/model/invalid_greeting.dart'
    as _i9;
import 'package:aws_json1_0_v1/src/json_rpc_10/operation/greeting_with_errors_operation.dart'
    as _i6;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson10ComplexError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i5.ComplexError>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10ComplexError',
          documentation: 'Parses a complex error with no message member',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "__type": "aws.protocoltests.json10#ComplexError",\n    "TopLevel": "Top level",\n    "Nested": {\n        "Foo": "bar"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'TopLevel': 'Top level',
            'Nested': {'Foo': 'bar'},
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [
          ComplexErrorAwsJson10Serializer(),
          ComplexNestedErrorDataAwsJson10Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'AwsJson10EmptyComplexError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i5.ComplexError>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10EmptyComplexError',
          documentation: 'Parses a complex error with an empty body',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "__type": "aws.protocoltests.json10#ComplexError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [
          ComplexErrorAwsJson10Serializer(),
          ComplexNestedErrorDataAwsJson10Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingXAmznErrorType (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i8.FooError>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingXAmznErrorType',
          documentation:
              'Serializes the X-Amzn-ErrorType header. For an example service, see Amazon EKS.',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
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
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingXAmznErrorTypeWithUri (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i8.FooError>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingXAmznErrorTypeWithUri',
          documentation:
              'Some X-Amzn-Errortype headers contain URLs. Clients need to split the URL on \':\' and take only the first half of the string. For example, \'ValidationException:http://internal.amazon.com/example/com.amazon.example.validate/\'\nis to be interpreted as \'ValidationException\'.\n\nFor an example service see Amazon Polly.',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Amzn-Errortype':
                'FooError:http://internal.amazon.com/example/com.amazon.example.validate/'
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingXAmznErrorTypeWithUriAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i8.FooError>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingXAmznErrorTypeWithUriAndNamespace',
          documentation:
              'X-Amzn-Errortype might contain a URL and a namespace. Client should extract only the shape name. This is a pathalogical case that might not actually happen in any deployed AWS service.',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Amzn-Errortype':
                'aws.protocoltests.json10#FooError:http://internal.amazon.com/example/com.amazon.example.validate/'
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingCode (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i8.FooError>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingCode',
          documentation:
              'This example uses the \'code\' property in the output rather than X-Amzn-Errortype. Some services do this though it\'s preferable to send the X-Amzn-Errortype. Client implementations must first check for the X-Amzn-Errortype and then check for a top-level \'code\' property.\n\nFor example service see Amazon S3 Glacier.',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "code": "FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingCodeAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i8.FooError>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingCodeAndNamespace',
          documentation:
              'Some services serialize errors using code, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "code": "aws.protocoltests.json10#FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorUsingCodeUriAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i8.FooError>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorUsingCodeUriAndNamespace',
          documentation:
              'Some services serialize errors using code, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "code": "aws.protocoltests.json10#FooError:http://internal.amazon.com/example/com.amazon.example.validate/"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorWithDunderType (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i8.FooError>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorWithDunderType',
          documentation: 'Some services serialize errors using __type.',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "__type": "FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorWithDunderTypeAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i8.FooError>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorWithDunderTypeAndNamespace',
          documentation:
              'Some services serialize errors using __type, and it might contain a namespace. Clients should just take the last part of the string after \'#\'.',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body: '{\n    "__type": "aws.protocoltests.json10#FooError"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10FooErrorWithDunderTypeUriAndNamespace (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i8.FooError>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10FooErrorWithDunderTypeUriAndNamespace',
          documentation:
              'Some services serialize errors using __type, and it might contain a namespace. It also might contain a URI. Clients should just take the last part of the string after \'#\' and before ":". This is a pathalogical case that might not occur in any deployed AWS service.',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "__type": "aws.protocoltests.json10#FooError:http://internal.amazon.com/example/com.amazon.example.validate/"\n}',
          bodyMediaType: 'application/json',
          params: {},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 500,
        ),
        errorSerializers: const [FooErrorAwsJson10Serializer()],
      );
    },
  );
  _i1.test(
    'AwsJson10InvalidGreetingError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i3.GreetingWithErrorsInput,
          _i3.GreetingWithErrorsInput,
          _i4.GreetingWithErrorsOutput,
          _i4.GreetingWithErrorsOutput,
          _i9.InvalidGreeting>(
        operation: _i6.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'AwsJson10InvalidGreetingError',
          documentation: 'Parses simple JSON errors',
          protocol: _i7.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_0',
          ),
          authScheme: null,
          body:
              '{\n    "__type": "aws.protocoltests.json10#InvalidGreeting",\n    "Message": "Hi"\n}',
          bodyMediaType: 'application/json',
          params: {'Message': 'Hi'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-amz-json-1.0'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [InvalidGreetingAwsJson10Serializer()],
      );
    },
  );
}

class GreetingWithErrorsInputAwsJson10Serializer
    extends _i7.StructuredSmithySerializer<_i3.GreetingWithErrorsInput> {
  const GreetingWithErrorsInputAwsJson10Serializer()
      : super('GreetingWithErrorsInput');

  @override
  Iterable<Type> get types => const [_i3.GreetingWithErrorsInput];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  _i3.GreetingWithErrorsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.GreetingWithErrorsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'greeting':
          if (value != null) {
            result.greeting = (serializers.deserialize(
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

class GreetingWithErrorsOutputAwsJson10Serializer
    extends _i7.StructuredSmithySerializer<_i4.GreetingWithErrorsOutput> {
  const GreetingWithErrorsOutputAwsJson10Serializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [_i4.GreetingWithErrorsOutput];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  _i4.GreetingWithErrorsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i4.GreetingWithErrorsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'greeting':
          if (value != null) {
            result.greeting = (serializers.deserialize(
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

class ComplexErrorAwsJson10Serializer
    extends _i7.StructuredSmithySerializer<_i5.ComplexError> {
  const ComplexErrorAwsJson10Serializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [_i5.ComplexError];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  _i5.ComplexError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.ComplexErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i10.ComplexNestedErrorData),
            ) as _i10.ComplexNestedErrorData));
          }
          break;
        case 'TopLevel':
          if (value != null) {
            result.topLevel = (serializers.deserialize(
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

class ComplexNestedErrorDataAwsJson10Serializer
    extends _i7.StructuredSmithySerializer<_i10.ComplexNestedErrorData> {
  const ComplexNestedErrorDataAwsJson10Serializer()
      : super('ComplexNestedErrorData');

  @override
  Iterable<Type> get types => const [_i10.ComplexNestedErrorData];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  _i10.ComplexNestedErrorData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i10.ComplexNestedErrorDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Foo':
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

class FooErrorAwsJson10Serializer
    extends _i7.StructuredSmithySerializer<_i8.FooError> {
  const FooErrorAwsJson10Serializer() : super('FooError');

  @override
  Iterable<Type> get types => const [_i8.FooError];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  _i8.FooError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _i8.FooErrorBuilder().build();
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

class InvalidGreetingAwsJson10Serializer
    extends _i7.StructuredSmithySerializer<_i9.InvalidGreeting> {
  const InvalidGreetingAwsJson10Serializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types => const [_i9.InvalidGreeting];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  _i9.InvalidGreeting deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i9.InvalidGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
